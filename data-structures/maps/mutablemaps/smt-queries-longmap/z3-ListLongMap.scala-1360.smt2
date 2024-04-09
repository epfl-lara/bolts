; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26730 () Bool)

(assert start!26730)

(declare-fun b!277434 () Bool)

(declare-fun res!141366 () Bool)

(declare-fun e!177049 () Bool)

(assert (=> b!277434 (=> (not res!141366) (not e!177049))))

(declare-datatypes ((array!13816 0))(
  ( (array!13817 (arr!6557 (Array (_ BitVec 32) (_ BitVec 64))) (size!6909 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13816)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13816 (_ BitVec 32)) Bool)

(assert (=> b!277434 (= res!141366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277435 () Bool)

(declare-fun e!177048 () Bool)

(assert (=> b!277435 (= e!177048 e!177049)))

(declare-fun res!141365 () Bool)

(assert (=> b!277435 (=> (not res!141365) (not e!177049))))

(declare-datatypes ((SeekEntryResult!1726 0))(
  ( (MissingZero!1726 (index!9074 (_ BitVec 32))) (Found!1726 (index!9075 (_ BitVec 32))) (Intermediate!1726 (undefined!2538 Bool) (index!9076 (_ BitVec 32)) (x!27291 (_ BitVec 32))) (Undefined!1726) (MissingVacant!1726 (index!9077 (_ BitVec 32))) )
))
(declare-fun lt!137972 () SeekEntryResult!1726)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277435 (= res!141365 (or (= lt!137972 (MissingZero!1726 i!1267)) (= lt!137972 (MissingVacant!1726 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13816 (_ BitVec 32)) SeekEntryResult!1726)

(assert (=> b!277435 (= lt!137972 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277436 () Bool)

(declare-datatypes ((Unit!8748 0))(
  ( (Unit!8749) )
))
(declare-fun e!177046 () Unit!8748)

(declare-fun Unit!8750 () Unit!8748)

(assert (=> b!277436 (= e!177046 Unit!8750)))

(declare-fun b!277437 () Bool)

(declare-fun res!141368 () Bool)

(assert (=> b!277437 (=> (not res!141368) (not e!177048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277437 (= res!141368 (validKeyInArray!0 k0!2581))))

(declare-fun b!277438 () Bool)

(declare-fun lt!137971 () Unit!8748)

(assert (=> b!277438 (= e!177046 lt!137971)))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13816 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8748)

(assert (=> b!277438 (= lt!137971 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277438 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13817 (store (arr!6557 a!3325) i!1267 k0!2581) (size!6909 a!3325)) mask!3868)))

(declare-fun b!277439 () Bool)

(assert (=> b!277439 (= e!177049 false)))

(declare-fun lt!137970 () Unit!8748)

(assert (=> b!277439 (= lt!137970 e!177046)))

(declare-fun c!45587 () Bool)

(assert (=> b!277439 (= c!45587 (bvslt startIndex!26 (bvsub (size!6909 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277441 () Bool)

(declare-fun res!141363 () Bool)

(assert (=> b!277441 (=> (not res!141363) (not e!177048))))

(declare-datatypes ((List!4386 0))(
  ( (Nil!4383) (Cons!4382 (h!5049 (_ BitVec 64)) (t!9476 List!4386)) )
))
(declare-fun arrayNoDuplicates!0 (array!13816 (_ BitVec 32) List!4386) Bool)

(assert (=> b!277441 (= res!141363 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4383))))

(declare-fun b!277442 () Bool)

(declare-fun res!141362 () Bool)

(assert (=> b!277442 (=> (not res!141362) (not e!177048))))

(declare-fun arrayContainsKey!0 (array!13816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277442 (= res!141362 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277443 () Bool)

(declare-fun res!141367 () Bool)

(assert (=> b!277443 (=> (not res!141367) (not e!177048))))

(assert (=> b!277443 (= res!141367 (and (= (size!6909 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6909 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6909 a!3325))))))

(declare-fun b!277440 () Bool)

(declare-fun res!141369 () Bool)

(assert (=> b!277440 (=> (not res!141369) (not e!177049))))

(assert (=> b!277440 (= res!141369 (= startIndex!26 i!1267))))

(declare-fun res!141364 () Bool)

(assert (=> start!26730 (=> (not res!141364) (not e!177048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26730 (= res!141364 (validMask!0 mask!3868))))

(assert (=> start!26730 e!177048))

(declare-fun array_inv!4511 (array!13816) Bool)

(assert (=> start!26730 (array_inv!4511 a!3325)))

(assert (=> start!26730 true))

(assert (= (and start!26730 res!141364) b!277443))

(assert (= (and b!277443 res!141367) b!277437))

(assert (= (and b!277437 res!141368) b!277441))

(assert (= (and b!277441 res!141363) b!277442))

(assert (= (and b!277442 res!141362) b!277435))

(assert (= (and b!277435 res!141365) b!277434))

(assert (= (and b!277434 res!141366) b!277440))

(assert (= (and b!277440 res!141369) b!277439))

(assert (= (and b!277439 c!45587) b!277438))

(assert (= (and b!277439 (not c!45587)) b!277436))

(declare-fun m!292509 () Bool)

(assert (=> start!26730 m!292509))

(declare-fun m!292511 () Bool)

(assert (=> start!26730 m!292511))

(declare-fun m!292513 () Bool)

(assert (=> b!277437 m!292513))

(declare-fun m!292515 () Bool)

(assert (=> b!277438 m!292515))

(declare-fun m!292517 () Bool)

(assert (=> b!277438 m!292517))

(declare-fun m!292519 () Bool)

(assert (=> b!277438 m!292519))

(declare-fun m!292521 () Bool)

(assert (=> b!277442 m!292521))

(declare-fun m!292523 () Bool)

(assert (=> b!277435 m!292523))

(declare-fun m!292525 () Bool)

(assert (=> b!277434 m!292525))

(declare-fun m!292527 () Bool)

(assert (=> b!277441 m!292527))

(check-sat (not b!277434) (not start!26730) (not b!277437) (not b!277441) (not b!277442) (not b!277435) (not b!277438))
(check-sat)
