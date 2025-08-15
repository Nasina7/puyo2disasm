@echo off

echo "--- The assembler will produce 4 'out of range' errors"
echo "--- This is intentional and is required to match the original rom"
echo(

if not exist out\ mkdir out

tools\windows\clownassembler_asm68k.exe /p puyo2.asm,out\puyo2built.bin
tools\windows\puyomdtool.exe fix out\puyo2built.bin

echo(
echo "--- Rom has been outputted to out/puyo2built.bin"
