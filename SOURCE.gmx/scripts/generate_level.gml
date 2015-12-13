for(var i = 0; i < view_wview/32; i ++)
{
    for(var j = 0; j < view_hview/32; j ++)
    {
        if(j == 0)instance_create(i*32,-view_hview*(director.mlevel-1)+view_hview-32,platform);
        else
        {
            var place = choose(true,false,false);
            if(i != 4 and i != 5) and (place) and (j%2 == 0)
            {
            instance_create(i*32,-view_hview*(director.mlevel-1)+view_hview-32-((j-1)*32),platform);
            }
        }
    }
}
director.level = director.mlevel;
with goup instance_destroy();

