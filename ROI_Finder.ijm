run("Find Maxima...", "noise=300 output=[Point Selection]");

run("Point Tool...", "type=Hybrid color=Yellow size=Small label");
 
 getSelectionCoordinates(xpoints, ypoints); 
  radius=4; 
  for (i=0; i<lengthOf(xpoints); i++) { 
    makeOval(xpoints[i]-radius, ypoints[i]-radius, 3*radius, 3*radius); 
    roiManager("Add"); 
  } 
  roiManager("Show All"); 
