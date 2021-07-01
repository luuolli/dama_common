abstract class SocketEventTypes {
  SocketEventTypes._();

  static const CONNECTION = 'connection';
  static const DISCONNECT = 'disconnect';
  static const CONNECTED = 'connect';
  static const CREATE_ROOM = 'create-room';
  static const ENTER_ROOM = 'enter-room';
  static const MESSAGE = 'message';
  static const PLAY = 'play';
  static const CHANGE_TURN = 'change-turn';
  static const PLAYER_DISCONNECTED = 'player-disconnected';
}
