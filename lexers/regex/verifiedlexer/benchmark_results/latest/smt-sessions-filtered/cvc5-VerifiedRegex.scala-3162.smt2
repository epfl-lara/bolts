; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185380 () Bool)

(assert start!185380)

(assert (=> start!185380 false))

(push 1)

(check-sat)

(pop 1)

