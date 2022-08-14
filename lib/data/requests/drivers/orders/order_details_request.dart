class OrderDetailsRequest {
  final int page;
  final String language;
  final int order_id;

  OrderDetailsRequest(
      {required this.page, required this.language, required this.order_id});

  Map<String, dynamic> toJson() => {
        'language': language,
        'order_id': order_id,
        'page': page,
      };
}
