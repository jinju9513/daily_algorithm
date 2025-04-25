// * 문제
// 주어진 두 문자열 str1과 str2의 가장 큰 공약수(GCD)를 찾아야 합니다.
// 두 문자열의 공약수는, 두 문자열을 여러 번 반복해서 만들 수 있는 문자열입니다.
// 예를 들어, "ABCABC"와 "ABC"는 공통적으로 "ABC"로 나뉠 수 있습니다.

// * 조건
// 1. 두 문자열 str1, str2는 각각 길이 1 이상 1000 이하입니다.
// 2. 문자열은 대문자로만 이루어져 있습니다.

// * 예시
// 1. 입력: str1 = "ABCABC", str2 = "ABC" 출력: "ABC"

// 2. 입력: str1 = "ABABAB", str2 = "ABAB" 출력: "AB"

// 3. 입력: str1 = "LEET", str2 = "CODE" 출력: "" (공통 부분이 없음)

// 4. 입력: str1 = "ABABABAB", str2 = "ABAB" 출력: "ABAB"
String gcdOfStrings(String str1, String str2) {
  // 두 문자열을 이어 붙였을 때 결과가 같지 않으면 공통 문자열이 없음
  if (str1 + str2 != str2 + str1) {
    return '';
  }

  // 두 문자열 길이의 최대 공약수를 구함
  int gcd(int a, int b) {
    return b == 0 ? a : gcd(b, a % b);
  }

  // str1과 str2의 길이의 최대 공약수 만큼 문자열의 앞부분을 반환
  int gcdLength = gcd(str1.length, str2.length);
  return str1.substring(0, gcdLength);
}