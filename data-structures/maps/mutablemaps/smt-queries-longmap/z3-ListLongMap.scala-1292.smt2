; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26322 () Bool)

(assert start!26322)

(declare-fun b!272587 () Bool)

(declare-fun res!136621 () Bool)

(declare-fun e!174901 () Bool)

(assert (=> b!272587 (=> (not res!136621) (not e!174901))))

(declare-datatypes ((array!13408 0))(
  ( (array!13409 (arr!6353 (Array (_ BitVec 32) (_ BitVec 64))) (size!6705 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13408)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272587 (= res!136621 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272588 () Bool)

(declare-fun e!174900 () Bool)

(assert (=> b!272588 (= e!174901 e!174900)))

(declare-fun res!136616 () Bool)

(assert (=> b!272588 (=> (not res!136616) (not e!174900))))

(declare-datatypes ((SeekEntryResult!1522 0))(
  ( (MissingZero!1522 (index!8258 (_ BitVec 32))) (Found!1522 (index!8259 (_ BitVec 32))) (Intermediate!1522 (undefined!2334 Bool) (index!8260 (_ BitVec 32)) (x!26543 (_ BitVec 32))) (Undefined!1522) (MissingVacant!1522 (index!8261 (_ BitVec 32))) )
))
(declare-fun lt!136067 () SeekEntryResult!1522)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272588 (= res!136616 (or (= lt!136067 (MissingZero!1522 i!1267)) (= lt!136067 (MissingVacant!1522 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13408 (_ BitVec 32)) SeekEntryResult!1522)

(assert (=> b!272588 (= lt!136067 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!136619 () Bool)

(assert (=> start!26322 (=> (not res!136619) (not e!174901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26322 (= res!136619 (validMask!0 mask!3868))))

(assert (=> start!26322 e!174901))

(declare-fun array_inv!4307 (array!13408) Bool)

(assert (=> start!26322 (array_inv!4307 a!3325)))

(assert (=> start!26322 true))

(declare-fun b!272589 () Bool)

(declare-fun res!136620 () Bool)

(assert (=> b!272589 (=> (not res!136620) (not e!174900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13408 (_ BitVec 32)) Bool)

(assert (=> b!272589 (= res!136620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272590 () Bool)

(declare-fun res!136618 () Bool)

(assert (=> b!272590 (=> (not res!136618) (not e!174901))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272590 (= res!136618 (and (= (size!6705 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6705 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6705 a!3325))))))

(declare-fun b!272591 () Bool)

(declare-fun res!136622 () Bool)

(assert (=> b!272591 (=> (not res!136622) (not e!174901))))

(declare-datatypes ((List!4182 0))(
  ( (Nil!4179) (Cons!4178 (h!4845 (_ BitVec 64)) (t!9272 List!4182)) )
))
(declare-fun arrayNoDuplicates!0 (array!13408 (_ BitVec 32) List!4182) Bool)

(assert (=> b!272591 (= res!136622 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4179))))

(declare-fun b!272592 () Bool)

(assert (=> b!272592 (= e!174900 (not true))))

(assert (=> b!272592 (arrayNoDuplicates!0 (array!13409 (store (arr!6353 a!3325) i!1267 k0!2581) (size!6705 a!3325)) #b00000000000000000000000000000000 Nil!4179)))

(declare-datatypes ((Unit!8510 0))(
  ( (Unit!8511) )
))
(declare-fun lt!136066 () Unit!8510)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13408 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4182) Unit!8510)

(assert (=> b!272592 (= lt!136066 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4179))))

(declare-fun b!272593 () Bool)

(declare-fun res!136623 () Bool)

(assert (=> b!272593 (=> (not res!136623) (not e!174900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272593 (= res!136623 (validKeyInArray!0 (select (arr!6353 a!3325) startIndex!26)))))

(declare-fun b!272594 () Bool)

(declare-fun res!136615 () Bool)

(assert (=> b!272594 (=> (not res!136615) (not e!174901))))

(assert (=> b!272594 (= res!136615 (validKeyInArray!0 k0!2581))))

(declare-fun b!272595 () Bool)

(declare-fun res!136617 () Bool)

(assert (=> b!272595 (=> (not res!136617) (not e!174900))))

(assert (=> b!272595 (= res!136617 (not (= startIndex!26 i!1267)))))

(assert (= (and start!26322 res!136619) b!272590))

(assert (= (and b!272590 res!136618) b!272594))

(assert (= (and b!272594 res!136615) b!272591))

(assert (= (and b!272591 res!136622) b!272587))

(assert (= (and b!272587 res!136621) b!272588))

(assert (= (and b!272588 res!136616) b!272589))

(assert (= (and b!272589 res!136620) b!272595))

(assert (= (and b!272595 res!136617) b!272593))

(assert (= (and b!272593 res!136623) b!272592))

(declare-fun m!287707 () Bool)

(assert (=> b!272594 m!287707))

(declare-fun m!287709 () Bool)

(assert (=> b!272589 m!287709))

(declare-fun m!287711 () Bool)

(assert (=> start!26322 m!287711))

(declare-fun m!287713 () Bool)

(assert (=> start!26322 m!287713))

(declare-fun m!287715 () Bool)

(assert (=> b!272592 m!287715))

(declare-fun m!287717 () Bool)

(assert (=> b!272592 m!287717))

(declare-fun m!287719 () Bool)

(assert (=> b!272592 m!287719))

(declare-fun m!287721 () Bool)

(assert (=> b!272587 m!287721))

(declare-fun m!287723 () Bool)

(assert (=> b!272588 m!287723))

(declare-fun m!287725 () Bool)

(assert (=> b!272593 m!287725))

(assert (=> b!272593 m!287725))

(declare-fun m!287727 () Bool)

(assert (=> b!272593 m!287727))

(declare-fun m!287729 () Bool)

(assert (=> b!272591 m!287729))

(check-sat (not b!272587) (not b!272593) (not start!26322) (not b!272589) (not b!272588) (not b!272592) (not b!272591) (not b!272594))
(check-sat)
