enum RouteName {
  home(path: "/home"),
  addCustomer(path: "addCustomer"),
  ;

  final String path;

  const RouteName({required this.path});
}
