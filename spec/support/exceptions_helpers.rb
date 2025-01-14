# frozen_string_literal: true

module ExceptionsHelpers
  def raise_meilisearch_api_error_with(http_code, ms_code, ms_type)
    raise_exception(an_instance_of(Meilisearch::ApiError)
      .and(having_attributes(
             http_code: http_code,
             ms_code: ms_code,
             ms_type: ms_type
           )))
  end

  def raise_bad_request_meilisearch_api_error
    raise_meilisearch_api_error_with(
      400,
      'bad_request',
      'invalid_request'
    )
  end

  def raise_index_not_found_meilisearch_api_error
    raise_meilisearch_api_error_with(
      404,
      'index_not_found',
      'invalid_request'
    )
  end

  def raise_document_not_found_meilisearch_api_error
    raise_meilisearch_api_error_with(
      404,
      'document_not_found',
      'invalid_request'
    )
  end

  def raise_missing_primary_key_meilisearch_api_error
    raise_meilisearch_api_error_with(
      400,
      'primary_key_inference_failed',
      'invalid_request'
    )
  end
end
