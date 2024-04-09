; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69732 () Bool)

(assert start!69732)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44104 0))(
  ( (array!44105 (arr!21118 (Array (_ BitVec 32) (_ BitVec 64))) (size!21539 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44104)

(assert (=> start!69732 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21539 a!4395)) (bvslt (size!21539 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000) (bvsge (bvsub to!546 (bvadd #b00000000000000000000000000000001 from!3750)) (bvsub to!546 from!3750)))))

(assert (=> start!69732 true))

(declare-fun array_inv!16892 (array!44104) Bool)

(assert (=> start!69732 (array_inv!16892 a!4395)))

(declare-fun bs!22490 () Bool)

(assert (= bs!22490 start!69732))

(declare-fun m!754257 () Bool)

(assert (=> bs!22490 m!754257))

(check-sat (not start!69732))
(check-sat)
