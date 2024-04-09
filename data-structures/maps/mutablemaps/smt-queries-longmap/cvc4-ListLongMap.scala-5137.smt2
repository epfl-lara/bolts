; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69740 () Bool)

(assert start!69740)

(declare-fun res!554872 () Bool)

(declare-fun e!449322 () Bool)

(assert (=> start!69740 (=> (not res!554872) (not e!449322))))

(declare-datatypes ((array!44112 0))(
  ( (array!44113 (arr!21122 (Array (_ BitVec 32) (_ BitVec 64))) (size!21543 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44112)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(assert (=> start!69740 (= res!554872 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21543 a!4395)) (bvslt (size!21543 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000)))))

(assert (=> start!69740 e!449322))

(assert (=> start!69740 true))

(declare-fun array_inv!16896 (array!44112) Bool)

(assert (=> start!69740 (array_inv!16896 a!4395)))

(declare-fun b!811683 () Bool)

(declare-fun arraysEqualsFromTo!0 (array!44112 array!44112 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!811683 (= e!449322 (not (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546)))))

(assert (=> b!811683 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546)))

(declare-datatypes ((Unit!27678 0))(
  ( (Unit!27679) )
))
(declare-fun lt!364015 () Unit!27678)

(declare-fun lemmaArrayEqualsFromToReflexivity!0 (array!44112 (_ BitVec 32) (_ BitVec 32)) Unit!27678)

(assert (=> b!811683 (= lt!364015 (lemmaArrayEqualsFromToReflexivity!0 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (= (and start!69740 res!554872) b!811683))

(declare-fun m!754277 () Bool)

(assert (=> start!69740 m!754277))

(declare-fun m!754279 () Bool)

(assert (=> b!811683 m!754279))

(declare-fun m!754281 () Bool)

(assert (=> b!811683 m!754281))

(declare-fun m!754283 () Bool)

(assert (=> b!811683 m!754283))

(push 1)

(assert (not start!69740))

(assert (not b!811683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!104157 () Bool)

(assert (=> d!104157 (= (array_inv!16896 a!4395) (bvsge (size!21543 a!4395) #b00000000000000000000000000000000))))

(assert (=> start!69740 d!104157))

(declare-fun d!104161 () Bool)

(declare-fun res!554885 () Bool)

(declare-fun e!449336 () Bool)

(assert (=> d!104161 (=> res!554885 e!449336)))

(assert (=> d!104161 (= res!554885 (bvsge from!3750 to!546))))

(assert (=> d!104161 (= (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546) e!449336)))

(declare-fun b!811696 () Bool)

(declare-fun e!449337 () Bool)

(assert (=> b!811696 (= e!449336 e!449337)))

(declare-fun res!554886 () Bool)

(assert (=> b!811696 (=> (not res!554886) (not e!449337))))

(assert (=> b!811696 (= res!554886 (not (not (= (select (arr!21122 a!4395) from!3750) (select (arr!21122 a!4395) from!3750)))))))

(declare-fun b!811697 () Bool)

(assert (=> b!811697 (= e!449337 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd from!3750 #b00000000000000000000000000000001) to!546))))

(assert (= (and d!104161 (not res!554885)) b!811696))

(assert (= (and b!811696 res!554886) b!811697))

(declare-fun m!754293 () Bool)

(assert (=> b!811696 m!754293))

(assert (=> b!811696 m!754293))

(declare-fun m!754295 () Bool)

(assert (=> b!811697 m!754295))

(assert (=> b!811683 d!104161))

(declare-fun d!104167 () Bool)

(declare-fun res!554887 () Bool)

(declare-fun e!449338 () Bool)

(assert (=> d!104167 (=> res!554887 e!449338)))

(assert (=> d!104167 (= res!554887 (bvsge (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (=> d!104167 (= (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546) e!449338)))

(declare-fun b!811698 () Bool)

(declare-fun e!449339 () Bool)

(assert (=> b!811698 (= e!449338 e!449339)))

(declare-fun res!554888 () Bool)

(assert (=> b!811698 (=> (not res!554888) (not e!449339))))

(assert (=> b!811698 (= res!554888 (not (not (= (select (arr!21122 a!4395) (bvadd #b00000000000000000000000000000001 from!3750)) (select (arr!21122 a!4395) (bvadd #b00000000000000000000000000000001 from!3750))))))))

(declare-fun b!811699 () Bool)

(assert (=> b!811699 (= e!449339 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750 #b00000000000000000000000000000001) to!546))))

(assert (= (and d!104167 (not res!554887)) b!811698))

(assert (= (and b!811698 res!554888) b!811699))

(declare-fun m!754297 () Bool)

(assert (=> b!811698 m!754297))

(assert (=> b!811698 m!754297))

(declare-fun m!754299 () Bool)

(assert (=> b!811699 m!754299))

(assert (=> b!811683 d!104167))

(declare-fun d!104169 () Bool)

(assert (=> d!104169 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546)))

(declare-fun lt!364021 () Unit!27678)

(declare-fun choose!30 (array!44112 (_ BitVec 32) (_ BitVec 32)) Unit!27678)

(assert (=> d!104169 (= lt!364021 (choose!30 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

