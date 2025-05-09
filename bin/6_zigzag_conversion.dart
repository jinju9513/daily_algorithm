// * 문제
// 주어진 문자열 s를 numRows 개의 행으로 지그재그 패턴으로 배치한 후, 행 순서대로 문자열을 읽어 변환 결과를 반환합니다.
// 예를 들어, s = "PAYPALISHIRING"와 numRows = 3이 주어지면 아래와 같이 배치됩니다.
// P   A   H   N
// A P L S I I G
// Y   I   R
// 결과 문자열은 "PAHNAPLSIIGYIR"이 됩니다.

// * 조건
// 1. 1≤s.length≤1000
// 2. 1≤numRows≤1000
// 3. s는 영어 알파벳 소문자와 대문자로 구성됩니다.

// * 예시
// 예제 1
// 	입력: s = "PAYPALISHIRING", numRows = 3
// 	출력: "PAHNAPLSIIGYIR"

// 예제 2
// 	입력: s = "PAYPALISHIRING", numRows = 4
// 	P     I    N
//   A   L S  I G
//   Y A   H R
//   P     I
// 	출력: "PINALSIGYAHRPI"

// 예제 3
// 	입력: s = "A", numRows = 1
// 	출력: "A"

String convert(String s, int numRows) {
  if (numRows == 1) return s;

  List<StringBuffer> rows = List.generate(
      numRows, (index) => StringBuffer());
      // 4 => [StringBuffer(), StringBuffer(),StringBuffer(),StringBuffer()] 
  int currentRow = 0;
  bool isGoingDown = false;

  for (var char in s.split('')) {
    rows[currentRow].write(char);
    if (currentRow == 0 || currentRow == numRows - 1) {
      isGoingDown = !isGoingDown;
    }
    currentRow += isGoingDown ? 1 : -1;
  }

  return rows.join('');
}
