require 'rails_helper'

RSpec.describe CreateBoard, type: :interactor do
  describe '.call' do
    subject(:action) { described_class.call(**params) }

    let(:params) { { name: "Board", columns: [{ name: "ToDo" }] } }

    it "create board" do
      expect { action }.to change(Board, :count).by(1)
    end

    it "create columns" do
      expect { action }.to change(Column, :count).by(1)
      expect(action.board.columns.first.name).to eq("ToDo")
    end
  end
end
