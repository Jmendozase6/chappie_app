enum AppRoutes {
  home,
  chat,
}

extension Routes on AppRoutes {
  String get routePath {
    switch (this) {
      case AppRoutes.home:
        return '/';
      case AppRoutes.chat:
        return 'chat';
      default:
        return '/';
    }
  }

  String get routeName {
    switch (this) {
      case AppRoutes.home:
        return 'home';
      case AppRoutes.chat:
        return 'chat';
      default:
        return 'home';
    }
  }
}
