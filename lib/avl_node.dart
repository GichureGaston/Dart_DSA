int height = 0;
int get balanceFactor => leftHeight - rightHeight;
int get leftHeight => leftChild?.height ?? -1;
int get rightHeight => rightChild?.height ?? -1;
