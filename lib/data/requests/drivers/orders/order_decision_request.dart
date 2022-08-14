class OrderDecisionRequest {
  final String language;
  final int order_id;
  final String decision;

  OrderDecisionRequest(
      {required this.decision, required this.language, required this.order_id});

  Map<String, dynamic> toJson() => {
        'language': language,
        'order_id': order_id,
        'decision': decision,
      };
}
