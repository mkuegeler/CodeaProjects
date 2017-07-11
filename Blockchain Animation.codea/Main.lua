-- Blockchain Animation

-- Use this function to perform your initial setup
function setup()
    print("Hello World!")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(134, 131, 66, 255)

    -- This sets the line thickness
    strokeWidth(5)

    -- Do your drawing here
    
    fill(255,0,0)
    
    strokeWidth(5)
    
    -- Draw one circle
    ellipse (WIDTH/2, HEIGHT/2, 100)
    ellipse (((WIDTH/2)+50), HEIGHT/2, 100)
    
    
end

