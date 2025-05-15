// *문제*
// 다음은 2부터 9까지 포함된 숫자 문자열이 주어질 때, 
// 해당 숫자가 나타낼 수 있는 모든 가능한 문자 조합을 반환하는 문제입니다. 
// 답은 임의의 순서로 반환하면 됩니다.

// 숫자와 문자 간의 매핑(전화 버튼처럼)은 아래와 같습니다. 숫자 1은 어떤 문자와도 매핑되지 않습니다.
// *조건*
// 0 <= digits.length <= 4
// digits[i]는 ['2', '9'] 범위에 속하는 숫자입니다.

// *예시*
// 예시 1:
// 	입력: digits = "23"
// 	출력: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

// 예시 2:
// 	입력: digits = ""
// 	출력: []

// 예시 3:
// 	입력: digits = "2"
// 	출력: ["a","b","c"]
List<String> letterCombinations(String digits) {
  if (digits.isEmpty) return [];

  Map<String, String> phoneMap = {
    '2': 'abc', '3': 'def', '4': 'ghi', '5': 'jkl', '6': 'mno',
    '7': 'pqrs', '8': 'tuv', '9': 'wxyz'
  };

  List<String> result = [];
  
  void backtrack(int index, String current) {
    if (index == digits.length) {
      result.add(current);
      return;
    }

    String letters = phoneMap[digits[index]]!;
    for (int i = 0; i < letters.length; i++) {
      backtrack(index + 1, current + letters[i]);
    }
  }

  backtrack(0, "");
  return result;
}
