#!/bin/bash

. ./path.sh

ref_file=$1
hyp_file=$2
pur_file=$3

align-text --special-symbol="'***'" ark:$ref_file ark:$hyp_file ark,t:- | utils/scoring/wer_per_utt_details.pl --special-symbol "***" > $pur_file