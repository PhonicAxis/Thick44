// This is the circular base. You can comment this section out
// to remove the base and be left with the plain logo

linear_extrude(height=7) {
    circle(d=65, $fn=200);
}

// This section creates a module that imports a SVG file of the outline of the Thick44 logo.
// You can change the number value to change the scale of the logo
// Be sure to correct the path to point to wherever you have the svg file saved.

module youre_nobody() {
    linear_extrude(20){ 
        import("/PATH/TO/logo.svg");
    }
}

// Here it rotates the logo to stand up, and moves it to the center
// The align statement wouldn't work.... Cause I have smooth brain.

translate([-63.78,10,0])
rotate([90,0,0])
//align(x=100, y=100, z=100, center = true)

// Now speak the words of the Human Man Warrior, and get kills.

youre_nobody();
