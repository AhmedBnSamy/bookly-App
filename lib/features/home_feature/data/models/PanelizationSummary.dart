// PanelizationSummary.dart - Fixed version
import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  const PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      PanelizationSummary(
        containsEpubBubbles: json['containsEpubBubbles'] as bool?,
        containsImageBubbles: json['containsImageBubbles'] as bool?,
      );

  @override
  List<Object?> get props => [containsEpubBubbles, containsImageBubbles];
}