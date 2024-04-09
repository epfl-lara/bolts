; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93338 () Bool)

(assert start!93338)

(declare-fun b!1057480 () Bool)

(declare-fun e!601458 () Bool)

(declare-fun e!601460 () Bool)

(assert (=> b!1057480 (= e!601458 e!601460)))

(declare-fun res!706252 () Bool)

(assert (=> b!1057480 (=> res!706252 e!601460)))

(declare-fun lt!466475 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057480 (= res!706252 (or (bvsgt lt!466475 i!1381) (bvsle i!1381 lt!466475)))))

(declare-fun b!1057481 () Bool)

(declare-fun res!706255 () Bool)

(declare-fun e!601459 () Bool)

(assert (=> b!1057481 (=> (not res!706255) (not e!601459))))

(declare-datatypes ((array!66685 0))(
  ( (array!66686 (arr!32060 (Array (_ BitVec 32) (_ BitVec 64))) (size!32597 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66685)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1057481 (= res!706255 (= (select (arr!32060 a!3488) i!1381) k0!2747))))

(declare-fun b!1057483 () Bool)

(declare-fun e!601463 () Bool)

(declare-fun e!601464 () Bool)

(assert (=> b!1057483 (= e!601463 (not e!601464))))

(declare-fun res!706253 () Bool)

(assert (=> b!1057483 (=> res!706253 e!601464)))

(assert (=> b!1057483 (= res!706253 (or (bvsgt lt!466475 i!1381) (bvsle i!1381 lt!466475)))))

(assert (=> b!1057483 e!601458))

(declare-fun res!706251 () Bool)

(assert (=> b!1057483 (=> (not res!706251) (not e!601458))))

(assert (=> b!1057483 (= res!706251 (= (select (store (arr!32060 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466475) k0!2747))))

(declare-fun b!1057484 () Bool)

(declare-fun res!706249 () Bool)

(assert (=> b!1057484 (=> (not res!706249) (not e!601459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057484 (= res!706249 (validKeyInArray!0 k0!2747))))

(declare-fun lt!466477 () (_ BitVec 32))

(declare-fun b!1057485 () Bool)

(assert (=> b!1057485 (= e!601464 (or (bvslt lt!466475 #b00000000000000000000000000000000) (bvslt lt!466477 (size!32597 a!3488))))))

(declare-fun arrayContainsKey!0 (array!66685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057485 (arrayContainsKey!0 a!3488 k0!2747 lt!466477)))

(declare-datatypes ((Unit!34651 0))(
  ( (Unit!34652) )
))
(declare-fun lt!466476 () Unit!34651)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66685 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34651)

(assert (=> b!1057485 (= lt!466476 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466477))))

(assert (=> b!1057485 (= lt!466477 (bvadd #b00000000000000000000000000000001 lt!466475))))

(declare-datatypes ((List!22503 0))(
  ( (Nil!22500) (Cons!22499 (h!23708 (_ BitVec 64)) (t!31817 List!22503)) )
))
(declare-fun arrayNoDuplicates!0 (array!66685 (_ BitVec 32) List!22503) Bool)

(assert (=> b!1057485 (arrayNoDuplicates!0 a!3488 lt!466475 Nil!22500)))

(declare-fun lt!466474 () Unit!34651)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66685 (_ BitVec 32) (_ BitVec 32)) Unit!34651)

(assert (=> b!1057485 (= lt!466474 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466475))))

(declare-fun b!1057486 () Bool)

(declare-fun e!601461 () Bool)

(assert (=> b!1057486 (= e!601459 e!601461)))

(declare-fun res!706250 () Bool)

(assert (=> b!1057486 (=> (not res!706250) (not e!601461))))

(declare-fun lt!466473 () array!66685)

(assert (=> b!1057486 (= res!706250 (arrayContainsKey!0 lt!466473 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057486 (= lt!466473 (array!66686 (store (arr!32060 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32597 a!3488)))))

(declare-fun b!1057487 () Bool)

(assert (=> b!1057487 (= e!601461 e!601463)))

(declare-fun res!706248 () Bool)

(assert (=> b!1057487 (=> (not res!706248) (not e!601463))))

(assert (=> b!1057487 (= res!706248 (not (= lt!466475 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66685 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057487 (= lt!466475 (arrayScanForKey!0 lt!466473 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057488 () Bool)

(declare-fun res!706247 () Bool)

(assert (=> b!1057488 (=> (not res!706247) (not e!601459))))

(assert (=> b!1057488 (= res!706247 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22500))))

(declare-fun b!1057482 () Bool)

(assert (=> b!1057482 (= e!601460 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun res!706254 () Bool)

(assert (=> start!93338 (=> (not res!706254) (not e!601459))))

(assert (=> start!93338 (= res!706254 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32597 a!3488)) (bvslt (size!32597 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93338 e!601459))

(assert (=> start!93338 true))

(declare-fun array_inv!24682 (array!66685) Bool)

(assert (=> start!93338 (array_inv!24682 a!3488)))

(assert (= (and start!93338 res!706254) b!1057488))

(assert (= (and b!1057488 res!706247) b!1057484))

(assert (= (and b!1057484 res!706249) b!1057481))

(assert (= (and b!1057481 res!706255) b!1057486))

(assert (= (and b!1057486 res!706250) b!1057487))

(assert (= (and b!1057487 res!706248) b!1057483))

(assert (= (and b!1057483 res!706251) b!1057480))

(assert (= (and b!1057480 (not res!706252)) b!1057482))

(assert (= (and b!1057483 (not res!706253)) b!1057485))

(declare-fun m!977309 () Bool)

(assert (=> b!1057488 m!977309))

(declare-fun m!977311 () Bool)

(assert (=> b!1057485 m!977311))

(declare-fun m!977313 () Bool)

(assert (=> b!1057485 m!977313))

(declare-fun m!977315 () Bool)

(assert (=> b!1057485 m!977315))

(declare-fun m!977317 () Bool)

(assert (=> b!1057485 m!977317))

(declare-fun m!977319 () Bool)

(assert (=> start!93338 m!977319))

(declare-fun m!977321 () Bool)

(assert (=> b!1057483 m!977321))

(declare-fun m!977323 () Bool)

(assert (=> b!1057483 m!977323))

(declare-fun m!977325 () Bool)

(assert (=> b!1057481 m!977325))

(declare-fun m!977327 () Bool)

(assert (=> b!1057482 m!977327))

(declare-fun m!977329 () Bool)

(assert (=> b!1057484 m!977329))

(declare-fun m!977331 () Bool)

(assert (=> b!1057486 m!977331))

(assert (=> b!1057486 m!977321))

(declare-fun m!977333 () Bool)

(assert (=> b!1057487 m!977333))

(check-sat (not b!1057482) (not start!93338) (not b!1057488) (not b!1057487) (not b!1057485) (not b!1057484) (not b!1057486))
(check-sat)
