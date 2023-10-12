class BitAnd
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (a.instance_of? NewInts) && (b.instance_of? NewInts)
            NewInts.new(a.getVal & b.getVal)
        elsif (a.instance_of? NewDoubs) && (b.instance_of? NewDoubs) 
            NewDoubs.new(a.getVal & b.getVal)
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

class BitOr
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (a.instance_of? NewInts) && (b.instance_of? NewInts)
            NewInts.new(a.getVal | b.getVal)
        elsif (a.instance_of? NewDoubs) && (b.instance_of? NewDoubs) 
            NewDoubs.new(a.getVal | b.getVal)
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

class BitXor
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (a.instance_of? NewInts) && (b.instance_of? NewInts)
            NewInts.new(a.getVal ^ b.getVal)
        elsif (a.instance_of? NewDoubs) && (b.instance_of? NewDoubs) 
            NewDoubs.new(a.getVal ^ b.getVal)
        else
            return "Error non matching types"
        end
    end
end

class BitNot
    def initialize(a)
        @a = a 
    end

    def eval(env)
        a = @a.eval(env)

        if (a.instance_of? NewInts)
            NewInts.new(~(a.getVal))
        elsif (a.instance_of? NewDoubs)
            NewDoubs.new(~a.getVal)
        else
            NewBools.new(~a.getVal)
        end
    end
end

class BitLeftShift
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)

        if (a.instance_of? NewInts) && (b.instance_of? NewInts)
            NewInts.new(a.getVal << b.getVal)
        elsif (a.instance_of? NewDoubs) && (b.instance_of? NewDoubs) 
            NewDoubs.new(a.getVal << b.getVal)
        else
            return "Error non matching types"
        end
    end
end

class BitRightShift
    def initialize(a, b)
        @a = a 
        @b = b 
    end

    def eval(env)
        a = @a.eval(env)
        b = @b.eval(env)
        
        if (a.instance_of? NewInts) && (b.instance_of? NewInts)
            NewInts.new(a.getVal >> b.getVal)
        elsif (a.instance_of? NewDoubs) && (b.instance_of? NewDoubs) 
            NewDoubs.new(a.getVal >> b.getVal)
        else
            return "Error non matching types"
        end
    end
end