; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69730 () Bool)

(assert start!69730)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44102 0))(
  ( (array!44103 (arr!21117 (Array (_ BitVec 32) (_ BitVec 64))) (size!21538 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44102)

(assert (=> start!69730 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21538 a!4395)) (bvslt (size!21538 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000) (bvsge (bvsub to!546 (bvadd #b00000000000000000000000000000001 from!3750)) (bvsub to!546 from!3750)))))

(assert (=> start!69730 true))

(declare-fun array_inv!16891 (array!44102) Bool)

(assert (=> start!69730 (array_inv!16891 a!4395)))

(declare-fun bs!22489 () Bool)

(assert (= bs!22489 start!69730))

(declare-fun m!754255 () Bool)

(assert (=> bs!22489 m!754255))

(push 1)

(assert (not start!69730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

