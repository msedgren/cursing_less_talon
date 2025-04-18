# cursing_less_talon


This project provides advanced navigation and text manipulation in IntelliJ using decorations on 
characters within editors. Basic functionality is mostly provided by [Talonhub/community](https://github.com/talonhub/community),
although this project (and its required [counterpart](https://github.com/msedgren/cursing_less)) include 
significant additional features.

Example:

![example of cursing less](./docs/example.png)



## Installation
1. Clone this repository to `~/.talon/user`
2. Follow the steps to build and install the [Cursing Less IntelliJ Plugin](https://github.com/msedgren/cursing_less)
Note: this will eventually be published to the marketplace.

## Usage

Commands mostly follow a structure of command color shape key.

Default colors are red, purple, green, blue, and yellow.

The defined shapes are square, circle, line, 'X', slash, and backslash.

Decorations are prioritized based on the cursor position. This means that in dense sections with lots of repetition,
will first be added new the cursor. This is due to the nature of a limited number of decoration combinations being possible.

## Commands
Note: commands are still being added and will be added in the future. Ranges will be the next focus. For example:
`select until blue slash air`, `select from blue slash air until red square zip`, etc. To simplify things for issuing commands
consideration is being given to allowing a section to be marked. `mark until blue slash air`...

- toggle cursing: enable or disable text decorations.
- toggle echo: turn on or off echoing commands in IntelliJ. This is useful for debugging. 
- go color shape key: move the cursor to the specified color, shape, and key position.
For example: `go red square each` will move the cursor to the e character with a red square above it. 
- go past color shape key: move the cursor just past the token with the specified color, shape, and key position.
For example: `go past red square each` will move the cursor past the token with an 
e character with a red square above it. 
- go last color: move the cursor to the last token with the specified color.
For example: `go last red` will move the cursor to the last token with a red square above it. 
- go past last color: move the cursor just past the last token with the specified color.
For example: `go past last red` will move the cursor just past the last token with a red square above it. 
- go next color: move the cursor to the next token with the specified color.
For example: `go next red` will move the cursor to the next token with a red square above it. 
- go past next color: move the cursor just past the next token with the specified color.
For example: `go past next red` will move the cursor just past the next token with a red square above it. 
- select color shape key: select the token at the specified color, shape, and key position.
For example: `select red square each` will select the token with an e character with a red square above it. 
- copy color shape key: copy the token at the specified color, shape, and key position.
For example: `copy red square each` will copy the token with an e character with a red square above it. 
- cut color shape key: cut the token at the specified color, shape, and key position.
For example: `cut red square each` will cut the token with an e character with a red square above it.