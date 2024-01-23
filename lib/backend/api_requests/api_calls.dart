import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer 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',
    'OpenAI-Beta': 'assistants=v1',
  };
  static ThreadsCall threadsCall = ThreadsCall();
  static MessageCall messageCall = MessageCall();
  static RunCall runCall = RunCall();
  static RetrieverunCall retrieverunCall = RetrieverunCall();
  static MessagesCall messagesCall = MessagesCall();
}

class ThreadsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'threads',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/threads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? threadId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class MessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? content = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "role": "user",
  "content": "$content"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'message',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/threads/$threadId/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? assistantId = '',
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "assistant_id": "asst_z0KP5UUvdY5PQMzqiw1Hm4Wi"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'run',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/threads/$threadId/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? runId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class RetrieverunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieverun',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/threads/$threadId/runs/$runId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class MessagesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'messages',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/threads/$threadId/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {
        'limit': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data[0].content[0]''',
      );
}

/// End OpenAI ChatGPT Group Code

/// Start OpenAI ChatGPT agenda Group Code

class OpenAIChatGPTAgendaGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer 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',
    'OpenAI-Beta': 'assistants=v1',
  };
  static ThreadsCopyCall threadsCopyCall = ThreadsCopyCall();
  static MessageCopyCall messageCopyCall = MessageCopyCall();
  static RunCopyCall runCopyCall = RunCopyCall();
  static RetrieverunCopyCall retrieverunCopyCall = RetrieverunCopyCall();
  static MessagesCopyCall messagesCopyCall = MessagesCopyCall();
}

class ThreadsCopyCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'threads Copy',
      apiUrl: '${OpenAIChatGPTAgendaGroup.baseUrl}/threads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? threadId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class MessageCopyCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? content = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "role": "user",
  "content": "$content"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'message Copy',
      apiUrl:
          '${OpenAIChatGPTAgendaGroup.baseUrl}/threads/$threadId/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RunCopyCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? assistantId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "assistant_id": "${assistantId}asst_igUwTXnky26HTqAtpzvUToQM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'run Copy',
      apiUrl: '${OpenAIChatGPTAgendaGroup.baseUrl}/threads/$threadId/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? runId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  List? respuesta(dynamic response) => getJsonField(
        response,
        r'''$.instructions''',
        true,
      ) as List?;
}

class RetrieverunCopyCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieverun Copy',
      apiUrl:
          '${OpenAIChatGPTAgendaGroup.baseUrl}/threads/$threadId/runs/$runId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class MessagesCopyCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'messages Copy',
      apiUrl:
          '${OpenAIChatGPTAgendaGroup.baseUrl}/threads/$threadId/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {
        'limit': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data[0].content[0]''',
      );
}

/// End OpenAI ChatGPT agenda Group Code

/// Start Assembly API Group Code

class AssemblyAPIGroup {
  static String baseUrl = 'https://www.assemblyai.com/v2/transcript';
  static Map<String, String> headers = {
    'Autorizacion': 'af0bd9ae8407419f9571b542e901dc22',
  };
  static TranscriptCall transcriptCall = TranscriptCall();
}

