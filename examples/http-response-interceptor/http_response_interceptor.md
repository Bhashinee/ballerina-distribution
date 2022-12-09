# HTTP service - Response interceptor

In addition to `RequestInterceptors`, a `ResponseInterceptor` can be used to intercept the response. `ResponseInterceptors` have a remote method, which will be executed before dispatching the response to the client. A collection of these request and response interceptors can be configured as a pipeline at the listener level or service level. 

::: code http_response_interceptor.bal :::

Run the service as follows.

::: out http_response_interceptor.server.out :::

Invoke the service by executing the following cURL command in a new terminal.

::: out http_response_interceptor.client.out :::

## Related links
- [`http` package - API documentation](https://lib.ballerina.io/ballerina/http/latest/)
- [HTTP service response interceptor - Specification](/spec/http/#812-response-interceptor)
