; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93344 () Bool)

(assert start!93344)

(declare-fun b!1057561 () Bool)

(declare-fun e!601525 () Bool)

(declare-fun e!601521 () Bool)

(assert (=> b!1057561 (= e!601525 e!601521)))

(declare-fun res!706329 () Bool)

(assert (=> b!1057561 (=> (not res!706329) (not e!601521))))

(declare-datatypes ((array!66691 0))(
  ( (array!66692 (arr!32063 (Array (_ BitVec 32) (_ BitVec 64))) (size!32600 (_ BitVec 32))) )
))
(declare-fun lt!466521 () array!66691)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057561 (= res!706329 (arrayContainsKey!0 lt!466521 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66691)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057561 (= lt!466521 (array!66692 (store (arr!32063 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32600 a!3488)))))

(declare-fun lt!466520 () (_ BitVec 32))

(declare-fun b!1057562 () Bool)

(declare-fun e!601527 () Bool)

(declare-fun lt!466522 () (_ BitVec 32))

(assert (=> b!1057562 (= e!601527 (or (bvslt lt!466520 #b00000000000000000000000000000000) (bvsge lt!466522 (size!32600 a!3488)) (bvslt lt!466520 (size!32600 a!3488))))))

(assert (=> b!1057562 (arrayContainsKey!0 a!3488 k0!2747 lt!466522)))

(declare-datatypes ((Unit!34657 0))(
  ( (Unit!34658) )
))
(declare-fun lt!466519 () Unit!34657)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66691 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34657)

(assert (=> b!1057562 (= lt!466519 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466522))))

(assert (=> b!1057562 (= lt!466522 (bvadd #b00000000000000000000000000000001 lt!466520))))

(declare-datatypes ((List!22506 0))(
  ( (Nil!22503) (Cons!22502 (h!23711 (_ BitVec 64)) (t!31820 List!22506)) )
))
(declare-fun arrayNoDuplicates!0 (array!66691 (_ BitVec 32) List!22506) Bool)

(assert (=> b!1057562 (arrayNoDuplicates!0 a!3488 lt!466520 Nil!22503)))

(declare-fun lt!466518 () Unit!34657)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66691 (_ BitVec 32) (_ BitVec 32)) Unit!34657)

(assert (=> b!1057562 (= lt!466518 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466520))))

(declare-fun b!1057563 () Bool)

(declare-fun e!601523 () Bool)

(declare-fun e!601524 () Bool)

(assert (=> b!1057563 (= e!601523 e!601524)))

(declare-fun res!706333 () Bool)

(assert (=> b!1057563 (=> res!706333 e!601524)))

(assert (=> b!1057563 (= res!706333 (or (bvsgt lt!466520 i!1381) (bvsle i!1381 lt!466520)))))

(declare-fun b!1057564 () Bool)

(declare-fun res!706336 () Bool)

(assert (=> b!1057564 (=> (not res!706336) (not e!601525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057564 (= res!706336 (validKeyInArray!0 k0!2747))))

(declare-fun b!1057566 () Bool)

(declare-fun res!706330 () Bool)

(assert (=> b!1057566 (=> (not res!706330) (not e!601525))))

(assert (=> b!1057566 (= res!706330 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22503))))

(declare-fun b!1057567 () Bool)

(assert (=> b!1057567 (= e!601524 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1057568 () Bool)

(declare-fun e!601522 () Bool)

(assert (=> b!1057568 (= e!601522 (not e!601527))))

(declare-fun res!706331 () Bool)

(assert (=> b!1057568 (=> res!706331 e!601527)))

(assert (=> b!1057568 (= res!706331 (or (bvsgt lt!466520 i!1381) (bvsle i!1381 lt!466520)))))

(assert (=> b!1057568 e!601523))

(declare-fun res!706334 () Bool)

(assert (=> b!1057568 (=> (not res!706334) (not e!601523))))

(assert (=> b!1057568 (= res!706334 (= (select (store (arr!32063 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466520) k0!2747))))

(declare-fun b!1057569 () Bool)

(assert (=> b!1057569 (= e!601521 e!601522)))

(declare-fun res!706332 () Bool)

(assert (=> b!1057569 (=> (not res!706332) (not e!601522))))

(assert (=> b!1057569 (= res!706332 (not (= lt!466520 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66691 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057569 (= lt!466520 (arrayScanForKey!0 lt!466521 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!706335 () Bool)

(assert (=> start!93344 (=> (not res!706335) (not e!601525))))

(assert (=> start!93344 (= res!706335 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32600 a!3488)) (bvslt (size!32600 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93344 e!601525))

(assert (=> start!93344 true))

(declare-fun array_inv!24685 (array!66691) Bool)

(assert (=> start!93344 (array_inv!24685 a!3488)))

(declare-fun b!1057565 () Bool)

(declare-fun res!706328 () Bool)

(assert (=> b!1057565 (=> (not res!706328) (not e!601525))))

(assert (=> b!1057565 (= res!706328 (= (select (arr!32063 a!3488) i!1381) k0!2747))))

(assert (= (and start!93344 res!706335) b!1057566))

(assert (= (and b!1057566 res!706330) b!1057564))

(assert (= (and b!1057564 res!706336) b!1057565))

(assert (= (and b!1057565 res!706328) b!1057561))

(assert (= (and b!1057561 res!706329) b!1057569))

(assert (= (and b!1057569 res!706332) b!1057568))

(assert (= (and b!1057568 res!706334) b!1057563))

(assert (= (and b!1057563 (not res!706333)) b!1057567))

(assert (= (and b!1057568 (not res!706331)) b!1057562))

(declare-fun m!977387 () Bool)

(assert (=> b!1057561 m!977387))

(declare-fun m!977389 () Bool)

(assert (=> b!1057561 m!977389))

(declare-fun m!977391 () Bool)

(assert (=> b!1057569 m!977391))

(declare-fun m!977393 () Bool)

(assert (=> b!1057566 m!977393))

(declare-fun m!977395 () Bool)

(assert (=> start!93344 m!977395))

(declare-fun m!977397 () Bool)

(assert (=> b!1057565 m!977397))

(assert (=> b!1057568 m!977389))

(declare-fun m!977399 () Bool)

(assert (=> b!1057568 m!977399))

(declare-fun m!977401 () Bool)

(assert (=> b!1057562 m!977401))

(declare-fun m!977403 () Bool)

(assert (=> b!1057562 m!977403))

(declare-fun m!977405 () Bool)

(assert (=> b!1057562 m!977405))

(declare-fun m!977407 () Bool)

(assert (=> b!1057562 m!977407))

(declare-fun m!977409 () Bool)

(assert (=> b!1057564 m!977409))

(declare-fun m!977411 () Bool)

(assert (=> b!1057567 m!977411))

(check-sat (not b!1057561) (not b!1057566) (not b!1057567) (not start!93344) (not b!1057562) (not b!1057569) (not b!1057564))
(check-sat)
