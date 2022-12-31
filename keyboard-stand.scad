objectD = 1;

fullW = 50;
fullH = 25;
fulllD = objectD;

actualW = 30;
actualH = 22;

trackpadW = 14.5;
trackpadH = 9;
trackpadD = objectD;

tCaseX = (fullW / 2) * -1;
tCaseY = (fullH / 2) * -1;

//translate([tCaseX, tCaseY, 0]) {
//    cube([fullW, fullH, fulllD]);
//}
//
//translate([
//    (trackpadW/2 * -1), (actualH + tCaseY) * -1, 0
//]) {
//    color("Indigo", 1.0) cube([trackpadW, trackpadH, trackpadD]);
//}


trackBoxH = trackpadH + (fullH - actualH);
echo(trackBoxH);
tlTrackBoxX = (fullW / 2) - (trackpadW/2);

protectorH = 0.5;
protectorXstart = fullH - protectorH;

union() {
    difference() {
        cube([fullW, fullH, fulllD]);

        translate([tlTrackBoxX, 0, 0]) {
            color("Indigo", 1.0)
            cube([trackpadW, trackBoxH, trackpadD]);
        }
    }


    translate([0, protectorXstart, 0]) {
        color("Red", 1.0)
        cube([fullW, protectorH, objectD + 0.5]);
    }
}