; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92790 () Bool)

(assert start!92790)

(declare-fun b!1053523 () Bool)

(declare-fun lt!465144 () (_ BitVec 32))

(declare-datatypes ((array!66431 0))(
  ( (array!66432 (arr!31945 (Array (_ BitVec 32) (_ BitVec 64))) (size!32482 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66431)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun e!598400 () Bool)

(declare-fun arrayContainsKey!0 (array!66431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053523 (= e!598400 (arrayContainsKey!0 a!3488 k!2747 lt!465144))))

(declare-fun b!1053524 () Bool)

(declare-fun res!702618 () Bool)

(declare-fun e!598399 () Bool)

(assert (=> b!1053524 (=> (not res!702618) (not e!598399))))

(declare-datatypes ((List!22388 0))(
  ( (Nil!22385) (Cons!22384 (h!23593 (_ BitVec 64)) (t!31702 List!22388)) )
))
(declare-fun arrayNoDuplicates!0 (array!66431 (_ BitVec 32) List!22388) Bool)

(assert (=> b!1053524 (= res!702618 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22385))))

(declare-fun b!1053525 () Bool)

(declare-fun e!598402 () Bool)

(assert (=> b!1053525 (= e!598399 e!598402)))

(declare-fun res!702620 () Bool)

(assert (=> b!1053525 (=> (not res!702620) (not e!598402))))

(declare-fun lt!465145 () array!66431)

(assert (=> b!1053525 (= res!702620 (arrayContainsKey!0 lt!465145 k!2747 #b00000000000000000000000000000000))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053525 (= lt!465145 (array!66432 (store (arr!31945 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32482 a!3488)))))

(declare-fun b!1053526 () Bool)

(declare-fun res!702615 () Bool)

(assert (=> b!1053526 (=> (not res!702615) (not e!598399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053526 (= res!702615 (validKeyInArray!0 k!2747))))

(declare-fun b!1053527 () Bool)

(declare-fun res!702621 () Bool)

(assert (=> b!1053527 (=> (not res!702621) (not e!598399))))

(assert (=> b!1053527 (= res!702621 (= (select (arr!31945 a!3488) i!1381) k!2747))))

(declare-fun b!1053528 () Bool)

(declare-fun e!598403 () Bool)

(assert (=> b!1053528 (= e!598403 e!598400)))

(declare-fun res!702619 () Bool)

(assert (=> b!1053528 (=> res!702619 e!598400)))

(assert (=> b!1053528 (= res!702619 (bvsle lt!465144 i!1381))))

(declare-fun res!702616 () Bool)

(assert (=> start!92790 (=> (not res!702616) (not e!598399))))

(assert (=> start!92790 (= res!702616 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32482 a!3488)) (bvslt (size!32482 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92790 e!598399))

(assert (=> start!92790 true))

(declare-fun array_inv!24567 (array!66431) Bool)

(assert (=> start!92790 (array_inv!24567 a!3488)))

(declare-fun b!1053529 () Bool)

(declare-fun e!598401 () Bool)

(assert (=> b!1053529 (= e!598402 e!598401)))

(declare-fun res!702614 () Bool)

(assert (=> b!1053529 (=> (not res!702614) (not e!598401))))

(assert (=> b!1053529 (= res!702614 (not (= lt!465144 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66431 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053529 (= lt!465144 (arrayScanForKey!0 lt!465145 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053530 () Bool)

(assert (=> b!1053530 (= e!598401 (not true))))

(assert (=> b!1053530 e!598403))

(declare-fun res!702617 () Bool)

(assert (=> b!1053530 (=> (not res!702617) (not e!598403))))

(assert (=> b!1053530 (= res!702617 (= (select (store (arr!31945 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465144) k!2747))))

(assert (= (and start!92790 res!702616) b!1053524))

(assert (= (and b!1053524 res!702618) b!1053526))

(assert (= (and b!1053526 res!702615) b!1053527))

(assert (= (and b!1053527 res!702621) b!1053525))

(assert (= (and b!1053525 res!702620) b!1053529))

(assert (= (and b!1053529 res!702614) b!1053530))

(assert (= (and b!1053530 res!702617) b!1053528))

(assert (= (and b!1053528 (not res!702619)) b!1053523))

(declare-fun m!973917 () Bool)

(assert (=> b!1053524 m!973917))

(declare-fun m!973919 () Bool)

(assert (=> b!1053526 m!973919))

(declare-fun m!973921 () Bool)

(assert (=> b!1053529 m!973921))

(declare-fun m!973923 () Bool)

(assert (=> b!1053523 m!973923))

(declare-fun m!973925 () Bool)

(assert (=> start!92790 m!973925))

(declare-fun m!973927 () Bool)

(assert (=> b!1053530 m!973927))

(declare-fun m!973929 () Bool)

(assert (=> b!1053530 m!973929))

(declare-fun m!973931 () Bool)

(assert (=> b!1053525 m!973931))

(assert (=> b!1053525 m!973927))

(declare-fun m!973933 () Bool)

(assert (=> b!1053527 m!973933))

(push 1)

