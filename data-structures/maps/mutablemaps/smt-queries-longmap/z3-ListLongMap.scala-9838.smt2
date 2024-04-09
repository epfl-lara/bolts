; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116758 () Bool)

(assert start!116758)

(declare-fun b!1375479 () Bool)

(declare-datatypes ((Unit!45505 0))(
  ( (Unit!45506) )
))
(declare-fun e!779235 () Unit!45505)

(declare-fun lt!604466 () Unit!45505)

(assert (=> b!1375479 (= e!779235 lt!604466)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93345 0))(
  ( (array!93346 (arr!45071 (Array (_ BitVec 32) (_ BitVec 64))) (size!45622 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93345)

(declare-fun lt!604470 () Unit!45505)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93345 (_ BitVec 32) (_ BitVec 32)) Unit!45505)

(assert (=> b!1375479 (= lt!604470 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65700 () (_ BitVec 32))

(declare-fun lt!604467 () (_ BitVec 32))

(assert (=> b!1375479 (= call!65700 (bvadd #b00000000000000000000000000000001 lt!604467))))

(declare-fun lt!604471 () array!93345)

(assert (=> b!1375479 (= lt!604466 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604471 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65699 () (_ BitVec 32))

(declare-fun lt!604464 () (_ BitVec 32))

(assert (=> b!1375479 (= call!65699 (bvadd #b00000000000000000000000000000001 lt!604464))))

(declare-fun b!1375480 () Bool)

(declare-fun e!779236 () Bool)

(declare-fun e!779234 () Bool)

(assert (=> b!1375480 (= e!779236 e!779234)))

(declare-fun res!918628 () Bool)

(assert (=> b!1375480 (=> (not res!918628) (not e!779234))))

(assert (=> b!1375480 (= res!918628 (and (= lt!604464 lt!604467) (not (= to!206 (size!45622 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93345 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375480 (= lt!604467 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375480 (= lt!604464 (arrayCountValidKeys!0 lt!604471 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375480 (= lt!604471 (array!93346 (store (arr!45071 a!4032) i!1445 k0!2947) (size!45622 a!4032)))))

(declare-fun b!1375481 () Bool)

(declare-fun res!918630 () Bool)

(assert (=> b!1375481 (=> (not res!918630) (not e!779236))))

(assert (=> b!1375481 (= res!918630 (and (bvslt (size!45622 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45622 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!918632 () Bool)

(assert (=> start!116758 (=> (not res!918632) (not e!779236))))

(assert (=> start!116758 (= res!918632 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45622 a!4032))))))

(assert (=> start!116758 e!779236))

(assert (=> start!116758 true))

(declare-fun array_inv!34016 (array!93345) Bool)

(assert (=> start!116758 (array_inv!34016 a!4032)))

(declare-fun b!1375482 () Bool)

(declare-fun e!779237 () Bool)

(assert (=> b!1375482 (= e!779237 false)))

(declare-fun lt!604463 () (_ BitVec 32))

(assert (=> b!1375482 (= lt!604463 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604462 () (_ BitVec 32))

(assert (=> b!1375482 (= lt!604462 (arrayCountValidKeys!0 lt!604471 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65696 () Bool)

(assert (=> bm!65696 (= call!65699 (arrayCountValidKeys!0 lt!604471 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375483 () Bool)

(declare-fun lt!604468 () Unit!45505)

(assert (=> b!1375483 (= e!779235 lt!604468)))

(declare-fun lt!604469 () Unit!45505)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93345 (_ BitVec 32) (_ BitVec 32)) Unit!45505)

(assert (=> b!1375483 (= lt!604469 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375483 (= call!65700 lt!604467)))

(assert (=> b!1375483 (= lt!604468 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604471 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375483 (= call!65699 lt!604464)))

(declare-fun b!1375484 () Bool)

(assert (=> b!1375484 (= e!779234 e!779237)))

(declare-fun res!918633 () Bool)

(assert (=> b!1375484 (=> (not res!918633) (not e!779237))))

(assert (=> b!1375484 (= res!918633 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45622 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604465 () Unit!45505)

(assert (=> b!1375484 (= lt!604465 e!779235)))

(declare-fun c!127868 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375484 (= c!127868 (validKeyInArray!0 (select (arr!45071 a!4032) to!206)))))

(declare-fun b!1375485 () Bool)

(declare-fun res!918631 () Bool)

(assert (=> b!1375485 (=> (not res!918631) (not e!779236))))

(assert (=> b!1375485 (= res!918631 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375486 () Bool)

(declare-fun res!918629 () Bool)

(assert (=> b!1375486 (=> (not res!918629) (not e!779236))))

(assert (=> b!1375486 (= res!918629 (validKeyInArray!0 (select (arr!45071 a!4032) i!1445)))))

(declare-fun bm!65697 () Bool)

(assert (=> bm!65697 (= call!65700 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116758 res!918632) b!1375486))

(assert (= (and b!1375486 res!918629) b!1375485))

(assert (= (and b!1375485 res!918631) b!1375481))

(assert (= (and b!1375481 res!918630) b!1375480))

(assert (= (and b!1375480 res!918628) b!1375484))

(assert (= (and b!1375484 c!127868) b!1375479))

(assert (= (and b!1375484 (not c!127868)) b!1375483))

(assert (= (or b!1375479 b!1375483) bm!65697))

(assert (= (or b!1375479 b!1375483) bm!65696))

(assert (= (and b!1375484 res!918633) b!1375482))

(declare-fun m!1259395 () Bool)

(assert (=> b!1375483 m!1259395))

(declare-fun m!1259397 () Bool)

(assert (=> b!1375483 m!1259397))

(declare-fun m!1259399 () Bool)

(assert (=> start!116758 m!1259399))

(declare-fun m!1259401 () Bool)

(assert (=> bm!65696 m!1259401))

(declare-fun m!1259403 () Bool)

(assert (=> b!1375482 m!1259403))

(assert (=> b!1375482 m!1259401))

(declare-fun m!1259405 () Bool)

(assert (=> b!1375480 m!1259405))

(declare-fun m!1259407 () Bool)

(assert (=> b!1375480 m!1259407))

(declare-fun m!1259409 () Bool)

(assert (=> b!1375480 m!1259409))

(declare-fun m!1259411 () Bool)

(assert (=> b!1375479 m!1259411))

(declare-fun m!1259413 () Bool)

(assert (=> b!1375479 m!1259413))

(declare-fun m!1259415 () Bool)

(assert (=> b!1375486 m!1259415))

(assert (=> b!1375486 m!1259415))

(declare-fun m!1259417 () Bool)

(assert (=> b!1375486 m!1259417))

(declare-fun m!1259419 () Bool)

(assert (=> b!1375485 m!1259419))

(assert (=> bm!65697 m!1259403))

(declare-fun m!1259421 () Bool)

(assert (=> b!1375484 m!1259421))

(assert (=> b!1375484 m!1259421))

(declare-fun m!1259423 () Bool)

(assert (=> b!1375484 m!1259423))

(check-sat (not b!1375484) (not b!1375486) (not b!1375482) (not bm!65696) (not b!1375479) (not b!1375480) (not bm!65697) (not b!1375485) (not start!116758) (not b!1375483))
(check-sat)
