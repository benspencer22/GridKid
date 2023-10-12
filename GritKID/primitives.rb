# GridKid Primitives page contains all primitive types and
# functions relating to the big 3 Milestone 1
# Author: Ben Spencer
# Primitive type for Integers
class NewInts 

    def initialize(val)
        @value = val
    end

    def eval(env)
        self
    end

    def getVal()
        return @value
    end
end

# Primitive type for Doubles
class NewDoubs

    def initialize(val)
        @value = val
    end

    def eval(env)
        self
    end

    def getVal()
        return @value
    end
end

# Primitive type for booleans
class NewBools

    def initialize(val)
        @value = val
    end

    def eval(env)
        self
    end

    def getVal()
        return @value
    end
end

class NewStrings
    def initialize(val)
        @value = val
    end

    def eval(env)
        self
    end

    def getVal()
        return @value
    end
end
