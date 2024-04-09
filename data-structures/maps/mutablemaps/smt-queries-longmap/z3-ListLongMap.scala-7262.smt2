; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92792 () Bool)

(assert start!92792)

(declare-fun b!1053547 () Bool)

(declare-fun res!702639 () Bool)

(declare-fun e!598417 () Bool)

(assert (=> b!1053547 (=> (not res!702639) (not e!598417))))

(declare-datatypes ((array!66433 0))(
  ( (array!66434 (arr!31946 (Array (_ BitVec 32) (_ BitVec 64))) (size!32483 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66433)

(declare-datatypes ((List!22389 0))(
  ( (Nil!22386) (Cons!22385 (h!23594 (_ BitVec 64)) (t!31703 List!22389)) )
))
(declare-fun arrayNoDuplicates!0 (array!66433 (_ BitVec 32) List!22389) Bool)

(assert (=> b!1053547 (= res!702639 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22386))))

(declare-fun e!598418 () Bool)

(declare-fun b!1053548 () Bool)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun lt!465151 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053548 (= e!598418 (arrayContainsKey!0 a!3488 k0!2747 lt!465151))))

(declare-fun b!1053549 () Bool)

(declare-fun e!598416 () Bool)

(assert (=> b!1053549 (= e!598417 e!598416)))

(declare-fun res!702643 () Bool)

(assert (=> b!1053549 (=> (not res!702643) (not e!598416))))

(declare-fun lt!465150 () array!66433)

(assert (=> b!1053549 (= res!702643 (arrayContainsKey!0 lt!465150 k0!2747 #b00000000000000000000000000000000))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053549 (= lt!465150 (array!66434 (store (arr!31946 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32483 a!3488)))))

(declare-fun res!702638 () Bool)

(assert (=> start!92792 (=> (not res!702638) (not e!598417))))

(assert (=> start!92792 (= res!702638 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32483 a!3488)) (bvslt (size!32483 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92792 e!598417))

(assert (=> start!92792 true))

(declare-fun array_inv!24568 (array!66433) Bool)

(assert (=> start!92792 (array_inv!24568 a!3488)))

(declare-fun b!1053550 () Bool)

(declare-fun res!702645 () Bool)

(assert (=> b!1053550 (=> (not res!702645) (not e!598417))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053550 (= res!702645 (validKeyInArray!0 k0!2747))))

(declare-fun b!1053551 () Bool)

(declare-fun e!598419 () Bool)

(assert (=> b!1053551 (= e!598419 (not true))))

(declare-fun e!598420 () Bool)

(assert (=> b!1053551 e!598420))

(declare-fun res!702641 () Bool)

(assert (=> b!1053551 (=> (not res!702641) (not e!598420))))

(assert (=> b!1053551 (= res!702641 (= (select (store (arr!31946 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465151) k0!2747))))

(declare-fun b!1053552 () Bool)

(declare-fun res!702642 () Bool)

(assert (=> b!1053552 (=> (not res!702642) (not e!598417))))

(assert (=> b!1053552 (= res!702642 (= (select (arr!31946 a!3488) i!1381) k0!2747))))

(declare-fun b!1053553 () Bool)

(assert (=> b!1053553 (= e!598420 e!598418)))

(declare-fun res!702644 () Bool)

(assert (=> b!1053553 (=> res!702644 e!598418)))

(assert (=> b!1053553 (= res!702644 (bvsle lt!465151 i!1381))))

(declare-fun b!1053554 () Bool)

(assert (=> b!1053554 (= e!598416 e!598419)))

(declare-fun res!702640 () Bool)

(assert (=> b!1053554 (=> (not res!702640) (not e!598419))))

(assert (=> b!1053554 (= res!702640 (not (= lt!465151 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66433 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053554 (= lt!465151 (arrayScanForKey!0 lt!465150 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92792 res!702638) b!1053547))

(assert (= (and b!1053547 res!702639) b!1053550))

(assert (= (and b!1053550 res!702645) b!1053552))

(assert (= (and b!1053552 res!702642) b!1053549))

(assert (= (and b!1053549 res!702643) b!1053554))

(assert (= (and b!1053554 res!702640) b!1053551))

(assert (= (and b!1053551 res!702641) b!1053553))

(assert (= (and b!1053553 (not res!702644)) b!1053548))

(declare-fun m!973935 () Bool)

(assert (=> start!92792 m!973935))

(declare-fun m!973937 () Bool)

(assert (=> b!1053552 m!973937))

(declare-fun m!973939 () Bool)

(assert (=> b!1053550 m!973939))

(declare-fun m!973941 () Bool)

(assert (=> b!1053551 m!973941))

(declare-fun m!973943 () Bool)

(assert (=> b!1053551 m!973943))

(declare-fun m!973945 () Bool)

(assert (=> b!1053547 m!973945))

(declare-fun m!973947 () Bool)

(assert (=> b!1053548 m!973947))

(declare-fun m!973949 () Bool)

(assert (=> b!1053554 m!973949))

(declare-fun m!973951 () Bool)

(assert (=> b!1053549 m!973951))

(assert (=> b!1053549 m!973941))

(check-sat (not b!1053554) (not b!1053550) (not b!1053548) (not b!1053547) (not b!1053549) (not start!92792))
(check-sat)
