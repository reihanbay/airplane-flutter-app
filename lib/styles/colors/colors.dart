import 'dart:ui';

enum AppColors {
  purple('purple', Color(0xff5C40CC)),
  white('white', Color(0xffFAFAFA)),
  green('green', Color(0xff0EC3AE)),
  pink('pink', Color(0xffEB70A5)),
  orange('orange', Color(0xffFFA235)),
  black('black', Color(0xff1F1449)),
  gray('gray', Color.fromARGB(134, 63, 63, 63));

  const AppColors(this.name, this.color) ;
  final String name;
  final Color color;
}