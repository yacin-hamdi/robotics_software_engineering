#include <iostream>
#include <math.h>
#include <tuple>

using namespace std;

double new_mean, new_var;
tuple<double, double> measurement_update(double mean1, double var1, double mean2, double var2) {
	new_mean = ((var2 * mean1) + (var1 * mean2)) / (var1 + var2);
	new_var = 1 / ((1 / var1) + (1 / var2));
	return make_tuple(new_mean, new_var);
}

tuple<double, double> state_prediction(double mean1, double var1, double mean2, double var2) {
	new_mean = mean1 + mean2;
	new_var = var1 + var2;
	return make_tuple(new_mean, new_var);
}

int main() {
	tie(new_mean, new_var) = state_prediction(10, 4, 12, 4);
	printf("[%f, %f]", new_mean, new_var);
	return 0;
}