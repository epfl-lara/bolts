; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116752 () Bool)

(assert start!116752)

(declare-fun b!1375407 () Bool)

(declare-datatypes ((Unit!45499 0))(
  ( (Unit!45500) )
))
(declare-fun e!779188 () Unit!45499)

(declare-fun lt!604379 () Unit!45499)

(assert (=> b!1375407 (= e!779188 lt!604379)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93339 0))(
  ( (array!93340 (arr!45068 (Array (_ BitVec 32) (_ BitVec 64))) (size!45619 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93339)

(declare-fun lt!604378 () Unit!45499)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93339 (_ BitVec 32) (_ BitVec 32)) Unit!45499)

(assert (=> b!1375407 (= lt!604378 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65681 () (_ BitVec 32))

(declare-fun lt!604381 () (_ BitVec 32))

(assert (=> b!1375407 (= call!65681 (bvadd #b00000000000000000000000000000001 lt!604381))))

(declare-fun lt!604373 () array!93339)

(assert (=> b!1375407 (= lt!604379 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604373 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65682 () (_ BitVec 32))

(declare-fun lt!604376 () (_ BitVec 32))

(assert (=> b!1375407 (= call!65682 (bvadd #b00000000000000000000000000000001 lt!604376))))

(declare-fun bm!65678 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93339 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65678 (= call!65682 (arrayCountValidKeys!0 lt!604373 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65679 () Bool)

(assert (=> bm!65679 (= call!65681 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375408 () Bool)

(declare-fun res!918574 () Bool)

(declare-fun e!779192 () Bool)

(assert (=> b!1375408 (=> (not res!918574) (not e!779192))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375408 (= res!918574 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375409 () Bool)

(declare-fun res!918579 () Bool)

(assert (=> b!1375409 (=> (not res!918579) (not e!779192))))

(assert (=> b!1375409 (= res!918579 (and (bvslt (size!45619 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45619 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375410 () Bool)

(declare-fun lt!604380 () Unit!45499)

(assert (=> b!1375410 (= e!779188 lt!604380)))

(declare-fun lt!604374 () Unit!45499)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93339 (_ BitVec 32) (_ BitVec 32)) Unit!45499)

(assert (=> b!1375410 (= lt!604374 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375410 (= call!65681 lt!604381)))

(assert (=> b!1375410 (= lt!604380 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604373 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375410 (= call!65682 lt!604376)))

(declare-fun b!1375411 () Bool)

(declare-fun res!918577 () Bool)

(assert (=> b!1375411 (=> (not res!918577) (not e!779192))))

(assert (=> b!1375411 (= res!918577 (validKeyInArray!0 (select (arr!45068 a!4032) i!1445)))))

(declare-fun res!918576 () Bool)

(assert (=> start!116752 (=> (not res!918576) (not e!779192))))

(assert (=> start!116752 (= res!918576 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45619 a!4032))))))

(assert (=> start!116752 e!779192))

(assert (=> start!116752 true))

(declare-fun array_inv!34013 (array!93339) Bool)

(assert (=> start!116752 (array_inv!34013 a!4032)))

(declare-fun b!1375412 () Bool)

(declare-fun e!779190 () Bool)

(assert (=> b!1375412 (= e!779190 false)))

(declare-fun lt!604377 () (_ BitVec 32))

(assert (=> b!1375412 (= lt!604377 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604372 () (_ BitVec 32))

(assert (=> b!1375412 (= lt!604372 (arrayCountValidKeys!0 lt!604373 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375413 () Bool)

(declare-fun e!779191 () Bool)

(assert (=> b!1375413 (= e!779192 e!779191)))

(declare-fun res!918578 () Bool)

(assert (=> b!1375413 (=> (not res!918578) (not e!779191))))

(assert (=> b!1375413 (= res!918578 (and (= lt!604376 lt!604381) (not (= to!206 (size!45619 a!4032)))))))

(assert (=> b!1375413 (= lt!604381 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375413 (= lt!604376 (arrayCountValidKeys!0 lt!604373 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375413 (= lt!604373 (array!93340 (store (arr!45068 a!4032) i!1445 k0!2947) (size!45619 a!4032)))))

(declare-fun b!1375414 () Bool)

(assert (=> b!1375414 (= e!779191 e!779190)))

(declare-fun res!918575 () Bool)

(assert (=> b!1375414 (=> (not res!918575) (not e!779190))))

(assert (=> b!1375414 (= res!918575 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45619 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604375 () Unit!45499)

(assert (=> b!1375414 (= lt!604375 e!779188)))

(declare-fun c!127859 () Bool)

(assert (=> b!1375414 (= c!127859 (validKeyInArray!0 (select (arr!45068 a!4032) to!206)))))

(assert (= (and start!116752 res!918576) b!1375411))

(assert (= (and b!1375411 res!918577) b!1375408))

(assert (= (and b!1375408 res!918574) b!1375409))

(assert (= (and b!1375409 res!918579) b!1375413))

(assert (= (and b!1375413 res!918578) b!1375414))

(assert (= (and b!1375414 c!127859) b!1375407))

(assert (= (and b!1375414 (not c!127859)) b!1375410))

(assert (= (or b!1375407 b!1375410) bm!65678))

(assert (= (or b!1375407 b!1375410) bm!65679))

(assert (= (and b!1375414 res!918575) b!1375412))

(declare-fun m!1259305 () Bool)

(assert (=> b!1375408 m!1259305))

(declare-fun m!1259307 () Bool)

(assert (=> b!1375414 m!1259307))

(assert (=> b!1375414 m!1259307))

(declare-fun m!1259309 () Bool)

(assert (=> b!1375414 m!1259309))

(declare-fun m!1259311 () Bool)

(assert (=> b!1375412 m!1259311))

(declare-fun m!1259313 () Bool)

(assert (=> b!1375412 m!1259313))

(declare-fun m!1259315 () Bool)

(assert (=> b!1375410 m!1259315))

(declare-fun m!1259317 () Bool)

(assert (=> b!1375410 m!1259317))

(assert (=> bm!65678 m!1259313))

(assert (=> bm!65679 m!1259311))

(declare-fun m!1259319 () Bool)

(assert (=> start!116752 m!1259319))

(declare-fun m!1259321 () Bool)

(assert (=> b!1375413 m!1259321))

(declare-fun m!1259323 () Bool)

(assert (=> b!1375413 m!1259323))

(declare-fun m!1259325 () Bool)

(assert (=> b!1375413 m!1259325))

(declare-fun m!1259327 () Bool)

(assert (=> b!1375411 m!1259327))

(assert (=> b!1375411 m!1259327))

(declare-fun m!1259329 () Bool)

(assert (=> b!1375411 m!1259329))

(declare-fun m!1259331 () Bool)

(assert (=> b!1375407 m!1259331))

(declare-fun m!1259333 () Bool)

(assert (=> b!1375407 m!1259333))

(check-sat (not b!1375407) (not b!1375413) (not b!1375412) (not bm!65679) (not start!116752) (not b!1375414) (not b!1375411) (not bm!65678) (not b!1375410) (not b!1375408))
