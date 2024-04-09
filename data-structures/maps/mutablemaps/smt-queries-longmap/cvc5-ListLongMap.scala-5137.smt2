; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69736 () Bool)

(assert start!69736)

(declare-fun res!554866 () Bool)

(declare-fun e!449310 () Bool)

(assert (=> start!69736 (=> (not res!554866) (not e!449310))))

(declare-datatypes ((array!44108 0))(
  ( (array!44109 (arr!21120 (Array (_ BitVec 32) (_ BitVec 64))) (size!21541 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44108)

(declare-fun to!546 () (_ BitVec 32))

(declare-fun from!3750 () (_ BitVec 32))

(assert (=> start!69736 (= res!554866 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21541 a!4395)) (bvslt (size!21541 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000)))))

(assert (=> start!69736 e!449310))

(assert (=> start!69736 true))

(declare-fun array_inv!16894 (array!44108) Bool)

(assert (=> start!69736 (array_inv!16894 a!4395)))

(declare-fun b!811677 () Bool)

(declare-fun arraysEqualsFromTo!0 (array!44108 array!44108 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!811677 (= e!449310 (not (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546)))))

(assert (=> b!811677 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546)))

(declare-datatypes ((Unit!27674 0))(
  ( (Unit!27675) )
))
(declare-fun lt!364009 () Unit!27674)

(declare-fun lemmaArrayEqualsFromToReflexivity!0 (array!44108 (_ BitVec 32) (_ BitVec 32)) Unit!27674)

(assert (=> b!811677 (= lt!364009 (lemmaArrayEqualsFromToReflexivity!0 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (= (and start!69736 res!554866) b!811677))

(declare-fun m!754261 () Bool)

(assert (=> start!69736 m!754261))

(declare-fun m!754263 () Bool)

(assert (=> b!811677 m!754263))

(declare-fun m!754265 () Bool)

(assert (=> b!811677 m!754265))

(declare-fun m!754267 () Bool)

(assert (=> b!811677 m!754267))

(push 1)

(assert (not start!69736))

(assert (not b!811677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!104163 () Bool)

(assert (=> d!104163 (= (array_inv!16894 a!4395) (bvsge (size!21541 a!4395) #b00000000000000000000000000000000))))

(assert (=> start!69736 d!104163))

(declare-fun d!104165 () Bool)

(declare-fun res!554893 () Bool)

(declare-fun e!449344 () Bool)

(assert (=> d!104165 (=> res!554893 e!449344)))

(assert (=> d!104165 (= res!554893 (bvsge from!3750 to!546))))

(assert (=> d!104165 (= (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546) e!449344)))

(declare-fun b!811704 () Bool)

(declare-fun e!449345 () Bool)

(assert (=> b!811704 (= e!449344 e!449345)))

(declare-fun res!554894 () Bool)

(assert (=> b!811704 (=> (not res!554894) (not e!449345))))

(assert (=> b!811704 (= res!554894 (not (not (= (select (arr!21120 a!4395) from!3750) (select (arr!21120 a!4395) from!3750)))))))

(declare-fun b!811705 () Bool)

(assert (=> b!811705 (= e!449345 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd from!3750 #b00000000000000000000000000000001) to!546))))

(assert (= (and d!104165 (not res!554893)) b!811704))

(assert (= (and b!811704 res!554894) b!811705))

(declare-fun m!754303 () Bool)

(assert (=> b!811704 m!754303))

(assert (=> b!811704 m!754303))

(declare-fun m!754305 () Bool)

(assert (=> b!811705 m!754305))

(assert (=> b!811677 d!104165))

(declare-fun d!104171 () Bool)

(declare-fun res!554895 () Bool)

(declare-fun e!449346 () Bool)

(assert (=> d!104171 (=> res!554895 e!449346)))

(assert (=> d!104171 (= res!554895 (bvsge (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

