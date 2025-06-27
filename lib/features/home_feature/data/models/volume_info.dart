import 'package:equatable/equatable.dart';
import 'ImageLinks.dart';
import 'IndustryIdentifier.dart';
import 'PanelizationSummary.dart';
import 'ReadingModes.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final String? subtitle;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    required this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json['title'] as String?,
    subtitle: json['subtitle'] as String?,
    authors: json['authors'] != null ? List<String>.from(json['authors'] as List) : null,
    publisher: json['publisher'] as String?,
    publishedDate: json['publishedDate'] as String?,
    description: json['description'] as String?,
    industryIdentifiers: json['industryIdentifiers'] != null
        ? (json['industryIdentifiers'] as List)
        .map((x) => IndustryIdentifier.fromJson(x as Map<String, dynamic>))
        .toList()
        : null,
    readingModes: json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>)
        : null,
    pageCount: json['pageCount'] as int?,
    printType: json['printType'] as String?,
    categories: json['categories'] != null ? List<String>.from(json['categories'] as List) : null,
    maturityRating: json['maturityRating'] as String?,
    allowAnonLogging: json['allowAnonLogging'] as bool?,
    contentVersion: json['contentVersion'] as String?,
    panelizationSummary: json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'] as Map<String, dynamic>)
        : null,
    imageLinks: ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
    language: json['language'] as String?,
    previewLink: json['previewLink'] as String?,
    infoLink: json['infoLink'] as String?,
    canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
  );

  @override
  List<Object?> get props => [
    title,
    subtitle,
    authors,
    publisher,
    publishedDate,
    description,
    industryIdentifiers,
    readingModes,
    pageCount,
    printType,
    categories,
    maturityRating,
    allowAnonLogging,
    contentVersion,
    panelizationSummary,
    imageLinks,
    language,
    previewLink,
    infoLink,
    canonicalVolumeLink,
  ];
}