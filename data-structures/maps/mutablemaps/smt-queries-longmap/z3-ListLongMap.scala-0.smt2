; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6 () Bool)

(assert start!6)

(assert (=> start!6 false))

(check-sat)
