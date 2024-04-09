; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116932 () Bool)

(assert start!116932)

(declare-fun b!1377329 () Bool)

(declare-fun res!920172 () Bool)

(declare-fun e!780224 () Bool)

(assert (=> b!1377329 (=> (not res!920172) (not e!780224))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93519 0))(
  ( (array!93520 (arr!45158 (Array (_ BitVec 32) (_ BitVec 64))) (size!45709 (_ BitVec 32))) )
))
(declare-fun lt!605967 () array!93519)

(declare-fun a!4032 () array!93519)

(declare-fun arrayCountValidKeys!0 (array!93519 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377329 (= res!920172 (= (arrayCountValidKeys!0 lt!605967 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun res!920176 () Bool)

(declare-fun e!780225 () Bool)

(assert (=> start!116932 (=> (not res!920176) (not e!780225))))

(assert (=> start!116932 (= res!920176 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45709 a!4032))))))

(assert (=> start!116932 e!780225))

(assert (=> start!116932 true))

(declare-fun array_inv!34103 (array!93519) Bool)

(assert (=> start!116932 (array_inv!34103 a!4032)))

(declare-fun b!1377330 () Bool)

(declare-fun e!780227 () Bool)

(assert (=> b!1377330 (= e!780227 e!780224)))

(declare-fun res!920178 () Bool)

(assert (=> b!1377330 (=> (not res!920178) (not e!780224))))

(assert (=> b!1377330 (= res!920178 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45709 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45631 0))(
  ( (Unit!45632) )
))
(declare-fun lt!605963 () Unit!45631)

(declare-fun e!780223 () Unit!45631)

(assert (=> b!1377330 (= lt!605963 e!780223)))

(declare-fun c!128021 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377330 (= c!128021 (validKeyInArray!0 (select (arr!45158 a!4032) to!206)))))

(declare-fun call!66005 () (_ BitVec 32))

(declare-fun bm!66002 () Bool)

