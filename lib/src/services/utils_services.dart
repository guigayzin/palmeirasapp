import 'package:intl/intl.dart';

class UtilsServices {
  //R$ valor
  priceToCurrecy(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }
}
