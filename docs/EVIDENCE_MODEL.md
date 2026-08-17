# Evidence model

## Claim classes

The project uses four primary conclusion classes.

### FACT

Directly demonstrated by identified evidence, with enough provenance to locate
and reproduce the observation.

### INFERENCE

The strongest explanation supported by multiple observations, while still
distinguished from direct observation.

### HYPOTHESIS

A falsifiable candidate explanation that has not yet passed the required
positive, negative, and counterexample checks.

### UNKNOWN

The available evidence does not establish an answer.

`UNKNOWN` is a result, not a documentation failure.

## Evidence layers

Claims retain their evidence layer:

- radio/ADV;
- Android ScanRecord or application export;
- GATT client API;
- ATT/HCI;
- local server;
- emulation or operator test;
- field observation;
- derived parser output.

Evidence from one layer is not silently promoted into another. For example, an
application label does not establish an ATT opcode, and temporal adjacency does
not establish physical causality.

## Framing before semantics

An `0x0213` record is interpreted only after its source, peer, continuous
session, and declared length framing have been validated. Incomplete records
remain incomplete. Callback boundaries are not used to invent semantic
boundaries, and no missing bytes are inferred.

## Negative evidence and gaps

The project distinguishes:

- a checked source with no target evidence;
- a missing source;
- an incomplete capture;
- a time-window mismatch;
- a parser limitation;
- an unresolved conflict.

Missing collection is not evidence that an event did not occur.

## Hash boundaries

SHA-256 demonstrates the integrity of the retained artifact being referenced.
It does not independently prove:

- that the original collection was complete;
- that two similar files came from the same event;
- that an observation caused a physical response;
- that a derived semantic label is correct.
