# tool-mixing
![TOOL](header.jpg?raw=true)

## Description
We are going to concat Viginti Tres (5:04) and Wings For Marie (6:13) then Merge with 10,000 Days (11:15)
![mix](mixed.png?raw=true)

## How to build
clone the repo
`cd tool-mixing`
`docker build . -t tool-mixing`

## How to run
`docker run --rm --user $UID:$GID -v $PWD:/downloads  tool-mixing`

Now its time to listening `TOOL.mp3`