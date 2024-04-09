; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116750 () Bool)

(assert start!116750)

(declare-fun b!1375383 () Bool)

(declare-fun res!918559 () Bool)

(declare-fun e!779173 () Bool)

(assert (=> b!1375383 (=> (not res!918559) (not e!779173))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93337 0))(
  ( (array!93338 (arr!45067 (Array (_ BitVec 32) (_ BitVec 64))) (size!45618 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93337)

(assert (=> b!1375383 (= res!918559 (and (bvslt (size!45618 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45618 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375384 () Bool)

(declare-fun res!918556 () Bool)

(assert (=> b!1375384 (=> (not res!918556) (not e!779173))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375384 (= res!918556 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65673 () Bool)

(declare-fun call!65676 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93337 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65673 (= call!65676 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375385 () Bool)

(declare-fun e!779177 () Bool)

(declare-fun e!779174 () Bool)

(assert (=> b!1375385 (= e!779177 e!779174)))

(declare-fun res!918561 () Bool)

(assert (=> b!1375385 (=> (not res!918561) (not e!779174))))

(assert (=> b!1375385 (= res!918561 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45618 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45497 0))(
  ( (Unit!45498) )
))
(declare-fun lt!604344 () Unit!45497)

(declare-fun e!779176 () Unit!45497)

(assert (=> b!1375385 (= lt!604344 e!779176)))

(declare-fun c!127856 () Bool)

(assert (=> b!1375385 (= c!127856 (validKeyInArray!0 (select (arr!45067 a!4032) to!206)))))

(declare-fun b!1375386 () Bool)

(declare-fun res!918560 () Bool)

(assert (=> b!1375386 (=> (not res!918560) (not e!779173))))

(assert (=> b!1375386 (= res!918560 (validKeyInArray!0 (select (arr!45067 a!4032) i!1445)))))

(declare-fun b!1375387 () Bool)

(declare-fun lt!604342 () Unit!45497)

(assert (=> b!1375387 (= e!779176 lt!604342)))

(declare-fun lt!604343 () Unit!45497)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93337 (_ BitVec 32) (_ BitVec 32)) Unit!45497)

(assert (=> b!1375387 (= lt!604343 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604347 () (_ BitVec 32))

(assert (=> b!1375387 (= call!65676 (bvadd #b00000000000000000000000000000001 lt!604347))))

(declare-fun lt!604351 () array!93337)

(assert (=> b!1375387 (= lt!604342 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604351 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65675 () (_ BitVec 32))

(declare-fun lt!604345 () (_ BitVec 32))

(assert (=> b!1375387 (= call!65675 (bvadd #b00000000000000000000000000000001 lt!604345))))

(declare-fun b!1375388 () Bool)

(assert (=> b!1375388 (= e!779174 false)))

(declare-fun lt!604346 () (_ BitVec 32))

(assert (=> b!1375388 (= lt!604346 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604349 () (_ BitVec 32))

(assert (=> b!1375388 (= lt!604349 (arrayCountValidKeys!0 lt!604351 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65672 () Bool)

(assert (=> bm!65672 (= call!65675 (arrayCountValidKeys!0 lt!604351 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918557 () Bool)

(assert (=> start!116750 (=> (not res!918557) (not e!779173))))

(assert (=> start!116750 (= res!918557 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45618 a!4032))))))

(assert (=> start!116750 e!779173))

(assert (=> start!116750 true))

(declare-fun array_inv!34012 (array!93337) Bool)

(assert (=> start!116750 (array_inv!34012 a!4032)))

(declare-fun b!1375389 () Bool)

(declare-fun lt!604350 () Unit!45497)

(assert (=> b!1375389 (= e!779176 lt!604350)))

(declare-fun lt!604348 () Unit!45497)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93337 (_ BitVec 32) (_ BitVec 32)) Unit!45497)

(assert (=> b!1375389 (= lt!604348 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375389 (= call!65676 lt!604347)))

(assert (=> b!1375389 (= lt!604350 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604351 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375389 (= call!65675 lt!604345)))

(declare-fun b!1375390 () Bool)

(assert (=> b!1375390 (= e!779173 e!779177)))

(declare-fun res!918558 () Bool)

(assert (=> b!1375390 (=> (not res!918558) (not e!779177))))

(assert (=> b!1375390 (= res!918558 (and (= lt!604345 lt!604347) (not (= to!206 (size!45618 a!4032)))))))

(assert (=> b!1375390 (= lt!604347 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375390 (= lt!604345 (arrayCountValidKeys!0 lt!604351 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375390 (= lt!604351 (array!93338 (store (arr!45067 a!4032) i!1445 k!2947) (size!45618 a!4032)))))

(assert (= (and start!116750 res!918557) b!1375386))

(assert (= (and b!1375386 res!918560) b!1375384))

(assert (= (and b!1375384 res!918556) b!1375383))

(assert (= (and b!1375383 res!918559) b!1375390))

(assert (= (and b!1375390 res!918558) b!1375385))

(assert (= (and b!1375385 c!127856) b!1375387))

(assert (= (and b!1375385 (not c!127856)) b!1375389))

(assert (= (or b!1375387 b!1375389) bm!65673))

(assert (= (or b!1375387 b!1375389) bm!65672))

(assert (= (and b!1375385 res!918561) b!1375388))

(declare-fun m!1259275 () Bool)

(assert (=> b!1375388 m!1259275))

(declare-fun m!1259277 () Bool)

(assert (=> b!1375388 m!1259277))

(declare-fun m!1259279 () Bool)

(assert (=> b!1375390 m!1259279))

(declare-fun m!1259281 () Bool)

(assert (=> b!1375390 m!1259281))

(declare-fun m!1259283 () Bool)

(assert (=> b!1375390 m!1259283))

(declare-fun m!1259285 () Bool)

(assert (=> b!1375384 m!1259285))

(declare-fun m!1259287 () Bool)

(assert (=> b!1375389 m!1259287))

(declare-fun m!1259289 () Bool)

(assert (=> b!1375389 m!1259289))

(assert (=> bm!65672 m!1259277))

(assert (=> bm!65673 m!1259275))

(declare-fun m!1259291 () Bool)

(assert (=> b!1375387 m!1259291))

(declare-fun m!1259293 () Bool)

(assert (=> b!1375387 m!1259293))

(declare-fun m!1259295 () Bool)

(assert (=> b!1375385 m!1259295))

(assert (=> b!1375385 m!1259295))

(declare-fun m!1259297 () Bool)

(assert (=> b!1375385 m!1259297))

(declare-fun m!1259299 () Bool)

(assert (=> b!1375386 m!1259299))

(assert (=> b!1375386 m!1259299))

(declare-fun m!1259301 () Bool)

(assert (=> b!1375386 m!1259301))

(declare-fun m!1259303 () Bool)

(assert (=> start!116750 m!1259303))

(push 1)

(assert (not b!1375389))

(assert (not b!1375390))

(assert (not bm!65673))

(assert (not b!1375384))

(assert (not b!1375387))

(assert (not bm!65672))

(assert (not b!1375388))

(assert (not start!116750))

(assert (not b!1375386))

(assert (not b!1375385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

