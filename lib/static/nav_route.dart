enum NavRoute {
  splash('/'),
  getStart('/start'),
  bonus('/bonus'),
  main('/main'),
  successcheckout('/success-co'),
  signUp('/sign-up');

  const NavRoute(this.route);
  final String route ;
}