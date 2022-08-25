''' Directions
The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

The following are examples of expected output values:

rgb(255, 255, 255) // returns FFFFFF
rgb(255, 255, 300) // returns FFFFFF
rgb(0, 0, 0)       // returns 000000
rgb(148, 0, 211)   // returns 9400D3
'''
''' Test Cases
import "dart:math";
import "package:test/test.dart";
import "package:solution/solution.dart";

String toHex(int value) => value.toRadixString(16).padLeft(2, '0').toUpperCase();

String solution(int r, int g, int b)
{
    if (r > 255) r = 255;
    if (g > 255) g = 255;
    if (b > 255) b = 255;
    if (r < 0) r = 0;
    if (g < 0) g = 0;
    if (b < 0) b = 0;
    
    return ('"${toHex(r)}${toHex(g)}${toHex(b)}"');
}

void main() {
  test('Basic tests', () {
    expect(rgb(255, 255, 255), equals('FFFFFF'));
    expect(rgb(255, 255, 300), equals('FFFFFF'));
    expect(rgb(0, 0, 0), equals('000000'));
    expect(rgb(148, 0, 211), equals('9400D3'));
    expect(rgb(148, -20, 211), equals('9400D3'));
    expect(rgb(144, 195, 212), equals('90C3D4'));
    expect(rgb(212, 53, 12), equals('D4350C'));
  });

  Random rng = new Random();
  test('Random tests (100 assertions)', () {
    final int tests = 100;
    int r, g, b;
    for (int i = 0; i < tests; i++) {
      r = rng.nextInt(450) - 50;
      g = rng.nextInt(450) - 50;
      b = rng.nextInt(450) - 50;
      expect(rgb(r, g, b), equals(solution(r, g, b)));
    }
  });
}
'''


String rgb(int r, int g, int b)
{
  if (r<0){
    r = 0;
  } else if (r>255){
    r = 255;
  } else
    r;
  
  if (g<0){
    g = 0;
  } else if (g>255){
    g = 255;
  } else
    g;
  
  if (b<0){
    b = 0;
  } else if (b>255){
    b = 255;
  } else
    b;
  
  var r1 = hexValue((r ~/ 16));
  var r2 = hexValue(((r % 16)));
  String red = r1 + r2;
  
  var g1 = hexValue((g ~/ 16));
  var g2 = hexValue(((g % 16)));
  String green = g1 + g2; 
  
  var b1 = hexValue((b ~/ 16));
  var b2 = hexValue(((b % 16)));
  String blue = b1 + b2;
  
  return '${red}${green}${blue}'; // replace with your solution
}

String hexValue(num v){
  String hex = 'Z';
  
  if (v <10){
    hex = v.toString();
  } else if (v == 10){
    hex = 'A';
  } else if (v == 11){
    hex = 'B';
  } else if (v == 12){
    hex = 'C';
  } else if (v == 13){
    hex = 'D';
  } else if (v == 14){
    hex = 'E';
  } else if (v == 15){
    hex = 'F';
  }
  return hex;
}
