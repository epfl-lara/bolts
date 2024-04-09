; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27320 () Bool)

(assert start!27320)

(declare-fun b!282975 () Bool)

(declare-fun res!146085 () Bool)

(declare-fun e!179560 () Bool)

(assert (=> b!282975 (=> (not res!146085) (not e!179560))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282975 (= res!146085 (validKeyInArray!0 k!2581))))

(declare-fun res!146084 () Bool)

(assert (=> start!27320 (=> (not res!146084) (not e!179560))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27320 (= res!146084 (validMask!0 mask!3868))))

(assert (=> start!27320 e!179560))

(declare-datatypes ((array!14127 0))(
  ( (array!14128 (arr!6705 (Array (_ BitVec 32) (_ BitVec 64))) (size!7057 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14127)

(declare-fun array_inv!4659 (array!14127) Bool)

(assert (=> start!27320 (array_inv!4659 a!3325)))

(assert (=> start!27320 true))

(declare-fun b!282976 () Bool)

(declare-fun e!179558 () Bool)

(declare-fun e!179556 () Bool)

(assert (=> b!282976 (= e!179558 e!179556)))

(declare-fun res!146090 () Bool)

(assert (=> b!282976 (=> (not res!146090) (not e!179556))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282976 (= res!146090 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139894 () array!14127)

(assert (=> b!282976 (= lt!139894 (array!14128 (store (arr!6705 a!3325) i!1267 k!2581) (size!7057 a!3325)))))

(declare-fun b!282977 () Bool)

(declare-fun res!146088 () Bool)

(assert (=> b!282977 (=> (not res!146088) (not e!179560))))

(declare-fun arrayContainsKey!0 (array!14127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282977 (= res!146088 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282978 () Bool)

(assert (=> b!282978 (= e!179560 e!179558)))

(declare-fun res!146086 () Bool)

(assert (=> b!282978 (=> (not res!146086) (not e!179558))))

(declare-datatypes ((SeekEntryResult!1874 0))(
  ( (MissingZero!1874 (index!9666 (_ BitVec 32))) (Found!1874 (index!9667 (_ BitVec 32))) (Intermediate!1874 (undefined!2686 Bool) (index!9668 (_ BitVec 32)) (x!27840 (_ BitVec 32))) (Undefined!1874) (MissingVacant!1874 (index!9669 (_ BitVec 32))) )
))
(declare-fun lt!139896 () SeekEntryResult!1874)

(assert (=> b!282978 (= res!146086 (or (= lt!139896 (MissingZero!1874 i!1267)) (= lt!139896 (MissingVacant!1874 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14127 (_ BitVec 32)) SeekEntryResult!1874)

(assert (=> b!282978 (= lt!139896 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282979 () Bool)

(declare-fun e!179559 () Bool)

(assert (=> b!282979 (= e!179556 (not e!179559))))

(declare-fun res!146082 () Bool)

(assert (=> b!282979 (=> res!146082 e!179559)))

(assert (=> b!282979 (= res!146082 (or (bvsge startIndex!26 (bvsub (size!7057 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14127 (_ BitVec 32)) Bool)

(assert (=> b!282979 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9011 0))(
  ( (Unit!9012) )
))
(declare-fun lt!139898 () Unit!9011)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14127 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9011)

(assert (=> b!282979 (= lt!139898 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!282979 (= (seekEntryOrOpen!0 (select (arr!6705 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6705 a!3325) i!1267 k!2581) startIndex!26) lt!139894 mask!3868))))

(declare-fun lt!139897 () Unit!9011)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14127 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9011)

(assert (=> b!282979 (= lt!139897 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4534 0))(
  ( (Nil!4531) (Cons!4530 (h!5200 (_ BitVec 64)) (t!9624 List!4534)) )
))
(declare-fun arrayNoDuplicates!0 (array!14127 (_ BitVec 32) List!4534) Bool)

(assert (=> b!282979 (arrayNoDuplicates!0 lt!139894 #b00000000000000000000000000000000 Nil!4531)))

(declare-fun lt!139893 () Unit!9011)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14127 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4534) Unit!9011)

(assert (=> b!282979 (= lt!139893 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4531))))

(declare-fun b!282980 () Bool)

(declare-fun res!146087 () Bool)

(assert (=> b!282980 (=> (not res!146087) (not e!179560))))

(assert (=> b!282980 (= res!146087 (and (= (size!7057 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7057 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7057 a!3325))))))

(declare-fun b!282981 () Bool)

(declare-fun res!146083 () Bool)

(assert (=> b!282981 (=> (not res!146083) (not e!179556))))

(assert (=> b!282981 (= res!146083 (validKeyInArray!0 (select (arr!6705 a!3325) startIndex!26)))))

(declare-fun b!282982 () Bool)

(declare-fun res!146089 () Bool)

(assert (=> b!282982 (=> (not res!146089) (not e!179560))))

(assert (=> b!282982 (= res!146089 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4531))))

(declare-fun b!282983 () Bool)

(assert (=> b!282983 (= e!179559 true)))

(assert (=> b!282983 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!139894 mask!3868)))

(declare-fun lt!139895 () Unit!9011)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14127 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9011)

(assert (=> b!282983 (= lt!139895 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!282984 () Bool)

(declare-fun res!146091 () Bool)

(assert (=> b!282984 (=> (not res!146091) (not e!179558))))

(assert (=> b!282984 (= res!146091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27320 res!146084) b!282980))

(assert (= (and b!282980 res!146087) b!282975))

(assert (= (and b!282975 res!146085) b!282982))

(assert (= (and b!282982 res!146089) b!282977))

(assert (= (and b!282977 res!146088) b!282978))

(assert (= (and b!282978 res!146086) b!282984))

(assert (= (and b!282984 res!146091) b!282976))

(assert (= (and b!282976 res!146090) b!282981))

(assert (= (and b!282981 res!146083) b!282979))

(assert (= (and b!282979 (not res!146082)) b!282983))

(declare-fun m!297777 () Bool)

(assert (=> b!282984 m!297777))

(declare-fun m!297779 () Bool)

(assert (=> b!282979 m!297779))

(declare-fun m!297781 () Bool)

(assert (=> b!282979 m!297781))

(declare-fun m!297783 () Bool)

(assert (=> b!282979 m!297783))

(declare-fun m!297785 () Bool)

(assert (=> b!282979 m!297785))

(declare-fun m!297787 () Bool)

(assert (=> b!282979 m!297787))

(declare-fun m!297789 () Bool)

(assert (=> b!282979 m!297789))

(declare-fun m!297791 () Bool)

(assert (=> b!282979 m!297791))

(declare-fun m!297793 () Bool)

(assert (=> b!282979 m!297793))

(assert (=> b!282979 m!297785))

(declare-fun m!297795 () Bool)

(assert (=> b!282979 m!297795))

(declare-fun m!297797 () Bool)

(assert (=> b!282979 m!297797))

(assert (=> b!282979 m!297791))

(declare-fun m!297799 () Bool)

(assert (=> b!282978 m!297799))

(declare-fun m!297801 () Bool)

(assert (=> b!282983 m!297801))

(declare-fun m!297803 () Bool)

(assert (=> b!282983 m!297803))

(declare-fun m!297805 () Bool)

(assert (=> start!27320 m!297805))

(declare-fun m!297807 () Bool)

(assert (=> start!27320 m!297807))

(assert (=> b!282981 m!297785))

(assert (=> b!282981 m!297785))

(declare-fun m!297809 () Bool)

(assert (=> b!282981 m!297809))

(assert (=> b!282976 m!297781))

(declare-fun m!297811 () Bool)

(assert (=> b!282975 m!297811))

(declare-fun m!297813 () Bool)

(assert (=> b!282977 m!297813))

(declare-fun m!297815 () Bool)

(assert (=> b!282982 m!297815))

(push 1)

(assert (not b!282978))

(assert (not b!282982))

(assert (not b!282981))

(assert (not b!282983))

