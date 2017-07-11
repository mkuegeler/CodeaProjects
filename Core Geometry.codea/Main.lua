-- Core Geometry

-- Use this function to perform your initial setup
function setup()
    print("Hello World!")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(177, 99, 49, 255)

    -- This sets the line thickness
    strokeWidth(5)

    -- Do your drawing here
    
    local offset = 100
    
    local v = 120
    
    -- ellipse(WIDTH/2,HEIGHT-offset,100)
    
    -- offset = (offset+v)
    
    -- ellipse(WIDTH/2,HEIGHT-offset,100)
    
    -- offset = (offset+v)
    
    -- ellipse(WIDTH/2,HEIGHT-offset,100)
    
    for x = 0, 4, 1 do
	 -- print ( variable )
     ellipse(WIDTH/2,HEIGHT-offset,100)
        offset = (offset+v)
    end
    
    ellipse(((WIDTH/2)+v),HEIGHT-100,100)
    
    ellipse(((WIDTH/2)+240),HEIGHT-100,100)
    
    
    
end

