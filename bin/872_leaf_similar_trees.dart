
  class TreeNode {
    int val;
    TreeNode? left;
    TreeNode? right;
    TreeNode([this.val = 0, this.left, this.right]);
  }
 
class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int> list1 = [];
    List<int> list2 = [];

    void collect(TreeNode? node, List<int> leaves) {
    if (node == null) return;

    if (node.left == null && node.right == null) {
      leaves.add(node.val);
      return;
    }

    collect(node.left, leaves);
    collect(node.right, leaves);
    }

    collect(root1, list1);
    collect(root2, list2);

    if(list1.length != list2.length)return false;

    for(int i =0; i< list1.length; i++){
        if(list1[i] != list2[i])return false;
    }
    return true;
  }
}