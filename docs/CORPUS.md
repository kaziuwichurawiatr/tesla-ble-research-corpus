# Corpus design

## A heterogeneous corpus by design

The private corpus is organized around individual Tesla investigations, but
the available evidence is naturally uneven.

This is not repaired by copying unrelated material into a case or by reducing
every case to the lowest common denominator. Instead, every case records its
own coverage and gaps.

A case may contain:

- one or many GATT sessions;
- observations from one date or a longitudinal history;
- ADV, ScanRecord, or other advertising material;
- complete HCI, a source-bound target slice, or no matching HCI;
- characteristic reads, writes, CCCD operations, and `0x0213` values;
- field observations;
- TPMS or Keyfob evidence;
- negative results and failed connection attempts;
- test, local-server, or emulation material in explicitly separate layers.

## Ten-case Deep Evidence Pilot

The first evaluation product is a selected set of ten deeply documented cases.
The selection is intended to maximize technical diversity rather than pretend
that every Tesla produced the same evidence.

The current selection target is nine vehicle cases with HCI evidence plus one
rare Tesla Keyfob GATT case without matching HCI. The final public capability
statement will report aggregate coverage for the ten cases. It will not
publish the vehicle list or any raw identifiers.

The Keyfob case is an explicit exception within the pilot: it has meaningful
Android/nRF Connect GATT evidence but no matching HCI. That absence is part of
the case record.

## Case structure

An individual case can use the following logical layers when evidence exists:

```text
00_CONTROL/              provenance, coverage, manifests, gaps
01_GATT_ORIGINAL/         original application-level GATT exports
02_HCI_ORIGINAL/          complete original HCI captures
02_HCI_ATOMIC/            source-bound target packets or windows
02_HCI_DERIVED/           derived HCI tables and correlations
03_ADV_ORIGINAL/          original advertising observations
03_ADV_ATOMIC/            source-bound advertising records
04_NRFCONNECT_MACROS/     operator macros when available
05_WRITES/                write events and their evidence context
06_LOCAL_SERVER/          local Android server evidence
06_EMULATION_TEST/        explicitly labelled test/emulation evidence
07_SOURCE_MAP/            source occurrence and provenance mapping
08_DUPLICATE_MAP/         duplicate and overlap accounting
09_TPMS/                  TPMS evidence when available
10_FIELD_NOTES/           operator observations kept as a separate layer
11_REFERENCE/             local protocol references when applicable
```

Not every directory exists in every case. Directory absence must not be read as
evidence absence until the case coverage record is checked.

## Integrity and provenance

The corpus preserves:

- original source bytes;
- source identity and occurrence;
- timestamps in their original time domain;
- SHA-256 manifests for retained artifacts;
- relationships between original and derived material;
- parser and extraction context where available;
- explicit duplicate, overlap, contamination, and gap records.

Derived conclusions never replace the original capture.
