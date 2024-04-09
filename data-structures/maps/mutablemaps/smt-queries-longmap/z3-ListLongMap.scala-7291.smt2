; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93206 () Bool)

(assert start!93206)

(declare-fun b!1056543 () Bool)

(declare-fun e!600725 () Bool)

(assert (=> b!1056543 (= e!600725 true)))

(declare-datatypes ((array!66625 0))(
  ( (array!66626 (arr!32033 (Array (_ BitVec 32) (_ BitVec 64))) (size!32570 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66625)

(declare-fun lt!466122 () (_ BitVec 32))

(declare-datatypes ((List!22476 0))(
  ( (Nil!22473) (Cons!22472 (h!23681 (_ BitVec 64)) (t!31790 List!22476)) )
))
(declare-fun arrayNoDuplicates!0 (array!66625 (_ BitVec 32) List!22476) Bool)

(assert (=> b!1056543 (arrayNoDuplicates!0 a!3488 lt!466122 Nil!22473)))

(declare-datatypes ((Unit!34597 0))(
  ( (Unit!34598) )
))
(declare-fun lt!466123 () Unit!34597)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66625 (_ BitVec 32) (_ BitVec 32)) Unit!34597)

(assert (=> b!1056543 (= lt!466123 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466122))))

(declare-fun b!1056544 () Bool)

(declare-fun res!705399 () Bool)

(declare-fun e!600731 () Bool)

(assert (=> b!1056544 (=> (not res!705399) (not e!600731))))

(assert (=> b!1056544 (= res!705399 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22473))))

(declare-fun b!1056545 () Bool)

(declare-fun e!600728 () Bool)

(assert (=> b!1056545 (= e!600731 e!600728)))

(declare-fun res!705394 () Bool)

(assert (=> b!1056545 (=> (not res!705394) (not e!600728))))

(declare-fun lt!466121 () array!66625)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056545 (= res!705394 (arrayContainsKey!0 lt!466121 k0!2747 #b00000000000000000000000000000000))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056545 (= lt!466121 (array!66626 (store (arr!32033 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32570 a!3488)))))

(declare-fun e!600730 () Bool)

(declare-fun b!1056546 () Bool)

(assert (=> b!1056546 (= e!600730 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056547 () Bool)

(declare-fun e!600726 () Bool)

(assert (=> b!1056547 (= e!600726 (not e!600725))))

(declare-fun res!705397 () Bool)

(assert (=> b!1056547 (=> res!705397 e!600725)))

(assert (=> b!1056547 (= res!705397 (or (bvsgt lt!466122 i!1381) (bvsle i!1381 lt!466122)))))

(declare-fun e!600729 () Bool)

(assert (=> b!1056547 e!600729))

(declare-fun res!705395 () Bool)

(assert (=> b!1056547 (=> (not res!705395) (not e!600729))))

(assert (=> b!1056547 (= res!705395 (= (select (store (arr!32033 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466122) k0!2747))))

(declare-fun b!1056548 () Bool)

(declare-fun res!705401 () Bool)

(assert (=> b!1056548 (=> (not res!705401) (not e!600731))))

(assert (=> b!1056548 (= res!705401 (= (select (arr!32033 a!3488) i!1381) k0!2747))))

(declare-fun b!1056549 () Bool)

(declare-fun res!705396 () Bool)

(assert (=> b!1056549 (=> (not res!705396) (not e!600731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056549 (= res!705396 (validKeyInArray!0 k0!2747))))

(declare-fun res!705400 () Bool)

(assert (=> start!93206 (=> (not res!705400) (not e!600731))))

(assert (=> start!93206 (= res!705400 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32570 a!3488)) (bvslt (size!32570 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93206 e!600731))

(assert (=> start!93206 true))

(declare-fun array_inv!24655 (array!66625) Bool)

(assert (=> start!93206 (array_inv!24655 a!3488)))

(declare-fun b!1056550 () Bool)

(assert (=> b!1056550 (= e!600729 e!600730)))

(declare-fun res!705398 () Bool)

(assert (=> b!1056550 (=> res!705398 e!600730)))

(assert (=> b!1056550 (= res!705398 (or (bvsgt lt!466122 i!1381) (bvsle i!1381 lt!466122)))))

(declare-fun b!1056551 () Bool)

(assert (=> b!1056551 (= e!600728 e!600726)))

(declare-fun res!705402 () Bool)

(assert (=> b!1056551 (=> (not res!705402) (not e!600726))))

(assert (=> b!1056551 (= res!705402 (not (= lt!466122 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66625 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056551 (= lt!466122 (arrayScanForKey!0 lt!466121 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93206 res!705400) b!1056544))

(assert (= (and b!1056544 res!705399) b!1056549))

(assert (= (and b!1056549 res!705396) b!1056548))

(assert (= (and b!1056548 res!705401) b!1056545))

(assert (= (and b!1056545 res!705394) b!1056551))

(assert (= (and b!1056551 res!705402) b!1056547))

(assert (= (and b!1056547 res!705395) b!1056550))

(assert (= (and b!1056550 (not res!705398)) b!1056546))

(assert (= (and b!1056547 (not res!705397)) b!1056543))

(declare-fun m!976495 () Bool)

(assert (=> b!1056546 m!976495))

(declare-fun m!976497 () Bool)

(assert (=> b!1056551 m!976497))

(declare-fun m!976499 () Bool)

(assert (=> b!1056545 m!976499))

(declare-fun m!976501 () Bool)

(assert (=> b!1056545 m!976501))

(declare-fun m!976503 () Bool)

(assert (=> start!93206 m!976503))

(declare-fun m!976505 () Bool)

(assert (=> b!1056544 m!976505))

(declare-fun m!976507 () Bool)

(assert (=> b!1056548 m!976507))

(assert (=> b!1056547 m!976501))

(declare-fun m!976509 () Bool)

(assert (=> b!1056547 m!976509))

(declare-fun m!976511 () Bool)

(assert (=> b!1056549 m!976511))

(declare-fun m!976513 () Bool)

(assert (=> b!1056543 m!976513))

(declare-fun m!976515 () Bool)

(assert (=> b!1056543 m!976515))

(check-sat (not b!1056549) (not b!1056546) (not b!1056545) (not start!93206) (not b!1056551) (not b!1056544) (not b!1056543))
(check-sat)
