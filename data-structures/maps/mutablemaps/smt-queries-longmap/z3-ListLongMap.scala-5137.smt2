; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69738 () Bool)

(assert start!69738)

(declare-fun res!554869 () Bool)

(declare-fun e!449316 () Bool)

(assert (=> start!69738 (=> (not res!554869) (not e!449316))))

(declare-datatypes ((array!44110 0))(
  ( (array!44111 (arr!21121 (Array (_ BitVec 32) (_ BitVec 64))) (size!21542 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44110)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(assert (=> start!69738 (= res!554869 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21542 a!4395)) (bvslt (size!21542 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000)))))

(assert (=> start!69738 e!449316))

(assert (=> start!69738 true))

(declare-fun array_inv!16895 (array!44110) Bool)

(assert (=> start!69738 (array_inv!16895 a!4395)))

(declare-fun b!811680 () Bool)

(declare-fun arraysEqualsFromTo!0 (array!44110 array!44110 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!811680 (= e!449316 (not (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546)))))

(assert (=> b!811680 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546)))

(declare-datatypes ((Unit!27676 0))(
  ( (Unit!27677) )
))
(declare-fun lt!364012 () Unit!27676)

(declare-fun lemmaArrayEqualsFromToReflexivity!0 (array!44110 (_ BitVec 32) (_ BitVec 32)) Unit!27676)

(assert (=> b!811680 (= lt!364012 (lemmaArrayEqualsFromToReflexivity!0 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (= (and start!69738 res!554869) b!811680))

(declare-fun m!754269 () Bool)

(assert (=> start!69738 m!754269))

(declare-fun m!754271 () Bool)

(assert (=> b!811680 m!754271))

(declare-fun m!754273 () Bool)

(assert (=> b!811680 m!754273))

(declare-fun m!754275 () Bool)

(assert (=> b!811680 m!754275))

(check-sat (not start!69738) (not b!811680))
(check-sat)
(get-model)

(declare-fun d!104151 () Bool)

(assert (=> d!104151 (= (array_inv!16895 a!4395) (bvsge (size!21542 a!4395) #b00000000000000000000000000000000))))

(assert (=> start!69738 d!104151))

(declare-fun d!104153 () Bool)

(declare-fun res!554877 () Bool)

(declare-fun e!449328 () Bool)

(assert (=> d!104153 (=> res!554877 e!449328)))

(assert (=> d!104153 (= res!554877 (bvsge from!3750 to!546))))

(assert (=> d!104153 (= (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546) e!449328)))

(declare-fun b!811688 () Bool)

(declare-fun e!449329 () Bool)

(assert (=> b!811688 (= e!449328 e!449329)))

(declare-fun res!554878 () Bool)

(assert (=> b!811688 (=> (not res!554878) (not e!449329))))

(assert (=> b!811688 (= res!554878 (not (not (= (select (arr!21121 a!4395) from!3750) (select (arr!21121 a!4395) from!3750)))))))

(declare-fun b!811689 () Bool)

(assert (=> b!811689 (= e!449329 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd from!3750 #b00000000000000000000000000000001) to!546))))

(assert (= (and d!104153 (not res!554877)) b!811688))

(assert (= (and b!811688 res!554878) b!811689))

(declare-fun m!754285 () Bool)

(assert (=> b!811688 m!754285))

(assert (=> b!811688 m!754285))

(declare-fun m!754287 () Bool)

(assert (=> b!811689 m!754287))

(assert (=> b!811680 d!104153))

(declare-fun d!104155 () Bool)

(declare-fun res!554879 () Bool)

(declare-fun e!449330 () Bool)

(assert (=> d!104155 (=> res!554879 e!449330)))

(assert (=> d!104155 (= res!554879 (bvsge (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (=> d!104155 (= (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546) e!449330)))

(declare-fun b!811690 () Bool)

(declare-fun e!449331 () Bool)

(assert (=> b!811690 (= e!449330 e!449331)))

(declare-fun res!554880 () Bool)

(assert (=> b!811690 (=> (not res!554880) (not e!449331))))

(assert (=> b!811690 (= res!554880 (not (not (= (select (arr!21121 a!4395) (bvadd #b00000000000000000000000000000001 from!3750)) (select (arr!21121 a!4395) (bvadd #b00000000000000000000000000000001 from!3750))))))))

(declare-fun b!811691 () Bool)

(assert (=> b!811691 (= e!449331 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750 #b00000000000000000000000000000001) to!546))))

(assert (= (and d!104155 (not res!554879)) b!811690))

(assert (= (and b!811690 res!554880) b!811691))

(declare-fun m!754289 () Bool)

(assert (=> b!811690 m!754289))

(assert (=> b!811690 m!754289))

(declare-fun m!754291 () Bool)

(assert (=> b!811691 m!754291))

(assert (=> b!811680 d!104155))

(declare-fun d!104159 () Bool)

(assert (=> d!104159 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546)))

(declare-fun lt!364018 () Unit!27676)

(declare-fun choose!30 (array!44110 (_ BitVec 32) (_ BitVec 32)) Unit!27676)

(assert (=> d!104159 (= lt!364018 (choose!30 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (=> d!104159 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsle to!546 (size!21542 a!4395)) (bvslt (size!21542 a!4395) #b01111111111111111111111111111111))))

(assert (=> d!104159 (= (lemmaArrayEqualsFromToReflexivity!0 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546) lt!364018)))

(declare-fun bs!22495 () Bool)

(assert (= bs!22495 d!104159))

(assert (=> bs!22495 m!754273))

(declare-fun m!754301 () Bool)

(assert (=> bs!22495 m!754301))

(assert (=> b!811680 d!104159))

(check-sat (not b!811689) (not b!811691) (not d!104159))
(check-sat)
