
import 'package:equatable/equatable.dart';

import 'listPrice.dart';

class Offer extends Equatable {
  final int? finskyOfferType;
  final ListPrice? listPrice;
  final ListPrice? retailPrice;

  const Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
    finskyOfferType: json['finskyOfferType'] as int?,
    listPrice: json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>)
        : null,
    retailPrice: json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'] as Map<String, dynamic>)
        : null,
  );

  @override
  List<Object?> get props => [finskyOfferType, listPrice, retailPrice];
}
