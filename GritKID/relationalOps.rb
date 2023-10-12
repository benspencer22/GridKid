class MyEquals
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewBools.new(@a.getVal == @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewBools.new(@a.getVal == @b.getVal)
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

class MyNoEquals
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewBools.new(@a.getVal != @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewBools.new(@a.getVal != @b.getVal)
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

class MyLessThan
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewBools.new(@a.getVal < @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewBools.new(@a.getVal < @b.getVal)
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

class MyGreaterThan
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewBools.new(@a.getVal > @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewBools.new(@a.getVal > @b.getVal)
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

class MyLessThanEqual
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewBools.new(@a.getVal <= @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewBools.new(@a.getVal <= @b.getVal)
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

class MyGreaterThanEqual
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)
        
        if (@a.instance_of? NewInts) && (@b.instance_of? NewInts)
            NewBools.new(@a.getVal >= @b.getVal)
        elsif (@a.instance_of? NewDoubs) && (@b.instance_of? NewDoubs) 
            NewBools.new(@a.getVal >= @b.getVal)
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