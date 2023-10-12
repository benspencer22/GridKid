require_relative "./primitives.rb"
require_relative "./arithmetic.rb"
require_relative "./logicalOps.rb"
require_relative "./relationalOps.rb"
require_relative "./casting.rb"
require_relative "./bitwiseOps.rb"
require_relative "./grid.rb"
require_relative "./stats.rb"

class Max

    def initialize(grid)
        @grid = grid
    end

    def maxy(grid)

        max = 0
        for a in 0..10 do
            for b in 0..10 do

                cell = CellReference.new(a, b)
                if @grid.getCell(cell) == 0 || @grid.getCell(cell) == nil
                    #puts "nil"
                else
                    if max < @grid.getCell(cell).getVal
                        max = @grid.getCell(cell).getVal
                    end
                end
            end
        end
        puts max
    end
end

class Min

    def initialize(grid)
        @grid = grid
    end

    def miny(grid)

        min = 1000000
        for a in 0..10 do
            for b in 0..10 do

                cell = CellReference.new(a, b)
                if @grid.getCell(cell) == 0 || @grid.getCell(cell) == nil
                    #puts "nil"
                else
                    if min > @grid.getCell(cell).getVal
                        min= @grid.getCell(cell).getVal
                    end
                end
            end
        end
        puts min
    end
end

class Mean

    def initialize(grid)
        @grid = grid
    end

    def meanie(grid)

        moe = 0
        counter = 0
        for a in 0..10 do
            for b in 0..10 do

                cell = CellReference.new(a, b)
                if @grid.getCell(cell) == 0 || @grid.getCell(cell) == nil
                    #puts "nil"
                else
                    moe = @grid.getCell(cell).getVal + moe
                    counter = counter + 1
                end
            end
        end
        puts (moe / counter)
    end
end

class Sumation

    def initialize(grid)
        @grid = grid
    end

    def summy(grid)

        sum = 0
        for a in 0..10 do
            for b in 0..10 do

                cell = CellReference.new(a, b)
                if @grid.getCell(cell) == 0 || @grid.getCell(cell) == nil
                    #puts "nil"
                else
                    sum = @grid.getCell(cell).getVal + sum
                end
            end
        end
        puts sum
    end
end

class LValue

    def initialize(cell)
        @cell = cell
    end

    def getLVal
        print @cell.getRow()
        print ", "
        puts @cell.getColumn
    end
end

class RValue

    def initialize(grid, cell)
        @grid = grid
        @cell = cell
    end

    def getRVal(grid, cell)
        return grid.getCell(cell)
    end
end
