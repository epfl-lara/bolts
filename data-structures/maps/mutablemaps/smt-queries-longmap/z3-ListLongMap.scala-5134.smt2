; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69720 () Bool)

(assert start!69720)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44092 0))(
  ( (array!44093 (arr!21112 (Array (_ BitVec 32) (_ BitVec 64))) (size!21533 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44092)

(assert (=> start!69720 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21533 a!4395)) (bvslt (size!21533 a!4395) #b01111111111111111111111111111111) (bvslt (bvsub to!546 from!3750) #b00000000000000000000000000000000))))

(assert (=> start!69720 true))

(declare-fun array_inv!16886 (array!44092) Bool)

(assert (=> start!69720 (array_inv!16886 a!4395)))

(declare-fun bs!22478 () Bool)

(assert (= bs!22478 start!69720))

(declare-fun m!754245 () Bool)

(assert (=> bs!22478 m!754245))

(check-sat (not start!69720))
(check-sat)
