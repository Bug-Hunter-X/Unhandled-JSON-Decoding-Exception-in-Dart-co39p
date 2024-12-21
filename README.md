# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart when decoding JSON responses from APIs and provides a solution.

The `bug.dart` file contains the erroneous code that does not handle potential exceptions during JSON decoding.  The `bugSolution.dart` file shows the corrected code that addresses this issue.

## Problem

The original code directly calls `jsonDecode` on the API response without checking the HTTP status code or handling potential exceptions. If the API returns an error or non-JSON data, this will throw a `FormatException`, causing the app to crash.

## Solution

The solution introduces error handling to check the HTTP status code before decoding and uses a `try-catch` block to handle potential exceptions during the decoding process. This makes the code more robust and prevents unexpected crashes.