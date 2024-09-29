class CreateBoard
  include Interactor

  def call
    board = Board.new(name: context.name)
    build_columns(board)
    board.save!
    context.board = board
  end

  private

  def build_columns(board)
    board.columns = context.columns.map do |column|
      Column.new(name: column[:name])
    end
  end
end
