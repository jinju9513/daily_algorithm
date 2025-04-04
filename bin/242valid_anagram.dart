/* 
* 문제
두 개의 문자열 s와 t가 주어졌을 때,
t가 s의 애너그램인지 확인하는 함수를 작성하세요.
애너그램은 두 문자열이 같은 문자를 같은 개수만큼 가지고 있지만, 순서는 다른 경우를 말합니다.

* 조건
1. 1 <= s.length, t.length <= 5 * 10^4
2. s와 t는 영어 소문자로만 이루어져 있습니다.

* 예시
1. 입력: s = "anagram", t = "nagaram" 출력: true
	설명: t는 s의 애너그램입니다.

2. 입력: s = "rat", t = "car" 출력: false
	설명: t는 s의 애너그램이 아닙니다. */

import 'package:collection/collection.dart';
class Solution {
  bool isAnagram(String s, String t) {

    List<String> sList = s.split('')..sort();

    List<String> tList = t.split('')..sort();

    return ListEquality().equals(sList, tList);
  }
}