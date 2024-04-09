; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92450 () Bool)

(assert start!92450)

(declare-fun b!1050661 () Bool)

(declare-fun res!699898 () Bool)

(declare-fun e!596309 () Bool)

(assert (=> b!1050661 (=> (not res!699898) (not e!596309))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050661 (= res!699898 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050662 () Bool)

(declare-fun e!596306 () Bool)

(declare-fun e!596305 () Bool)

(assert (=> b!1050662 (= e!596306 e!596305)))

(declare-fun res!699899 () Bool)

(assert (=> b!1050662 (=> res!699899 e!596305)))

(declare-fun lt!464035 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050662 (= res!699899 (or (bvsgt lt!464035 i!1381) (bvsle i!1381 lt!464035)))))

(declare-fun b!1050663 () Bool)

(declare-fun e!596308 () Bool)

(declare-fun e!596307 () Bool)

(assert (=> b!1050663 (= e!596308 e!596307)))

(declare-fun res!699903 () Bool)

(assert (=> b!1050663 (=> (not res!699903) (not e!596307))))

(assert (=> b!1050663 (= res!699903 (not (= lt!464035 i!1381)))))

(declare-datatypes ((array!66199 0))(
  ( (array!66200 (arr!31835 (Array (_ BitVec 32) (_ BitVec 64))) (size!32372 (_ BitVec 32))) )
))
(declare-fun lt!464034 () array!66199)

(declare-fun arrayScanForKey!0 (array!66199 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050663 (= lt!464035 (arrayScanForKey!0 lt!464034 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!699900 () Bool)

(assert (=> start!92450 (=> (not res!699900) (not e!596309))))

(declare-fun a!3488 () array!66199)

(assert (=> start!92450 (= res!699900 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32372 a!3488)) (bvslt (size!32372 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92450 e!596309))

(assert (=> start!92450 true))

(declare-fun array_inv!24457 (array!66199) Bool)

(assert (=> start!92450 (array_inv!24457 a!3488)))

(declare-fun b!1050664 () Bool)

(assert (=> b!1050664 (= e!596309 e!596308)))

(declare-fun res!699897 () Bool)

(assert (=> b!1050664 (=> (not res!699897) (not e!596308))))

(declare-fun arrayContainsKey!0 (array!66199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050664 (= res!699897 (arrayContainsKey!0 lt!464034 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050664 (= lt!464034 (array!66200 (store (arr!31835 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32372 a!3488)))))

(declare-fun b!1050665 () Bool)

(declare-fun res!699901 () Bool)

(assert (=> b!1050665 (=> (not res!699901) (not e!596309))))

(assert (=> b!1050665 (= res!699901 (= (select (arr!31835 a!3488) i!1381) k0!2747))))

(declare-fun b!1050666 () Bool)

(assert (=> b!1050666 (= e!596305 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1050667 () Bool)

(declare-fun res!699902 () Bool)

(assert (=> b!1050667 (=> (not res!699902) (not e!596309))))

(declare-datatypes ((List!22278 0))(
  ( (Nil!22275) (Cons!22274 (h!23483 (_ BitVec 64)) (t!31592 List!22278)) )
))
(declare-fun arrayNoDuplicates!0 (array!66199 (_ BitVec 32) List!22278) Bool)

(assert (=> b!1050667 (= res!699902 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22275))))

(declare-fun b!1050668 () Bool)

(assert (=> b!1050668 (= e!596307 (not true))))

(assert (=> b!1050668 e!596306))

(declare-fun res!699896 () Bool)

(assert (=> b!1050668 (=> (not res!699896) (not e!596306))))

(assert (=> b!1050668 (= res!699896 (= (select (store (arr!31835 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464035) k0!2747))))

(assert (= (and start!92450 res!699900) b!1050667))

(assert (= (and b!1050667 res!699902) b!1050661))

(assert (= (and b!1050661 res!699898) b!1050665))

(assert (= (and b!1050665 res!699901) b!1050664))

(assert (= (and b!1050664 res!699897) b!1050663))

(assert (= (and b!1050663 res!699903) b!1050668))

(assert (= (and b!1050668 res!699896) b!1050662))

(assert (= (and b!1050662 (not res!699899)) b!1050666))

(declare-fun m!971463 () Bool)

(assert (=> b!1050666 m!971463))

(declare-fun m!971465 () Bool)

(assert (=> b!1050663 m!971465))

(declare-fun m!971467 () Bool)

(assert (=> b!1050664 m!971467))

(declare-fun m!971469 () Bool)

(assert (=> b!1050664 m!971469))

(declare-fun m!971471 () Bool)

(assert (=> b!1050661 m!971471))

(assert (=> b!1050668 m!971469))

(declare-fun m!971473 () Bool)

(assert (=> b!1050668 m!971473))

(declare-fun m!971475 () Bool)

(assert (=> b!1050667 m!971475))

(declare-fun m!971477 () Bool)

(assert (=> b!1050665 m!971477))

(declare-fun m!971479 () Bool)

(assert (=> start!92450 m!971479))

(check-sat (not b!1050663) (not b!1050667) (not b!1050666) (not b!1050661) (not b!1050664) (not start!92450))
(check-sat)
