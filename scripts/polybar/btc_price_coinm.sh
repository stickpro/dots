#!/bin/sh

DATA=$(curl -s 'https://api.coinmarketcap.com/v2/ticker/' | jq -r '.data ."1" .quotes .USD .price' | cut -c 1-9)
echo   $DATA 
#printf '%0.3f\n' $DATA
