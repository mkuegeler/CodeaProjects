GridClass = class()

function GridClass:init()
    -- you can accept and set parameters here
    
    -- Parameter
    self.params = {}
    self.grid = {}
    self.node = {}
    self.panel = {}
    
    -- Parameter default values

    self.params["x"] = 0
    self.params["y"] = 0
    self.params["height"] = 800
    self.params["width"] = 800
    self.params["AmountX"] = 4
    self.params["AmountY"] = 4
    self.params["r"] = 20
    
end

function GridClass:draw()
    -- Codea does not automatically call this method
    
    -- draw the grid
    self:drawGrid()
    
    -- draw the nodes
    self:drawNode()
    
    -- draw the panels
    -- self:drawPanel()
    
end

function GridClass:touched(touch)
    -- Codea does not automatically call this method
end

-- Custom code
-- Abstract Grid class
-- Michael Kuegeler 7.7.2017

-- Draw the grid    
function GridClass:drawGrid ()
    
    self:abstractGrid()
    i = 0
    
    while self.grid[i] do
        line(self.grid[i].x1, self.grid[i].y1, self.grid[i].x2, self.grid[i].y2)
        i = i + 1
    end
    
end

-- draw the Nodes
function GridClass:drawNode ()
    
    
    self:abstractNode()
    i = 0
    r = self.params["r"]
    
    ellipseMode(RADIUS)
    
    while self.node[i] do
        ellipse(self.node[i].x,self.node[i].y,Radius)
        i = i + 1
    end
    
end


-- draw the panels
function GridClass:drawPanel ()
    
    self:abstractPanel()
    i = 0
    
    while self.panel[i] do
        -- line(self.grid[i].x1, self.grid[i].y1, self.grid[i].x2, self.grid[i].y2)
        i = i + 1
    end
    
end

-- Function abstractGrid
function GridClass:abstractGrid ()

x = self.params["x"]
y = self.params["y"]
height = self.params["height"]
width = self.params["width"]
AmountX = self.params["AmountX"]
AmountY = self.params["AmountY"]

pm = 0
all = 0

    for i=0,AmountX,1 do 
        
        pm = ((width/AmountX)*i)
        x1 = (x+pm)
        y1 = y
        
        x2 = x1
        y2 = (y+height)
        
        self.grid[all] = {}
        self.grid[all].x1 = x1
        self.grid[all].y1 = y1
        self.grid[all].x2 = x2
        self.grid[all].y2 = y2
        
        all = (all +1)
    end
    
    for j=0,AmountY,1 do 
        
        pm = ((height/AmountY)*j)
        x1 = x
        y1 = (y+pm)
        
        x2 = (x+width)
        y2 = y1
        
        self.grid[all] = {}
        self.grid[all].x1 = x1
        self.grid[all].y1 = y1
        self.grid[all].x2 = x2
        self.grid[all].y2 = y2
        
        all = (all +1)
    end
    
end -- abstract grid function end

-- Function abstractNode

function GridClass:abstractNode ()


x = (self.params["x"]-(self.params["width"]/2));
y = (self.params["y"]-(self.params["height"]/2));
height = self.params["height"]
width = self.params["width"]
AmountX = self.params["AmountX"]
AmountY = self.params["AmountY"]

CountX = (AmountX+2)
CountY = (AmountY+2)             
-- var i,j
x1 = x
y1 = y
pm = 0
all = 0
offset = 0

for j=offset,CountY,1 do 
    
    for i=offset,CountX,1 do
        
        pm = ((width/AmountX)*i)
        x1 = (x+pm)
        y1 = (y+((height/AmountY)*j))
        
        self.node[all] = {}
        self.node[all].x = x1
        self.node[all].y = y1
        
        all = (all + 1)
        end

end

    
end

-- Function abstractPanel

function GridClass:abstractPanel ()

height = self.params["height"]
width = self.params["width"] 
AmountX = self.params["AmountX"]
AmountY = self.params["AmountY"]
x = (self.params["x"]-(width/2))
y = (self.params["y"]-(height/2))

        
end




