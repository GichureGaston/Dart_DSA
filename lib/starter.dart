import 'avl_tree.dart';
void main(){
  final tree = AvlTree<int>();
  for(var 1= 0; i<15; i++){
    tree.insert(i);
  }
  print(tree);
}
