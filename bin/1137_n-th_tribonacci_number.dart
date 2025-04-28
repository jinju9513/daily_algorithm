// * 문제
// n번째 Tribonacci 수를 구하는 문제입니다.
// Tribonacci 수열은 초기 값이 T0 = 0, T1 = 1, T2 = 1로 시작하며,
// Tn = T(n-1) + T(n-2) + T(n-3)로 정의됩니다.

// * 조건
// 1. 0 <= n <= 37
// 2. answer <= 2^31 - 1.

// * 예시
// 예제 1:
// 	입력: n = 4
// 	출력: 4
// 	설명: T3까지 계산하면 [0, 1, 1, 2, 4]가 됩니다.

// 예제 2:
// 	입력: n = 25
// 	출력: 1389537

int tribonacci(int n) {
  if (n == 0) return 0;
  if (n == 1 || n == 2) return 1;

  int t0 = 0, t1 = 1, t2 = 1, t3 = 0;
  for (int i = 3; i <= n; i++) {
    t3 = t0 + t1 + t2;
    t0 = t1;
    t1 = t2;
    t2 = t3;
  }
  return t3;
}