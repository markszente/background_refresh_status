enum Status {
  /// Background updates are unavailable and the user cannot enable them again.
  restricted,

  /// The user explicitly disabled background behavior for this app or for the whole system.
  denied,

  /// Background updates are available for the app.
  available
}
