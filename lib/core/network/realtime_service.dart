class RealtimeService {
  const RealtimeService();

  Stream<String> moduleUpdates() async* {
    yield 'feed';
    yield 'chat';
    yield 'vibe';
  }
}
