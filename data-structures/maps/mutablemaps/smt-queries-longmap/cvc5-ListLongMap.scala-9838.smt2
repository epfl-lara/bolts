; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116756 () Bool)

(assert start!116756)

(declare-fun b!1375455 () Bool)

(declare-fun e!779219 () Bool)

(declare-fun e!779220 () Bool)

(assert (=> b!1375455 (= e!779219 e!779220)))

(declare-fun res!918610 () Bool)

(assert (=> b!1375455 (=> (not res!918610) (not e!779220))))

(declare-fun lt!604437 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604439 () (_ BitVec 32))

(declare-datatypes ((array!93343 0))(
  ( (array!93344 (arr!45070 (Array (_ BitVec 32) (_ BitVec 64))) (size!45621 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93343)

(assert (=> b!1375455 (= res!918610 (and (= lt!604437 lt!604439) (not (= to!206 (size!45621 a!4032)))))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93343 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375455 (= lt!604439 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604436 () array!93343)

(assert (=> b!1375455 (= lt!604437 (arrayCountValidKeys!0 lt!604436 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375455 (= lt!604436 (array!93344 (store (arr!45070 a!4032) i!1445 k!2947) (size!45621 a!4032)))))

(declare-fun b!1375456 () Bool)

(declare-datatypes ((Unit!45503 0))(
  ( (Unit!45504) )
))
(declare-fun e!779218 () Unit!45503)

(declare-fun lt!604433 () Unit!45503)

(assert (=> b!1375456 (= e!779218 lt!604433)))

(declare-fun lt!604438 () Unit!45503)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93343 (_ BitVec 32) (_ BitVec 32)) Unit!45503)

(assert (=> b!1375456 (= lt!604438 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65694 () (_ BitVec 32))

(assert (=> b!1375456 (= call!65694 lt!604439)))

(assert (=> b!1375456 (= lt!604433 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604436 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65693 () (_ BitVec 32))

(assert (=> b!1375456 (= call!65693 lt!604437)))

(declare-fun b!1375457 () Bool)

(declare-fun e!779221 () Bool)

(assert (=> b!1375457 (= e!779221 false)))

(declare-fun lt!604432 () (_ BitVec 32))

(assert (=> b!1375457 (= lt!604432 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604435 () (_ BitVec 32))

(assert (=> b!1375457 (= lt!604435 (arrayCountValidKeys!0 lt!604436 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375458 () Bool)

(declare-fun lt!604434 () Unit!45503)

(assert (=> b!1375458 (= e!779218 lt!604434)))

(declare-fun lt!604441 () Unit!45503)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93343 (_ BitVec 32) (_ BitVec 32)) Unit!45503)

(assert (=> b!1375458 (= lt!604441 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375458 (= call!65694 (bvadd #b00000000000000000000000000000001 lt!604439))))

(assert (=> b!1375458 (= lt!604434 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604436 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375458 (= call!65693 (bvadd #b00000000000000000000000000000001 lt!604437))))

(declare-fun b!1375459 () Bool)

(declare-fun res!918613 () Bool)

(assert (=> b!1375459 (=> (not res!918613) (not e!779219))))

(assert (=> b!1375459 (= res!918613 (and (bvslt (size!45621 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45621 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!918614 () Bool)

(assert (=> start!116756 (=> (not res!918614) (not e!779219))))

(assert (=> start!116756 (= res!918614 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45621 a!4032))))))

(assert (=> start!116756 e!779219))

(assert (=> start!116756 true))

(declare-fun array_inv!34015 (array!93343) Bool)

(assert (=> start!116756 (array_inv!34015 a!4032)))

(declare-fun b!1375460 () Bool)

(assert (=> b!1375460 (= e!779220 e!779221)))

(declare-fun res!918615 () Bool)

(assert (=> b!1375460 (=> (not res!918615) (not e!779221))))

(assert (=> b!1375460 (= res!918615 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45621 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604440 () Unit!45503)

(assert (=> b!1375460 (= lt!604440 e!779218)))

(declare-fun c!127865 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375460 (= c!127865 (validKeyInArray!0 (select (arr!45070 a!4032) to!206)))))

(declare-fun b!1375461 () Bool)

(declare-fun res!918612 () Bool)

(assert (=> b!1375461 (=> (not res!918612) (not e!779219))))

(assert (=> b!1375461 (= res!918612 (validKeyInArray!0 (select (arr!45070 a!4032) i!1445)))))

(declare-fun bm!65690 () Bool)

(assert (=> bm!65690 (= call!65693 (arrayCountValidKeys!0 lt!604436 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65691 () Bool)

(assert (=> bm!65691 (= call!65694 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375462 () Bool)

(declare-fun res!918611 () Bool)

(assert (=> b!1375462 (=> (not res!918611) (not e!779219))))

(assert (=> b!1375462 (= res!918611 (not (validKeyInArray!0 k!2947)))))

(assert (= (and start!116756 res!918614) b!1375461))

(assert (= (and b!1375461 res!918612) b!1375462))

(assert (= (and b!1375462 res!918611) b!1375459))

(assert (= (and b!1375459 res!918613) b!1375455))

(assert (= (and b!1375455 res!918610) b!1375460))

(assert (= (and b!1375460 c!127865) b!1375458))

(assert (= (and b!1375460 (not c!127865)) b!1375456))

(assert (= (or b!1375458 b!1375456) bm!65691))

(assert (= (or b!1375458 b!1375456) bm!65690))

(assert (= (and b!1375460 res!918615) b!1375457))

(declare-fun m!1259365 () Bool)

(assert (=> bm!65690 m!1259365))

(declare-fun m!1259367 () Bool)

(assert (=> b!1375462 m!1259367))

(declare-fun m!1259369 () Bool)

(assert (=> b!1375461 m!1259369))

(assert (=> b!1375461 m!1259369))

(declare-fun m!1259371 () Bool)

(assert (=> b!1375461 m!1259371))

(declare-fun m!1259373 () Bool)

(assert (=> b!1375457 m!1259373))

(assert (=> b!1375457 m!1259365))

(assert (=> bm!65691 m!1259373))

(declare-fun m!1259375 () Bool)

(assert (=> b!1375460 m!1259375))

(assert (=> b!1375460 m!1259375))

(declare-fun m!1259377 () Bool)

(assert (=> b!1375460 m!1259377))

(declare-fun m!1259379 () Bool)

(assert (=> b!1375455 m!1259379))

(declare-fun m!1259381 () Bool)

(assert (=> b!1375455 m!1259381))

(declare-fun m!1259383 () Bool)

(assert (=> b!1375455 m!1259383))

(declare-fun m!1259385 () Bool)

(assert (=> b!1375456 m!1259385))

(declare-fun m!1259387 () Bool)

(assert (=> b!1375456 m!1259387))

(declare-fun m!1259389 () Bool)

(assert (=> b!1375458 m!1259389))

(declare-fun m!1259391 () Bool)

(assert (=> b!1375458 m!1259391))

(declare-fun m!1259393 () Bool)

(assert (=> start!116756 m!1259393))

(push 1)

