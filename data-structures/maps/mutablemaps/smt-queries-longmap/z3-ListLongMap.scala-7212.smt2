; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92372 () Bool)

(assert start!92372)

(declare-fun b!1049520 () Bool)

(declare-fun res!698759 () Bool)

(declare-fun e!595520 () Bool)

(assert (=> b!1049520 (=> (not res!698759) (not e!595520))))

(declare-datatypes ((array!66121 0))(
  ( (array!66122 (arr!31796 (Array (_ BitVec 32) (_ BitVec 64))) (size!32333 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66121)

(declare-datatypes ((List!22239 0))(
  ( (Nil!22236) (Cons!22235 (h!23444 (_ BitVec 64)) (t!31553 List!22239)) )
))
(declare-fun arrayNoDuplicates!0 (array!66121 (_ BitVec 32) List!22239) Bool)

(assert (=> b!1049520 (= res!698759 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22236))))

(declare-fun res!698764 () Bool)

(assert (=> start!92372 (=> (not res!698764) (not e!595520))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92372 (= res!698764 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32333 a!3488)) (bvslt (size!32333 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92372 e!595520))

(assert (=> start!92372 true))

(declare-fun array_inv!24418 (array!66121) Bool)

(assert (=> start!92372 (array_inv!24418 a!3488)))

(declare-fun b!1049521 () Bool)

(declare-fun e!595513 () Bool)

(assert (=> b!1049521 (= e!595520 e!595513)))

(declare-fun res!698763 () Bool)

(assert (=> b!1049521 (=> (not res!698763) (not e!595513))))

(declare-fun lt!463545 () array!66121)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049521 (= res!698763 (arrayContainsKey!0 lt!463545 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049521 (= lt!463545 (array!66122 (store (arr!31796 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32333 a!3488)))))

(declare-fun lt!463546 () (_ BitVec 32))

(declare-fun e!595519 () Bool)

(declare-fun b!1049522 () Bool)

(assert (=> b!1049522 (= e!595519 (arrayContainsKey!0 a!3488 k0!2747 lt!463546))))

(declare-fun b!1049523 () Bool)

(declare-fun res!698765 () Bool)

(declare-fun e!595518 () Bool)

(assert (=> b!1049523 (=> res!698765 e!595518)))

(declare-fun noDuplicate!1516 (List!22239) Bool)

(assert (=> b!1049523 (= res!698765 (not (noDuplicate!1516 Nil!22236)))))

(declare-fun b!1049524 () Bool)

(declare-fun e!595517 () Bool)

(assert (=> b!1049524 (= e!595517 e!595519)))

(declare-fun res!698757 () Bool)

(assert (=> b!1049524 (=> res!698757 e!595519)))

(assert (=> b!1049524 (= res!698757 (bvsle lt!463546 i!1381))))

(declare-fun b!1049525 () Bool)

(declare-fun e!595515 () Bool)

(assert (=> b!1049525 (= e!595515 e!595518)))

(declare-fun res!698762 () Bool)

(assert (=> b!1049525 (=> res!698762 e!595518)))

(assert (=> b!1049525 (= res!698762 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32333 a!3488)))))

(assert (=> b!1049525 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34321 0))(
  ( (Unit!34322) )
))
(declare-fun lt!463549 () Unit!34321)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66121 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34321)

(assert (=> b!1049525 (= lt!463549 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463546 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049525 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22236)))

(declare-fun lt!463548 () Unit!34321)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66121 (_ BitVec 32) (_ BitVec 32)) Unit!34321)

