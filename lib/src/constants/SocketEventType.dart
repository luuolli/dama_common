abstract class SocketEvents {
  SocketEvents._();

  static const CONNECTION = 'connection';
  static const DISCONNECT = 'disconnect';
  static const CONNECTED = 'connect';

  static const CREATE_ROOM = 'create-room';
  static const CREATED_ROOM = 'created';

  static const ENTER_ROOM = 'enter-room';
  static const JOINED_ROOM = 'joined';

  static const MESSAGE = 'message';
  static const CHAT = 'chat';

  static const PLAY = 'play';
  static const PLAYED = 'played';

  static const CHANGE_TURN = 'change-turn';
  static const CHANGED_TURN = 'changed-turn';

  static const PLAYER_DISCONNECTED = 'player-disconnected';

  static const ROOMS_LIST = 'rooms-list';
  static const ROOMS_LISTED = 'rooms-listed';
}
