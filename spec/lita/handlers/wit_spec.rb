# frozen_string_literal: true
require 'spec_helper'

describe Lita::Handlers::Wit, lita_handler: true do
  describe 'handling unhandled_message' do
    let(:source) { double(:source) }

    context 'unhandled directed at lita' do
      it 'handles something' do
        expect_any_instance_of(::Wit).to receive(:run_actions).with(SESSION_ID, 'Hi', {}, DEFAULT_MAX_STEPS) {
          robot.send_message(source, 'Howdy')
        }
        send_message('Hi Lita')
        expect(replies.last).to eq('Howdy')
      end

      it 'recognizes aliases' do
        expect_any_instance_of(::Wit).to receive(:run_actions).with(SESSION_ID, 'Hi', {}, DEFAULT_MAX_STEPS) {
          robot.send_message(source, 'Hiya')
        }
        robot.alias = 'Rita'
        send_message('Hi Rita')
        expect(replies.last).to eq('Hiya')
      end
    end

    context 'unhandled not directed at lita' do
      it 'ignores the message' do
        send_message('Hi')
        expect(replies.last).to be_nil
      end
    end
  end

  describe 'handle' do
    let(:source) { double(:source) }
    let(:message) { double(:message, body: 'Hello', command?: true, source: source) }

    context 'commanding lita' do
      it 'calls wit.ai and responds to source' do
        VCR.use_cassette('wit greeting') do
          expect(subject.robot).to receive(:send_message).with(source, 'Hi. Ask me about the weather. Anywhere. Go on!')
          subject.handle(message: message)
        end
      end
    end
  end
end
