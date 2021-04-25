import 'package:clean_framework/clean_framework.dart';

class StocksEntity extends Entity {
  final String company;
  final String symbol;
  final double atClose;
  final int shares;
  final double value;

  StocksEntity(
      {List<EntityFailure> errors = const [],
      String? company,
      String? symbol,
      this.atClose = 0.0,
      this.shares = 0,
      this.value = 0.0})
      : this.company = company ?? "",
        this.symbol = symbol ?? "",
        super(errors: errors);

  @override
  List<Object> get props => [errors, company, symbol, atClose, shares, value];
}
