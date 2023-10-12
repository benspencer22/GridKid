class Add
    def initialize(a, b)
        @a = a
        @b = b
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewInts.new(@a.getVal + @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewDoubs.new(@a.getVal + @b.getVal)
        else
            return "Error non matching types"
        end
    end

    def getLeftVal()
        return @a
    end

    def getRightVal()
        return @b
    end
end

class Subtract
    def initialize(a, b)
        @a = a
        @b = b
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewInts.new(@a.getVal - @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewDoubs.new(@a.getVal - @b.getVal)
        else
            return "Error non matching types"
        end
    end

    def getLeftVal()
        return @a
    end

    def getRightVal()
        return @b
    end
end

class Multiply
    def initialize(a, b)
        @a = a
        @b = b
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewInts.new(@a.getVal * @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewDoubs.new(@a.getVal * @b.getVal)
        else
            return "Error non matching types"
        end
    end

    def getLeftVal()
        return @a
    end

    def getRightVal()
        return @b
    end
end

class Divide
    def initialize(a, b)
        if b.getVal == 0
            @a = a
            if b.instance_of? NewInts
                @b = NewInts.new(1)
            elsif b.instance_of? NewDoubs
                @b = NewDoubs.new(1)
            end
        else
            @a = a
            @b = b
        end
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewInts.new(@a.getVal / @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewDoubs.new(@a.getVal / @b.getVal)
        else
            return "Error non matching types"
        end
    end

    def getLeftVal()
        return @a
    end

    def getRightVal()
        return @b
    end
end

class Modulo
    def initialize(a, b)
        @a = a
        @b = b
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewInts.new(@a.getVal.modulo(@b.getVal))
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewDoubs.new(@a.getVal.modulo(@b.getVal))
        else
            return "Error non matching types"
        end
    end

    def getLeftVal()
        return @a
    end

    def getRightVal()
        return @b
    end
end

class Exponential
    def initialize(a, b)
        @a = a
        @b = b
    end
    
    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewInts.new(@a.getVal ** @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewDoubs.new(@a.getVal ** @b.getVal)
        else
            return "Error non matching types"
        end
    end

    def getLeftVal()
        return @a
    end

    def getRightVal()
        return @b
    end
end
