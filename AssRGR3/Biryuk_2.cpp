#include <iostream>

extern "C" int __stdcall Task1(int*, int);
extern "C" int __cdecl Task2(int*, int);
extern "C" int __stdcall Task3(int*, int);
extern "C" int __cdecl Task4(int*, int);
extern "C" int __fastcall Task5(int*, int);

int main() {
	const int N = 20;
	int* a = new int[N]{ 8, 4, 6, 7, 5, 1, 9, 0, 5, 6, 3, 0, 9, 5, 0, 4, 0, 1 ,2, 3 };
	std::cout << "__stdcall: " << Task1(a, N);
	std::cout << "\n__cdecl: " << Task2(a, N);
	std::cout << "\n__stdcall: " << Task3(a, N);
	std::cout << "\n__cdecl: " << Task4(a, N);
	std::cout << "\n__fastcall: " << Task5(a, N) << '\n';
}