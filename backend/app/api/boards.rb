# frozen_string_literal: true

class Boards < Grape::API
  resource :boards do
    desc 'Get boards'
    get do
      Board.all
    end

    desc 'Create a board'
    params do
      requires :name, type: String, desc: 'Name'
      requires :columns, type: Array, desc: 'Columns' do
        requires :name, type: String, desc: 'Column name'
      end
    end
    post do
      declared_params = declared(params)
      result = CreateBoard.call(name: declared_params[:name], columns: declared_params[:columns])
      result.board
    end

    desc 'Update a board'
    params do
      requires :name, type: String, desc: 'Name'
      requires :columns, type: Array, desc: 'Columns' do
        requires :id, type: Integer, desc: 'Column ID'
        requires :name, type: String, desc: 'Column name'
      end
    end
    put ':id' do
      declared_params = declared(params)
      board = Board.find(declared_params[:id])
      UpdateBoard.call(board:, **declared_params)
    end

    desc 'Delete a board'
    params do
      requires :id, type: Integer, desc: 'Board ID'
    end
    delete ':id' do
      Board.find(params[:id]).destroy
    end
  end
end
