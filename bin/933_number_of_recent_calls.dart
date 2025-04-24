// * 문제
// 클래스 RecentCounter를 구현하세요.
// 이 클래스는 주어진 시간 범위 내에서 호출 수를 기록하고 반환합니다.

// RecentCounter()는 RecentCounter 객체를 초기화합니다.
// int ping(int t)는 t (밀리초 단위, 비내림차순) 시점에서 호출되었음을 기록하고, [t - 3000, t] 범위 내에서 발생한 모든 호출 수를 반환합니다.

// * 조건
// 1. 1 <= t <= 10^9
// 2. ping은 최대 10,000번 호출될 수 있습니다.

// * 예시
// 1. 입력:
// RecentCounter recentCounter = new RecentCounter();
// recentCounter.ping(1);     // [1], 반환값: 1
// recentCounter.ping(100);   // [1, 100], 반환값: 2
// recentCounter.ping(3001);  // [1, 100, 3001], 반환값: 3
// recentCounter.ping(3002);  // [100, 3001, 3002], 반환값: 3
// 	설명: 3000밀리초 내의 호출만 유지하며, 각 호출 범위 내의 호출 수를 반환합니다.
import 'dart:collection';

class RecentCounter {
  Queue<int> queue = Queue<int>();

  RecentCounter();

  int ping(int t) {
    queue.add(t);
    
    // 큐의 첫 번째 요소가 범위에 속하지 않으면 제거
    while (queue.isNotEmpty && queue.first < t - 3000) {
      queue.removeFirst();
    }

    // 큐의 길이가 호출 횟수
    return queue.length;
  }
}