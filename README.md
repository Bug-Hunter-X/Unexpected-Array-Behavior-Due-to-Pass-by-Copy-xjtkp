# Ada: Unexpected Array Behavior Due to Pass-by-Copy

This example demonstrates a potential issue in Ada related to array parameters and pass-by-copy semantics.  When an array is passed as a parameter, a copy is made.  Modifying the array within the procedure doesn't affect the original array in the calling procedure unless explicitly returned.

**Problem:** In the provided code, assignment of A to B creates a copy. Modifying A(1) does not change B(1).  The loop then prints the modified A.  Developers might erroneously expect modifications to A to affect B.

**Solution:**  Use a mechanism that allows both A and B to reference the same memory to correctly share updates, such as using an access type or out parameter.