// 다음은 로마 숫자를 나타내는 7개의 서로 다른 기호와 그 값입니다:

// | **기호** | **값** |
// |:-------:|:------:|
// |   I     |    1   |
// |   V     |    5   |
// |   X     |   10   |
// |   L     |   50   |
// |   C     |  100   |
// |   D     |  500   |
// |   M     | 1000   |

// 로마 숫자는 가장 높은 자리값부터 낮은 자리값까지 순서대로 변환한 결과를 연결하여 형성됩니다. 
// 자리값을 로마 숫자로 변환하기 위해 다음 규칙을 따릅니다:

// 1. 값이 4 또는 9로 시작하지 않을 경우:
//    - 입력값에서 뺄 수 있는 최대값을 나타내는 기호를 선택합니다.
//    - 그 기호를 결과에 추가합니다.
//    - 해당 값만큼 입력값에서 뺀 나머지를 다시 로마 숫자로 변환합니다.

// 2. 값이 4 또는 9로 시작할 경우:
//    - 빼기 형식(subtractive form)을 사용하여 다음 기호에서 하나를 뺀 값을 나타냅니다. 
//      예를 들어, 4는 5(V)보다 1(I) 적으므로 `IV`, 9는 10(X)보다 1(I) 적으므로 `IX`입니다.
//    - 사용되는 빼기 형식은 다음과 같습니다:
//      - 4 (IV), 9 (IX), 40 (XL), 90 (XC), 400 (CD), 900 (CM)

// 3. 같은 기호를 연속해서 나타낼 수 있는 최대 횟수는 3회:
//    - 10의 거듭제곱(I, X, C, M)만 연속해서 최대 3번까지 사용할 수 있습니다.
//    - 5(V), 50(L), 500(D)은 연속해서 사용할 수 없습니다. 
//      만약 4번 이상 사용해야 할 경우 빼기 형식을 사용합니다.

// 입력된 정수를 로마 숫자로 변환하는 문제입니다.

// 예시 1:
// - 입력: num = 3749
// - 출력: "MMMDCCXLIX"

// 설명:
// - 3000 = `MMM` (1000(M) + 1000(M) + 1000(M))
// - 700 = `DCC` (500(D) + 100(C) + 100(C))
// - 40 = `XL` (10(X)가 50(L)보다 적음)
// - 9 = `IX` (1(I)이 10(X)보다 적음)

// 참고: `49`는 `1(I)이 50(L)보다 적다`고 표현하지 않습니다. 변환은 자리값에 기반합니다.

// ---

// 예시 2:
// - 입력: `num = 58`  
// - 출력: `"LVIII"`

// 설명:
// - 50 = `L`
// - 8 = `VIII`

// ---

// 예시 3:
// - 입력: `num = 1994`  
// - 출력: `"MCMXCIV"`

// 설명:
// - 1000 = `M`
// - 900 = `CM`
// - 90 = `XC`
// - 4 = `IV`

// ---

// 제약 조건:
// - 1 <= num <= 3999

class Solution {
  String intToRoman(int num) {
    // 각 로마 숫자와 그에 해당하는 값의 배열
    List<String> symbols = [
      "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"
    ];
    List<int> values = [
      1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1
    ];

    String result = '';
    
    // 큰 값부터 작은 값까지 차례대로 처리
    for (int i = 0; i < symbols.length; i++) {
      while (num >= values[i]) {
        result += symbols[i];
        num -= values[i];
      }
    }
    
    return result;
  }
}

class Solution2 {
  String intToRoman(int num) {
    final List<MapEntry<int, String>> valueSymbol = [
    MapEntry(1000, 'M'),
    MapEntry(900, 'CM'),
    MapEntry(500, 'D'),
    MapEntry(400, 'CD'),
    MapEntry(100, 'C'),
    MapEntry(90, 'XC'),
    MapEntry(50, 'L'),
    MapEntry(40, 'XL'),
    MapEntry(10, 'X'),
    MapEntry(9, 'IX'),
    MapEntry(5, 'V'),
    MapEntry(4, 'IV'),
    MapEntry(1, 'I'),
  ];

    String result ='';
    for(final entry in valueSymbol){
        while(num >= entry.key){
            result += entry.value;
            num -= entry.key;
        }
    }
    return result;
  }
}
