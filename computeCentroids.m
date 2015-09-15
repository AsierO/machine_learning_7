function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
meanum=zeros(K,1);

meanval=zeros(K,n);


for i=1:m
    
    for j=1:K
        
        if idx(i)== j
            
            meanum(j)=meanum(j)+1;
           % meanval(j,:)= [meanval(j,:), i];
           
           meanval(j,:)=meanval(j,:)+X(i,:);
           
        end    
        
    end
    
    
end

for jj=1:K
    
    centroids(jj,:)=meanval(jj,:)/meanum(jj);
    
end


% for jj=1:K
%     
%     cc=0;
%     
%     cc=meanval(jj,:);
%     
%     points=0;
%     
%     points=X(cc,:);
%     
%     centroids(jj)=sum(points)/meanum(jj);
%     
%     
%     
% end




% =============================================================


end

