I. Core Structure

    setup(): Initialization (size, etc.) - Runs once.
    draw(): Main loop (animation, interaction) - Loops continuously.

II. Basic Drawing

    point(x, y): Draws a point.
    line(x1, y1, x2, y2): Draws a line.
    triangle(x1, y1, x2, y2, x3, y3): Draws a triangle.
    rect(x, y, width, height): Draws a rectangle.
    ellipse(x, y, width, height): Draws an ellipse.
    circle(x, y, diameter): Draws a circle.
    arc(x, y, width, height, start, stop): Draws an arc (radians).
    quad(x1, y1, x2, y2, x3, y3, x4, y4): Draws a quadrilateral.

III. Color

    background(r, g, b): Sets background color.
    fill(r, g, b): Sets fill color.
    noFill(): Disables fill.
    stroke(r, g, b): Sets stroke (outline) color.
    noStroke(): Disables stroke.
    strokeWeight(weight): Sets stroke thickness.

IV. Variables & Data Types

    int: Integer (whole number).
    float: Floating-point number (decimal).
    boolean: True/False.
    color: Color value.
    String: Text.

V. Control Flow

    if (condition) { ... }: Conditional statement.
    else if (condition) { ... }: Alternative condition.
    else { ... }: Default case.
    for (int i = 0; i < limit; i++) { ... }: Loop.
    while (condition) { ... }: Loop.

VI. Mouse & Keyboard Input

    mouseX, mouseY: Mouse coordinates.
    mousePressed: Boolean (true when mouse is pressed).
    keyPressed: Boolean (true when key is pressed).
    key: The key that was pressed (char).
    keyCode: Special keys (UP, DOWN, LEFT, RIGHT, ENTER, ESC).

VII. Transformations

    translate(x, y): Moves the origin.
    rotate(angle): Rotates around the origin (radians).
    scale(x, y): Scales the coordinate system.
    pushMatrix(): Saves the current transformation matrix.
    popMatrix(): Restores the last saved transformation matrix.

VIII. Time

    millis(): Returns the number of milliseconds since the program started.
    frameRate(fps): Sets the frame rate.
    frameCount: The number of frames displayed since the program started.

IX. Math

    random(min, max): Generates a random number.
    map(value, low1, high1, low2, high2): Remaps a number from one range to another.
    dist(x1, y1, x2, y2): Calculates the distance between two points.
    sin(angle), cos(angle), tan(angle): Trigonometric functions (radians).
    PI, HALF_PI, TWO_PI: Constants for common angles.

X. Images

    PImage img = loadImage("image.jpg"): Loads an image.
    image(img, x, y): Draws an image.
