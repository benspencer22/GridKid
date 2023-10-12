class FloatToInt
    def initialize(a)
        @a = a 
    end

    def getVal()
        return @a
    end

    def eval(env)
        a = @a.eval(env)

        if (@a.instance_of? NewInts)
            return "Numbers is already an Int"
        elsif (@a.instance_of? NewDoubs) 
            NewInts.new(@a.getVal.to_i)
        else
            return "Error non matching types"
        end
    end
end

class IntToFloat
    def initialize(a)
        @a = a 
    end

    def getVal()
        return @a
    end

    def eval(env)
        a = @a.eval(env)

        if (@a.instance_of? NewInts)
            NewDoubs.new(@a.getVal.to_f)
        elsif (@a.instance_of? NewDoubs) 
            return "Numbers is already a Float"
        else
            return "Error non matching types"
        end
    end
end