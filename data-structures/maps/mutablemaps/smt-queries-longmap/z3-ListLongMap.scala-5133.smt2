; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69714 () Bool)

(assert start!69714)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44086 0))(
  ( (array!44087 (arr!21109 (Array (_ BitVec 32) (_ BitVec 64))) (size!21530 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44086)

(assert (=> start!69714 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21530 a!4395)) (bvslt (size!21530 a!4395) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsgt from!3750 to!546))))

(assert (=> start!69714 true))

(declare-fun array_inv!16883 (array!44086) Bool)

(assert (=> start!69714 (array_inv!16883 a!4395)))

(declare-fun bs!22472 () Bool)

(assert (= bs!22472 start!69714))

(declare-fun m!754239 () Bool)

(assert (=> bs!22472 m!754239))

(check-sat (not start!69714))
(check-sat)
