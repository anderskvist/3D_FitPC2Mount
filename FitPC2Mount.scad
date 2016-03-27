$width = 115;
$height = 101; 
$depth = 27;
$caseheight = 80;
$border = 4;

$fn = 50;

difference() {
    // BASE
    translate([-$border,-$border,-$border]) cube([$width+$border*2,$caseheight-$border,$depth+$border*2]);
    
    // Fit PC2
#    cube([$width,$height,$depth]);
    
    // cut outs
    translate([$border+1,-$border-1,$border/2]) cube([$width-($border+1)*2,$height,$depth+$border/2+1]);
    
    // mounting holes
    translate([20,20,-$border-0.1]) cylinder($border + 0.2,1.5,5);
    translate([$width-20,20,-$border-0.1]) cylinder($border + 0.2,1.5,5);
    translate([20,$caseheight-30,-$border-0.1]) cylinder($border + 0.2,1.5,5);
    translate([$width-20,$caseheight-30,-$border-0.1]) cylinder($border + 0.2,1.5,5);
}
