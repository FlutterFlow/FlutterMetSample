import 'api_manager.dart';

Future<dynamic> getArtPieceCall({
  String objectID = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'Get Art Piece',
      apiDomain: 'collectionapi.metmuseum.org',
      apiEndpoint: 'public/collection/v1/objects/$objectID',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );

Future<dynamic> getDepartmentsCall() => ApiManager.instance.makeApiCall(
      callName: 'Get Departments',
      apiDomain: 'collectionapi.metmuseum.org',
      apiEndpoint: 'public/collection/v1/departments',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );

Future<dynamic> searchArtCall({
  String q = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'Search Art',
      apiDomain: 'collectionapi.metmuseum.org',
      apiEndpoint: 'public/collection/v1/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
      },
      returnResponse: true,
    );

Future<dynamic> departmentHighlightsCall({
  int departmentId,
  bool isHighlight = true,
  String q = '*',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'Department Highlights',
      apiDomain: 'collectionapi.metmuseum.org',
      apiEndpoint: 'public/collection/v1/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'departmentId': departmentId,
        'isHighlight': isHighlight,
        'q': q,
      },
      returnResponse: true,
    );
