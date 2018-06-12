//Drew Overgaard
//Comp 141 Programming Languages
//Lab 12 Exceptions

#include <iostream>
#include <vector>
#include <string>
#include <sstream>
#include <ctype.h>
#include <stdexcept>
#include <exception>

using namespace std;

int StringToInteger(const string& input);
void what(string);

int main()
{

	string hello = "Hello";

	try
	{
		StringToInteger(hello);
	}
	catch (exception ex)
	{
		string m = "Exception thrown in main!";
		throw ex;
		what(m);
	}

	vector<int> dataItems(10);

	try
	{
		dataItems.at(100);
	}
	catch (exception& e)
	{
		cout << e.what();
		//This is what happens for Question 2
		//Prints out invalid vector<t> subscript
	}
	//This is what happens for Question 1
	//Unhandled exception at 0x76C43FC8 in Lab 12 Exceptions.exe: Microsoft C++ exception: std::out_of_range at memory location 0x00EFFC54.


}

int StringToInteger(const string& input) {
	invalid_argument ex("Cannot parse " + input + " as an integer.");



	stringstream converter(input);  // feed string into a stringstream for re-reading
	int result;
	//converter >> result;  // attempt to read as an int
	// converter.fail() will be true here if the string isn't a number
	try
	{
		if (converter.fail())
		{
			converter >> result;  // attempt to read as an int
			throw ex;
		}
	}
	catch (invalid_argument ex)
	{
		string m = "The string isn't a number.";
		//cout << ex.what() << endl;
		what(m);
	}


	char leftover; // See if anything's left over.

	//converter >> leftovewr;
	// if converter.fail() is NOT true here, it means that there was more than just a number in the string
	try
	{
		if (!converter.fail())
		{
			converter >> leftover;
			throw ex;
		}
	}
	catch (invalid_argument ex)
	{
		string m = "There was more than just a number in the string.";
		//cout << ex.what() << endl;
		what(m);
	}

	//return result;
}

void what(string message) {
	cout << message << endl;
}