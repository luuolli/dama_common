import '../constants/Typedefs.dart';

class Log {
  static void roomsStatus(Rooms rooms) {
    print('-- ROOMS');
    print(rooms.entries);
    print(rooms);
    print('--------------------------\n');
  }
}
