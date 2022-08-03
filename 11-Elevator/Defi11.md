* Main reason of the hack is because the interface of building declare the isLastFloor function without any view or pure types in the function definition.
* Then we can change state and do this.

Extract from OZ :
```
You can use the view function modifier on an interface in order to prevent state modifications. The pure modifier also prevents functions from modifying the state. Make sure you read Solidity's documentation and learn its caveats.

An alternative way to solve this level is to build a view function which returns different results depends on input data but don't modify state, e.g. gasleft().
```
