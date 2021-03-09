# tool-mixing
![TOOL](header.jpg?raw=true)

## Description
Some people said there is a hidden track in the Album 10,000 days from TOOL.
Let's find out how its sounds.

We are going to concat Viginti Tres (5:04), and Wings For Marie (6:13) then Merge with 10,000 Days (11:15)
![mix](mixed.png?raw=true)

## How to build
clone the repo then

```
cd tool-mixing
docker build . -t tool-mixing
```

## How to run
`docker run --rm --user $UID:$GID -v $PWD:/downloads  tool-mixing`

Now its time to listening `TOOL.mp3`