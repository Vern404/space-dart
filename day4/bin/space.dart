import 'dart:math';

void main(){
 print("THE WAR HAS BEGIN");
}

abstract class SpaceShip{
  int health = 1000;
  int firePower = Random().nextInt(1000);

  //Methods
  //hit
  void hit(){
   print("hit");
  }
  //isDestroyed
   void isDestroyed(){
     print("isDestroyed");
  }
}


/*class BattleField implements SpaceShip{
  void startBattle(SpaceShip sp1, SpaceShip sp2){
    //Random select space ship hit first
    bool startHit = Random.nextBool();

    //SpaceShips hit each other
    if (startHit == 0){
      sp1.SpaceShip();
      sp2.SpaceShip();
    }else if (startHit == 1){
      sp2.SpaceShip();
      sp1.SpaceShip();
    }else{
      print("Peace");
    }
    //Until one of them is destroyed
  }
}
*/

class ArmoredSpaceShip extends SpaceShip{
  //Randomly absorbs hit
  double maxArmorPower;
  double randomAbsorbs = Random().nextDouble()*400;
  final double remainFire = (FirePower - randomAbsorbs).toInt;

  for(int i = 0; i >=0; i++){
    if (health >= 1000){
      if (maxArmorPower =< 400){
        SpaceShip.health = SpaceShip.health - remainFire;
      } else if (maxArmorPowr = 0){
        @override
        void hit(){
         print("Armor used up! SOS!");
        }
      }else{
        @override
        void hit(){
          print("Armor CANT USED! DANGER!");
        }
      }
   } else{
      @override
      void isDestroyed(){
        print("isDestroyed");
      }
    }
  }
}

class HighSpeedSpaceShip extends SpaceShip{
  //whether dodges hit or not
  bool dodging = Random().nextBool();
  print(dodging);

  for(int i = 0; i >=0; i++){
    if (health >= 1000){
      if (dodging == 1){
          health = health - 0;

          @override
          void hit(){
          print("successful dodge");
          }
      }
      else {
        health = health - firePower;
          @override
          void hit(){
            print("failed dodge");
          }
      }
      }else{
        @override
          void isDestroyed(){
            print("isDestroyed");
          }
      }
  }
}