// * 문제
// 문자열 s가 주어졌을 때, 중복된 문자가 없는 가장 긴 부분 문자열의 길이를 구합니다.

// * 조건
// 0 <= s.length <= 5 * 10^4
// s는 영어 대소문자, 숫자, 기호, 공백으로 구성될 수 있습니다.

// * 예시
// 예제 1
// 	입력: s = "abcabcbb"
// 	출력: 3
// 	설명: 반복되지 않는 가장 긴 부분 문자열은 "abc"이며 길이는 3입니다.


// 예제 2:
// 	입력: s = "bbbbb"
// 	출력: 1
// 	설명: 반복되지 않는 가장 긴 부분 문자열은 "b"이며 길이는 1입니다.
	
// 예제 3:
// 	입력: s = "pwwkew"
// 	출력: 3
// 	설명: 반복되지 않는 가장 긴 부분 문자열은 "wke"이며 길이는 3입니다.
// 			 답이 "pwke"가 아닌 이유는 부분 문자열이 연속적이어야 하기 때문입니다.
int lengthOfLongestSubstring(String s) {
  Map<String, int> charIndexMap = {};
  int maxLength = 0;
  int windowStart = 0;

  for (int windowEnd = 0; windowEnd < s.length; windowEnd++) {
    String currentChar = s[windowEnd];

    // 중복 문자 발견 시, windowStart 갱신
    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar]! >= windowStart) {
      windowStart = charIndexMap[currentChar]! + 1;
    }

    // 현재 문자 위치 갱신
    charIndexMap[currentChar] = windowEnd;

    // 최대 길이 갱신
    maxLength = (windowEnd - windowStart + 1).clamp(maxLength, s.length);
  }

  return maxLength;
}
