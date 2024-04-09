; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69716 () Bool)

(assert start!69716)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44088 0))(
  ( (array!44089 (arr!21110 (Array (_ BitVec 32) (_ BitVec 64))) (size!21531 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44088)

(assert (=> start!69716 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21531 a!4395)) (bvslt (size!21531 a!4395) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsgt from!3750 to!546))))

(assert (=> start!69716 true))

(declare-fun array_inv!16884 (array!44088) Bool)

(assert (=> start!69716 (array_inv!16884 a!4395)))

(declare-fun bs!22473 () Bool)

(assert (= bs!22473 start!69716))

(declare-fun m!754241 () Bool)

(assert (=> bs!22473 m!754241))

(push 1)

(assert (not start!69716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

