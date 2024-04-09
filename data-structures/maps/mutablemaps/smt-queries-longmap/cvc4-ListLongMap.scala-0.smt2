; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8 () Bool)

(assert start!8)

(assert (=> start!8 false))

(push 1)

(check-sat)

(pop 1)

