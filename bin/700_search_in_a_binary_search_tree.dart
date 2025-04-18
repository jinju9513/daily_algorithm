
// * 문제
// 주어진 이진 탐색 트리(BST)에서 특정 값을 가진 노드를 찾고, 
// 그 노드를 루트로 하는 서브트리를 반환하는 문제입니다.
// 만약 값을 가진 노드가 없으면 null을 반환합니다.

// /**
//  * Definition for a binary tree node.
//  * class TreeNode {
//  *   int val;
//  *   TreeNode? left;
//  *   TreeNode? right;
//  *   TreeNode([this.val = 0, this.left, this.right]);
//  * }
//  */

// * 조건
// 1. 트리 노드의 개수는 [1, 5000] 범위에 있습니다.
// 2. 각 노드의 값 Node.val은 [1, 10^7] 범위에 있습니다.
// 3. root는 이진 검색 트리입니다.
// 4. val은 [1, 10^7] 범위에 있습니다.

// * 예시
// 예제 1
// 	입력: root = [4,2,7,1,3], val = 2
// 	출력: [2,1,3]
// 	설명:
// 		BST에서 값 2를 가진 노드를 찾고, 해당 노드를 루트로 하는 서브트리를 반환합니다.

// 예제 2
// 	입력: root = [4,2,7,1,3], val = 5
// 	출력: null
// 	설명:
// 		값 5는 트리에 없으므로 null을 반환합니다.

// Definition for a binary tree node.
 class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
class Solution {
  TreeNode? searchBST(TreeNode? root, int val) {
    if(root==null){return null;}
  if(root.val == val){
    return root;
  }else if(val < root.val){
    return searchBST(root.left, val);
  }else{
    return searchBST(root.right,val);
  }
  }
}