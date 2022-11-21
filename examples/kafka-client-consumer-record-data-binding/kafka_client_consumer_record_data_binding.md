# Kafka client - Consumer record data binding

This shows how to use a `kafka:Consumer` as a simple record consumer. The records from a subscribed topic can be retrieved using the `poll()` function. This consumer uses the builtin byte array deserializer for both the key and the value, which is the default deserializer in the `kafka:Consumer`.

The received records are converted to the user defined type using data-binding. For this to work properly, an active Kafka broker should be present.

For more information on the underlying module,  see the [`kafka` module](https://lib.ballerina.io/ballerinax/kafka/latest).

::: code kafka_client_consumer_record_data_binding.bal :::

::: out kafka_client_consumer_record_data_binding.out :::