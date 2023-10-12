class And
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewBools) && (@b.instance_of? NewBools)
            NewBools.new(@a.getVal && @b.getVal)
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

class Or
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (@a.instance_of? NewBools) && (@b.instance_of? NewBools)
            NewBools.new(@a.getVal || @b.getVal)
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

class Not
    def initialize(a)
        @a = a  
    end

    def eval(env)
        a = @a.eval(env)

        if (@a.instance_of? NewBools)
            NewBools.new(!@a.getVal)
        else
            return "Error non matching types"
        end
    end

    def getVal()
        return @a
    end
end
