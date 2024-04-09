; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69734 () Bool)

(assert start!69734)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44106 0))(
  ( (array!44107 (arr!21119 (Array (_ BitVec 32) (_ BitVec 64))) (size!21540 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44106)

(assert (=> start!69734 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21540 a!4395)) (bvslt (size!21540 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000) (bvsge (bvsub to!546 (bvadd #b00000000000000000000000000000001 from!3750)) (bvsub to!546 from!3750)))))

(assert (=> start!69734 true))

(declare-fun array_inv!16893 (array!44106) Bool)

(assert (=> start!69734 (array_inv!16893 a!4395)))

(declare-fun bs!22491 () Bool)

(assert (= bs!22491 start!69734))

(declare-fun m!754259 () Bool)

(assert (=> bs!22491 m!754259))

(push 1)

(assert (not start!69734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

