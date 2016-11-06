require "rails_helper"

RSpec.describe GroupChatsController, :type => :controller do

  before do
    allow(controller).to receive(:authenticate_user!).and_return(true)
  end

  describe '#index' do
    subject { get :index }

    before do
      allow(GroupChat).to receive(:all).and_return({})
    end

    it 'initializes group_chat ivar' do
      subject
      expect(assigns(:group_chat)).to eq({})
    end

    it 'renders proper template' do
      expect(subject).to render_template(:index)
    end
  end

  describe '#new' do
    subject {get :new}

    before do
      allow(GroupChat).to receive(:new).and_return({})
    end

    it 'returns a new group chat object' do
      subject
      expect(assigns(:group_chat)).to eq({})
    end
  end

  describe '#create' do
    subject { post :create, params }
    let(:params) do
      {
        group_chat: {title: 'group3'}
      }
    end
    let(:current_user) { double(User, group_chat: group_chat) }
    let(:group_chat) { double(GroupChat)}
    let(:result) { double(GroupChat, save: saved) }
    let(:saved) { true }

    before do
      allow(controller).to receive(:current_user).and_return(current_user)
      allow(group_chat).to receive(:build).and_return(result)
    end

    it 'builds new group chat' do
      expect(group_chat).to receive(:build)
      subject
    end

    context 'when group chat is successfully created' do
      it 'adds success message to flash' do
        subject
        expect(flash[:success]).to eq('Group added added!')
      end

      it 'redirects to chat_groups_path' do
        expect(subject).to redirect_to(group_chats_path)
      end
    end

    context 'when group_chat is not created' do
      let(:saved) { false }

      it 'renders new action' do
        expect(subject).to render_template(:new)
      end
    end
  end

  describe '#show' do
    subject {get :show, params}

    let(:params) {{id: '1'}}
    let(:group_chat) { double(GroupChat, messages: messages)}
    let(:messages) {[double(Message, id: '1')]}
    let(:chats) {double(GroupChat, id: '1')}

    before do
      allow(GroupChat).to receive(:includes).and_return(chats)
      allow(chats).to receive(:find_by).and_return(group_chat)
      allow(Message).to receive(:new).and_return({})
    end

    it 'gets the group chat based on id' do
      subject
      expect(assigns(:group_chat)).to eq(group_chat)
    end

    it 'creates a new message object' do
      subject
      expect(assigns(:message)).to eq({})
    end
  end
end
