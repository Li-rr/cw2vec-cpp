
path_input=./sample
path_out=.
path_in=/home/stu/Documents/dataset/wiki/wiki.txt
feature_path=./Simplified_Chinese_Feature/sin_chinese_feature.txt
rm -rf ./bin
cp -rf ./word2vec/bin .

# ./bin/word2vec skipgram -input ${path_input}/zhwiki.txt -output ${path_out}/zhwiki_skipgram.300d -lr 0.025 -dim 300 -ws 5 -epoch 5 -minCount 10 -neg 5 -loss ns -thread 8 -t 1e-4 -lrUpdateRate 100


./bin/word2vec substoke -input ${path_in} -infeature ${feature_path} -output wiki_substoke_out \
    -lr 0.025 -dim 300 -ws 5 -epoch 5 -minCount 10 \
    -neg 5 -loss ns -minn 3 -maxn 18 -thread 8 \
    -t 1e-4 -lrUpdateRate 100