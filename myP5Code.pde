//🟢setup Function - will run once
setup = function() {
    size(800, 600);
    
    
};

var rancolor1 = color(random(0,255),random(0,255),random(0,255));
var rancolor2 = color(random(0,255),random(0,255),random(0,255));
var rancolor3 = color(random(0,255),random(0,255),random(0,255));
var rancolor4 = color(random(0,255),random(0,255),random(0,255));
var SquidX1 = -75
var WhaleX1 = 775
var CrabY1 = 675


//🟢draw Function - will run on repeat
draw = function(){
    background(255,255,255,0);
    drawSquid(0 + SquidX1, 100, rancolor1); 
    drawSquid(0 + SquidX1, 250, rancolor2);
    drawSquid(0 + SquidX1, 400, rancolor3);
    drawSquid(0 + SquidX1, 550, rancolor4);
    SquidX1 ++ ;
    if (SquidX1 > 800){
      SquidX1 = -75;
 rancolor1 = color(random(0,255),random(0,255),random(0,255));
 rancolor2 = color(random(0,255),random(0,255),random(0,255));
 rancolor3 = color(random(0,255),random(0,255),random(0,255));
 rancolor4 = color(random(0,255),random(0,255),random(0,255));    
      };
    
    drawWhale(WhaleX1, 175, rancolor1);
    drawWhale(WhaleX1, 325, rancolor1);
    drawWhale(WhaleX1, 475, rancolor1);
    WhaleX1 --;
    if (WhaleX1 < -100) {
    WhaleX1 = 775;
    }
    
    drawCrab(350, CrabY1, rancolor1);
    CrabY1 --;
    if (CrabY1 < -200) {
    CrabY1 = 675;
    }
    
    
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawSquid = function(SquidX, SquidY, SquidColor){
  textSize(60);
  fill(SquidColor);
  text("🦑", SquidX, SquidY);
};

var drawWhale = function(WhaleX, WhaleY, WhaleColor){
  textSize(60);
  fill(WhaleColor);
  text("🐋", WhaleX, WhaleY);
};

var drawCrab = function(CrabX, CrabY, CrabColor){
  textSize(60);
  fill(CrabColor);
  text("🦀", CrabX, CrabY);
};