class TranscriptCall {
  Future<ApiCallResponse> call({
    String? audioUrl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "audio_url": "$audioUrl"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transcript',
      apiUrl: '${AssemblyAPIGroup.baseUrl}/transcript',
      callType: ApiCallType.POST,
      headers: {
        'Autorizacion': 'af0bd9ae8407419f9571b542e901dc22',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Assembly API Group Code

/// Start google Cloud Group Code

class GoogleCloudGroup {
  static String baseUrl = 'https://speech.googleapis.com';
  static Map<String, String> headers = {
    'content-type': 'application/JSON',
    'api_key': 'AIzaSyDg7APLosxkeGgek59nwjeo42VWunfZNUs',
  };
  static GoogleCall googleCall = GoogleCall();
}

class GoogleCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'google',
      apiUrl: '${GoogleCloudGroup.baseUrl}/sjwjfhwwhf',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/JSON',
        'api_key': 'AIzaSyDg7APLosxkeGgek59nwjeo42VWunfZNUs',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End google Cloud Group Code

/// Start OpenAI API Group Code

class OpenAIAPIGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static CreateChatCompletionCall createChatCompletionCall =
      CreateChatCompletionCall();
  static CreateCompletionCall createCompletionCall = CreateCompletionCall();
  static CreateEditCall createEditCall = CreateEditCall();
  static CreateImageCall createImageCall = CreateImageCall();
  static CreateImageEditCall createImageEditCall = CreateImageEditCall();
  static CreateImageVariationCall createImageVariationCall =
      CreateImageVariationCall();
  static CreateEmbeddingCall createEmbeddingCall = CreateEmbeddingCall();
  static CreateSpeechCall createSpeechCall = CreateSpeechCall();
  static CreateTranscriptionCall createTranscriptionCall =
      CreateTranscriptionCall();
  static CreateTranslationCall createTranslationCall = CreateTranslationCall();
  static ListFilesCall listFilesCall = ListFilesCall();
  static CreateFileCall createFileCall = CreateFileCall();
  static DeleteFileCall deleteFileCall = DeleteFileCall();
  static RetrieveFileCall retrieveFileCall = RetrieveFileCall();
  static DownloadFileCall downloadFileCall = DownloadFileCall();
  static CreateFineTuningJobCall createFineTuningJobCall =
      CreateFineTuningJobCall();
  static ListPaginatedFineTuningJobsCall listPaginatedFineTuningJobsCall =
      ListPaginatedFineTuningJobsCall();
  static RetrieveFineTuningJobCall retrieveFineTuningJobCall =
      RetrieveFineTuningJobCall();
  static ListFineTuningEventsCall listFineTuningEventsCall =
      ListFineTuningEventsCall();
  static CancelFineTuningJobCall cancelFineTuningJobCall =
      CancelFineTuningJobCall();
  static CreateFineTuneCall createFineTuneCall = CreateFineTuneCall();
  static ListFineTunesCall listFineTunesCall = ListFineTunesCall();
  static RetrieveFineTuneCall retrieveFineTuneCall = RetrieveFineTuneCall();
  static CancelFineTuneCall cancelFineTuneCall = CancelFineTuneCall();
  static ListFineTuneEventsCall listFineTuneEventsCall =
      ListFineTuneEventsCall();
  static ListModelsCall listModelsCall = ListModelsCall();
  static RetrieveModelCall retrieveModelCall = RetrieveModelCall();
  static DeleteModelCall deleteModelCall = DeleteModelCall();
  static CreateModerationCall createModerationCall = CreateModerationCall();
  static ListAssistantsCall listAssistantsCall = ListAssistantsCall();
  static CreateAssistantCall createAssistantCall = CreateAssistantCall();
  static GetAssistantCall getAssistantCall = GetAssistantCall();
  static ModifyAssistantCall modifyAssistantCall = ModifyAssistantCall();
  static DeleteAssistantCall deleteAssistantCall = DeleteAssistantCall();
  static CreateThreadCall createThreadCall = CreateThreadCall();
  static GetThreadCall getThreadCall = GetThreadCall();
  static ModifyThreadCall modifyThreadCall = ModifyThreadCall();
  static DeleteThreadCall deleteThreadCall = DeleteThreadCall();
  static ListMessagesCall listMessagesCall = ListMessagesCall();
  static CreateMessageCall createMessageCall = CreateMessageCall();
  static GetMessageCall getMessageCall = GetMessageCall();
  static ModifyMessageCall modifyMessageCall = ModifyMessageCall();
  static CreateThreadAndRunCall createThreadAndRunCall =
      CreateThreadAndRunCall();
  static ListRunsCall listRunsCall = ListRunsCall();
  static CreateRunCall createRunCall = CreateRunCall();
  static GetRunCall getRunCall = GetRunCall();
  static ModifyRunCall modifyRunCall = ModifyRunCall();
  static SubmitToolOuputsToRunCall submitToolOuputsToRunCall =
      SubmitToolOuputsToRunCall();
  static CancelRunCall cancelRunCall = CancelRunCall();
  static ListRunStepsCall listRunStepsCall = ListRunStepsCall();
  static GetRunStepCall getRunStepCall = GetRunStepCall();
  static ListAssistantFilesCall listAssistantFilesCall =
      ListAssistantFilesCall();
  static CreateAssistantFileCall createAssistantFileCall =
      CreateAssistantFileCall();
  static GetAssistantFileCall getAssistantFileCall = GetAssistantFileCall();
  static DeleteAssistantFileCall deleteAssistantFileCall =
      DeleteAssistantFileCall();
  static ListMessageFilesCall listMessageFilesCall = ListMessageFilesCall();
  static GetMessageFileCall getMessageFileCall = GetMessageFileCall();
}

class CreateChatCompletionCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? imageUrl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-4-vision-preview",
  "messages": [
    {
      "role": "user",
      "content": [
        {
          "type": "text",
          "text": "$query"
        },
        {
          "type": "image_url",
          "image_url": {
            "url": "$imageUrl"
          }
        }
      ]
    }
  ],
  "max_tokens": 300
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletion',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic textres(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

class CreateCompletionCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "",
  "prompt": "",
  "best_of": 0,
  "echo": false,
  "frequency_penalty": 0,
  "logit_bias": {},
  "logprobs": 0,
  "max_tokens": 16,
  "n": 1,
  "presence_penalty": 0,
  "seed": 0,
  "stop": "",
  "stream": false,
  "suffix": "test.",
  "temperature": 1,
  "top_p": 1,
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCompletion',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEditCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "instruction": "Fix the spelling mistakes.",
  "model": "text-davinci-edit-001",
  "input": "What day of the wek is it?",
  "n": 1,
  "temperature": 1,
  "top_p": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEdit',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "prompt": "A cute baby sea otter",
  "model": "dall-e-3",
  "n": 1,
  "quality": "standard",
  "response_format": "url",
  "size": "1024x1024",
  "style": "vivid",
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createImage',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageEditCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createImageEdit',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/images/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageVariationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createImageVariation',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/images/variations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEmbeddingCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "input": "The quick brown fox jumped over the lazy dog",
  "model": "text-embedding-ada-002",
  "encoding_format": "float",
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEmbedding',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/embeddings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateSpeechCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "tts-1",
  "input": "hola",
  "voice": "alloy",
  "response_format": "mp3",
  "speed": 0.25
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createSpeech',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/audio/speech',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTranscriptionCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createTranscription',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/audio/transcriptions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTranslationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createTranslation',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/audio/translations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFilesCall {
  Future<ApiCallResponse> call({
    String? purpose = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFiles',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'purpose': purpose,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFileCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files/$fileId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files/$fileId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DownloadFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'downloadFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files/$fileId/content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "training_file": "file-abc123",
  "hyperparameters": {
    "batch_size": "",
    "learning_rate_multiplier": "",
    "n_epochs": ""
  },
  "suffix": "",
  "validation_file": "file-abc123"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createFineTuningJob',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListPaginatedFineTuningJobsCall {
  Future<ApiCallResponse> call({
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listPaginatedFineTuningJobs',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFineTuningJob',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs/$fineTuningJobId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTuningEventsCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFineTuningEvents',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs/$fineTuningJobId/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cancelFineTuningJob',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs/$fineTuningJobId/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFineTuneCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "training_file": "file-abc123",
  "batch_size": 0,
  "classification_betas": [
    0
  ],
  "classification_n_classes": 0,
  "classification_positive_class": "",
  "compute_classification_metrics": false,
  "hyperparameters": {
    "n_epochs": ""
  },
  "learning_rate_multiplier": 0,
  "model": "curie",
  "prompt_loss_weight": 0,
  "suffix": "",
  "validation_file": "file-abc123"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createFineTune',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTunesCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFineTunes',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFineTuneCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFineTune',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes/$fineTuneId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelFineTuneCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cancelFineTune',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes/$fineTuneId/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTuneEventsCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    bool? stream,
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFineTuneEvents',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes/$fineTuneId/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'stream': stream,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListModelsCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listModels',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/models',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveModelCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieveModel',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/models/$model',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteModelCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteModel',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/models/$model',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateModerationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "input": "",
  "model": "text-moderation-stable"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createModeration',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/moderations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAssistantsCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listAssistants',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAssistantCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "gpt-4",
  "name": "robotrainer",
  "description": "Actua como un entrenador capacitado, especialista en Tecnica deportiva, culturismo para el señor Diego Leon",
  "instructions": "como entrenador capacitado vas ayudar al alcanzar los objetivos fisicos y nutricionales. te preocupas por indicar y verificar que se realice una rutina de ejercicios adecuada en el gimnasio o en casa",
  "tools": [
    ""
  ],
  "file_ids": [
    "file-1jYTWAg4qjdhjfLVtcdHXmpu, file-AP3HqNv5F294Mp4lzm4J9jc7"
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAssistant',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAssistant',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "",
  "name": "",
  "description": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "file_ids": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyAssistant',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteAssistant',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateThreadCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "",
      "file_ids": [
        ""
      ],
      "metadata": {}
    }
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createThread',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getThread',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyThread',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteThread',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListMessagesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listMessages',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "role": "user",
  "content": "",
  "file_ids": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createMessage',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMessage',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages/$messageId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyMessage',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages/$messageId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateThreadAndRunCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "assistant_id": "",
  "thread": {
    "messages": [
      {
        "role": "user",
        "content": "",
        "file_ids": [
          ""
        ],
        "metadata": {}
      }
    ],
    "metadata": {}
  },
  "model": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createThreadAndRun',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListRunsCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listRuns',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "assistant_id": "",
  "model": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createRun',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRun',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyRun',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitToolOuputsToRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "tool_outputs": [
    {
      "tool_call_id": "",
      "output": ""
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'submitToolOuputsToRun',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId/submit_tool_outputs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cancelRun',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListRunStepsCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listRunSteps',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId/steps',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRunStepCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? stepId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRunStep',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId/steps/$stepId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAssistantFilesCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listAssistantFiles',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "file_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAssistantFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAssistantFile',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId/files/$fileId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteAssistantFile',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId/files/$fileId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListMessageFilesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listMessageFiles',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages/$messageId/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMessageFileCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMessageFile',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages/$messageId/files/$fileId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI API Group Code

class MakeIntegracionCall {
  static Future<ApiCallResponse> call({
    String? fecha = '',
    String? hora = '',
    String? dia = '',
    String? nombre = '',
  }) async {
    final ffApiRequestBody = '''
{
  "FECHA": "$fecha",
  "HORA": "$hora",
  "DIA": "$dia",
  "NOMBRE": "$nombre"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MAKE INTEGRACION',
      apiUrl: 'https://hook.us1.make.com/i5jgz4580ufm23ijvsbg5r2rug1izhva',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GEMINIgCall {
  static Future<ApiCallResponse> call({
    String? apikey = '',
  }) async {
    const ffApiRequestBody = '''
{
  "contents": [
    {
      "parts": [
        {
          "text": "Eres Elias, un teólogo capacitado y amable que interpreta y reflexiona la palabra de Dios. Reflexiona sobre el significado de la fe y cómo esta se manifiesta en los actos cotidianos."
        }
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GEMINIg',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyC8u4dD4iEaLpWgonZdpQq940hLt1HpKiQ',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/JSON',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MixtralCall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "mistral-tiny",
  "messages": [
    {
      "role": "user",
      "content": "$prompt. Actua como un profesional de la teologia capacitado y reflexiona y medita sobre la palabra de Dios, tienes una personalidad amable y respondes con sabiduria.  ayuda a las personas con sus preguntas. idioma en-ES",
      "temperature": 0.5,
      "top_p": 1,
      "max_tokens": 50
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MIXTRAL ',
      apiUrl: 'https://api.mistral.ai/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/JSON',
        'Authorization': 'Bearer Js1OMpN6ZDkw4DFbLoXPqnoYCdCqdgGr',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? respuesta(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
