class Api {
  static List user = [];
}

class getUser {
  Api api = Api();

  static var list = Api.user;

  static get() {
    return list;
  }

  static add(nama) {
    list.add(nama);
  }

  static remove(nama) {
    list.remove(nama);
  }

  static edit(nama) {
    list.add(nama);
  }
}

void main() {
  getUser getuser = getUser();
  getUser.add();
}
