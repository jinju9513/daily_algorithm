/*
* 문제
문자열 pattern과 문자열 s가 주어집니다.
pattern의 각 문자가 s의 단어에 매핑될 수 있는지 확인하세요.

즉, 일대일 대응 관계로 두 문자열이 일치하는지 판단해야 합니다.
	- 같은 문자는 s의 같은 단어로 매핑되어야 합니다.
	- 다른 문자는 다른 단어로 매핑되어야 합니다.

* 조건
1 <= pattern.length <= 300
pattern은 영어 소문자로만 이루어져 있습니다.
s는 영어 소문자와 공백으로 이루어져 있으며, 공백은 하나 이상의 단어를 구분하는 데 사용됩니다.
s는 공백 문자로 시작하거나 끝나지 않으며, 단어 사이에는 하나의 공백만 존재합니다.

* 예시
예제 1
	입력: pattern = "abba", s = "dog cat cat dog"
	출력: true
	설명: 
		'a' → "dog", 'b' → "cat". 
		각 문자가 정확히 일대일로 매핑됩니다.

예제 2:
	입력: pattern = "abba", s = "dog cat cat fish"
	출력: false
	설명:
		'a' → "dog", 'b' → "cat", 'b'가 다른 단어로 매핑되어 불가능합니다.
	
예제 3:
	입력: pattern = "aaaa", s = "dog cat cat dog"
	출력: false
	설명:
		'a'가 "dog" 외의 단어로 매핑되었으므로 불가능합니다.

예제 4:
	입력: pattern = "abba", s = "dog dog dog dog"
	출력: false
	설명:
		'a'와 'b' 모두 같은 단어 "dog"로 매핑되어 불가능합니다.*/

    bool wordPattern(String pattern, String s) {
  List<String> words = s.split(' ');

  if (pattern.length != words.length) return false;

  Map<String, String> charToWord = {};
  Map<String, String> wordToChar = {};
  
  // charToWord = { a : 'cat' }
  // wordToChar = { cat : 'a' }

// pattern == 'abba'
// s == 'cat dog dog cat'
  for (int i = 0; i < pattern.length; i++) {
    String char = pattern[i];
    String word = words[i];

    if (charToWord.containsKey(char)) {
      if (charToWord[char] != word) return false;
    } else {
      charToWord[char] = word;
    }

    if (wordToChar.containsKey(word)) {
      if (wordToChar[word] != char) return false;
    } else {
      wordToChar[word] = char;
    }
  }

  return true;
}

bool wordPattern2(String pattern, String s) {
  // 공백을 기준으로 문자열 s를 단어 리스트로 분리
  var words = s.split(' ');
  
  // 패턴의 길이와 단어 개수가 다르면 매핑 불가능
  if (pattern.length != words.length) return false;

  // 문자 → 단어 매핑, 단어 → 문자 매핑을 위한 맵 생성
  var p2w = <String, String>{}; // pattern to word
  var w2p = <String, String>{}; // word to pattern

  for (var i = 0; i < pattern.length; i++) {
    var p = pattern[i], w = words[i];

    // p2w[p]가 없으면 w를 할당, 있으면 현재 단어와 비교
    if ((p2w[p] ??= w) != w ||
        // w2p[w]가 없으면 p를 할당, 있으면 현재 문자와 비교
        (w2p[w] ??= p) != p) return false;
  }

  // 모든 검사를 통과했다면 일대일 매핑이 성립
  return true;
}