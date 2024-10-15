import 'trie_node.dart';

class StringTrie {
  TrieNode<int> root = TrieNode(key: null, parent: null);
}

void insert(String text) {
  var current = root;
  for (var codeUnit in text.codeUnits) {
    current.children[codeUnit] ??= TrieNode(
      key: codeUnit,
      parent: current,
    );
    current = current.children[codeUnit]!;
  }
  current.isTerminating = true;
}
