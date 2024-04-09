; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92798 () Bool)

(assert start!92798)

(declare-fun b!1053619 () Bool)

(declare-fun res!702713 () Bool)

(declare-fun e!598471 () Bool)

(assert (=> b!1053619 (=> (not res!702713) (not e!598471))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053619 (= res!702713 (validKeyInArray!0 k0!2747))))

(declare-fun b!1053620 () Bool)

(declare-fun e!598473 () Bool)

(declare-fun e!598470 () Bool)

(assert (=> b!1053620 (= e!598473 e!598470)))

(declare-fun res!702711 () Bool)

(assert (=> b!1053620 (=> res!702711 e!598470)))

(declare-fun lt!465169 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053620 (= res!702711 (bvsle lt!465169 i!1381))))

(declare-fun res!702716 () Bool)

(assert (=> start!92798 (=> (not res!702716) (not e!598471))))

(declare-datatypes ((array!66439 0))(
  ( (array!66440 (arr!31949 (Array (_ BitVec 32) (_ BitVec 64))) (size!32486 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66439)

(assert (=> start!92798 (= res!702716 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32486 a!3488)) (bvslt (size!32486 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92798 e!598471))

(assert (=> start!92798 true))

(declare-fun array_inv!24571 (array!66439) Bool)

(assert (=> start!92798 (array_inv!24571 a!3488)))

(declare-fun b!1053621 () Bool)

(declare-fun e!598474 () Bool)

(assert (=> b!1053621 (= e!598474 (not true))))

(assert (=> b!1053621 e!598473))

(declare-fun res!702712 () Bool)

(assert (=> b!1053621 (=> (not res!702712) (not e!598473))))

(assert (=> b!1053621 (= res!702712 (= (select (store (arr!31949 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465169) k0!2747))))

(declare-fun b!1053622 () Bool)

(declare-fun arrayContainsKey!0 (array!66439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053622 (= e!598470 (arrayContainsKey!0 a!3488 k0!2747 lt!465169))))

(declare-fun b!1053623 () Bool)

(declare-fun e!598475 () Bool)

(assert (=> b!1053623 (= e!598471 e!598475)))

(declare-fun res!702714 () Bool)

(assert (=> b!1053623 (=> (not res!702714) (not e!598475))))

(declare-fun lt!465168 () array!66439)

(assert (=> b!1053623 (= res!702714 (arrayContainsKey!0 lt!465168 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053623 (= lt!465168 (array!66440 (store (arr!31949 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32486 a!3488)))))

(declare-fun b!1053624 () Bool)

(declare-fun res!702710 () Bool)

(assert (=> b!1053624 (=> (not res!702710) (not e!598471))))

(assert (=> b!1053624 (= res!702710 (= (select (arr!31949 a!3488) i!1381) k0!2747))))

(declare-fun b!1053625 () Bool)

(assert (=> b!1053625 (= e!598475 e!598474)))

(declare-fun res!702715 () Bool)

(assert (=> b!1053625 (=> (not res!702715) (not e!598474))))

(assert (=> b!1053625 (= res!702715 (not (= lt!465169 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66439 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053625 (= lt!465169 (arrayScanForKey!0 lt!465168 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053626 () Bool)

(declare-fun res!702717 () Bool)

(assert (=> b!1053626 (=> (not res!702717) (not e!598471))))

(declare-datatypes ((List!22392 0))(
  ( (Nil!22389) (Cons!22388 (h!23597 (_ BitVec 64)) (t!31706 List!22392)) )
))
(declare-fun arrayNoDuplicates!0 (array!66439 (_ BitVec 32) List!22392) Bool)

(assert (=> b!1053626 (= res!702717 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22389))))

(assert (= (and start!92798 res!702716) b!1053626))

(assert (= (and b!1053626 res!702717) b!1053619))

(assert (= (and b!1053619 res!702713) b!1053624))

(assert (= (and b!1053624 res!702710) b!1053623))

(assert (= (and b!1053623 res!702714) b!1053625))

(assert (= (and b!1053625 res!702715) b!1053621))

(assert (= (and b!1053621 res!702712) b!1053620))

(assert (= (and b!1053620 (not res!702711)) b!1053622))

(declare-fun m!973989 () Bool)

(assert (=> b!1053625 m!973989))

(declare-fun m!973991 () Bool)

(assert (=> start!92798 m!973991))

(declare-fun m!973993 () Bool)

(assert (=> b!1053624 m!973993))

(declare-fun m!973995 () Bool)

(assert (=> b!1053621 m!973995))

(declare-fun m!973997 () Bool)

(assert (=> b!1053621 m!973997))

(declare-fun m!973999 () Bool)

(assert (=> b!1053622 m!973999))

(declare-fun m!974001 () Bool)

(assert (=> b!1053623 m!974001))

(assert (=> b!1053623 m!973995))

(declare-fun m!974003 () Bool)

(assert (=> b!1053619 m!974003))

(declare-fun m!974005 () Bool)

(assert (=> b!1053626 m!974005))

(check-sat (not start!92798) (not b!1053619) (not b!1053626) (not b!1053622) (not b!1053625) (not b!1053623))
(check-sat)
