import 'package:equatable/equatable.dart';
import 'Epub.dart';

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Epub? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
    country: json['country'] as String?,
    viewability: json['viewability'] as String?,
    embeddable: json['embeddable'] as bool?,
    publicDomain: json['publicDomain'] as bool?,
    textToSpeechPermission: json['textToSpeechPermission'] as String?,
    epub: json['epub'] != null ? Epub.fromJson(json['epub'] as Map<String, dynamic>) : null,
    pdf: json['pdf'] != null ? Epub.fromJson(json['pdf'] as Map<String, dynamic>) : null,
    webReaderLink: json['webReaderLink'] as String?,
    accessViewStatus: json['accessViewStatus'] as String?,
    quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
  );

  @override
  List<Object?> get props => [
    country,
    viewability,
    embeddable,
    publicDomain,
    textToSpeechPermission,
    epub,
    pdf,
    webReaderLink,
    accessViewStatus,
    quoteSharingAllowed,
  ];
}