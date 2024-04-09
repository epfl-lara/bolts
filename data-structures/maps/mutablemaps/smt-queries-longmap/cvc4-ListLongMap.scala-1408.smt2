; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27314 () Bool)

(assert start!27314)

(declare-fun b!282886 () Bool)

(declare-fun e!179512 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14121 0))(
  ( (array!14122 (arr!6702 (Array (_ BitVec 32) (_ BitVec 64))) (size!7054 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14121)

(assert (=> b!282886 (= e!179512 (not (or (bvsge startIndex!26 (bvsub (size!7054 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvslt (bvsub (size!7054 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!7054 a!3325) startIndex!26)))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14121 (_ BitVec 32)) Bool)

(assert (=> b!282886 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9005 0))(
  ( (Unit!9006) )
))
(declare-fun lt!139843 () Unit!9005)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14121 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9005)

(assert (=> b!282886 (= lt!139843 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!139842 () array!14121)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1871 0))(
  ( (MissingZero!1871 (index!9654 (_ BitVec 32))) (Found!1871 (index!9655 (_ BitVec 32))) (Intermediate!1871 (undefined!2683 Bool) (index!9656 (_ BitVec 32)) (x!27829 (_ BitVec 32))) (Undefined!1871) (MissingVacant!1871 (index!9657 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14121 (_ BitVec 32)) SeekEntryResult!1871)

(assert (=> b!282886 (= (seekEntryOrOpen!0 (select (arr!6702 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6702 a!3325) i!1267 k!2581) startIndex!26) lt!139842 mask!3868))))

(declare-fun lt!139840 () Unit!9005)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14121 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9005)

(assert (=> b!282886 (= lt!139840 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4531 0))(
  ( (Nil!4528) (Cons!4527 (h!5197 (_ BitVec 64)) (t!9621 List!4531)) )
))
(declare-fun arrayNoDuplicates!0 (array!14121 (_ BitVec 32) List!4531) Bool)

(assert (=> b!282886 (arrayNoDuplicates!0 lt!139842 #b00000000000000000000000000000000 Nil!4528)))

(declare-fun lt!139844 () Unit!9005)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14121 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4531) Unit!9005)

(assert (=> b!282886 (= lt!139844 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4528))))

(declare-fun b!282887 () Bool)

(declare-fun e!179515 () Bool)

(assert (=> b!282887 (= e!179515 e!179512)))

(declare-fun res!145994 () Bool)

(assert (=> b!282887 (=> (not res!145994) (not e!179512))))

(assert (=> b!282887 (= res!145994 (not (= startIndex!26 i!1267)))))

(assert (=> b!282887 (= lt!139842 (array!14122 (store (arr!6702 a!3325) i!1267 k!2581) (size!7054 a!3325)))))

(declare-fun b!282889 () Bool)

(declare-fun res!146001 () Bool)

(declare-fun e!179513 () Bool)

(assert (=> b!282889 (=> (not res!146001) (not e!179513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282889 (= res!146001 (validKeyInArray!0 k!2581))))

(declare-fun b!282890 () Bool)

(declare-fun res!145998 () Bool)

(assert (=> b!282890 (=> (not res!145998) (not e!179512))))

(assert (=> b!282890 (= res!145998 (validKeyInArray!0 (select (arr!6702 a!3325) startIndex!26)))))

(declare-fun b!282891 () Bool)

(assert (=> b!282891 (= e!179513 e!179515)))

(declare-fun res!145997 () Bool)

(assert (=> b!282891 (=> (not res!145997) (not e!179515))))

(declare-fun lt!139841 () SeekEntryResult!1871)

(assert (=> b!282891 (= res!145997 (or (= lt!139841 (MissingZero!1871 i!1267)) (= lt!139841 (MissingVacant!1871 i!1267))))))

(assert (=> b!282891 (= lt!139841 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282892 () Bool)

(declare-fun res!145996 () Bool)

(assert (=> b!282892 (=> (not res!145996) (not e!179515))))

(assert (=> b!282892 (= res!145996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282893 () Bool)

(declare-fun res!145999 () Bool)

(assert (=> b!282893 (=> (not res!145999) (not e!179513))))

(assert (=> b!282893 (= res!145999 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4528))))

(declare-fun b!282894 () Bool)

(declare-fun res!145993 () Bool)

(assert (=> b!282894 (=> (not res!145993) (not e!179513))))

(declare-fun arrayContainsKey!0 (array!14121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282894 (= res!145993 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282888 () Bool)

(declare-fun res!145995 () Bool)

(assert (=> b!282888 (=> (not res!145995) (not e!179513))))

(assert (=> b!282888 (= res!145995 (and (= (size!7054 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7054 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7054 a!3325))))))

(declare-fun res!146000 () Bool)

(assert (=> start!27314 (=> (not res!146000) (not e!179513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27314 (= res!146000 (validMask!0 mask!3868))))

(assert (=> start!27314 e!179513))

(declare-fun array_inv!4656 (array!14121) Bool)

(assert (=> start!27314 (array_inv!4656 a!3325)))

(assert (=> start!27314 true))

(assert (= (and start!27314 res!146000) b!282888))

(assert (= (and b!282888 res!145995) b!282889))

(assert (= (and b!282889 res!146001) b!282893))

(assert (= (and b!282893 res!145999) b!282894))

(assert (= (and b!282894 res!145993) b!282891))

(assert (= (and b!282891 res!145997) b!282892))

(assert (= (and b!282892 res!145996) b!282887))

(assert (= (and b!282887 res!145994) b!282890))

(assert (= (and b!282890 res!145998) b!282886))

(declare-fun m!297661 () Bool)

(assert (=> b!282890 m!297661))

(assert (=> b!282890 m!297661))

(declare-fun m!297663 () Bool)

(assert (=> b!282890 m!297663))

(declare-fun m!297665 () Bool)

(assert (=> b!282889 m!297665))

(declare-fun m!297667 () Bool)

(assert (=> start!27314 m!297667))

(declare-fun m!297669 () Bool)

(assert (=> start!27314 m!297669))

(declare-fun m!297671 () Bool)

(assert (=> b!282893 m!297671))

(declare-fun m!297673 () Bool)

(assert (=> b!282886 m!297673))

(declare-fun m!297675 () Bool)

(assert (=> b!282886 m!297675))

(declare-fun m!297677 () Bool)

(assert (=> b!282886 m!297677))

(assert (=> b!282886 m!297677))

(declare-fun m!297679 () Bool)

(assert (=> b!282886 m!297679))

(declare-fun m!297681 () Bool)

(assert (=> b!282886 m!297681))

(declare-fun m!297683 () Bool)

(assert (=> b!282886 m!297683))

(assert (=> b!282886 m!297661))

(declare-fun m!297685 () Bool)

(assert (=> b!282886 m!297685))

(declare-fun m!297687 () Bool)

(assert (=> b!282886 m!297687))

(assert (=> b!282886 m!297661))

(declare-fun m!297689 () Bool)

(assert (=> b!282886 m!297689))

(declare-fun m!297691 () Bool)

(assert (=> b!282892 m!297691))

(declare-fun m!297693 () Bool)

(assert (=> b!282891 m!297693))

(declare-fun m!297695 () Bool)

(assert (=> b!282894 m!297695))

(assert (=> b!282887 m!297681))

(push 1)

(assert (not start!27314))

(assert (not b!282892))

(assert (not b!282889))

(assert (not b!282891))

(assert (not b!282886))

(assert (not b!282893))

(assert (not b!282890))

(assert (not b!282894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

