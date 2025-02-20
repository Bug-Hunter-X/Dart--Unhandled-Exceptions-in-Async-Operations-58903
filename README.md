# Dart Unhandled Exception Handling

This example demonstrates a common issue in Dart: insufficient error handling in asynchronous operations, particularly network requests and JSON parsing.  The `fetchData` function attempts to fetch data from an API, parse the JSON response, and handle potential errors. However, without considering the specific types of exceptions, it can lead to silent failures or crashes.

## Bug

The original `fetchData` function lacks specific exception handling for `SocketException` (network errors) and `FormatException` (JSON parsing errors). This can result in the app crashing or behaving unexpectedly if these errors occur.

## Solution

The improved `fetchData` function in `bugSolution.dart` uses `try-catch` blocks to handle `SocketException` and `FormatException` separately. This allows for more informative error messages and better recovery strategies.

## How to Run

1.  Make sure you have Dart installed.
2.  Run `dart bug.dart` to see the original bug in action.
3.  Run `dart bugSolution.dart` to see the solution.
