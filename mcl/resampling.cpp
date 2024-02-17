#include<iostream>


double w[] = { 0.6, 1.2, 2.4, 0.6, 1.2 };

void ComputeProb(double w[], int n) {
	double W = 0;
	for (int i = 0; i < n; i++) {
		W += w[i];
	}

	for (int i = 0; i < n; i++) {
		w[i] /= W;
		std::cout << "p" << i + 1 << "=" << w[i] << std::endl;
	}

}

int main() {
	int n = sizeof(w) / sizeof(w[0]);
	 ComputeProb(w, n);
	

	return 0;
}