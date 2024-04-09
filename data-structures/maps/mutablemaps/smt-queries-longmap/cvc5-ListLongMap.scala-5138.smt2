; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69760 () Bool)

(assert start!69760)

(declare-fun res!554899 () Bool)

(declare-fun e!449352 () Bool)

(assert (=> start!69760 (=> (not res!554899) (not e!449352))))

(declare-datatypes ((array!44117 0))(
  ( (array!44118 (arr!21123 (Array (_ BitVec 32) (_ BitVec 64))) (size!21544 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44117)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(assert (=> start!69760 (= res!554899 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21544 a!4395)) (bvslt (size!21544 a!4395) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) to!546)))))

(assert (=> start!69760 e!449352))

(assert (=> start!69760 true))

(declare-fun array_inv!16897 (array!44117) Bool)

(assert (=> start!69760 (array_inv!16897 a!4395)))

(declare-fun b!811710 () Bool)

(declare-fun arraysEqualsFromTo!0 (array!44117 array!44117 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!811710 (= e!449352 (not (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546)))))

(assert (= (and start!69760 res!554899) b!811710))

(declare-fun m!754315 () Bool)

(assert (=> start!69760 m!754315))

(declare-fun m!754317 () Bool)

(assert (=> b!811710 m!754317))

(push 1)

(assert (not b!811710))

(assert (not start!69760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!104181 () Bool)

(declare-fun res!554916 () Bool)

(declare-fun e!449376 () Bool)

(assert (=> d!104181 (=> res!554916 e!449376)))

(assert (=> d!104181 (= res!554916 (bvsge from!3750 to!546))))

(assert (=> d!104181 (= (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546) e!449376)))

(declare-fun b!811727 () Bool)

(declare-fun e!449377 () Bool)

(assert (=> b!811727 (= e!449376 e!449377)))

(declare-fun res!554917 () Bool)

(assert (=> b!811727 (=> (not res!554917) (not e!449377))))

(assert (=> b!811727 (= res!554917 (not (not (= (select (arr!21123 a!4395) from!3750) (select (arr!21123 a!4395) from!3750)))))))

(declare-fun b!811728 () Bool)

(assert (=> b!811728 (= e!449377 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd from!3750 #b00000000000000000000000000000001) to!546))))

(assert (= (and d!104181 (not res!554916)) b!811727))

(assert (= (and b!811727 res!554917) b!811728))

(declare-fun m!754331 () Bool)

(assert (=> b!811727 m!754331))

(assert (=> b!811727 m!754331))

(declare-fun m!754333 () Bool)

(assert (=> b!811728 m!754333))

(assert (=> b!811710 d!104181))

(declare-fun d!104187 () Bool)

(assert (=> d!104187 (= (array_inv!16897 a!4395) (bvsge (size!21544 a!4395) #b00000000000000000000000000000000))))

(assert (=> start!69760 d!104187))

(push 1)

(assert (not b!811728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

