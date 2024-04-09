; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93500 () Bool)

(assert start!93500)

(declare-fun b!1058614 () Bool)

(declare-fun res!707297 () Bool)

(declare-fun e!602325 () Bool)

(assert (=> b!1058614 (=> (not res!707297) (not e!602325))))

(declare-datatypes ((array!66751 0))(
  ( (array!66752 (arr!32090 (Array (_ BitVec 32) (_ BitVec 64))) (size!32627 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66751)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058614 (= res!707297 (= (select (arr!32090 a!3488) i!1381) k0!2747))))

(declare-fun b!1058615 () Bool)

(declare-fun e!602327 () Bool)

(assert (=> b!1058615 (= e!602325 e!602327)))

(declare-fun res!707300 () Bool)

(assert (=> b!1058615 (=> (not res!707300) (not e!602327))))

(declare-fun lt!466992 () array!66751)

(declare-fun arrayContainsKey!0 (array!66751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058615 (= res!707300 (arrayContainsKey!0 lt!466992 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058615 (= lt!466992 (array!66752 (store (arr!32090 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32627 a!3488)))))

(declare-fun b!1058616 () Bool)

(declare-fun res!707301 () Bool)

(assert (=> b!1058616 (=> (not res!707301) (not e!602325))))

(declare-datatypes ((List!22533 0))(
  ( (Nil!22530) (Cons!22529 (h!23738 (_ BitVec 64)) (t!31847 List!22533)) )
))
(declare-fun arrayNoDuplicates!0 (array!66751 (_ BitVec 32) List!22533) Bool)

(assert (=> b!1058616 (= res!707301 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22530))))

(declare-fun res!707299 () Bool)

(assert (=> start!93500 (=> (not res!707299) (not e!602325))))

(assert (=> start!93500 (= res!707299 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32627 a!3488)) (bvslt (size!32627 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93500 e!602325))

(assert (=> start!93500 true))

(declare-fun array_inv!24712 (array!66751) Bool)

(assert (=> start!93500 (array_inv!24712 a!3488)))

(declare-fun b!1058617 () Bool)

(declare-fun e!602328 () Bool)

(assert (=> b!1058617 (= e!602327 e!602328)))

(declare-fun res!707298 () Bool)

(assert (=> b!1058617 (=> (not res!707298) (not e!602328))))

(declare-fun lt!466993 () (_ BitVec 32))

(assert (=> b!1058617 (= res!707298 (not (= lt!466993 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66751 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058617 (= lt!466993 (arrayScanForKey!0 lt!466992 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058618 () Bool)

(declare-fun res!707302 () Bool)

(assert (=> b!1058618 (=> (not res!707302) (not e!602325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058618 (= res!707302 (validKeyInArray!0 k0!2747))))

(declare-fun b!1058619 () Bool)

(assert (=> b!1058619 (= e!602328 (not (or (bvsgt lt!466993 i!1381) (bvsgt i!1381 lt!466993))))))

(assert (=> b!1058619 (= (select (store (arr!32090 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466993) k0!2747)))

(assert (= (and start!93500 res!707299) b!1058616))

(assert (= (and b!1058616 res!707301) b!1058618))

(assert (= (and b!1058618 res!707302) b!1058614))

(assert (= (and b!1058614 res!707297) b!1058615))

(assert (= (and b!1058615 res!707300) b!1058617))

(assert (= (and b!1058617 res!707298) b!1058619))

(declare-fun m!978403 () Bool)

(assert (=> b!1058616 m!978403))

(declare-fun m!978405 () Bool)

(assert (=> b!1058615 m!978405))

(declare-fun m!978407 () Bool)

(assert (=> b!1058615 m!978407))

(declare-fun m!978409 () Bool)

(assert (=> b!1058617 m!978409))

(assert (=> b!1058619 m!978407))

(declare-fun m!978411 () Bool)

(assert (=> b!1058619 m!978411))

(declare-fun m!978413 () Bool)

(assert (=> start!93500 m!978413))

(declare-fun m!978415 () Bool)

(assert (=> b!1058618 m!978415))

(declare-fun m!978417 () Bool)

(assert (=> b!1058614 m!978417))

(check-sat (not b!1058617) (not b!1058615) (not b!1058618) (not b!1058616) (not start!93500))
(check-sat)
