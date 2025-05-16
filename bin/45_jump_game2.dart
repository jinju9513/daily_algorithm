// * 문제
// 주어진 배열 nums에서 각 원소는 해당 인덱스에서 점프할 수 있는 최대 거리입니다.
// 이 배열의 시작점인 인덱스 0에서 마지막 인덱스에 도달하기 위해 필요한 최소 점프 수를 구하는 문제입니다.

// * 조건
// 1. 1 <= nums.length <= 10^4
// 2. 0 <= nums[i] <= 10^4

// * 예시
// 예제 1
// 	입력: nums = [2,3,1,1,4]
// 	출력: 2
// 	설명: 0번째 인덱스에서 2칸 점프하여 1에 도착한 후, 1에서 4로 점프하여 끝에 도달. 총 점프 수는 2.

// 예제 2
// 	입력: nums = [2,3,0,1,4]
// 	출력: 2
// 	설명: 0번째 인덱스에서 2칸 점프하여 1에 도착한 후, 1에서 4로 점프하여 끝에 도달. 총 점프 수는 2.
import 'dart:math';

class Solution {
    int jump(List<int> nums) {
        if (nums.length < 2) return 0; // 점프가 필요 없는 경우
        
        int jumps = 0; // 점프 수
        int currentEnd = 0; // 현재 점프에서 도달 가능한 끝 인덱스
        int farthest = 0; // 다음 점프에서 도달할 수 있는 가장 먼 인덱스
        
        for (int i = 0; i < nums.length - 1; i++) {
            // 최대 도달 가능한 인덱스를 갱신
            farthest = max(farthest, i + nums[i]);
            
            // 현재 인덱스가 현재 점프에서 도달 가능한 끝 인덱스에 도달했을 경우
            if (i == currentEnd) {
                jumps++; // 점프 수 증가
                currentEnd = farthest; // 다음 점프에서의 끝 인덱스를 갱신
                
                // 이미 마지막 인덱스에 도달할 수 있는 경우
                if (currentEnd >= nums.length - 1) {
                    break;
                }
            }
        }
        
        return jumps; // 총 점프 수 반환
    }
}
