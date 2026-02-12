import 'package:quantum_fetch/src/metadata/pagination_meta_data.dart';

abstract class IQuantumFetchPagination {}

class QuantumFetchPagination extends IQuantumFetchPagination {
  final int? total;
  final int? currentPage;
  final int? perPage;
  final int? totalPages;
  final String? sortDir;
  final String? sortCol;
  final String? searchQuery;

  QuantumFetchPagination({
    this.total,
    this.currentPage,
    this.perPage,
    this.totalPages,
    this.sortDir,
    this.sortCol,
    this.searchQuery,
  });

  factory QuantumFetchPagination.fromJson(
      Map<String, dynamic>? json, PaginationMetaData paginationMetaData) {
    if (json == null) {
      return QuantumFetchPagination();
    }

    return QuantumFetchPagination(
      total: json[paginationMetaData.totalNode] as int?,
      currentPage: json[paginationMetaData.currentPageNode] as int?,
      perPage: json[paginationMetaData.perPageNode] as int?,
      totalPages: _extractInt(json, paginationMetaData.totalPagesNode),
      sortDir: _extractString(json, paginationMetaData.sortDirNode),
      sortCol: _extractString(json, paginationMetaData.sortColNode),
      searchQuery: _extractString(json, paginationMetaData.searchQueryNode),
    );
  }

  static int? _extractInt(Map<String, dynamic> json, String? key) {
    if (key == null) return null;
    return json[key] as int?;
  }

  static String? _extractString(Map<String, dynamic> json, String? key) {
    if (key == null) return null;
    return json[key] as String?;
  }

  bool get hasMorePages =>
      totalPages != null && currentPage != null && currentPage! < totalPages!;
}
