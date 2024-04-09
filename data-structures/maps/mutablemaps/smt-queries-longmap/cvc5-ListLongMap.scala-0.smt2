; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4 () Bool)

(assert start!4)

(assert (=> start!4 false))

(push 1)

(check-sat)

(pop 1)

