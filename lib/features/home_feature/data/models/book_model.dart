
import 'package:bookly11/features/home_feature/data/models/volume_info.dart';
import 'package:equatable/equatable.dart';

import 'AccessInfo.dart';
import 'SaleInfo.dart';
import 'SearchInfo.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  const BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
    kind: json['kind'],
    id: json['id'],
    etag: json['etag'],
    selfLink: json['selfLink'],
    volumeInfo: VolumeInfo.fromJson(json['volumeInfo']) ,
    saleInfo:
    json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
    accessInfo: json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null,
    searchInfo: json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null,
  );

  @override
  List<Object?> get props => [kind, id, etag, selfLink, volumeInfo, saleInfo, accessInfo, searchInfo];
}