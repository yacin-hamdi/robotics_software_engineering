#include<iostream>

using namespace std;

int main() {

	//Given P(POS), P(DOOR|POS) and P(DOOR|星OS)
	double a = 0.0002; //P(POS) = 0.002
	double b = 0.6; //P(DOOR|POS) = 0.6
	double c = 0.05; //P(DOOR|星OS) = 0.05

	//TODO: Compute P(星OS) and P(POS|DOOR)
	double d = 1 - a;                  //P(星OS)
	double e = (a * b) / ((a * b) + (c * d));          //P(POS|DOOR)

	//Print Result
	cout << "P(POS|DOOR)= " << e << endl;

	return 0;
}