// * 문제
// 두 개의 문자열 s와 t가 주어졌을 때,
// 문자열 s가 t의 부분 수열인지 확인하는 함수를 작성하세요.
// 부분 수열이란 문자열에서 일부 문자를 제거하고 나머지 문자의 상대적인 순서를 유지하여 
// 만들 수 있는 문자열을 의미합니다.

// * 조건
// 1. 0 <= s.length <= 100
// 2. 0 <= t.length <= 10^4
// 3. 문자열 s와 t는 모두 소문자로 구성됩니다.

// * 예시
// 1. 입력: s = "abc", t = "ahbgdc" 출력: true
// 	설명: s는 t에서 a -> b -> c 순서로 존재하므로 부분 수열입니다.

// 2. 입력: s = "axc", t = "ahbgdc" 출력: false
// 	설명: t에는 a -> x -> c 순서로 존재하지 않으므로 부분 수열이 아닙니다.
class Solution {
  bool isSubsequence(String s, String t) {
    int sPoint =0;
    int tPoint =0;

   while(sPoint < s.length && tPoint < t.length){
    if(s[sPoint] == t[tPoint])sPoint++;

    tPoint++;
   }
   return sPoint == s.length;
  }
}