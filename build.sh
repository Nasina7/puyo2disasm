echo "--- The assembler will produce 4 'out of range' errors"
echo "--- This is intentional and is required to match the original rom"
echo

if ! [ -d "./out" ]; then
  mkdir out
fi

./tools/linux/clownassembler_asm68k /p puyo2.asm,out/puyo2built.bin
./tools/linux/puyomdtool fix out/puyo2built.bin

echo
echo "--- Rom has been outputted to out/puyo2built.bin"
