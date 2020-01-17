# Test file for "Lab3_BitManip"


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

# Example test:
#test "PINA: 0x00, PINB: 0x01 => PORTC: 0x00"
# Set inputs
#setPINA 0x00
#setPINB 0x00
# Continue for several ticks
#continue 2
# Set expect values
#expectPORTC 0
# Check pass/fail
#checkResult

# Add tests below

test “Fuel Level 0”
setPINA 0x00
continue 2
expectPORTC 0x00
checkResult

test “Fuel Level 1”
setPINA 0x01
continue 2
expectPORTC 0x60
checkResult

test “Fuel Level 2”
setPINA 0x02
continue 2
expectPORTC 0x60
checkResult

test “Fuel Level 3”
setPINA 0x03
continue 2
expectPORTC 0x70
checkResult

test “Fuel Level 4”
setPINA 0x04
continue 2
expectPORTC 0x70
checkResult

test “Fuel Level 5”
setPINA 0x05
continue 2
expectPORTC 0x38
checkResult

test “Fuel Level 6”
setPINA 0x06
continue 2
expectPORTC 0x38
checkResult

test “Fuel Level 7”
setPINA 0x07
continue 2
expectPORTC 0x3C
checkResult

test “Fuel Level 8”
setPINA 0x08
continue 2
expectPORTC 0x3C
checkResult

test “Fuel Level 9”
setPINA 0x09
continue 2
expectPORTC 0x3C
checkResult

test “Fuel Level 10”
setPINA 0x0A
continue 2
expectPORTC 0x3E
checkResult

test “Fuel Level 11”
setPINA 0x0B
continue 2
expectPORTC 0x3E
checkResult

test “Fuel Level 12”
setPINA 0x0C
continue 2
expectPORTC 0x3E
checkResult

test “Fuel Level 13”
setPINA 0x0D
continue 2
expectPORTC 0x3F
checkResult

test “Fuel Level 14”
setPINA 0x0E
continue 2
expectPORTC 0x3F
checkResult

test “Fuel Level 15”
setPINA 0x0F
continue 2
expectPORTC 0x3F
checkResult

test “Fasten Seat Belt”
setPINA 0x3A
continue 2
expectPORTC 0xBE
checkResult

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
