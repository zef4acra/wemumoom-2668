function y=fls(x)
y=x(1,1)*log(x(1,1)/(x(1,1)+x(2,1)+x(3,1)))+x(2,1)*log(x(2,1)/(x(1,1)+x(2,1)+x(3,1)))+x(3,1)*log(x(3,1)/(x(1,1)+x(2,1)+x(3,1)))
endfunction
