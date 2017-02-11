function [Y_hat] = predict_labels(word_counts, cnn_feat, prob_feat, color_feat, raw_imgs, raw_tweets)
% Inputs:   word_counts     nx10000 word counts features
%           cnn_feat        nx4096 Penultimate layer of Convolutional
%                               Neural Network features
%           prob_feat       nx1365 Probabilities on 1000 objects and 365
%                               scene categories
%           color_feat      nx33 Color spectra of the images (33 dim)
%           raw_imgs        nx30000 raw images pixels
%           raw_tweets      nx1 cells containing all the raw tweets in text
% Outputs:  Y_hat           nx1 predicted labels (1 for joy, 0 for sad)
%Y_hat=naives_bayes_model(word_counts);
% adsave('dpath('./liblinear/');
% load('models_svm_mnb.mat');
% load('8164model.mat');
% [Yhat1,score] = predict(Mdl_svm,full(word_counts(:,21:end)));
% Yhat2 = predict(Mdl_mnb,full(word_counts(:,21:end)));
% Yhat3 = Yhat1;
% ind = find(abs(score(:,1))<=1);
% Yhat3(ind)=Yhat2(ind);
% Yhat3 = predict(zeros(size(Yhat2,1),1), word_counts(:,indices), Mdl_lr, ['-q', 'col']);
estimate=use_affin(raw_tweets);
% Y_hat = zeros(size(word_counts,1),1);
% for i=1:size(word_counts,1)
%     Y_hat(i)=Yhat3(i);
%     if Yhat1(i)~=Yhat2(i) && estimate(i)>=3
%         Y_hat(i)=1;
%     elseif Yhat1(i)~=Yhat2(i) && estimate(i)<=-3
%         Y_hat(i)=0;
%     end
% end
% Y_hat = full(Y_hat);
end
% for i = 1 : size(word_counts,1)
%     Y_hat(i,5) = round((double(Yhat1(i)+Yhat2(i)+Yhat3(i)))/3);
% end
% Y_hat(:,1)=Yhat1;
% Y_hat(:,2)=Yhat2;
% Y_hat(:,3)=Yhat3;
% Y_hat(:,4)=estimate;