import 'dart:io';
import 'dart:math';
// Challenge 1
// A number is a perfect number if is equal to sum of its proper divisors, that is, sum of its positive divisors excluding the number itself.
// Write a function to check if a given number is perfect or not.
// For example, if 15 is given as input it should print 'false' because Divisors of 15 are 1, 3 and 5. Sum of
// divisors is 9 which is not equal to 15
// if 6 is given as input it should print 'true' because Divisors of 6 are 1, 2 and 3. Sum of
// divisors is 6.
checkPerfectNumber(int number)
{

  int sum=0;

  for(int i=1;i<=number ~/2 ;i++)
    {
      if(number%i==0)
        {
          sum=sum+i;
        }
    }

  if(sum==number) {
    print("Perfect Number");
  }
  else {
    print("Not a perfect Number");
  }


}
findBounds(List <Point> points)
{
  int i;
  int length=points.length;
  for(i=0;i<length-1;i++)
  {
    if(points[i].x<points[i+1].x) //swaap
        {
      Point temp;
      temp=points[i+1];
      points[i+1]=points[i];
      points[i]=temp;
    }
  }
  int minimumx=points[i].x;// minimum x
  for(i=0;i<length-1;i++)
  {
    if(points[i].y<points[i+1].y) //swaap
        {
      Point temp;
      temp=points[i+1];
      points[i+1]=points[i];
      points[i]=temp;
    }
  }
  int minimumy=points[i].y;// minimym y
  for(i=0;i<length-1;i++)
  {
    if(points[i].x>points[i+1].x) //swaap
        {
      Point temp;
      temp=points[i+1];
      points[i+1]=points[i];
      points[i]=temp;
    }
  }
  int maximumx=points[i].x;// maximym x
  for(i=0;i<length-1;i++)
  {
    if(points[i].y>points[i+1].y) //swaap
        {
      Point temp;
      temp=points[i+1];
      points[i+1]=points[i];
      points[i]=temp;
    }
  }
  int maximumy=points[i].y;// maximym x
  //print upper bound
  print("Bottom Left: ($minimumx,$minimumy)");
  print("Top Right: ($maximumx,$maximumy)");
}



class Point {
  int x;
  int y;

  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
}
// Challenge 2
// Consider the class Point defined above
// Write a function that takes a list of Points and logs to the console the bounds of the smallest upright rectangle which encloses all the points.
// For example, given the points (-1, 0), (2, 2), (1,3) the function should print:
// Bottom-left: (-1, 0)
// Top-right: (2,3)



void main() {
  // Test the function defined above with given List of points
  List<Point> points = [Point(-1, 0), Point(2, 2), Point(1, 3)];

 findBounds(points);

  // Test the perfect number function here
  checkPerfectNumber(6);
  checkPerfectNumber(15);

}
