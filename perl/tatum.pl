$g=50;
open(tatum,">./tatum.csv");
for ($i1=2;$i1<$g-2;++$i1)
{

    $x=$i1*(1/$g);
    for ($i2=$i1+1;$i2<$g-1;++$i2)
{
    $xhat=$i2*(1/$g);
    for ($i3=1;$i3<$g-$i1;++$i3)
{
    $y=$i3*(1/$g);
    $z=1-$x-$y;
    for ($i4=1;$i4<$g-$i2;++$i4)
{
    $yhat=$i4*(1/$g);
    $zhat=1-$xhat-$yhat;
    $s=(1-$x)**2+$y**2+(1-$x-$y)**2;
    $shat=(1-$xhat)**2+$yhat**2+(1-$xhat-$yhat)**2;
    $d=$shat-$s;
    if ($d>0)
    {
	print tatum "$x,$y,$z,$xhat,$yhat,$zhat,$d\n";
    }
}
}
}
}
close(tatum);
