#script
function maprajz(st=1)
  graphics_toolkit('gnuplot')
  A=dlmread('map.dat');x=A(:,1);y=A(:,2);z=-A(:,3);
  sx=unique(sort(x));
  sy=unique(sort(y));
  nr=numel(sy);
  nc=numel(sx);
  [mx,my]=meshgrid(sx,sy);
  mz=reshape(z,[nr,nc]);
  # kidob nehanyat, ha st>1
  if( st>1 )
    mx=mx(1:st:end,1:st:end);
    my=my(1:st:end,1:st:end);
    mz=mz(1:st:end,1:st:end);
  endif
    
  surf(mx,my,mz)
  print -deps 'map.eps'
end
maprajz()
