function [estimate]=use_affin(raw_tweets_train)
    load('afinn.mat');
    tweet_count=0;
    estimate=zeros(length(raw_tweets_train),1);
    for i=1:length(raw_tweets_train)
        a=strsplit(char(raw_tweets_train(i)));
        for j=1:length(a)
            word=char(a{j});
            if word(1)=='#'
                word=word(2:end);
            end
            [l ,lo]= ismember(word,afinn_words);
            if l
                tweet_count=tweet_count+1;
                estimate(i)=estimate(i)+AFINN_value(lo);
            end
        end
    end
end