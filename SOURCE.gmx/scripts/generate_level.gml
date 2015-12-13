global.enemiesLeft = 0;
for(var i = 0; i < view_wview/32; i ++)
{
    for(var j = 0; j < view_hview/32; j ++)
    {
        if(j == 0)instance_create(i*32,-view_hview*(director.mlevel-1)+view_hview-32,platform);
        else
        {
            var place = choose(true,false);
            if(i != 4 and i != 5) and (place) and (j%2 == 0)
            {
                var sx = i*32;
                var sy = -view_hview*(director.mlevel-1)+view_hview-32-((j-1)*32);
                instance_create(sx,sy,platform);
                    var hasEnemy = choose(true,false);
                    var whichOne = choose(blBeetle);
                    if(hasEnemy)
                    {
                        instance_create(sx+16,sy-1,whichOne);
                        global.enemiesLeft++;
                    }
            }
        }
    }
}
director.level = director.mlevel;
with goup instance_destroy();

