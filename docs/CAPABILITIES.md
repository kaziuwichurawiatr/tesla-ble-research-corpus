# Analysis capabilities

## Supported research operations

The internal workflow can be adapted to answer narrowly defined questions
across a single case or the wider private corpus.

### GATT and ATT/HCI

- service, characteristic, and descriptor inventory;
- connection, MTU, CCCD, read, write, error, and disconnect timelines;
- application event versus ATT opcode correlation;
- indication versus notification verification when HCI exists;
- handle reuse and connection-window validation;
- cross-session characteristic-property comparison.

### `0x0213` and protobuf

- callback extraction and session-bounded message parsing;
- length-framing validation;
- protobuf wire-tree rendering;
- known-field and unknown-field separation;
- repeated-value and transition analysis;
- orphan, incomplete, and conflicting-frame reporting.

### Advertising and cross-layer work

- ADV and Android ScanRecord extraction;
- payload-family and transition analysis;
- GATT/HCI/ADV time-window correlation;
- cross-case occurrence queries;
- explicit separation of local server, operator test, and emulation data.

### Reproducibility

- SHA-256 manifests;
- source occurrence maps;
- duplicate and overlap ledgers;
- retained raw evidence plus separately generated derived tables;
- expected-output fixtures and regression cases.

## Example questions

- Does a payload class occur in other Tesla cases?
- Does a parser extract the same `0x0213` record without changing its byte
  sequence across source formats?
- Is an application event label consistent with the HCI opcode?
- Did a characteristic declaration change between sessions?
- Is an apparent anomaly present across vehicles, limited to one source, or
  explained by emulation or aggregation?
- Which evidence layer is missing before a causal claim can be tested?

## Customization

The tools are internal research instruments rather than a fixed retail
application. They can be adapted for a partner's input formats, expected
outputs, regression harness, or narrowly scoped protocol question.
