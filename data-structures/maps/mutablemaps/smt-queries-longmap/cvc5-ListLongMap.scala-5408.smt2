; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72230 () Bool)

(assert start!72230)

(declare-fun lt!380459 () Int)

(declare-datatypes ((List!16072 0))(
  ( (Nil!16069) (Cons!16068 (h!17199 (_ BitVec 64)) (t!22451 List!16072)) )
))
(declare-fun l!404 () List!16072)

(declare-fun length!38 (List!16072) Int)

(assert (=> start!72230 (= lt!380459 (length!38 l!404))))

(assert (=> start!72230 false))

(assert (=> start!72230 true))

(declare-fun bs!23537 () Bool)

(assert (= bs!23537 start!72230))

(declare-fun m!781967 () Bool)

(assert (=> bs!23537 m!781967))

(push 1)

(assert (not start!72230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

