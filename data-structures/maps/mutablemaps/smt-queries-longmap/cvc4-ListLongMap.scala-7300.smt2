; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93340 () Bool)

(assert start!93340)

(declare-fun b!1057507 () Bool)

(declare-fun res!706276 () Bool)

(declare-fun e!601485 () Bool)

(assert (=> b!1057507 (=> (not res!706276) (not e!601485))))

(declare-datatypes ((array!66687 0))(
  ( (array!66688 (arr!32061 (Array (_ BitVec 32) (_ BitVec 64))) (size!32598 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66687)

(declare-datatypes ((List!22504 0))(
  ( (Nil!22501) (Cons!22500 (h!23709 (_ BitVec 64)) (t!31818 List!22504)) )
))
(declare-fun arrayNoDuplicates!0 (array!66687 (_ BitVec 32) List!22504) Bool)

(assert (=> b!1057507 (= res!706276 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22501))))

(declare-fun b!1057508 () Bool)

(declare-fun res!706274 () Bool)

(assert (=> b!1057508 (=> (not res!706274) (not e!601485))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057508 (= res!706274 (= (select (arr!32061 a!3488) i!1381) k!2747))))

(declare-fun b!1057510 () Bool)

(declare-fun e!601480 () Bool)

(declare-fun e!601483 () Bool)

(assert (=> b!1057510 (= e!601480 e!601483)))

(declare-fun res!706282 () Bool)

(assert (=> b!1057510 (=> (not res!706282) (not e!601483))))

(declare-fun lt!466490 () (_ BitVec 32))

(assert (=> b!1057510 (= res!706282 (not (= lt!466490 i!1381)))))

(declare-fun lt!466488 () array!66687)

(declare-fun arrayScanForKey!0 (array!66687 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057510 (= lt!466490 (arrayScanForKey!0 lt!466488 k!2747 #b00000000000000000000000000000000))))

(declare-fun e!601481 () Bool)

(declare-fun lt!466492 () (_ BitVec 32))

(declare-fun b!1057511 () Bool)

(assert (=> b!1057511 (= e!601481 (or (bvslt lt!466490 #b00000000000000000000000000000000) (bvslt lt!466492 (size!32598 a!3488))))))

(declare-fun arrayContainsKey!0 (array!66687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057511 (arrayContainsKey!0 a!3488 k!2747 lt!466492)))

(declare-datatypes ((Unit!34653 0))(
  ( (Unit!34654) )
))
(declare-fun lt!466491 () Unit!34653)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66687 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34653)

(assert (=> b!1057511 (= lt!466491 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466492))))

(assert (=> b!1057511 (= lt!466492 (bvadd #b00000000000000000000000000000001 lt!466490))))

(assert (=> b!1057511 (arrayNoDuplicates!0 a!3488 lt!466490 Nil!22501)))

(declare-fun lt!466489 () Unit!34653)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66687 (_ BitVec 32) (_ BitVec 32)) Unit!34653)

(assert (=> b!1057511 (= lt!466489 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466490))))

(declare-fun b!1057512 () Bool)

(assert (=> b!1057512 (= e!601485 e!601480)))

(declare-fun res!706280 () Bool)

(assert (=> b!1057512 (=> (not res!706280) (not e!601480))))

(assert (=> b!1057512 (= res!706280 (arrayContainsKey!0 lt!466488 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057512 (= lt!466488 (array!66688 (store (arr!32061 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32598 a!3488)))))

(declare-fun e!601479 () Bool)

(declare-fun b!1057513 () Bool)

(assert (=> b!1057513 (= e!601479 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057514 () Bool)

(declare-fun e!601482 () Bool)

(assert (=> b!1057514 (= e!601482 e!601479)))

(declare-fun res!706279 () Bool)

(assert (=> b!1057514 (=> res!706279 e!601479)))

(assert (=> b!1057514 (= res!706279 (or (bvsgt lt!466490 i!1381) (bvsle i!1381 lt!466490)))))

(declare-fun b!1057515 () Bool)

(declare-fun res!706277 () Bool)

(assert (=> b!1057515 (=> (not res!706277) (not e!601485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057515 (= res!706277 (validKeyInArray!0 k!2747))))

(declare-fun res!706281 () Bool)

(assert (=> start!93340 (=> (not res!706281) (not e!601485))))

(assert (=> start!93340 (= res!706281 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32598 a!3488)) (bvslt (size!32598 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93340 e!601485))

(assert (=> start!93340 true))

(declare-fun array_inv!24683 (array!66687) Bool)

(assert (=> start!93340 (array_inv!24683 a!3488)))

(declare-fun b!1057509 () Bool)

(assert (=> b!1057509 (= e!601483 (not e!601481))))

(declare-fun res!706278 () Bool)

(assert (=> b!1057509 (=> res!706278 e!601481)))

(assert (=> b!1057509 (= res!706278 (or (bvsgt lt!466490 i!1381) (bvsle i!1381 lt!466490)))))

(assert (=> b!1057509 e!601482))

(declare-fun res!706275 () Bool)

(assert (=> b!1057509 (=> (not res!706275) (not e!601482))))

(assert (=> b!1057509 (= res!706275 (= (select (store (arr!32061 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466490) k!2747))))

(assert (= (and start!93340 res!706281) b!1057507))

(assert (= (and b!1057507 res!706276) b!1057515))

(assert (= (and b!1057515 res!706277) b!1057508))

(assert (= (and b!1057508 res!706274) b!1057512))

(assert (= (and b!1057512 res!706280) b!1057510))

(assert (= (and b!1057510 res!706282) b!1057509))

(assert (= (and b!1057509 res!706275) b!1057514))

(assert (= (and b!1057514 (not res!706279)) b!1057513))

(assert (= (and b!1057509 (not res!706278)) b!1057511))

(declare-fun m!977335 () Bool)

(assert (=> b!1057513 m!977335))

(declare-fun m!977337 () Bool)

(assert (=> b!1057507 m!977337))

(declare-fun m!977339 () Bool)

(assert (=> b!1057508 m!977339))

(declare-fun m!977341 () Bool)

(assert (=> b!1057512 m!977341))

(declare-fun m!977343 () Bool)

(assert (=> b!1057512 m!977343))

(assert (=> b!1057509 m!977343))

(declare-fun m!977345 () Bool)

(assert (=> b!1057509 m!977345))

(declare-fun m!977347 () Bool)

(assert (=> b!1057515 m!977347))

(declare-fun m!977349 () Bool)

(assert (=> b!1057510 m!977349))

(declare-fun m!977351 () Bool)

(assert (=> start!93340 m!977351))

(declare-fun m!977353 () Bool)

(assert (=> b!1057511 m!977353))

(declare-fun m!977355 () Bool)

(assert (=> b!1057511 m!977355))

(declare-fun m!977357 () Bool)

(assert (=> b!1057511 m!977357))

(declare-fun m!977359 () Bool)

(assert (=> b!1057511 m!977359))

(push 1)

(assert (not start!93340))

(assert (not b!1057507))

(assert (not b!1057512))

(assert (not b!1057511))

(assert (not b!1057515))

(assert (not b!1057513))

(assert (not b!1057510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

