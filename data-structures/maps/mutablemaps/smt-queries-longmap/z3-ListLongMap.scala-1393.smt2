; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27222 () Bool)

(assert start!27222)

(declare-fun b!281644 () Bool)

(declare-fun res!144754 () Bool)

(declare-fun e!178962 () Bool)

(assert (=> b!281644 (=> (not res!144754) (not e!178962))))

(declare-datatypes ((array!14029 0))(
  ( (array!14030 (arr!6656 (Array (_ BitVec 32) (_ BitVec 64))) (size!7008 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14029)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14029 (_ BitVec 32)) Bool)

(assert (=> b!281644 (= res!144754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281645 () Bool)

(declare-fun res!144757 () Bool)

(declare-fun e!178963 () Bool)

(assert (=> b!281645 (=> (not res!144757) (not e!178963))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281645 (= res!144757 (and (= (size!7008 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7008 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7008 a!3325))))))

(declare-fun b!281646 () Bool)

(declare-fun res!144758 () Bool)

(assert (=> b!281646 (=> (not res!144758) (not e!178963))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281646 (= res!144758 (validKeyInArray!0 k0!2581))))

(declare-fun res!144756 () Bool)

(assert (=> start!27222 (=> (not res!144756) (not e!178963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27222 (= res!144756 (validMask!0 mask!3868))))

(assert (=> start!27222 e!178963))

(declare-fun array_inv!4610 (array!14029) Bool)

(assert (=> start!27222 (array_inv!4610 a!3325)))

(assert (=> start!27222 true))

(declare-fun b!281647 () Bool)

(declare-fun e!178960 () Bool)

(assert (=> b!281647 (= e!178960 (not (bvsle #b00000000000000000000000000000000 (size!7008 a!3325))))))

(declare-fun lt!139174 () array!14029)

(declare-datatypes ((SeekEntryResult!1825 0))(
  ( (MissingZero!1825 (index!9470 (_ BitVec 32))) (Found!1825 (index!9471 (_ BitVec 32))) (Intermediate!1825 (undefined!2637 Bool) (index!9472 (_ BitVec 32)) (x!27663 (_ BitVec 32))) (Undefined!1825) (MissingVacant!1825 (index!9473 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14029 (_ BitVec 32)) SeekEntryResult!1825)

(assert (=> b!281647 (= (seekEntryOrOpen!0 (select (arr!6656 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6656 a!3325) i!1267 k0!2581) startIndex!26) lt!139174 mask!3868))))

(declare-datatypes ((Unit!8913 0))(
  ( (Unit!8914) )
))
(declare-fun lt!139172 () Unit!8913)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14029 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8913)

(assert (=> b!281647 (= lt!139172 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4485 0))(
  ( (Nil!4482) (Cons!4481 (h!5151 (_ BitVec 64)) (t!9575 List!4485)) )
))
(declare-fun arrayNoDuplicates!0 (array!14029 (_ BitVec 32) List!4485) Bool)

(assert (=> b!281647 (arrayNoDuplicates!0 lt!139174 #b00000000000000000000000000000000 Nil!4482)))

(declare-fun lt!139173 () Unit!8913)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14029 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4485) Unit!8913)

(assert (=> b!281647 (= lt!139173 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4482))))

(declare-fun b!281648 () Bool)

(declare-fun res!144759 () Bool)

(assert (=> b!281648 (=> (not res!144759) (not e!178963))))

(declare-fun arrayContainsKey!0 (array!14029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281648 (= res!144759 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281649 () Bool)

(assert (=> b!281649 (= e!178963 e!178962)))

(declare-fun res!144751 () Bool)

(assert (=> b!281649 (=> (not res!144751) (not e!178962))))

(declare-fun lt!139175 () SeekEntryResult!1825)

(assert (=> b!281649 (= res!144751 (or (= lt!139175 (MissingZero!1825 i!1267)) (= lt!139175 (MissingVacant!1825 i!1267))))))

(assert (=> b!281649 (= lt!139175 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281650 () Bool)

(assert (=> b!281650 (= e!178962 e!178960)))

(declare-fun res!144755 () Bool)

(assert (=> b!281650 (=> (not res!144755) (not e!178960))))

(assert (=> b!281650 (= res!144755 (not (= startIndex!26 i!1267)))))

(assert (=> b!281650 (= lt!139174 (array!14030 (store (arr!6656 a!3325) i!1267 k0!2581) (size!7008 a!3325)))))

(declare-fun b!281651 () Bool)

(declare-fun res!144753 () Bool)

(assert (=> b!281651 (=> (not res!144753) (not e!178960))))

(assert (=> b!281651 (= res!144753 (validKeyInArray!0 (select (arr!6656 a!3325) startIndex!26)))))

(declare-fun b!281652 () Bool)

(declare-fun res!144752 () Bool)

(assert (=> b!281652 (=> (not res!144752) (not e!178963))))

(assert (=> b!281652 (= res!144752 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4482))))

(assert (= (and start!27222 res!144756) b!281645))

(assert (= (and b!281645 res!144757) b!281646))

(assert (= (and b!281646 res!144758) b!281652))

(assert (= (and b!281652 res!144752) b!281648))

(assert (= (and b!281648 res!144759) b!281649))

(assert (= (and b!281649 res!144751) b!281644))

(assert (= (and b!281644 res!144754) b!281650))

(assert (= (and b!281650 res!144755) b!281651))

(assert (= (and b!281651 res!144753) b!281647))

(declare-fun m!296037 () Bool)

(assert (=> start!27222 m!296037))

(declare-fun m!296039 () Bool)

(assert (=> start!27222 m!296039))

(declare-fun m!296041 () Bool)

(assert (=> b!281652 m!296041))

(declare-fun m!296043 () Bool)

(assert (=> b!281648 m!296043))

(declare-fun m!296045 () Bool)

(assert (=> b!281651 m!296045))

(assert (=> b!281651 m!296045))

(declare-fun m!296047 () Bool)

(assert (=> b!281651 m!296047))

(declare-fun m!296049 () Bool)

(assert (=> b!281649 m!296049))

(declare-fun m!296051 () Bool)

(assert (=> b!281646 m!296051))

(declare-fun m!296053 () Bool)

(assert (=> b!281650 m!296053))

(declare-fun m!296055 () Bool)

(assert (=> b!281647 m!296055))

(declare-fun m!296057 () Bool)

(assert (=> b!281647 m!296057))

(assert (=> b!281647 m!296053))

(assert (=> b!281647 m!296045))

(declare-fun m!296059 () Bool)

(assert (=> b!281647 m!296059))

(declare-fun m!296061 () Bool)

(assert (=> b!281647 m!296061))

(assert (=> b!281647 m!296045))

(declare-fun m!296063 () Bool)

(assert (=> b!281647 m!296063))

(assert (=> b!281647 m!296055))

(declare-fun m!296065 () Bool)

(assert (=> b!281647 m!296065))

(declare-fun m!296067 () Bool)

(assert (=> b!281644 m!296067))

(check-sat (not start!27222) (not b!281651) (not b!281644) (not b!281646) (not b!281649) (not b!281648) (not b!281652) (not b!281647))
(check-sat)
