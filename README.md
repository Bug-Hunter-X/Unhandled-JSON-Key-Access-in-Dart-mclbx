# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart applications involving accessing JSON data: attempting to access a key that might not exist in the JSON response.  Improper error handling can lead to unexpected crashes or incorrect program behavior.

The `bug.dart` file shows the flawed code.  The `bugSolution.dart` file provides a corrected version that includes robust error handling.

**Key Improvements in the Solution:**

* **Null Checks:** Before accessing the value, we check if the key exists in the JSON map using `jsonData.containsKey('keyName')`.  This prevents exceptions from non-existent keys.
* **Error Handling:** A `try-catch` block is used to handle potential exceptions during JSON decoding and data access.  This helps gracefully handle errors without crashing the application.
* **Improved Logging:** More informative logging is included to help with debugging and monitoring in production environments.

This example is a simple demonstration; more complex scenarios might require more sophisticated error handling and data validation techniques.