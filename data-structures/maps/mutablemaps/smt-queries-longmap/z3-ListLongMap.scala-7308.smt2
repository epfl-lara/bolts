; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93488 () Bool)

(assert start!93488)

(declare-fun b!1058494 () Bool)

(declare-fun res!707182 () Bool)

(declare-fun e!602242 () Bool)

(assert (=> b!1058494 (=> (not res!707182) (not e!602242))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058494 (= res!707182 (validKeyInArray!0 k0!2747))))

(declare-fun b!1058495 () Bool)

(declare-fun e!602247 () Bool)

(declare-fun e!602241 () Bool)

(assert (=> b!1058495 (= e!602247 (not e!602241))))

(declare-fun res!707180 () Bool)

(assert (=> b!1058495 (=> res!707180 e!602241)))

(declare-fun lt!466942 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058495 (= res!707180 (or (bvsgt lt!466942 i!1381) (bvsle i!1381 lt!466942)))))

(declare-fun e!602243 () Bool)

(assert (=> b!1058495 e!602243))

(declare-fun res!707183 () Bool)

(assert (=> b!1058495 (=> (not res!707183) (not e!602243))))

(declare-datatypes ((array!66739 0))(
  ( (array!66740 (arr!32084 (Array (_ BitVec 32) (_ BitVec 64))) (size!32621 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66739)

(assert (=> b!1058495 (= res!707183 (= (select (store (arr!32084 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466942) k0!2747))))

(declare-fun b!1058496 () Bool)

(assert (=> b!1058496 (= e!602241 true)))

(assert (=> b!1058496 (not (= (select (arr!32084 a!3488) lt!466942) k0!2747))))

(declare-datatypes ((Unit!34699 0))(
  ( (Unit!34700) )
))
(declare-fun lt!466945 () Unit!34699)

(declare-datatypes ((List!22527 0))(
  ( (Nil!22524) (Cons!22523 (h!23732 (_ BitVec 64)) (t!31841 List!22527)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66739 (_ BitVec 64) (_ BitVec 32) List!22527) Unit!34699)

(assert (=> b!1058496 (= lt!466945 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 lt!466942 Nil!22524))))

(declare-fun lt!466941 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058496 (arrayContainsKey!0 a!3488 k0!2747 lt!466941)))

(declare-fun lt!466944 () Unit!34699)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66739 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34699)

(assert (=> b!1058496 (= lt!466944 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466941))))

(assert (=> b!1058496 (= lt!466941 (bvadd #b00000000000000000000000000000001 lt!466942))))

(declare-fun arrayNoDuplicates!0 (array!66739 (_ BitVec 32) List!22527) Bool)

(assert (=> b!1058496 (arrayNoDuplicates!0 a!3488 lt!466942 Nil!22524)))

(declare-fun lt!466940 () Unit!34699)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66739 (_ BitVec 32) (_ BitVec 32)) Unit!34699)

(assert (=> b!1058496 (= lt!466940 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466942))))

(declare-fun b!1058497 () Bool)

(declare-fun e!602245 () Bool)

(assert (=> b!1058497 (= e!602245 e!602247)))

(declare-fun res!707179 () Bool)

(assert (=> b!1058497 (=> (not res!707179) (not e!602247))))

(assert (=> b!1058497 (= res!707179 (not (= lt!466942 i!1381)))))

(declare-fun lt!466943 () array!66739)

(declare-fun arrayScanForKey!0 (array!66739 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058497 (= lt!466942 (arrayScanForKey!0 lt!466943 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!707185 () Bool)

(assert (=> start!93488 (=> (not res!707185) (not e!602242))))

(assert (=> start!93488 (= res!707185 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32621 a!3488)) (bvslt (size!32621 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93488 e!602242))

(assert (=> start!93488 true))

(declare-fun array_inv!24706 (array!66739) Bool)

(assert (=> start!93488 (array_inv!24706 a!3488)))

(declare-fun b!1058498 () Bool)

(assert (=> b!1058498 (= e!602242 e!602245)))

(declare-fun res!707177 () Bool)

(assert (=> b!1058498 (=> (not res!707177) (not e!602245))))

(assert (=> b!1058498 (= res!707177 (arrayContainsKey!0 lt!466943 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058498 (= lt!466943 (array!66740 (store (arr!32084 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32621 a!3488)))))

(declare-fun e!602246 () Bool)

(declare-fun b!1058499 () Bool)

(assert (=> b!1058499 (= e!602246 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1058500 () Bool)

(declare-fun res!707181 () Bool)

(assert (=> b!1058500 (=> (not res!707181) (not e!602242))))

(assert (=> b!1058500 (= res!707181 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22524))))

(declare-fun b!1058501 () Bool)

(assert (=> b!1058501 (= e!602243 e!602246)))

(declare-fun res!707184 () Bool)

(assert (=> b!1058501 (=> res!707184 e!602246)))

(assert (=> b!1058501 (= res!707184 (or (bvsgt lt!466942 i!1381) (bvsle i!1381 lt!466942)))))

(declare-fun b!1058502 () Bool)

(declare-fun res!707178 () Bool)

(assert (=> b!1058502 (=> (not res!707178) (not e!602242))))

(assert (=> b!1058502 (= res!707178 (= (select (arr!32084 a!3488) i!1381) k0!2747))))

(assert (= (and start!93488 res!707185) b!1058500))

(assert (= (and b!1058500 res!707181) b!1058494))

(assert (= (and b!1058494 res!707182) b!1058502))

(assert (= (and b!1058502 res!707178) b!1058498))

(assert (= (and b!1058498 res!707177) b!1058497))

(assert (= (and b!1058497 res!707179) b!1058495))

(assert (= (and b!1058495 res!707183) b!1058501))

(assert (= (and b!1058501 (not res!707184)) b!1058499))

(assert (= (and b!1058495 (not res!707180)) b!1058496))

(declare-fun m!978279 () Bool)

(assert (=> b!1058500 m!978279))

(declare-fun m!978281 () Bool)

(assert (=> b!1058494 m!978281))

(declare-fun m!978283 () Bool)

(assert (=> start!93488 m!978283))

(declare-fun m!978285 () Bool)

(assert (=> b!1058495 m!978285))

(declare-fun m!978287 () Bool)

(assert (=> b!1058495 m!978287))

(declare-fun m!978289 () Bool)

(assert (=> b!1058499 m!978289))

(declare-fun m!978291 () Bool)

(assert (=> b!1058497 m!978291))

(declare-fun m!978293 () Bool)

(assert (=> b!1058496 m!978293))

(declare-fun m!978295 () Bool)

(assert (=> b!1058496 m!978295))

(declare-fun m!978297 () Bool)

(assert (=> b!1058496 m!978297))

(declare-fun m!978299 () Bool)

(assert (=> b!1058496 m!978299))

(declare-fun m!978301 () Bool)

(assert (=> b!1058496 m!978301))

(declare-fun m!978303 () Bool)

(assert (=> b!1058496 m!978303))

(declare-fun m!978305 () Bool)

(assert (=> b!1058502 m!978305))

(declare-fun m!978307 () Bool)

(assert (=> b!1058498 m!978307))

(assert (=> b!1058498 m!978285))

(check-sat (not b!1058497) (not b!1058500) (not start!93488) (not b!1058498) (not b!1058496) (not b!1058494) (not b!1058499))
(check-sat)
