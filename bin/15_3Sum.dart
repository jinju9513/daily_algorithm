// * 문제
// 정수 배열 nums가 주어질 때, 총합이 0이 되는 모든 고유한 세 숫자의 조합을 찾으세요.

// 각 조합은 nums[i] + nums[j] + nums[k] == 0을 만족해야 합니다.
// 결과에는 중복된 조합이 포함되지 않아야 합니다.


// * 조건
// 3 <= nums.length <= 3000
// -10^5 <= nums[i] <= 10^5

// * 예시
// 예제 1
// 	입력: nums = [-1, 0, 1, 2, -1, -4]
// 	출력: [[-1, -1, 2], [-1, 0, 1]]
// 	설명: 
// 		nums[i] + nums[j] + nums[k] == 0을 만족하는 조합:
// 			(-1) + (-1) + 2 = 0
// 			(-1) + 0 + 1 = 0

// 예제 2:
// 	입력: nums = [0, 1, 1]
// 	출력: []

// 예제 3:
// 	입력: nums = [0, 0, 0]
// 	출력: [[0, 0, 0]]

List<List<int>> threeSum(List<int> nums) {
  // 1. 배열 정렬
  nums.sort();
  List<List<int>> result = [];

  // 2. 배열 순회
  for (int i = 0; i < nums.length - 2; i++) {
    // 중복된 기준 값은 건너뜀
    if (i > 0 && nums[i] == nums[i - 1]) continue;

    int left = i + 1;
    int right = nums.length - 1;

    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];

      if (sum == 0) {
        result.add([nums[i], nums[left], nums[right]]);
        // 중복된 값 건너뜀
        while (left < right && nums[left] == nums[left + 1]) left++;
        while (left < right && nums[right] == nums[right - 1]) right--;
        left++;
        right--;
      } else if (sum < 0) {
        left++;
      } else {
        right--;
      }
    }
  }

  return result;
}