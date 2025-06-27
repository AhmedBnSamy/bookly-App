import 'package:equatable/equatable.dart';

import 'listPrice.dart';
import 'offer.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;
  final ListPrice? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json['country'] as String?,
    saleability: json['saleability'] as String?,
    isEbook: json['isEbook'] as bool?,
    listPrice: json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>)
        : null,
    retailPrice: json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'] as Map<String, dynamic>)
        : null,
    buyLink: json['buyLink'] as String?,
    offers: json['offers'] != null
        ? (json['offers'] as List)
        .map((x) => Offer.fromJson(x as Map<String, dynamic>))
        .toList()
        : null,
  );

  @override
  List<Object?> get props => [
    country,
    saleability,
    isEbook,
    listPrice,
    retailPrice,
    buyLink,
    offers,
  ];
}