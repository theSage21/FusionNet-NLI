#!/usr/bin/env bash

# Download MultiNLI
test -e multinli_1.0.zip || wget http://www.nyu.edu/projects/bowman/multinli/multinli_1.0.zip
test -d multinli_1.0 || unzip -a multinli_1.0.zip
# rm -f multinli_1.0.zip

# Download GloVe
test -d glove ||  mkdir -p glove
test -e glove/glove.840B.300d.zip || wget http://nlp.stanford.edu/data/glove.840B.300d.zip -O glove/glove.840B.300d.zip
unzip glove/glove.840B.300d.zip -d glove

# Download CoVe
wget https://s3.amazonaws.com/research.metamind.io/cove/wmtlstm-b142a7f2.pth -O glove/MT-LSTM.pth

# Download SpaCy English language models
python -m spacy download en
