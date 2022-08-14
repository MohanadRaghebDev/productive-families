class RecievedOrderRequest {
  final String language;
  final int order_id;

  RecievedOrderRequest({required this.language, required this.order_id});

  Map<String, dynamic> toJson() => {
        'language': language,
        'order_id': order_id,
      };
}
