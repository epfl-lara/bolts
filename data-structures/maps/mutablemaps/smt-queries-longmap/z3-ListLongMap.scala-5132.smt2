; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69708 () Bool)

(assert start!69708)

(declare-fun res!554860 () Bool)

(declare-fun e!449262 () Bool)

(assert (=> start!69708 (=> (not res!554860) (not e!449262))))

(declare-datatypes ((array!44080 0))(
  ( (array!44081 (arr!21106 (Array (_ BitVec 32) (_ BitVec 64))) (size!21527 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44080)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(assert (=> start!69708 (= res!554860 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21527 a!4395)) (bvslt (size!21527 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000)))))

(assert (=> start!69708 e!449262))

(assert (=> start!69708 true))

(declare-fun array_inv!16880 (array!44080) Bool)

(assert (=> start!69708 (array_inv!16880 a!4395)))

(declare-fun b!811671 () Bool)

(assert (=> b!811671 (= e!449262 (not (bvsle from!3750 to!546)))))

(declare-fun arraysEqualsFromTo!0 (array!44080 array!44080 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!811671 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546)))

(declare-datatypes ((Unit!27670 0))(
  ( (Unit!27671) )
))
(declare-fun lt!364003 () Unit!27670)

(declare-fun lemmaArrayEqualsFromToReflexivity!0 (array!44080 (_ BitVec 32) (_ BitVec 32)) Unit!27670)

(assert (=> b!811671 (= lt!364003 (lemmaArrayEqualsFromToReflexivity!0 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (= (and start!69708 res!554860) b!811671))

(declare-fun m!754225 () Bool)

(assert (=> start!69708 m!754225))

(declare-fun m!754227 () Bool)

(assert (=> b!811671 m!754227))

(declare-fun m!754229 () Bool)

(assert (=> b!811671 m!754229))

(check-sat (not b!811671) (not start!69708))
(check-sat)
