class ProviderState<T> {
  bool hasError = false;
  bool isReady = false;
  bool isLoading = false;
  String errorMessage = '';
  T? _payload;

  T get payload => _payload!;

  set initialPayload(T data) => _payload = data;

  update({loading, hasErr, errorMsg, ready, T? statePayload}) {
    isLoading = loading;
    hasError = hasErr;
    errorMessage = errorMsg;
    isReady = ready;
    _payload = statePayload == _payload || statePayload == null
        ? _payload
        : statePayload;
  }
}
