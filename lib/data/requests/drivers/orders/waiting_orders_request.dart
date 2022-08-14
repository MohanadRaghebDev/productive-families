class WaitingOrdersRequest {
  final int page;
  final String language;

  WaitingOrdersRequest({required this.page, required this.language});

  Map<String, dynamic> toJson() => {
        'language': language,
        'page': page,
      };
}
