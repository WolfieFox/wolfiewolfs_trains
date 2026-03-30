# Wolfie's Extension Train Set

I wanted to put some more stuff into Timberwolf's Trains, but I didn't want to be really annoying about it.
So here's my little addon GRF, with sincere apologies to Timberwolf for how derivative it is.

So originally the goal was to put some small oddball vehicles in. 
Now I'm just bulking up the set and adding things that I think are neat,
mostly trains from 80s, some one-off prototypes and some unbuilt neat things
for your alt-history gameplay needs.

## Paper Trains

No, not trains for carrying paper, trains that didn't get beyond being a drawing on a piece of paper.

These can be disabled via NewGRF parameters if you really want.

## "Features"
* Sleeper cars will randomly select a flipped sprite, just to show off the asymmetry in the voxel objects.
* Some vehicles are powered but can't lead the formation ('back' half rakes, power cars).
* Other BAD FEATURES tbd.

## Limitations
I can't make the vehicles in this set reference the base set(s), so multiple unit compatibility is a little spotty.

Multiple units in OpenTTD are a bit of a hack, so the APT-P half-rakes in particular are a bit frustrating to use.

I haven't tested this set with any AI, so I have no idea what the AI will do with some of the weirder vehicles.

Also some of the vehicles are really sisters to base set vehicles (the sleeping cars in particular) and I can't make them share an entry in the purchase menu.

## Building from source

Follow the instructions in the [Timberwolf's Trains README](https://github.com/mattkimber/timberwolfs_trains). 

`./community2.sh` should be all you need once you're already able to build the base set.

If you want to make your own set, you can look at what I did in [commit b251d0e](https://github.com/mattkimber/timberwolfs_trains/commit/b251d0e2de00e657c85819b9a206523192d9ccae).

