
// * 문제
// 두 개의 정수 배열 nums1과 nums2가 주어집니다. 
// 각 배열의 고유한 원소들 중 서로의 배열에 없는 원소를 찾아 반환하세요.

// nums1에 있고 nums2에는 없는 모든 고유한 요소의 리스트와, 
// nums2에 있고 nums1에는 없는 모든 고유한 요소의 리스트를 반환해야 합니다.

// 결과는 [answer1, answer2]의 형태로 반환되며, 
// answer1은 nums1의 고유한 원소 리스트이고, 
// answer2는 nums2의 고유한 원소 리스트입니다.

// * 조건
// 1. 1 ≤ nums1.length,nums2.length ≤ 1000
// 2. −1000 ≤ nums1[i],nums2[i] ≤ 1000

// * 예시
// 1. 입력: nums1 = [1,2,3], nums2 = [2,4,6] 출력: [[1,3],[4,6]]
// 	설명: nums1에는 [1, 3]이 있고 nums2에는 [4, 6]이 존재합니다.

// 2. 입력: nums1 = [1,2,3,3], nums2 = [1,1,2,2] 출력: [[3], []]
// 	설명: nums1에는 [3]이 고유하며, nums2에는 고유한 추가 요소가 없습니다.
class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> set1 =nums1.toSet();
    Set<int> set2 =nums2.toSet();

    List<int> onlySet1 = set1.difference(set2).toList();
    List<int> onlySet2 = set2.difference(set1).toList();

    return [onlySet1,onlySet2];
  }
}