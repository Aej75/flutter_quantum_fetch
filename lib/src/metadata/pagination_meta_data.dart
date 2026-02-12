class PaginationMetaData {
  /// Root node for pagination data (e.g., "metaInfo"). If null, uses root JSON.
  final String? rooteNode;

  /// Node name for total count (e.g., "totalCount", "total")
  final String totalNode;

  /// Node name for current page/display start (e.g., "displayStart", "currentPage")
  final String currentPageNode;

  /// Node name for page size (e.g., "displayLength", "perPage")
  final String perPageNode;

  /// Node name for total pages (e.g., "totalPages")
  final String? totalPagesNode;

  /// Node name for sort direction (e.g., "sortDir")
  final String? sortDirNode;

  /// Node name for sort column (e.g., "sortCol")
  final String? sortColNode;

  /// Node name for search query (e.g., "searchQuery")
  final String? searchQueryNode;

  PaginationMetaData({
    this.rooteNode,
    this.totalNode = "total",
    this.currentPageNode = "currentPage",
    this.perPageNode = "perPage",
    this.totalPagesNode,
    this.sortDirNode,
    this.sortColNode,
    this.searchQueryNode,
  });
}
