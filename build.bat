@echo off

echo "--- The assembler will produce 4 'out of range' errors"
echo "--- This is intentional and is required to match the original rom"
echo(

if not exist out\ mkdir out

tools\windows\vasmm68k_psi-x.exe -Fbin -m68000 -no-opt -o out\puyo2built.bin puyo2.asm
tools\windows\puyomdtool.exe fix out\puyo2built.bin

echo(
echo "--- Rom has been outputted to out/puyo2built.bin"
