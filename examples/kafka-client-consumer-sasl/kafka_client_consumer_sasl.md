# Kafka client - Consumer SASL authentication

This shows how the SASL/PLAIN authentication is done in the `kafka:Consumer`.

::: code kafka_client_consumer_sasl.bal :::

## Prerequisites
- Start a [Kafka broker](https://kafka.apache.org/quickstart) instance configured to use the [SASL/PLAIN authentication mechanism](https://docs.confluent.io/platform/current/kafka/authentication_sasl/authentication_sasl_plain.html#sasl-plain-overview).
- Run the Kafka client given in the [Kafka client - Producer SASL authentication](/learn/by-example/kafka-client-producer-sasl) example to produce some messages to the topic.

Run the program by executing the following command.

::: out kafka_client_consumer_sasl.out :::

## Related links
- [`kafka:AuthenticationConfiguration` record - API documentation](https://lib.ballerina.io/ballerinax/kafka/latest/records/AuthenticationConfiguration)
- [SASL authentication - Specification](https://github.com/ballerina-platform/module-ballerinax-kafka/blob/master/docs/spec/spec.md#4212-secure-client)