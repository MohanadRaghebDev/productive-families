class NonWaitingOrdersRequest {
  final String language;
  final int page;

  NonWaitingOrdersRequest({required this.language, required this.page});

  Map<String, dynamic> toJson() => {
        'language': language,
        'page': page,
      };
}
