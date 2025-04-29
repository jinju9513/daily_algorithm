// * 문제
// 정수 배열 arr가 주어집니다.
// 배열 arr의 각 원소가 나타나는 빈도 수가 고유한지 확인하고자 합니다.
// 각 원소의 빈도가 모두 다르면 true를 반환하고, 그렇지 않으면 false를 반환합니다.

// * 조건
// 1. 1≤arr.length≤1000
// 2. −1000≤arr[i]≤1000

// * 예시
// 1. 입력: arr = [1,2,2,1,1,3] 출력: true
// 	설명: 1은 3번, 2는 2번, 3은 1번 나타나므로 각 빈도가 고유합니다.

// 2. 입력: arr = [1,2] 출력: false
// 	설명: 1과 2는 각각 1번 나타나므로 빈도가 고유하지 않습니다.

// 3. 입력: arr = [-3,0,1,-3,1,1,1,-3,10,0] 출력: true
// 	설명: 각 원소의 빈도는 고유합니다.
class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> arrCount ={};

    for(int nums in arr){
        arrCount[nums] =(arrCount[nums] ?? 0)+1; 
    }

    List<int> valCount = arrCount.values.toList();
    Set<int> uniqueCount = valCount.toSet();

    if(valCount.length == uniqueCount.length){
        return true;
    }
    return false;
  }
}