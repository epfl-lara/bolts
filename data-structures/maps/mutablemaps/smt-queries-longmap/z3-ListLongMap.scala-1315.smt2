; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26460 () Bool)

(assert start!26460)

(declare-fun b!274482 () Bool)

(declare-fun res!138511 () Bool)

(declare-fun e!175740 () Bool)

(assert (=> b!274482 (=> (not res!138511) (not e!175740))))

(declare-datatypes ((array!13546 0))(
  ( (array!13547 (arr!6422 (Array (_ BitVec 32) (_ BitVec 64))) (size!6774 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13546)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!274482 (= res!138511 (and (= (size!6774 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6774 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6774 a!3325))))))

(declare-fun b!274483 () Bool)

(declare-fun res!138518 () Bool)

(declare-fun e!175738 () Bool)

(assert (=> b!274483 (=> (not res!138518) (not e!175738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274483 (= res!138518 (validKeyInArray!0 (select (arr!6422 a!3325) startIndex!26)))))

(declare-fun b!274484 () Bool)

(declare-fun e!175737 () Bool)

(assert (=> b!274484 (= e!175737 e!175738)))

(declare-fun res!138514 () Bool)

(assert (=> b!274484 (=> (not res!138514) (not e!175738))))

(assert (=> b!274484 (= res!138514 (not (= startIndex!26 i!1267)))))

(declare-fun lt!137024 () array!13546)

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!274484 (= lt!137024 (array!13547 (store (arr!6422 a!3325) i!1267 k0!2581) (size!6774 a!3325)))))

(declare-fun b!274485 () Bool)

(declare-fun e!175741 () Bool)

(assert (=> b!274485 (= e!175741 (bvsle startIndex!26 (size!6774 a!3325)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13546 (_ BitVec 32)) Bool)

(assert (=> b!274485 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!137024 mask!3868)))

(declare-datatypes ((Unit!8648 0))(
  ( (Unit!8649) )
))
(declare-fun lt!137026 () Unit!8648)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13546 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8648)

(assert (=> b!274485 (= lt!137026 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274486 () Bool)

(declare-fun res!138519 () Bool)

(assert (=> b!274486 (=> (not res!138519) (not e!175737))))

(assert (=> b!274486 (= res!138519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274487 () Bool)

(assert (=> b!274487 (= e!175738 (not e!175741))))

(declare-fun res!138515 () Bool)

(assert (=> b!274487 (=> res!138515 e!175741)))

(assert (=> b!274487 (= res!138515 (or (bvsge startIndex!26 (bvsub (size!6774 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!274487 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!137023 () Unit!8648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8648)

(assert (=> b!274487 (= lt!137023 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1591 0))(
  ( (MissingZero!1591 (index!8534 (_ BitVec 32))) (Found!1591 (index!8535 (_ BitVec 32))) (Intermediate!1591 (undefined!2403 Bool) (index!8536 (_ BitVec 32)) (x!26796 (_ BitVec 32))) (Undefined!1591) (MissingVacant!1591 (index!8537 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13546 (_ BitVec 32)) SeekEntryResult!1591)

(assert (=> b!274487 (= (seekEntryOrOpen!0 (select (arr!6422 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6422 a!3325) i!1267 k0!2581) startIndex!26) lt!137024 mask!3868))))

(declare-fun lt!137027 () Unit!8648)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13546 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8648)

(assert (=> b!274487 (= lt!137027 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4251 0))(
  ( (Nil!4248) (Cons!4247 (h!4914 (_ BitVec 64)) (t!9341 List!4251)) )
))
(declare-fun arrayNoDuplicates!0 (array!13546 (_ BitVec 32) List!4251) Bool)

(assert (=> b!274487 (arrayNoDuplicates!0 lt!137024 #b00000000000000000000000000000000 Nil!4248)))

(declare-fun lt!137022 () Unit!8648)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13546 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4251) Unit!8648)

(assert (=> b!274487 (= lt!137022 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4248))))

(declare-fun b!274488 () Bool)

(declare-fun res!138517 () Bool)

(assert (=> b!274488 (=> (not res!138517) (not e!175740))))

(assert (=> b!274488 (= res!138517 (validKeyInArray!0 k0!2581))))

(declare-fun res!138513 () Bool)

(assert (=> start!26460 (=> (not res!138513) (not e!175740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26460 (= res!138513 (validMask!0 mask!3868))))

(assert (=> start!26460 e!175740))

(declare-fun array_inv!4376 (array!13546) Bool)

(assert (=> start!26460 (array_inv!4376 a!3325)))

(assert (=> start!26460 true))

(declare-fun b!274489 () Bool)

(declare-fun res!138516 () Bool)

(assert (=> b!274489 (=> (not res!138516) (not e!175740))))

(assert (=> b!274489 (= res!138516 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4248))))

(declare-fun b!274490 () Bool)

(assert (=> b!274490 (= e!175740 e!175737)))

(declare-fun res!138510 () Bool)

(assert (=> b!274490 (=> (not res!138510) (not e!175737))))

(declare-fun lt!137025 () SeekEntryResult!1591)

(assert (=> b!274490 (= res!138510 (or (= lt!137025 (MissingZero!1591 i!1267)) (= lt!137025 (MissingVacant!1591 i!1267))))))

(assert (=> b!274490 (= lt!137025 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274491 () Bool)

(declare-fun res!138512 () Bool)

(assert (=> b!274491 (=> (not res!138512) (not e!175740))))

(declare-fun arrayContainsKey!0 (array!13546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274491 (= res!138512 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26460 res!138513) b!274482))

(assert (= (and b!274482 res!138511) b!274488))

(assert (= (and b!274488 res!138517) b!274489))

(assert (= (and b!274489 res!138516) b!274491))

(assert (= (and b!274491 res!138512) b!274490))

(assert (= (and b!274490 res!138510) b!274486))

(assert (= (and b!274486 res!138519) b!274484))

(assert (= (and b!274484 res!138514) b!274483))

(assert (= (and b!274483 res!138518) b!274487))

(assert (= (and b!274487 (not res!138515)) b!274485))

(declare-fun m!290075 () Bool)

(assert (=> b!274484 m!290075))

(declare-fun m!290077 () Bool)

(assert (=> b!274483 m!290077))

(assert (=> b!274483 m!290077))

(declare-fun m!290079 () Bool)

(assert (=> b!274483 m!290079))

(declare-fun m!290081 () Bool)

(assert (=> b!274491 m!290081))

(declare-fun m!290083 () Bool)

(assert (=> b!274489 m!290083))

(declare-fun m!290085 () Bool)

(assert (=> b!274487 m!290085))

(declare-fun m!290087 () Bool)

(assert (=> b!274487 m!290087))

(declare-fun m!290089 () Bool)

(assert (=> b!274487 m!290089))

(declare-fun m!290091 () Bool)

(assert (=> b!274487 m!290091))

(assert (=> b!274487 m!290087))

(assert (=> b!274487 m!290075))

(declare-fun m!290093 () Bool)

(assert (=> b!274487 m!290093))

(assert (=> b!274487 m!290077))

(declare-fun m!290095 () Bool)

(assert (=> b!274487 m!290095))

(declare-fun m!290097 () Bool)

(assert (=> b!274487 m!290097))

(assert (=> b!274487 m!290077))

(declare-fun m!290099 () Bool)

(assert (=> b!274487 m!290099))

(declare-fun m!290101 () Bool)

(assert (=> start!26460 m!290101))

(declare-fun m!290103 () Bool)

(assert (=> start!26460 m!290103))

(declare-fun m!290105 () Bool)

(assert (=> b!274490 m!290105))

(declare-fun m!290107 () Bool)

(assert (=> b!274488 m!290107))

(declare-fun m!290109 () Bool)

(assert (=> b!274486 m!290109))

(declare-fun m!290111 () Bool)

(assert (=> b!274485 m!290111))

(declare-fun m!290113 () Bool)

(assert (=> b!274485 m!290113))

(check-sat (not b!274487) (not b!274489) (not b!274485) (not b!274483) (not b!274491) (not start!26460) (not b!274486) (not b!274488) (not b!274490))
(check-sat)