(assert (=> b!1049525 (= lt!463548 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049526 () Bool)

(declare-fun e!595516 () Bool)

(assert (=> b!1049526 (= e!595516 (not e!595515))))

(declare-fun res!698760 () Bool)

(assert (=> b!1049526 (=> res!698760 e!595515)))

(assert (=> b!1049526 (= res!698760 (bvsle lt!463546 i!1381))))

(assert (=> b!1049526 e!595517))

(declare-fun res!698766 () Bool)

(assert (=> b!1049526 (=> (not res!698766) (not e!595517))))

(assert (=> b!1049526 (= res!698766 (= (select (store (arr!31796 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463546) k0!2747))))

(declare-fun b!1049527 () Bool)

(assert (=> b!1049527 (= e!595518 true)))

(declare-fun lt!463547 () Bool)

(declare-fun contains!6131 (List!22239 (_ BitVec 64)) Bool)

(assert (=> b!1049527 (= lt!463547 (contains!6131 Nil!22236 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049528 () Bool)

(assert (=> b!1049528 (= e!595513 e!595516)))

(declare-fun res!698755 () Bool)

(assert (=> b!1049528 (=> (not res!698755) (not e!595516))))

(assert (=> b!1049528 (= res!698755 (not (= lt!463546 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66121 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049528 (= lt!463546 (arrayScanForKey!0 lt!463545 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049529 () Bool)

(declare-fun res!698761 () Bool)

(assert (=> b!1049529 (=> (not res!698761) (not e!595520))))

(assert (=> b!1049529 (= res!698761 (= (select (arr!31796 a!3488) i!1381) k0!2747))))

(declare-fun b!1049530 () Bool)

(declare-fun res!698758 () Bool)

(assert (=> b!1049530 (=> (not res!698758) (not e!595520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049530 (= res!698758 (validKeyInArray!0 k0!2747))))

(declare-fun b!1049531 () Bool)

(declare-fun res!698756 () Bool)

(assert (=> b!1049531 (=> res!698756 e!595518)))

(assert (=> b!1049531 (= res!698756 (contains!6131 Nil!22236 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92372 res!698764) b!1049520))

(assert (= (and b!1049520 res!698759) b!1049530))

(assert (= (and b!1049530 res!698758) b!1049529))

(assert (= (and b!1049529 res!698761) b!1049521))

(assert (= (and b!1049521 res!698763) b!1049528))

(assert (= (and b!1049528 res!698755) b!1049526))

(assert (= (and b!1049526 res!698766) b!1049524))

(assert (= (and b!1049524 (not res!698757)) b!1049522))

(assert (= (and b!1049526 (not res!698760)) b!1049525))

(assert (= (and b!1049525 (not res!698762)) b!1049523))

(assert (= (and b!1049523 (not res!698765)) b!1049531))

(assert (= (and b!1049531 (not res!698756)) b!1049527))

(declare-fun m!970409 () Bool)

(assert (=> b!1049525 m!970409))

(declare-fun m!970411 () Bool)

(assert (=> b!1049525 m!970411))

(declare-fun m!970413 () Bool)

(assert (=> b!1049525 m!970413))

(declare-fun m!970415 () Bool)

(assert (=> b!1049525 m!970415))

(declare-fun m!970417 () Bool)

(assert (=> b!1049529 m!970417))

(declare-fun m!970419 () Bool)

(assert (=> start!92372 m!970419))

(declare-fun m!970421 () Bool)

(assert (=> b!1049523 m!970421))

(declare-fun m!970423 () Bool)

(assert (=> b!1049527 m!970423))

(declare-fun m!970425 () Bool)

(assert (=> b!1049522 m!970425))

(declare-fun m!970427 () Bool)

(assert (=> b!1049528 m!970427))

(declare-fun m!970429 () Bool)

(assert (=> b!1049530 m!970429))

(declare-fun m!970431 () Bool)

(assert (=> b!1049531 m!970431))

(declare-fun m!970433 () Bool)

(assert (=> b!1049526 m!970433))

(declare-fun m!970435 () Bool)

(assert (=> b!1049526 m!970435))

(declare-fun m!970437 () Bool)

(assert (=> b!1049520 m!970437))

(declare-fun m!970439 () Bool)

(assert (=> b!1049521 m!970439))

(assert (=> b!1049521 m!970433))

(check-sat (not b!1049522) (not b!1049520) (not b!1049523) (not b!1049530) (not start!92372) (not b!1049528) (not b!1049527) (not b!1049531) (not b!1049521) (not b!1049525))
(check-sat)
