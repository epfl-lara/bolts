; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69722 () Bool)

(assert start!69722)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44094 0))(
  ( (array!44095 (arr!21113 (Array (_ BitVec 32) (_ BitVec 64))) (size!21534 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44094)

(assert (=> start!69722 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21534 a!4395)) (bvslt (size!21534 a!4395) #b01111111111111111111111111111111) (bvslt (bvsub to!546 from!3750) #b00000000000000000000000000000000))))

(assert (=> start!69722 true))

(declare-fun array_inv!16887 (array!44094) Bool)

(assert (=> start!69722 (array_inv!16887 a!4395)))

(declare-fun bs!22479 () Bool)

(assert (= bs!22479 start!69722))

(declare-fun m!754247 () Bool)

(assert (=> bs!22479 m!754247))

(push 1)

(assert (not start!69722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

