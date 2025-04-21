
// * 문제
// 정수 배열 nums가 주어질 때, 피벗 인덱스를 찾아야 합니다.
// 피벗 인덱스란, 인덱스 i의 왼쪽에 있는 모든 원소의 합과 오른쪽에 있는 모든 원소의 합이 같은 위치를 말합니다.

// 피벗 인덱스 i를 찾으면 해당 값을 반환하고, 존재하지 않으면 -1을 반환하세요.
// 만약 피벗 인덱스가 여러 개일 경우 가장 왼쪽에 있는 인덱스를 반환합니다.

// * 조건
// 1. 1≤nums.length≤10^4
// 2. -1000 <= nums[i] <= 1000

// * 예시
// 1. 입력: nums = [1, 7, 3, 6, 5, 6] 출력: 3
// 	설명: nums[3]의 왼쪽 합은 11이고 오른쪽 합도 11이므로 피벗 인덱스는 3입니다.

// 2. 입력: nums = [1, 2, 3] 출력: -1
// 	설명: 피벗 인덱스가 없습니다.

// 3. 입력: nums = [2, 1, -1] 출력: 0
// 	설명: nums[0]의 왼쪽 합은 0이고 오른쪽 합은 0이므로 피벗 인덱스는 0입니다.

class Solution {
  int pivotIndex(List<int> nums) {
    
    int totalSum = nums.reduce((a,b)=> a+b);

    int leftSum = 0;

    for(int i =0; i< nums.length; i++){
        int rightSum = totalSum - leftSum - nums[i];
        if(leftSum ==rightSum){
            return i;
        }
        leftSum += nums[i];
    }
    return -1;


  }
}