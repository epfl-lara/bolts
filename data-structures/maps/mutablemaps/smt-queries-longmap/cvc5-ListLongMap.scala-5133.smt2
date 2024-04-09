; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69712 () Bool)

(assert start!69712)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44084 0))(
  ( (array!44085 (arr!21108 (Array (_ BitVec 32) (_ BitVec 64))) (size!21529 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44084)

(assert (=> start!69712 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21529 a!4395)) (bvslt (size!21529 a!4395) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsgt from!3750 to!546))))

(assert (=> start!69712 true))

(declare-fun array_inv!16882 (array!44084) Bool)

(assert (=> start!69712 (array_inv!16882 a!4395)))

(declare-fun bs!22471 () Bool)

(assert (= bs!22471 start!69712))

(declare-fun m!754237 () Bool)

(assert (=> bs!22471 m!754237))

(push 1)

(assert (not start!69712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