(assert (=> bm!66002 (= call!66005 (arrayCountValidKeys!0 lt!605967 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377331 () Bool)

(declare-fun res!920175 () Bool)

(assert (=> b!1377331 (=> (not res!920175) (not e!780225))))

(assert (=> b!1377331 (= res!920175 (validKeyInArray!0 (select (arr!45158 a!4032) i!1445)))))

(declare-fun b!1377332 () Bool)

(assert (=> b!1377332 (= e!780224 (not true))))

(assert (=> b!1377332 (= (arrayCountValidKeys!0 lt!605967 (bvadd #b00000000000000000000000000000001 i!1445) (size!45709 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45709 a!4032)))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun lt!605965 () Unit!45631)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93519 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45631)

(assert (=> b!1377332 (= lt!605965 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k0!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377333 () Bool)

(assert (=> b!1377333 (= e!780225 e!780227)))

(declare-fun res!920174 () Bool)

(assert (=> b!1377333 (=> (not res!920174) (not e!780227))))

(declare-fun lt!605966 () (_ BitVec 32))

(declare-fun lt!605960 () (_ BitVec 32))

(assert (=> b!1377333 (= res!920174 (and (= lt!605960 lt!605966) (not (= to!206 (size!45709 a!4032)))))))

(assert (=> b!1377333 (= lt!605966 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377333 (= lt!605960 (arrayCountValidKeys!0 lt!605967 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377333 (= lt!605967 (array!93520 (store (arr!45158 a!4032) i!1445 k0!2947) (size!45709 a!4032)))))

(declare-fun b!1377334 () Bool)

(declare-fun lt!605961 () Unit!45631)

(assert (=> b!1377334 (= e!780223 lt!605961)))

(declare-fun lt!605962 () Unit!45631)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93519 (_ BitVec 32) (_ BitVec 32)) Unit!45631)

(assert (=> b!1377334 (= lt!605962 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!66006 () (_ BitVec 32))

(assert (=> b!1377334 (= call!66006 (bvadd #b00000000000000000000000000000001 lt!605966))))

(assert (=> b!1377334 (= lt!605961 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605967 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377334 (= call!66005 (bvadd #b00000000000000000000000000000001 lt!605960))))

(declare-fun b!1377335 () Bool)

(declare-fun res!920173 () Bool)

(assert (=> b!1377335 (=> (not res!920173) (not e!780225))))

(assert (=> b!1377335 (= res!920173 (and (bvslt (size!45709 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45709 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377336 () Bool)

(declare-fun res!920177 () Bool)

(assert (=> b!1377336 (=> (not res!920177) (not e!780225))))

(assert (=> b!1377336 (= res!920177 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1377337 () Bool)

(declare-fun lt!605968 () Unit!45631)

(assert (=> b!1377337 (= e!780223 lt!605968)))

(declare-fun lt!605964 () Unit!45631)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93519 (_ BitVec 32) (_ BitVec 32)) Unit!45631)

(assert (=> b!1377337 (= lt!605964 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377337 (= call!66006 lt!605966)))

(assert (=> b!1377337 (= lt!605968 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605967 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377337 (= call!66005 lt!605960)))

(declare-fun bm!66003 () Bool)

(assert (=> bm!66003 (= call!66006 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116932 res!920176) b!1377331))

(assert (= (and b!1377331 res!920175) b!1377336))

(assert (= (and b!1377336 res!920177) b!1377335))

(assert (= (and b!1377335 res!920173) b!1377333))

(assert (= (and b!1377333 res!920174) b!1377330))

(assert (= (and b!1377330 c!128021) b!1377334))

(assert (= (and b!1377330 (not c!128021)) b!1377337))

(assert (= (or b!1377334 b!1377337) bm!66002))

(assert (= (or b!1377334 b!1377337) bm!66003))

(assert (= (and b!1377330 res!920178) b!1377329))

(assert (= (and b!1377329 res!920172) b!1377332))

(declare-fun m!1261677 () Bool)

(assert (=> b!1377330 m!1261677))

(assert (=> b!1377330 m!1261677))

(declare-fun m!1261679 () Bool)

(assert (=> b!1377330 m!1261679))

(declare-fun m!1261681 () Bool)

(assert (=> start!116932 m!1261681))

(declare-fun m!1261683 () Bool)

(assert (=> b!1377336 m!1261683))

(declare-fun m!1261685 () Bool)

(assert (=> bm!66003 m!1261685))

(declare-fun m!1261687 () Bool)

(assert (=> b!1377332 m!1261687))

(declare-fun m!1261689 () Bool)

(assert (=> b!1377332 m!1261689))

(declare-fun m!1261691 () Bool)

(assert (=> b!1377332 m!1261691))

(declare-fun m!1261693 () Bool)

(assert (=> b!1377331 m!1261693))

(assert (=> b!1377331 m!1261693))

(declare-fun m!1261695 () Bool)

(assert (=> b!1377331 m!1261695))

(declare-fun m!1261697 () Bool)

(assert (=> b!1377337 m!1261697))

(declare-fun m!1261699 () Bool)

(assert (=> b!1377337 m!1261699))

(declare-fun m!1261701 () Bool)

(assert (=> bm!66002 m!1261701))

(declare-fun m!1261703 () Bool)

(assert (=> b!1377333 m!1261703))

(declare-fun m!1261705 () Bool)

(assert (=> b!1377333 m!1261705))

(declare-fun m!1261707 () Bool)

(assert (=> b!1377333 m!1261707))

(declare-fun m!1261709 () Bool)

(assert (=> b!1377334 m!1261709))

(declare-fun m!1261711 () Bool)

(assert (=> b!1377334 m!1261711))

(assert (=> b!1377329 m!1261701))

(assert (=> b!1377329 m!1261685))

(check-sat (not b!1377331) (not b!1377336) (not bm!66003) (not b!1377329) (not start!116932) (not b!1377332) (not bm!66002) (not b!1377330) (not b!1377334) (not b!1377337) (not b!1377333))
(check-sat)
