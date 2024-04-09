; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26574 () Bool)

(assert start!26574)

(declare-fun res!139757 () Bool)

(declare-fun e!176295 () Bool)

(assert (=> start!26574 (=> (not res!139757) (not e!176295))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26574 (= res!139757 (validMask!0 mask!3868))))

(assert (=> start!26574 e!176295))

(declare-datatypes ((array!13660 0))(
  ( (array!13661 (arr!6479 (Array (_ BitVec 32) (_ BitVec 64))) (size!6831 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13660)

(declare-fun array_inv!4433 (array!13660) Bool)

(assert (=> start!26574 (array_inv!4433 a!3325)))

(assert (=> start!26574 true))

(declare-fun b!275724 () Bool)

(declare-fun res!139761 () Bool)

(declare-fun e!176294 () Bool)

(assert (=> b!275724 (=> (not res!139761) (not e!176294))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275724 (= res!139761 (and (bvslt startIndex!26 (bvsub (size!6831 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275725 () Bool)

(declare-fun res!139752 () Bool)

(assert (=> b!275725 (=> (not res!139752) (not e!176294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13660 (_ BitVec 32)) Bool)

(assert (=> b!275725 (= res!139752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275726 () Bool)

(declare-fun res!139756 () Bool)

(assert (=> b!275726 (=> (not res!139756) (not e!176295))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275726 (= res!139756 (and (= (size!6831 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6831 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6831 a!3325))))))

(declare-fun b!275727 () Bool)

(declare-fun res!139753 () Bool)

(assert (=> b!275727 (=> (not res!139753) (not e!176294))))

(assert (=> b!275727 (= res!139753 (not (= startIndex!26 i!1267)))))

(declare-fun b!275728 () Bool)

(declare-fun res!139754 () Bool)

(assert (=> b!275728 (=> (not res!139754) (not e!176295))))

(declare-datatypes ((List!4308 0))(
  ( (Nil!4305) (Cons!4304 (h!4971 (_ BitVec 64)) (t!9398 List!4308)) )
))
(declare-fun arrayNoDuplicates!0 (array!13660 (_ BitVec 32) List!4308) Bool)

(assert (=> b!275728 (= res!139754 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4305))))

(declare-fun b!275729 () Bool)

(assert (=> b!275729 (= e!176294 (not true))))

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!275729 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13661 (store (arr!6479 a!3325) i!1267 k0!2581) (size!6831 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8690 0))(
  ( (Unit!8691) )
))
(declare-fun lt!137488 () Unit!8690)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13660 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8690)

(assert (=> b!275729 (= lt!137488 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275730 () Bool)

(declare-fun res!139758 () Bool)

(assert (=> b!275730 (=> (not res!139758) (not e!176294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275730 (= res!139758 (not (validKeyInArray!0 (select (arr!6479 a!3325) startIndex!26))))))

(declare-fun b!275731 () Bool)

(declare-fun res!139760 () Bool)

(assert (=> b!275731 (=> (not res!139760) (not e!176295))))

(declare-fun arrayContainsKey!0 (array!13660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275731 (= res!139760 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275732 () Bool)

(assert (=> b!275732 (= e!176295 e!176294)))

(declare-fun res!139755 () Bool)

(assert (=> b!275732 (=> (not res!139755) (not e!176294))))

(declare-datatypes ((SeekEntryResult!1648 0))(
  ( (MissingZero!1648 (index!8762 (_ BitVec 32))) (Found!1648 (index!8763 (_ BitVec 32))) (Intermediate!1648 (undefined!2460 Bool) (index!8764 (_ BitVec 32)) (x!27005 (_ BitVec 32))) (Undefined!1648) (MissingVacant!1648 (index!8765 (_ BitVec 32))) )
))
(declare-fun lt!137489 () SeekEntryResult!1648)

(assert (=> b!275732 (= res!139755 (or (= lt!137489 (MissingZero!1648 i!1267)) (= lt!137489 (MissingVacant!1648 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13660 (_ BitVec 32)) SeekEntryResult!1648)

(assert (=> b!275732 (= lt!137489 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275733 () Bool)

(declare-fun res!139759 () Bool)

(assert (=> b!275733 (=> (not res!139759) (not e!176295))))

(assert (=> b!275733 (= res!139759 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26574 res!139757) b!275726))

(assert (= (and b!275726 res!139756) b!275733))

(assert (= (and b!275733 res!139759) b!275728))

(assert (= (and b!275728 res!139754) b!275731))

(assert (= (and b!275731 res!139760) b!275732))

(assert (= (and b!275732 res!139755) b!275725))

(assert (= (and b!275725 res!139752) b!275727))

(assert (= (and b!275727 res!139753) b!275730))

(assert (= (and b!275730 res!139758) b!275724))

(assert (= (and b!275724 res!139761) b!275729))

(declare-fun m!291259 () Bool)

(assert (=> start!26574 m!291259))

(declare-fun m!291261 () Bool)

(assert (=> start!26574 m!291261))

(declare-fun m!291263 () Bool)

(assert (=> b!275728 m!291263))

(declare-fun m!291265 () Bool)

(assert (=> b!275731 m!291265))

(declare-fun m!291267 () Bool)

(assert (=> b!275725 m!291267))

(declare-fun m!291269 () Bool)

(assert (=> b!275730 m!291269))

(assert (=> b!275730 m!291269))

(declare-fun m!291271 () Bool)

(assert (=> b!275730 m!291271))

(declare-fun m!291273 () Bool)

(assert (=> b!275733 m!291273))

(declare-fun m!291275 () Bool)

(assert (=> b!275729 m!291275))

(declare-fun m!291277 () Bool)

(assert (=> b!275729 m!291277))

(declare-fun m!291279 () Bool)

(assert (=> b!275729 m!291279))

(declare-fun m!291281 () Bool)

(assert (=> b!275732 m!291281))

(check-sat (not b!275731) (not start!26574) (not b!275728) (not b!275729) (not b!275732) (not b!275730) (not b!275733) (not b!275725))
(check-sat)
