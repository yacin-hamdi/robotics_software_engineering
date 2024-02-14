#include <iostream>
#include <math.h>

using namespace std;

double f(double mu, double sigma2, double x) {
	double prob = (1 / (sqrt(2 * M_PI * sigma2))) * exp(-pow(x - mu, 2) / (2 * sigma2));
	return prob;
}

int main() {
	std::cout << f(10.0, 4.0, 8.0) << std::endl;
	return 0;
}