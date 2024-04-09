; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69726 () Bool)

(assert start!69726)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44098 0))(
  ( (array!44099 (arr!21115 (Array (_ BitVec 32) (_ BitVec 64))) (size!21536 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44098)

(assert (=> start!69726 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21536 a!4395)) (bvslt (size!21536 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000))))

(assert (=> start!69726 true))

(declare-fun array_inv!16889 (array!44098) Bool)

(assert (=> start!69726 (array_inv!16889 a!4395)))

(declare-fun bs!22484 () Bool)

(assert (= bs!22484 start!69726))

(declare-fun m!754251 () Bool)

(assert (=> bs!22484 m!754251))

(check-sat (not start!69726))
(check-sat)
