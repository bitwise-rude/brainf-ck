# Introduction to BrainF*ck
  
Brainfuck is an **esoteric programming language created in 1993 by Swiss student Urban Müller**. Designed to be extremely minimalistic, the language consists of only eight simple commands, a data pointer, and an instruction pointer. [Wikipedia].  BrainFuck is probably the simplest programming lanugage you have ever seen, and ironically the hardest you have ever programmed in. 
[This Link](https://esolangs.org/wiki/Brainfuck/) Provides more information about the rules  and syntax of this language.


# About this Compiler
This is yet another **Compiler** written in C that translates brainf*ck code to *ELF Executables*. Its not an interpreter, it compiles the source to **ELF Executables** which is executable in most linux platforms. 
First the source is compiled down to Assembly following the [NASM](https://www.nasm.us/) x86-64 bit syntax and using NASM's Assembler assembled and finally linked to the final executable. So you need NASM and a linker (ld) for this compiler to function properly. But, for some purpose, if you want you can only generate assembly code.

## Installing / Building
> I haven't made support for windows but I might someday.
> Make sure you have NASM and LD, for most linux distro, they are available by default.

1. Clone this Repository  - https://github.com/bitwise-rude/brainf-ck
2. Inside the folder run - `make`
3. This creates `bf` in the same folder, which is the required compiler executable.

## Some Action
After building, you can use start compiling brainf*ck, there are some test code provided in `tests/` which are downloaded from [here](https://brainfuck.org/).

1.  In terminal, `./bf tests/tic-tac-toe.bf -ca`
2. It builds a tic-tac-toe game written in brainf*ck, and outputs `output` in the same root folder.
3. Run `./output` to execute and play the game.
4. Remove Argument `-ca`  to generate the assembly file as well.

## Contributing
The file `template.asm` contains the blueprint that every program have.
I am open to contribution, send a PR, or you can contact me directly.

## TODOS

 - [ ] Refactor Code
 - [ ] Arguments Refactors making user experiencing better
 - [ ] Use pipelining instead of using Temporary File for NASM and LD
