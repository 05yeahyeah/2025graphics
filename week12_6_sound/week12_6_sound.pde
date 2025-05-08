// week12_6_sound
// 要有聲音, 需要聲音的 Library 函式庫 (mp3, wav, wma)
// Sketch - Library - Libraries 找 sound
// 會看到sound | Provides a simple way to work with audio
// 
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = new SoundFile(this, "music.mp3");
  mySound.play();
}
void draw(){
  
}
