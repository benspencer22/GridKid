require_relative "./primitives.rb"
require_relative "./arithmetic.rb"
require_relative "./logicalOps.rb"
require_relative "./relationalOps.rb"
require_relative "./casting.rb"
require_relative "./bitwiseOps.rb"
require_relative "./grid.rb"
require_relative "./stats.rb"

# String test
stringTest = NewStrings.new("Hello World!")
puts stringTest.eval(0).getVal
puts

# Define 2 Integers
addA = NewInts.new(5)
addB = NewInts.new(10)
puts addA.eval(0).getVal
puts addB.eval(0).getVal
puts

# Add both integers together
puts "Add 5 + 10"
addSolution = Add.new(addA,addB)
puts addSolution.eval(0).getVal
puts

# Subtract both floats
subtractA = NewDoubs.new(55.5)
subtractB = NewDoubs.new(30.77)
solutionSub = Subtract.new(subtractA, subtractB)
puts "Subtract 2 floats 55.5 - 30.77"
puts solutionSub.eval(0).getVal
puts

# multiply 2 floats
multA = NewDoubs.new(10.5)
multB = NewDoubs.new(2.6)
solutionMult = Multiply.new(multA, multB)
puts "Multiply 2 floats 10.5 * 2.6"
puts solutionMult.eval(0).getVal
puts

# divide 2 integers
divA = NewInts.new(25)
divB = NewInts.new(3)
solutionDiv = Divide.new(divA, divB)
puts "Divide 2 integers 25 / 3"
puts solutionDiv.eval(0).getVal
puts

# modulo with Integers
solutionMod = Modulo.new(divA, divB)
puts "Mod 25 % 3 to show remainder"
puts solutionMod.eval(0).getVal
puts

# exponents with integers
expo = NewInts.new(5)
solutionExpo = Exponential.new(expo, divB)
puts "5 to the 3rd power"
puts solutionExpo.eval(0).getVal
puts

# booleans with AND OR & NOT
boolA = NewBools.new(true)
boolB = NewBools.new(false)
andSol = And.new(boolA, boolB)
puts "True AND False"
puts andSol.eval(0).getVal
puts

orSol = Or.new(boolA, boolB)
puts "True OR False"
puts orSol.eval(0).getVal
puts

notSol = Not.new(boolA)
notSol2 = Not.new(boolB)
puts "not True"
puts notSol.eval(0).getVal
puts "not False"
puts notSol2.eval(0).getVal
puts

# Test relational Operations
relOP1 = NewInts.new(25)
relOP2 = NewInts.new(3)
relOP3 = NewInts.new(3)

equalSol = MyEquals.new(relOP2, relOP3)
equalSol2 = MyEquals.new(relOP1, relOP3)
puts "Test 3 = 3"
puts equalSol.eval(0).getVal
puts "Test 25 = 3"
puts equalSol2.eval(0).getVal
puts

noEqualSol = MyNoEquals.new(relOP2, relOP3)
noEqualSol2 = MyNoEquals.new(relOP1, relOP3)
puts "Test not equals 3 = 3"
puts noEqualSol.eval(0).getVal
puts "Test not equals 25 = 3"
puts noEqualSol2.eval(0).getVal
puts

lessSol = MyLessThan.new(relOP1, relOP2)
lessSol2 = MyLessThan.new(relOP2, relOP1)
puts "25 < 3"
puts lessSol.eval(0).getVal
puts "3 < 25"
puts lessSol2.eval(0).getVal
puts

lessEQSol = MyLessThanEqual.new(relOP1, relOP2)
lessEQSol2 = MyLessThanEqual.new(relOP2, relOP1)
lessEQSol3 = MyLessThanEqual.new(relOP2, relOP3)
puts "25 <= 3"
puts lessEQSol.eval(0).getVal
puts "3 <= 25"
puts lessEQSol2.eval(0).getVal
puts "3 <= 3"
puts lessEQSol3.eval(0).getVal
puts

greaterSol = MyGreaterThan.new(relOP1, relOP2)
greaterSol2 = MyGreaterThan.new(relOP2, relOP1)
puts "25 > 3"
puts greaterSol.eval(0).getVal
puts "3 > 25"
puts greaterSol2.eval(0).getVal
puts

greaterEQSol = MyGreaterThanEqual.new(relOP1, relOP2)
greaterEQSol2 = MyGreaterThanEqual.new(relOP2, relOP1)
greaterEQSol3 = MyGreaterThanEqual.new(relOP2, relOP3)
puts "25 >= 3"
puts lessEQSol.eval(0).getVal
puts "3 >= 25"
puts lessEQSol2.eval(0).getVal
puts "3 >= 3"
puts lessEQSol3.eval(0).getVal
puts

# test casting operations
itoF = NewInts.new(10)
ftoI = NewDoubs.new(55.5)
numbah = NewDoubs.new(0.1)

fToISol = FloatToInt.new(ftoI)
iToFSol = IntToFloat.new(itoF)

puts "Convert 10 to 10.0"
puts iToFSol.eval(0).getVal
puts "Convert 55.5 to 55"
puts fToISol.eval(0).getVal
puts

# testing bitwise operations
num1 = NewInts.new(3)
num2 = NewInts.new(2)
num3 = NewInts.new(1)

bitwiseAnd = BitAnd.new(num1, num3)
puts "Bit AND 11 & 01 = 1"
puts bitwiseAnd.eval(0).getVal
bitwiseOr = BitOr.new(num2, num1)
puts "Bit OR 10 | 01 = 3"
puts bitwiseOr.eval(0).getVal
bitwiseXor = BitXor.new(num1, num3)
puts "Bit XOR 11 | 01 = 2"
puts bitwiseXor.eval(0).getVal
bitwiseNot = BitNot.new(num1)
puts "Bit NOT 11 = -4"
puts bitwiseNot.eval(0).getVal
bitwiseLeft = BitLeftShift.new(num1, num3)
puts "Bit Left Shift 11 = 6"
puts bitwiseLeft.eval(0).getVal
bitwiseLeft = BitRightShift.new(num1, num3)
puts "Bit Right Shift 11 = 1"
puts bitwiseLeft.eval(0).getVal
puts


# grid testing
grid = GridKid.new
env = Environment.new(grid)
cell = CellReference.new(3, 2)
cell2 = CellReference.new(4, 5)
cell3 = CellReference.new(1, 2)
puts cell.getRow
grid.addCellRef(cell.getRow(), cell.getColumn())
grid.addCellRef(cell2.getRow(), cell2.getColumn())
grid.addCellRef(cell3.getRow(), cell3.getColumn())
cell.setCell(grid, NewInts.new(5))
cell2.setCell(grid, NewInts.new(15))
cell3.setCell(grid, NewInts.new(10))
#puts grid.getCell(cell).eval(env)
#puts grid.getCell(cell)
#puts cell

maxSol = Max.new(grid)
maxSol.maxy(grid)
minSol = Min.new(grid)
minSol.miny(grid)
meanSol = Mean.new(grid)
meanSol.meanie(grid)
sumSol = Sumation.new(grid)
sumSol.summy(grid)
lValSol = LValue.new(cell)
print "Address of cell is: "
lValSol.getLVal
rValSol = RValue.new(grid, cell)
print "Value of cell is: "
puts rValSol.getRVal(grid, cell).getVal
