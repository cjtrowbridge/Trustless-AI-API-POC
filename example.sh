#!/bin/bash

SEED=1234
PROMPT="The sociocultural and semiotic context of the neologism Sociolacrum from the Baudrillardian and Foucauldian lens could be"
MODEL=/var/ai/upstage-llama-2-70b-instruct-v2.Q5_K_S.gguf
LLAMA=/var/ai/llama.mixtral.gpu/build/bin/main

#Run the model once and save the output
$LLAMA -ngl 100 -s $SEED -m $MODEL -p "$PROMPT" > 1.txt

#Run the model again and save the output
$LLAMA -ngl 100 -s $SEED -m $MODEL -p "$PROMPT" > 2.txt

#Check if the outputs are the same, based on the fact that the random seed was the same
echo ""
echo "Diff:"

#Create a hash of each and compare them
diff <( sha256sum 1.txt ) <( sha256sum 2.txt )

#Compare the output of each file
diff 1.txt 2.txt
