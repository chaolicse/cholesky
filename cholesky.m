function [ A ] = cholesky( A )
   
n = length(A);
for i = 1:n
    for k = 1:i-1
       A(i,i) = A(i,i) - A(k,i)*A(k,i); 
    end
    if A(i,i) <= 0
        display('A is not positive definite.');
        exit;
    end
    A(i,i) = sqrt(A(i,i));
    
    for j = i+1:n
        for k = 1:i-1;
            A(i,j)= A(i,j) - A(k,i)*A(k,j);
        end
        A(i,j) = A(i,j)/A(i,i);
    end
end
   A = triu(A); % get upper triangular part of matrix
   
end

