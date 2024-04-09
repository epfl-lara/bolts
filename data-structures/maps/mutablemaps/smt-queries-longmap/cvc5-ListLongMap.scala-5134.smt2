; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69718 () Bool)

(assert start!69718)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44090 0))(
  ( (array!44091 (arr!21111 (Array (_ BitVec 32) (_ BitVec 64))) (size!21532 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44090)

(assert (=> start!69718 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21532 a!4395)) (bvslt (size!21532 a!4395) #b01111111111111111111111111111111) (bvslt (bvsub to!546 from!3750) #b00000000000000000000000000000000))))

(assert (=> start!69718 true))

(declare-fun array_inv!16885 (array!44090) Bool)

(assert (=> start!69718 (array_inv!16885 a!4395)))

(declare-fun bs!22477 () Bool)

(assert (= bs!22477 start!69718))

(declare-fun m!754243 () Bool)

(assert (=> bs!22477 m!754243))

(push 1)

(assert (not start!69718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

