; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93494 () Bool)

(assert start!93494)

(declare-fun b!1058560 () Bool)

(declare-fun e!602289 () Bool)

(declare-fun e!602290 () Bool)

(assert (=> b!1058560 (= e!602289 e!602290)))

(declare-fun res!707245 () Bool)

(assert (=> b!1058560 (=> (not res!707245) (not e!602290))))

(declare-fun lt!466975 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058560 (= res!707245 (not (= lt!466975 i!1381)))))

(declare-datatypes ((array!66745 0))(
  ( (array!66746 (arr!32087 (Array (_ BitVec 32) (_ BitVec 64))) (size!32624 (_ BitVec 32))) )
))
(declare-fun lt!466974 () array!66745)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66745 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058560 (= lt!466975 (arrayScanForKey!0 lt!466974 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058561 () Bool)

(declare-fun res!707246 () Bool)

(declare-fun e!602292 () Bool)

(assert (=> b!1058561 (=> (not res!707246) (not e!602292))))

(declare-fun a!3488 () array!66745)

(assert (=> b!1058561 (= res!707246 (= (select (arr!32087 a!3488) i!1381) k0!2747))))

(declare-fun b!1058562 () Bool)

(assert (=> b!1058562 (= e!602290 (not true))))

(assert (=> b!1058562 (= (select (store (arr!32087 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466975) k0!2747)))

(declare-fun b!1058563 () Bool)

(declare-fun res!707244 () Bool)

(assert (=> b!1058563 (=> (not res!707244) (not e!602292))))

(declare-datatypes ((List!22530 0))(
  ( (Nil!22527) (Cons!22526 (h!23735 (_ BitVec 64)) (t!31844 List!22530)) )
))
(declare-fun arrayNoDuplicates!0 (array!66745 (_ BitVec 32) List!22530) Bool)

(assert (=> b!1058563 (= res!707244 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22527))))

(declare-fun b!1058564 () Bool)

(assert (=> b!1058564 (= e!602292 e!602289)))

(declare-fun res!707247 () Bool)

(assert (=> b!1058564 (=> (not res!707247) (not e!602289))))

(declare-fun arrayContainsKey!0 (array!66745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058564 (= res!707247 (arrayContainsKey!0 lt!466974 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058564 (= lt!466974 (array!66746 (store (arr!32087 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32624 a!3488)))))

(declare-fun res!707248 () Bool)

(assert (=> start!93494 (=> (not res!707248) (not e!602292))))

(assert (=> start!93494 (= res!707248 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32624 a!3488)) (bvslt (size!32624 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93494 e!602292))

(assert (=> start!93494 true))

(declare-fun array_inv!24709 (array!66745) Bool)

(assert (=> start!93494 (array_inv!24709 a!3488)))

(declare-fun b!1058565 () Bool)

(declare-fun res!707243 () Bool)

(assert (=> b!1058565 (=> (not res!707243) (not e!602292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058565 (= res!707243 (validKeyInArray!0 k0!2747))))

(assert (= (and start!93494 res!707248) b!1058563))

(assert (= (and b!1058563 res!707244) b!1058565))

(assert (= (and b!1058565 res!707243) b!1058561))

(assert (= (and b!1058561 res!707246) b!1058564))

(assert (= (and b!1058564 res!707247) b!1058560))

(assert (= (and b!1058560 res!707245) b!1058562))

(declare-fun m!978355 () Bool)

(assert (=> b!1058560 m!978355))

(declare-fun m!978357 () Bool)

(assert (=> b!1058563 m!978357))

(declare-fun m!978359 () Bool)

(assert (=> b!1058565 m!978359))

(declare-fun m!978361 () Bool)

(assert (=> start!93494 m!978361))

(declare-fun m!978363 () Bool)

(assert (=> b!1058564 m!978363))

(declare-fun m!978365 () Bool)

(assert (=> b!1058564 m!978365))

(assert (=> b!1058562 m!978365))

(declare-fun m!978367 () Bool)

(assert (=> b!1058562 m!978367))

(declare-fun m!978369 () Bool)

(assert (=> b!1058561 m!978369))

(check-sat (not b!1058564) (not b!1058560) (not b!1058563) (not b!1058565) (not start!93494))
(check-sat)
