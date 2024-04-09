; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26568 () Bool)

(assert start!26568)

(declare-fun b!275634 () Bool)

(declare-fun e!176268 () Bool)

(declare-fun e!176267 () Bool)

(assert (=> b!275634 (= e!176268 e!176267)))

(declare-fun res!139663 () Bool)

(assert (=> b!275634 (=> (not res!139663) (not e!176267))))

(declare-datatypes ((SeekEntryResult!1645 0))(
  ( (MissingZero!1645 (index!8750 (_ BitVec 32))) (Found!1645 (index!8751 (_ BitVec 32))) (Intermediate!1645 (undefined!2457 Bool) (index!8752 (_ BitVec 32)) (x!26994 (_ BitVec 32))) (Undefined!1645) (MissingVacant!1645 (index!8753 (_ BitVec 32))) )
))
(declare-fun lt!137471 () SeekEntryResult!1645)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275634 (= res!139663 (or (= lt!137471 (MissingZero!1645 i!1267)) (= lt!137471 (MissingVacant!1645 i!1267))))))

(declare-datatypes ((array!13654 0))(
  ( (array!13655 (arr!6476 (Array (_ BitVec 32) (_ BitVec 64))) (size!6828 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13654)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13654 (_ BitVec 32)) SeekEntryResult!1645)

(assert (=> b!275634 (= lt!137471 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275635 () Bool)

(declare-fun res!139668 () Bool)

(assert (=> b!275635 (=> (not res!139668) (not e!176268))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275635 (= res!139668 (validKeyInArray!0 k0!2581))))

(declare-fun b!275636 () Bool)

(declare-fun res!139665 () Bool)

(assert (=> b!275636 (=> (not res!139665) (not e!176268))))

(declare-fun arrayContainsKey!0 (array!13654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275636 (= res!139665 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275637 () Bool)

(declare-fun res!139664 () Bool)

(assert (=> b!275637 (=> (not res!139664) (not e!176268))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275637 (= res!139664 (and (= (size!6828 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6828 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6828 a!3325))))))

(declare-fun b!275638 () Bool)

(declare-fun res!139671 () Bool)

(assert (=> b!275638 (=> (not res!139671) (not e!176267))))

(assert (=> b!275638 (= res!139671 (not (= startIndex!26 i!1267)))))

(declare-fun res!139662 () Bool)

(assert (=> start!26568 (=> (not res!139662) (not e!176268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26568 (= res!139662 (validMask!0 mask!3868))))

(assert (=> start!26568 e!176268))

(declare-fun array_inv!4430 (array!13654) Bool)

(assert (=> start!26568 (array_inv!4430 a!3325)))

(assert (=> start!26568 true))

(declare-fun b!275639 () Bool)

(declare-fun res!139669 () Bool)

(assert (=> b!275639 (=> (not res!139669) (not e!176267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13654 (_ BitVec 32)) Bool)

(assert (=> b!275639 (= res!139669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275640 () Bool)

(declare-fun res!139670 () Bool)

(assert (=> b!275640 (=> (not res!139670) (not e!176268))))

(declare-datatypes ((List!4305 0))(
  ( (Nil!4302) (Cons!4301 (h!4968 (_ BitVec 64)) (t!9395 List!4305)) )
))
(declare-fun arrayNoDuplicates!0 (array!13654 (_ BitVec 32) List!4305) Bool)

(assert (=> b!275640 (= res!139670 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4302))))

(declare-fun b!275641 () Bool)

(assert (=> b!275641 (= e!176267 (not true))))

(assert (=> b!275641 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13655 (store (arr!6476 a!3325) i!1267 k0!2581) (size!6828 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8684 0))(
  ( (Unit!8685) )
))
(declare-fun lt!137470 () Unit!8684)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13654 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8684)

(assert (=> b!275641 (= lt!137470 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275642 () Bool)

(declare-fun res!139666 () Bool)

(assert (=> b!275642 (=> (not res!139666) (not e!176267))))

(assert (=> b!275642 (= res!139666 (and (bvslt startIndex!26 (bvsub (size!6828 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275643 () Bool)

(declare-fun res!139667 () Bool)

(assert (=> b!275643 (=> (not res!139667) (not e!176267))))

(assert (=> b!275643 (= res!139667 (not (validKeyInArray!0 (select (arr!6476 a!3325) startIndex!26))))))

(assert (= (and start!26568 res!139662) b!275637))

(assert (= (and b!275637 res!139664) b!275635))

(assert (= (and b!275635 res!139668) b!275640))

(assert (= (and b!275640 res!139670) b!275636))

(assert (= (and b!275636 res!139665) b!275634))

(assert (= (and b!275634 res!139663) b!275639))

(assert (= (and b!275639 res!139669) b!275638))

(assert (= (and b!275638 res!139671) b!275643))

(assert (= (and b!275643 res!139667) b!275642))

(assert (= (and b!275642 res!139666) b!275641))

(declare-fun m!291187 () Bool)

(assert (=> b!275640 m!291187))

(declare-fun m!291189 () Bool)

(assert (=> b!275634 m!291189))

(declare-fun m!291191 () Bool)

(assert (=> b!275643 m!291191))

(assert (=> b!275643 m!291191))

(declare-fun m!291193 () Bool)

(assert (=> b!275643 m!291193))

(declare-fun m!291195 () Bool)

(assert (=> start!26568 m!291195))

(declare-fun m!291197 () Bool)

(assert (=> start!26568 m!291197))

(declare-fun m!291199 () Bool)

(assert (=> b!275639 m!291199))

(declare-fun m!291201 () Bool)

(assert (=> b!275636 m!291201))

(declare-fun m!291203 () Bool)

(assert (=> b!275641 m!291203))

(declare-fun m!291205 () Bool)

(assert (=> b!275641 m!291205))

(declare-fun m!291207 () Bool)

(assert (=> b!275641 m!291207))

(declare-fun m!291209 () Bool)

(assert (=> b!275635 m!291209))

(check-sat (not b!275635) (not b!275643) (not b!275634) (not b!275641) (not b!275636) (not start!26568) (not b!275639) (not b!275640))
(check-sat)
