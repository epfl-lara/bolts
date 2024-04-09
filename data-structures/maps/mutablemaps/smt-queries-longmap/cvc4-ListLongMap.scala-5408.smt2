; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72234 () Bool)

(assert start!72234)

(declare-fun lt!380465 () Int)

(declare-datatypes ((List!16074 0))(
  ( (Nil!16071) (Cons!16070 (h!17201 (_ BitVec 64)) (t!22453 List!16074)) )
))
(declare-fun l!404 () List!16074)

(declare-fun length!40 (List!16074) Int)

(assert (=> start!72234 (= lt!380465 (length!40 l!404))))

(assert (=> start!72234 false))

(assert (=> start!72234 true))

(declare-fun bs!23539 () Bool)

(assert (= bs!23539 start!72234))

(declare-fun m!781971 () Bool)

(assert (=> bs!23539 m!781971))

(push 1)

(assert (not start!72234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

