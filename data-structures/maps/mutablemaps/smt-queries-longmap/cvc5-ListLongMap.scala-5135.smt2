; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69724 () Bool)

(assert start!69724)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44096 0))(
  ( (array!44097 (arr!21114 (Array (_ BitVec 32) (_ BitVec 64))) (size!21535 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44096)

(assert (=> start!69724 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21535 a!4395)) (bvslt (size!21535 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000))))

(assert (=> start!69724 true))

(declare-fun array_inv!16888 (array!44096) Bool)

(assert (=> start!69724 (array_inv!16888 a!4395)))

(declare-fun bs!22483 () Bool)

(assert (= bs!22483 start!69724))

(declare-fun m!754249 () Bool)

(assert (=> bs!22483 m!754249))

(push 1)

(assert (not start!69724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

