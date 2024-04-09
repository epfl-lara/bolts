; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116760 () Bool)

(assert start!116760)

(declare-fun b!1375503 () Bool)

(declare-fun res!918649 () Bool)

(declare-fun e!779251 () Bool)

(assert (=> b!1375503 (=> (not res!918649) (not e!779251))))

(declare-datatypes ((array!93347 0))(
  ( (array!93348 (arr!45072 (Array (_ BitVec 32) (_ BitVec 64))) (size!45623 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93347)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375503 (= res!918649 (validKeyInArray!0 (select (arr!45072 a!4032) i!1445)))))

(declare-fun b!1375504 () Bool)

(declare-datatypes ((Unit!45507 0))(
  ( (Unit!45508) )
))
(declare-fun e!779249 () Unit!45507)

(declare-fun lt!604498 () Unit!45507)

(assert (=> b!1375504 (= e!779249 lt!604498)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604499 () Unit!45507)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93347 (_ BitVec 32) (_ BitVec 32)) Unit!45507)

(assert (=> b!1375504 (= lt!604499 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65705 () (_ BitVec 32))

(declare-fun lt!604492 () (_ BitVec 32))

(assert (=> b!1375504 (= call!65705 (bvadd #b00000000000000000000000000000001 lt!604492))))

(declare-fun lt!604501 () array!93347)

(assert (=> b!1375504 (= lt!604498 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604501 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65706 () (_ BitVec 32))

(declare-fun lt!604496 () (_ BitVec 32))

(assert (=> b!1375504 (= call!65706 (bvadd #b00000000000000000000000000000001 lt!604496))))

(declare-fun b!1375505 () Bool)

(declare-fun res!918647 () Bool)

(assert (=> b!1375505 (=> (not res!918647) (not e!779251))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375505 (= res!918647 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375506 () Bool)

(declare-fun e!779248 () Bool)

(assert (=> b!1375506 (= e!779248 false)))

(declare-fun lt!604493 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93347 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375506 (= lt!604493 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604495 () (_ BitVec 32))

(assert (=> b!1375506 (= lt!604495 (arrayCountValidKeys!0 lt!604501 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375507 () Bool)

(declare-fun res!918650 () Bool)

(assert (=> b!1375507 (=> (not res!918650) (not e!779251))))

(assert (=> b!1375507 (= res!918650 (and (bvslt (size!45623 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45623 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun bm!65703 () Bool)

(assert (=> bm!65703 (= call!65706 (arrayCountValidKeys!0 lt!604501 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375508 () Bool)

(declare-fun lt!604497 () Unit!45507)

(assert (=> b!1375508 (= e!779249 lt!604497)))

(declare-fun lt!604500 () Unit!45507)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93347 (_ BitVec 32) (_ BitVec 32)) Unit!45507)

(assert (=> b!1375508 (= lt!604500 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375508 (= call!65705 lt!604492)))

(assert (=> b!1375508 (= lt!604497 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604501 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375508 (= call!65706 lt!604496)))

(declare-fun b!1375509 () Bool)

(declare-fun e!779252 () Bool)

(assert (=> b!1375509 (= e!779252 e!779248)))

(declare-fun res!918648 () Bool)

(assert (=> b!1375509 (=> (not res!918648) (not e!779248))))

(assert (=> b!1375509 (= res!918648 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45623 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604494 () Unit!45507)

(assert (=> b!1375509 (= lt!604494 e!779249)))

(declare-fun c!127871 () Bool)

(assert (=> b!1375509 (= c!127871 (validKeyInArray!0 (select (arr!45072 a!4032) to!206)))))

(declare-fun b!1375510 () Bool)

(assert (=> b!1375510 (= e!779251 e!779252)))

(declare-fun res!918651 () Bool)

(assert (=> b!1375510 (=> (not res!918651) (not e!779252))))

(assert (=> b!1375510 (= res!918651 (and (= lt!604496 lt!604492) (not (= to!206 (size!45623 a!4032)))))))

(assert (=> b!1375510 (= lt!604492 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375510 (= lt!604496 (arrayCountValidKeys!0 lt!604501 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375510 (= lt!604501 (array!93348 (store (arr!45072 a!4032) i!1445 k!2947) (size!45623 a!4032)))))

(declare-fun bm!65702 () Bool)

(assert (=> bm!65702 (= call!65705 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918646 () Bool)

(assert (=> start!116760 (=> (not res!918646) (not e!779251))))

(assert (=> start!116760 (= res!918646 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45623 a!4032))))))

(assert (=> start!116760 e!779251))

(assert (=> start!116760 true))

(declare-fun array_inv!34017 (array!93347) Bool)

(assert (=> start!116760 (array_inv!34017 a!4032)))

(assert (= (and start!116760 res!918646) b!1375503))

(assert (= (and b!1375503 res!918649) b!1375505))

(assert (= (and b!1375505 res!918647) b!1375507))

(assert (= (and b!1375507 res!918650) b!1375510))

(assert (= (and b!1375510 res!918651) b!1375509))

(assert (= (and b!1375509 c!127871) b!1375504))

(assert (= (and b!1375509 (not c!127871)) b!1375508))

(assert (= (or b!1375504 b!1375508) bm!65702))

(assert (= (or b!1375504 b!1375508) bm!65703))

(assert (= (and b!1375509 res!918648) b!1375506))

(declare-fun m!1259425 () Bool)

(assert (=> bm!65702 m!1259425))

(declare-fun m!1259427 () Bool)

(assert (=> b!1375508 m!1259427))

(declare-fun m!1259429 () Bool)

(assert (=> b!1375508 m!1259429))

(assert (=> b!1375506 m!1259425))

(declare-fun m!1259431 () Bool)

(assert (=> b!1375506 m!1259431))

(assert (=> bm!65703 m!1259431))

(declare-fun m!1259433 () Bool)

(assert (=> b!1375503 m!1259433))

(assert (=> b!1375503 m!1259433))

(declare-fun m!1259435 () Bool)

(assert (=> b!1375503 m!1259435))

(declare-fun m!1259437 () Bool)

(assert (=> start!116760 m!1259437))

(declare-fun m!1259439 () Bool)

(assert (=> b!1375510 m!1259439))

(declare-fun m!1259441 () Bool)

(assert (=> b!1375510 m!1259441))

(declare-fun m!1259443 () Bool)

(assert (=> b!1375510 m!1259443))

(declare-fun m!1259445 () Bool)

(assert (=> b!1375509 m!1259445))

(assert (=> b!1375509 m!1259445))

(declare-fun m!1259447 () Bool)

(assert (=> b!1375509 m!1259447))

(declare-fun m!1259449 () Bool)

(assert (=> b!1375504 m!1259449))

(declare-fun m!1259451 () Bool)

(assert (=> b!1375504 m!1259451))

(declare-fun m!1259453 () Bool)

(assert (=> b!1375505 m!1259453))

(push 1)

(assert (not b!1375509))

(assert (not bm!65703))

(assert (not b!1375503))

