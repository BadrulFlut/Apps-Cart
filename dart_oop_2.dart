class Database {
  List<Map<String, dynamic>> user = [
    {'name': 'Badrul', 'id': 62, 'country': 'Indonesia'},
    {'name': 'Andhika', 'id': 62, 'country': 'Indonesia'},
    {'name': 'Adin', 'id': 62, 'country': 'Indonesia'},
    {'name': 'Aida', 'id': 62, 'country': 'Indonesia'},
    {'name': 'Palefi', 'id': 62, 'country': 'Indonesia'},
  ];

  Database() {
    if (user != null) {
      var data = user;
      Map<String, dynamic> response = {
        'status': true,
        'error': false,
        'data': data
      };
      print(response);
    } else {
      Map<String, dynamic> response = {
        'status': false,
        'error': true,
        'data': 'Datamu tidak ditemukan'
      };
      print(response);
    }
  }

  static Database database = Database();

  factory Database.get() {
    return database;
  }
}

class Inheritance {
  List<Map<String, dynamic>> person = [
    {
      'name': 'Handri',
      'riches': 20000,
    },
    {
      'name': 'Harol',
      'riches': 45000,
    },
    {
      'name': 'Samand',
      'riches': 61000,
    },
    {
      'name': 'Samuel',
      'riches': 24000,
    },
    {
      'name': 'Samion',
      'riches': 52000,
    },
    {
      'name': 'Jamsi',
      'riches': 90000,
    },
  ];

  totalInheritence(int total) {
    return total + total;
  }

  var total = 0.0;
  var heir = "Kekayaan mu sebesar";
  legecyData() {
    for (var i = 0; i < person.length; i++) {
      var item = person[i];
      var getRiches = item['riches'];

      total += getRiches;
    }
    print(heir);
    return total;
  }
}

class Num {
  int num() {
    return 0;
  }
}

class Value extends Num {
  int num() {
    return 4;
  }

  int num2() {
    return super.num();
  }
}

class Rect {
  int _width = 0;
  int _length = 0;

  int get width {
    return _width;
  }

  set width(int value) {
    _width = value;
  }

  int get length {
    return _width;
  }

  set length(int value) {
    _width = value;
  }
}

class Heir extends Inheritance {}

void main() {
  var database1 = Database.get();
  var database2 = Database.get();
  print(database1 == database2);

  Rect rect = Rect();

  rect._width = 100;

  print(rect._width = 100);

  Value value = Value();

  print(value.num2());

  Heir heir = Heir();

  print(heir.legecyData());
}
