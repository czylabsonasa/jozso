#script
function trajz()
  graphics_toolkit('gnuplot')
  A=dlmread('ktraj.dat');x=A(:,1);y=A(:,2);
  plot(x,y)
  print -deps 'ktraj.eps'
end
trajz()
