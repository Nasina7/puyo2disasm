echo "===The assembler will produce 4 'out of range' errors"
echo "===This is intentional and is required to match the original rom"
echo
./tools/vasmm68k_psi-x -Fbin -m68000 -no-opt -o out/puyo2built.bin puyo2.asm
./tools/puyomdtool fix out/puyo2built.bin
echo
echo "===Rom has been outputted to out/puyo2built.bin"
