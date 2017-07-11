-- Parametric Grid

-- Use this function to perform your initial setup
function setup()
    print("Draw a parametric grid!")
    
    parameter.number("Radius", 10.0, 100.0, 20.0)
    
    grid = GridClass()
    
    offset = 50
    
    grid.params["x"] = (offset/2)
    grid.params["y"] = (offset/2)
    
    grid.params["height"] = (HEIGHT-offset)
    grid.params["width"] = (WIDTH-offset)
    grid.params["AmountX"] = 2
    grid.params["AmountY"] = 2
    grid.params["r"] = Radius
    
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(188, 95, 90, 255)          

    -- This sets the line thickness
    strokeWidth(2)
    
    -- set line color
    -- stroke(93, 81, 108, 255)
    
    -- Do your drawing here
        
    grid:draw()
   
end

