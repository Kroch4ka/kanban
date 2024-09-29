require 'rails_helper'

RSpec.describe UpdateBoard, type: :interactor do
  describe '.call' do
    subject(:action) { described_class.call(**params) }

    let(:params) do
      {
        board:,
        name: 'Board',
        columns: [
          {
            name: 'ToDo'
          },
          {
            id: column.id,
            name: 'In Progress'
          }
        ]
      }
    end
    let(:board) { create(:board, name: 'Old') }
    let(:column) { create(:column, name: 'Old', board:) }

    it 'update board' do
      expect { action }.to change(board, :name).from('Old').to('Board')
    end

    it 'update and create new columns' do
      expect { action }.to change { column.reload.name }.from('Old').to('In Progress')
      expect(board.columns.count).to eq(2)
      expect(board.columns.map(&:name)).to include('ToDo', 'In Progress')
    end
  end
end
