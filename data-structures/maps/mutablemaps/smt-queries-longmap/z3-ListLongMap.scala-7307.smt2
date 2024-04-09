; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93482 () Bool)

(assert start!93482)

(declare-fun b!1058413 () Bool)

(declare-fun e!602180 () Bool)

(declare-fun e!602179 () Bool)

(assert (=> b!1058413 (= e!602180 e!602179)))

(declare-fun res!707098 () Bool)

(assert (=> b!1058413 (=> (not res!707098) (not e!602179))))

(declare-fun lt!466889 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058413 (= res!707098 (not (= lt!466889 i!1381)))))

(declare-datatypes ((array!66733 0))(
  ( (array!66734 (arr!32081 (Array (_ BitVec 32) (_ BitVec 64))) (size!32618 (_ BitVec 32))) )
))
(declare-fun lt!466888 () array!66733)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66733 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058413 (= lt!466889 (arrayScanForKey!0 lt!466888 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058414 () Bool)

(declare-fun res!707097 () Bool)

(declare-fun e!602181 () Bool)

(assert (=> b!1058414 (=> (not res!707097) (not e!602181))))

(declare-fun a!3488 () array!66733)

(declare-datatypes ((List!22524 0))(
  ( (Nil!22521) (Cons!22520 (h!23729 (_ BitVec 64)) (t!31838 List!22524)) )
))
(declare-fun arrayNoDuplicates!0 (array!66733 (_ BitVec 32) List!22524) Bool)

(assert (=> b!1058414 (= res!707097 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22521))))

(declare-fun b!1058415 () Bool)

(declare-fun e!602184 () Bool)

(assert (=> b!1058415 (= e!602179 (not e!602184))))

(declare-fun res!707102 () Bool)

(assert (=> b!1058415 (=> res!707102 e!602184)))

(assert (=> b!1058415 (= res!707102 (or (bvsgt lt!466889 i!1381) (bvsle i!1381 lt!466889)))))

(declare-fun e!602178 () Bool)

(assert (=> b!1058415 e!602178))

(declare-fun res!707099 () Bool)

(assert (=> b!1058415 (=> (not res!707099) (not e!602178))))

(assert (=> b!1058415 (= res!707099 (= (select (store (arr!32081 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466889) k0!2747))))

(declare-fun b!1058416 () Bool)

(assert (=> b!1058416 (= e!602181 e!602180)))

(declare-fun res!707101 () Bool)

(assert (=> b!1058416 (=> (not res!707101) (not e!602180))))

(declare-fun arrayContainsKey!0 (array!66733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058416 (= res!707101 (arrayContainsKey!0 lt!466888 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058416 (= lt!466888 (array!66734 (store (arr!32081 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32618 a!3488)))))

(declare-fun b!1058417 () Bool)

(assert (=> b!1058417 (= e!602184 true)))

(assert (=> b!1058417 (not (= (select (arr!32081 a!3488) lt!466889) k0!2747))))

(declare-datatypes ((Unit!34693 0))(
  ( (Unit!34694) )
))
(declare-fun lt!466891 () Unit!34693)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66733 (_ BitVec 64) (_ BitVec 32) List!22524) Unit!34693)

(assert (=> b!1058417 (= lt!466891 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 lt!466889 Nil!22521))))

(declare-fun lt!466886 () (_ BitVec 32))

(assert (=> b!1058417 (arrayContainsKey!0 a!3488 k0!2747 lt!466886)))

(declare-fun lt!466890 () Unit!34693)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66733 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34693)

(assert (=> b!1058417 (= lt!466890 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466886))))

(assert (=> b!1058417 (= lt!466886 (bvadd #b00000000000000000000000000000001 lt!466889))))

(assert (=> b!1058417 (arrayNoDuplicates!0 a!3488 lt!466889 Nil!22521)))

(declare-fun lt!466887 () Unit!34693)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66733 (_ BitVec 32) (_ BitVec 32)) Unit!34693)

(assert (=> b!1058417 (= lt!466887 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466889))))

(declare-fun b!1058418 () Bool)

(declare-fun res!707103 () Bool)

(assert (=> b!1058418 (=> (not res!707103) (not e!602181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058418 (= res!707103 (validKeyInArray!0 k0!2747))))

(declare-fun b!1058419 () Bool)

(declare-fun e!602182 () Bool)

(assert (=> b!1058419 (= e!602178 e!602182)))

(declare-fun res!707100 () Bool)

(assert (=> b!1058419 (=> res!707100 e!602182)))

(assert (=> b!1058419 (= res!707100 (or (bvsgt lt!466889 i!1381) (bvsle i!1381 lt!466889)))))

(declare-fun res!707096 () Bool)

(assert (=> start!93482 (=> (not res!707096) (not e!602181))))

(assert (=> start!93482 (= res!707096 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32618 a!3488)) (bvslt (size!32618 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93482 e!602181))

(assert (=> start!93482 true))

(declare-fun array_inv!24703 (array!66733) Bool)

(assert (=> start!93482 (array_inv!24703 a!3488)))

(declare-fun b!1058420 () Bool)

(declare-fun res!707104 () Bool)

(assert (=> b!1058420 (=> (not res!707104) (not e!602181))))

(assert (=> b!1058420 (= res!707104 (= (select (arr!32081 a!3488) i!1381) k0!2747))))

(declare-fun b!1058421 () Bool)

(assert (=> b!1058421 (= e!602182 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(assert (= (and start!93482 res!707096) b!1058414))

(assert (= (and b!1058414 res!707097) b!1058418))

(assert (= (and b!1058418 res!707103) b!1058420))

(assert (= (and b!1058420 res!707104) b!1058416))

(assert (= (and b!1058416 res!707101) b!1058413))

(assert (= (and b!1058413 res!707098) b!1058415))

(assert (= (and b!1058415 res!707099) b!1058419))

(assert (= (and b!1058419 (not res!707100)) b!1058421))

(assert (= (and b!1058415 (not res!707102)) b!1058417))

(declare-fun m!978189 () Bool)

(assert (=> b!1058421 m!978189))

(declare-fun m!978191 () Bool)

(assert (=> b!1058417 m!978191))

(declare-fun m!978193 () Bool)

(assert (=> b!1058417 m!978193))

(declare-fun m!978195 () Bool)

(assert (=> b!1058417 m!978195))

(declare-fun m!978197 () Bool)

(assert (=> b!1058417 m!978197))

(declare-fun m!978199 () Bool)

(assert (=> b!1058417 m!978199))

(declare-fun m!978201 () Bool)

(assert (=> b!1058417 m!978201))

(declare-fun m!978203 () Bool)

(assert (=> b!1058420 m!978203))

(declare-fun m!978205 () Bool)

(assert (=> start!93482 m!978205))

(declare-fun m!978207 () Bool)

(assert (=> b!1058418 m!978207))

(declare-fun m!978209 () Bool)

(assert (=> b!1058415 m!978209))

(declare-fun m!978211 () Bool)

(assert (=> b!1058415 m!978211))

(declare-fun m!978213 () Bool)

(assert (=> b!1058416 m!978213))

(assert (=> b!1058416 m!978209))

(declare-fun m!978215 () Bool)

(assert (=> b!1058414 m!978215))

(declare-fun m!978217 () Bool)

(assert (=> b!1058413 m!978217))

(check-sat (not b!1058418) (not start!93482) (not b!1058414) (not b!1058421) (not b!1058417) (not b!1058416) (not b!1058413))
(check-sat)
