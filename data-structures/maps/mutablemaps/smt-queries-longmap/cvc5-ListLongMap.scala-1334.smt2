; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26572 () Bool)

(assert start!26572)

(declare-fun b!275694 () Bool)

(declare-fun e!176286 () Bool)

(assert (=> b!275694 (= e!176286 (not true))))

(declare-datatypes ((array!13658 0))(
  ( (array!13659 (arr!6478 (Array (_ BitVec 32) (_ BitVec 64))) (size!6830 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13658)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13658 (_ BitVec 32)) Bool)

(assert (=> b!275694 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13659 (store (arr!6478 a!3325) i!1267 k!2581) (size!6830 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8688 0))(
  ( (Unit!8689) )
))
(declare-fun lt!137483 () Unit!8688)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13658 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8688)

(assert (=> b!275694 (= lt!137483 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275695 () Bool)

(declare-fun res!139723 () Bool)

(declare-fun e!176287 () Bool)

(assert (=> b!275695 (=> (not res!139723) (not e!176287))))

(declare-fun arrayContainsKey!0 (array!13658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275695 (= res!139723 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275696 () Bool)

(declare-fun res!139722 () Bool)

(assert (=> b!275696 (=> (not res!139722) (not e!176286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275696 (= res!139722 (not (validKeyInArray!0 (select (arr!6478 a!3325) startIndex!26))))))

(declare-fun b!275697 () Bool)

(declare-fun res!139730 () Bool)

(assert (=> b!275697 (=> (not res!139730) (not e!176287))))

(assert (=> b!275697 (= res!139730 (validKeyInArray!0 k!2581))))

(declare-fun b!275698 () Bool)

(declare-fun res!139724 () Bool)

(assert (=> b!275698 (=> (not res!139724) (not e!176287))))

(declare-datatypes ((List!4307 0))(
  ( (Nil!4304) (Cons!4303 (h!4970 (_ BitVec 64)) (t!9397 List!4307)) )
))
(declare-fun arrayNoDuplicates!0 (array!13658 (_ BitVec 32) List!4307) Bool)

(assert (=> b!275698 (= res!139724 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4304))))

(declare-fun b!275699 () Bool)

(declare-fun res!139726 () Bool)

(assert (=> b!275699 (=> (not res!139726) (not e!176286))))

(assert (=> b!275699 (= res!139726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275700 () Bool)

(declare-fun res!139725 () Bool)

(assert (=> b!275700 (=> (not res!139725) (not e!176287))))

(assert (=> b!275700 (= res!139725 (and (= (size!6830 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6830 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6830 a!3325))))))

(declare-fun res!139727 () Bool)

(assert (=> start!26572 (=> (not res!139727) (not e!176287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26572 (= res!139727 (validMask!0 mask!3868))))

(assert (=> start!26572 e!176287))

(declare-fun array_inv!4432 (array!13658) Bool)

(assert (=> start!26572 (array_inv!4432 a!3325)))

(assert (=> start!26572 true))

(declare-fun b!275701 () Bool)

(declare-fun res!139728 () Bool)

(assert (=> b!275701 (=> (not res!139728) (not e!176286))))

(assert (=> b!275701 (= res!139728 (not (= startIndex!26 i!1267)))))

(declare-fun b!275702 () Bool)

(assert (=> b!275702 (= e!176287 e!176286)))

(declare-fun res!139729 () Bool)

(assert (=> b!275702 (=> (not res!139729) (not e!176286))))

(declare-datatypes ((SeekEntryResult!1647 0))(
  ( (MissingZero!1647 (index!8758 (_ BitVec 32))) (Found!1647 (index!8759 (_ BitVec 32))) (Intermediate!1647 (undefined!2459 Bool) (index!8760 (_ BitVec 32)) (x!27004 (_ BitVec 32))) (Undefined!1647) (MissingVacant!1647 (index!8761 (_ BitVec 32))) )
))
(declare-fun lt!137482 () SeekEntryResult!1647)

(assert (=> b!275702 (= res!139729 (or (= lt!137482 (MissingZero!1647 i!1267)) (= lt!137482 (MissingVacant!1647 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13658 (_ BitVec 32)) SeekEntryResult!1647)

(assert (=> b!275702 (= lt!137482 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275703 () Bool)

(declare-fun res!139731 () Bool)

(assert (=> b!275703 (=> (not res!139731) (not e!176286))))

(assert (=> b!275703 (= res!139731 (and (bvslt startIndex!26 (bvsub (size!6830 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (= (and start!26572 res!139727) b!275700))

(assert (= (and b!275700 res!139725) b!275697))

(assert (= (and b!275697 res!139730) b!275698))

(assert (= (and b!275698 res!139724) b!275695))

(assert (= (and b!275695 res!139723) b!275702))

(assert (= (and b!275702 res!139729) b!275699))

(assert (= (and b!275699 res!139726) b!275701))

(assert (= (and b!275701 res!139728) b!275696))

(assert (= (and b!275696 res!139722) b!275703))

(assert (= (and b!275703 res!139731) b!275694))

(declare-fun m!291235 () Bool)

(assert (=> b!275699 m!291235))

(declare-fun m!291237 () Bool)

(assert (=> b!275697 m!291237))

(declare-fun m!291239 () Bool)

(assert (=> b!275698 m!291239))

(declare-fun m!291241 () Bool)

(assert (=> b!275702 m!291241))

(declare-fun m!291243 () Bool)

(assert (=> start!26572 m!291243))

(declare-fun m!291245 () Bool)

(assert (=> start!26572 m!291245))

(declare-fun m!291247 () Bool)

(assert (=> b!275696 m!291247))

(assert (=> b!275696 m!291247))

(declare-fun m!291249 () Bool)

(assert (=> b!275696 m!291249))

(declare-fun m!291251 () Bool)

(assert (=> b!275694 m!291251))

(declare-fun m!291253 () Bool)

(assert (=> b!275694 m!291253))

(declare-fun m!291255 () Bool)

(assert (=> b!275694 m!291255))

(declare-fun m!291257 () Bool)

(assert (=> b!275695 m!291257))

(push 1)

