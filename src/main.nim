import engine/canvas;
import engine/tiles;
import engine/globals;

setCanvasSize(10, 5);
generateCanvasMap(airChar);

while isRunning:
    displayCanvas();
    setFrameMode(10);
