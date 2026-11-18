I posted the Flow toolpath from the Mastercam file you provided using your post processor, and I'm getting different NC output than what you originally sent us.
 
1. Your program outputs G43.4, while mine outputs G43 with G54.2 P1.
2. Your inverse time feedrates reach F1000000, while mine are generally lower and contain fewer zeros.
 
I've attached my posted NC file for comparison. I only posted a portion of the toolpath, so my program is shorter.
 
Have any changes been made to your post processor, machine definition, or control definition since you generated the original FLOW program? I'm trying to determine why we're getting different results from the same files.

 

I don’t quite remember why we changed the g43 to g43.4 and as far as the g54.2, that was switched to g68.2 at some point as recommended (they said required) by the machine manufacturer.

At first we were going back and forth a lot with sierra cad cam and the post creator to make things work correctly with the new machine.

As for the high feed rates, we had to increase the max feed on the general machine parameters to F1000000. Due to the feeds being too slow when surfacing. We have tried different feed rates (F2. , F20000. ,  F2000000)  just to see what would happen and we have the same result with the machine slowing to a crawl and showing about .0007ipm feed rate on the screen.

 

Ron Peres

S&S Machine

9334 Viking Place

Roseville, CA 95747
