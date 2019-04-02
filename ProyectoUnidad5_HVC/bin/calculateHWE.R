# Calculates the two HW Equilibrium Tests with the genind objects.

## Calculate HWE Test. Vandeño file
VaHWE <- hw.test(Va_genind,res="full")

## Calculate HWE Test. Chalqueño file
ChHWE <- hw.test(Ch_genind,res="full")
