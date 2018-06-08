function centroids = computeCentroids(X, idx, K)
[m n] = size(X);
centroids = zeros(K, n);
for i=1:K
  c=0;
  M=zeros(n,1);
  for j=1:m
    if(idx(j)==i)
      M=M+X(j,:)';
      c=c+1;
    end
  end
  M=(1/c)*M;
  centroids(i,:)=M';
  end
end
