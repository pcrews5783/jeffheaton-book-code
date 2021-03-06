// From the book:
//
// Scripting Recipes for Second Life
// by Jeff Heaton (Encog Dod in SL)
// ISBN: 160439000X
// Copyright 2007 by Heaton Research, Inc.
//
// This script may be freely copied and modified so long as this header
// remains unmodified.
//
// For more information about this book visit the following web site:
//
// http://www.heatonresearch.com/articles/series/22/

//
//  Damage Bullet (20%)
//

default
{
    state_entry()
    {
        llSetStatus( STATUS_DIE_AT_EDGE, TRUE);
        llSetTimerEvent(7);
        llSetDamage(20);
    }
    
    on_rez(integer i)
    {
        llSetBuoyancy(1.0);                 //  Make bullet float and not fall 
        llCollisionSound("", 1.0);          //  Disable collision sounds
    }

    collision_start(integer total_number)
    {
        llDie();
    }

    land_collision_start(vector pos)
    {
        llDie();
    }
    
    timer()
    {
        llDie();
    }
}
