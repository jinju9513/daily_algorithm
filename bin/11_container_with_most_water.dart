// * 문제
// 높이를 나타내는 양의 정수 배열 height가 주어질 때,
// 두 개의 막대를 선택해 만들어진 용기의 가장 큰 물 저장 용량을 구하세요.
// 용기는 막대의 높이와 그들 사이의 거리로 정의되며, 
// 용량은 더 낮은 막대의 높이와 두 막대 사이의 거리를 곱한 값으로 계산됩니다.

// * 예시
// 1. 입력: height = [1,8,6,2,5,4,8,3,7] 출력: 49
// 	설명: 배열의 두 번째와 마지막 요소인 높이 8과 7이 가장 큰 용량을 만들어냅니다. 이 용량은 min(8, 7) * (8 - 1) = 49입니다.

// 2. 입력: height = [1,1] 출력: 1
// 	설명: 유일하게 가능한 용량은 min(1, 1) * (1 - 0) = 1입니다.

import 'dart:math';

int maxArea(List<int> height) {
  int left = 0;
  int right = height.length - 1;
  int maxArea = 0;

  while (left < right) {
    int currentHeight = min(height[left], height[right]);
    int currentArea = currentHeight * (right - left);
    maxArea = max(maxArea, currentArea);

    // 낮은 높이의 포인터를 움직여 더 높은 영역을 찾음
    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return maxArea;
}