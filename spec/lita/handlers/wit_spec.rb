require 'spec_helper'

describe Lita::Handlers::Wit, lita_handler: true do

  describe 'handling unhandled_message' do
    context 'unhandled directed at lita' do
      it 'says something' do
        send_message('Hi Lita')
        expect(replies.last).to eq('Hi')
      end
    end

    context 'unhandled not directed at lita' do
      it 'ignores the message' do
        send_message('Hi')
        expect(replies.last).to be_nil
      end
    end
  end
end
