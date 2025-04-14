/*
* 문제
주어진 두 문자열 ransomNote와 magazine이 있습니다.
ransomNote를 작성하기 위해 필요한 모든 문자를 magazine에서 가져올 수 있는지 확인하세요.
각 문자는 magazine에서 단 한 번만 사용할 수 있습니다.

True 또는 False를 반환하세요.

* 조건
1 <= ransomNote.length, magazine.length <= 10⁵
ransomNote와 magazine은 소문자로만 구성됩니다.

* 예시
예제 1
	입력: ransomNote = "a", magazine = "b"
	출력: false
	설명: `ransomNote`를 작성하기 위해 필요한 'a'를 `magazine`에서 찾을 수 없습니다.


예제 2:
	입력: ransomNote = "aa", magazine = "ab"
	출력: false
	설명: `ransomNote`를 작성하기 위해 필요한 두 개의 'a'가 `magazine`에 존재하지 않습니다.

	
예제 3:
	입력: ransomNote = "aa", magazine = "aba"
	출력: true
	설명: `ransomNote`를 작성하기 위해 필요한 두 개의 'a'를 `magazine`에서 가져올 수 있습니다.

*/

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<String> temp = magazine.split(''); //문자열 나눠서 리스트로 변환

    for (var char in ransomNote.split('')) {
      // 문자열 하나씩 확인
      if (!temp.contains(char)) return false; //temp에 char가 없으면 false
      temp.remove(char); //한번 사용한 문자는 삭제 (개수체크)
    }
    return true;
  }
}

class Solution2 {
// magazine에 있는 알파벳만 사용해서 ransomNote를 만들 수 있는지 확인하는 함수
  bool canConstruct(String ransomNote, String magazine) {
    // 알파벳 소문자 26개(a~z)의 개수를 저장할 리스트 생성 및 0으로 초기화
    List<int> charCount = List.filled(26, 0);

    // magazine에 등장하는 각 문자의 개수를 charCount에 저장
    for (int i = 0; i < magazine.length; i++) {
      // 각 문자의 ASCII 코드 값을 기준으로 'a'를 0번 인덱스로 맞추기
      charCount[magazine.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    // ransomNote의 문자를 하나씩 확인하며 필요한 문자가 있는지 확인
    for (int i = 0; i < ransomNote.length; i++) {
      // 현재 문자의 인덱스 ('a' = 0, 'b' = 1, ..., 'z' = 25)
      int index = ransomNote.codeUnitAt(i) - 'a'.codeUnitAt(0);

      // 해당 문자가 더 이상 magazine에 없으면 false 반환 (만들 수 없음)
      if (charCount[index] == 0) {
        return false;
      }

      // 해당 문자를 하나 사용했으므로 개수 감소
      charCount[index]--;
    }

    // 모든 문자가 충분히 있었다면 true 반환 (만들 수 있음)
    return true;
  }
}
