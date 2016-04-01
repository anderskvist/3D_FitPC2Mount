$width = 92;
$height = 73; 
$depth = 34;
$caseheight = 64;
$border = 4;

$fn = 50;

difference() {
    // BASE
    translate([-$border,-$border,-$border]) cube([$width+$border*2,$caseheight-$border,$depth+$border*2]);
    
    // Deltaco AC113
#    cube([$width,$height,$depth]);
    
    // cut outs
    translate([$border+1,-$border-1,$border/2]) cube([$width-($border+1)*2,$height,$depth+$border/2+1]);
    
    // mounting holes
    translate([20,15,-$border-0.1]) cylinder($border + 0.2,1.5,5);
    translate([$width-20,15,-$border-0.1]) cylinder($border + 0.2,1.5,5);
    translate([20,$caseheight-20,-$border-0.1]) cylinder($border + 0.2,1.5,5);
    translate([$width-20,$caseheight-20,-$border-0.1]) cylinder($border + 0.2,1.5,5);
    
    // air holes in side
     for(i = [$depth/2 : $depth/2 : $caseheight-$depth/2-$border*2]) {
         translate([-$border-1,i,$depth/2]) rotate([0,90,0]) cylinder($width+($border+1)*2,$depth/2,$depth/2);
     }
}
