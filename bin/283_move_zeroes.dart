/*
* 문제
주어진 정수 배열 nums에서 모든 0을 배열의 끝으로 이동시키고, 
나머지 숫자는 원래의 상대적인 순서를 유지하도록 하세요.
이 작업은 배열을 수정하여 수행해야 하며, 추가적인 배열을 사용하지 않고 수행해야 합니다.

* 조건
1. 1 <= nums.length <= 10^4
2. -2^31 <= nums[i] <= 2^31 - 1 
(2^31 -> int형의 범위) -21억 ~ 21억

* 예시
1. 입력: nums = [0, 1, 0, 3, 12] 출력: [1, 3, 12, 0, 0]
	설명: 모든 0이 배열의 끝으로 이동하고, 나머지 숫자는 순서를 유지합니다.

2. 입력: nums = [0] 출력: [0]
	설명: 배열에 0만 존재할 경우 변하지 않습니다.
*/ 


class Solution {
  void moveZeroes(List<int> nums) {
    int lastNonZeroIndex = 0;

    for(int i=0; i<nums.length; i++){
        if(nums[i] != 0){//0이 아니라면
        nums[lastNonZeroIndex] = nums[i];
        lastNonZeroIndex++; //다음 순서로
        }
    }
    for(int i = lastNonZeroIndex; i<nums.length; i++ ){
            nums[i] = 0;
        }
  }
}