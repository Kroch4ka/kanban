class UpdateBoard
  include Interactor

  def call
    ActiveRecord::Base.transaction do
      context.board.name = context.name
      update_columns
      context.board.save! if context.board.changed?
    end
  end

  private

  def update_columns
    context.columns.each do |col|
      if col[:id]
        column = Column.find(col[:id])
        column.name = col[:name]
        column.save! if column.changed?
      else
        context.board.columns << Column.new(name: col[:name])
      end
    end
  end
end
