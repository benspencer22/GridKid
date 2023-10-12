class CellReference
    def initialize(x, y)
        @column = y
        @row = x
    end

    def getColumn()
        @column
    end

    def getRow()
        @row
    end

    def eval(env)
        env.getVal.getMap[@row]
    end

    def setCell(grid, value)
        grid.getGrid[@row][@column] = value
    end
end

class GridKid
    def initialize()
        @grid = Array.new(10) { Array.new(10) }
    end

    def getCell(cell)
        @grid[cell.getRow()][cell.getColumn()]
    end

    def getGrid()
        return @grid
    end

    def addCellRef(row, column)
        @grid.push(0)
    end
end

class Environment
    def initialize(grid)
        @grid = grid
    end

    def getVal()
        @grid
    end
end
