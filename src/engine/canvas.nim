import os;
import strutils;

import globals;

var canvasMap: seq[seq[char]];
canvasMap = newSeq[seq[char]](0);

proc setFrameMode*(fps: int8) =
    var delay:float = 1000/fps;
    sleep toInt(delay)

proc setCanvasSize*(w: int8, h: int8) = 
    canvasWidth  = w;
    canvasHeight = h;

proc generateCanvasMap*(baseChar: char) = 
    if canvasHeight != 0:
        for i in countup(0, canvasHeight - 1):
            var scanLine = newSeq[char](0);
            for j in countup(0, canvasWidth - 1):
                scanLine.add(baseChar);
            canvasMap.add(scanLine);

proc displayCanvas*() =
    discard os.execShellCmd("cls");
    for i in countup(0, canvasMap.len - 1, 1):
        echo canvasMap[i].join;