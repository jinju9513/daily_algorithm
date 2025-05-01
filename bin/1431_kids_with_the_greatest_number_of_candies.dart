
// * 문제
// 각 아이에게 주어진 사탕의 개수를 나타내는 정수 배열 candies가 주어집니다.
// 당신은 각 아이에게 추가로 줄 수 있는 사탕의 개수를 나타내는 정수 extraCandies도 갖고 있습니다.
// 각 아이가 가진 사탕의 수에 extraCandies를 더했을 때,
// 그 아이가 가장 많은 사탕을 가진 아이 중 하나가 될 수 있는지를 확인하세요.

// 결과로 각 아이에 대해 true 또는 false를 담은 배열을 반환하세요.
// 만약 그 아이가 extraCandies를 더했을 때,
// 그가 가장 많은 사탕을 가진 아이가 될 수 있다면 true, 그렇지 않다면 false를 반환합니다.

// * 조건
// 1. candies.length는 2 이상 100 이하입니다.
// 2. candies[i]는 1 이상 100 이하입니다.
// 3. extraCandies는 1 이상 50 이하입니다.

// * 예시
// 1. 입력: candies = [2,3,5,1,3], extraCandies = 3 출력: [true, true, true, false, true]
// 	설명:
// 	1번 아이에게 3개의 사탕을 추가하면 5개가 됩니다. 이는 가장 많은 사탕 수(5)와 같습니다.
// 	2번 아이에게 3개의 사탕을 추가하면 6개가 되어 가장 많은 사탕을 가진 아이가 됩니다.
// 	3번 아이는 이미 가장 많은 사탕을 가지고 있습니다.
// 	4번 아이는 사탕을 추가해도 최대 사탕 수에 도달하지 못합니다.
// 	5번 아이는 3개의 사탕을 추가하면 6개가 되어 가장 많은 사탕을 가진 아이가 됩니다.

// 2. 입력: candies = [4,2,1,1,2], extraCandies = 1 출력: [true, false, false, false, false]

// 3. 입력: candies = [12,1,12], extraCandies = 10 출력: [true, false, true]


class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int candiesMax = candies.reduce((a ,b)=> a > b ? a : b);

    List<bool> result =[];

    for(int candy in candies){
        result.add(candy + extraCandies >= candiesMax);
    }
    return result;
  }
}