//From CodeWars

//Create a program that returns the number of days before content evaporates below a threshold
//We know the content of the evaporator (content in ml), the percentage of foam or gas lost every day (evap_per_day)
//and the threshold (threshold) in percentage beyond which the evaporator is no longer useful. All numbers are strictly positive.

//The program reports the nth day (as an integer) on which the evaporator will be out of use.

//example: evaporator(10, 10, 5) -> 29

/*test("Sample Test Cases", () {
    expect(evaporator(10, 10, 10), equals(22));
    expect(evaporator(10, 10, 5), equals(29));
    expect(evaporator(100, 5, 5), equals(59));
  });
}*/

import "dart:core";
import "dart:math";

int evaporator(double content, double evap_per_day, double threshold){
  num concentration = 100; //base concentration equal to 100%
  int days = 0; //Set days counter to 0
  
  //Check if concentration exceeds minimum threshold if it does add 1 day and decrease concentration
  while(concentration >= threshold){
    concentration = concentration * (1-(evap_per_day/100));
    days += 1;
  }
  return days;
}
