; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26152 () Bool)

(assert start!26152)

(declare-fun b!269835 () Bool)

(declare-fun e!174012 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!269835 (= e!174012 (not (bvsge mask!3868 #b00000000000000000000000000000000)))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((array!13238 0))(
  ( (array!13239 (arr!6268 (Array (_ BitVec 32) (_ BitVec 64))) (size!6620 (_ BitVec 32))) )
))
(declare-fun lt!135377 () array!13238)

(declare-datatypes ((SeekEntryResult!1437 0))(
  ( (MissingZero!1437 (index!7918 (_ BitVec 32))) (Found!1437 (index!7919 (_ BitVec 32))) (Intermediate!1437 (undefined!2249 Bool) (index!7920 (_ BitVec 32)) (x!26234 (_ BitVec 32))) (Undefined!1437) (MissingVacant!1437 (index!7921 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13238 (_ BitVec 32)) SeekEntryResult!1437)

(assert (=> b!269835 (= (seekEntryOrOpen!0 k!2581 lt!135377 mask!3868) (Found!1437 i!1267))))

(declare-fun a!3325 () array!13238)

(declare-datatypes ((Unit!8385 0))(
  ( (Unit!8386) )
))
(declare-fun lt!135375 () Unit!8385)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13238 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8385)

(assert (=> b!269835 (= lt!135375 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135374 () Unit!8385)

(declare-fun e!174015 () Unit!8385)

(assert (=> b!269835 (= lt!135374 e!174015)))

(declare-fun c!45476 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269835 (= c!45476 (bvslt startIndex!26 (bvsub (size!6620 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269836 () Bool)

(declare-fun res!133985 () Bool)

(declare-fun e!174016 () Bool)

(assert (=> b!269836 (=> (not res!133985) (not e!174016))))

(assert (=> b!269836 (= res!133985 (and (= (size!6620 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6620 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6620 a!3325))))))

(declare-fun b!269837 () Bool)

(declare-fun lt!135376 () Unit!8385)

(assert (=> b!269837 (= e!174015 lt!135376)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13238 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8385)

(assert (=> b!269837 (= lt!135376 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13238 (_ BitVec 32)) Bool)

(assert (=> b!269837 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135377 mask!3868)))

(declare-fun b!269838 () Bool)

(declare-fun Unit!8387 () Unit!8385)

(assert (=> b!269838 (= e!174015 Unit!8387)))

(declare-fun b!269839 () Bool)

(declare-fun res!133990 () Bool)

(assert (=> b!269839 (=> (not res!133990) (not e!174016))))

(declare-fun arrayContainsKey!0 (array!13238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269839 (= res!133990 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269840 () Bool)

(declare-fun res!133989 () Bool)

(declare-fun e!174014 () Bool)

(assert (=> b!269840 (=> (not res!133989) (not e!174014))))

(assert (=> b!269840 (= res!133989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133987 () Bool)

(assert (=> start!26152 (=> (not res!133987) (not e!174016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26152 (= res!133987 (validMask!0 mask!3868))))

(assert (=> start!26152 e!174016))

(declare-fun array_inv!4222 (array!13238) Bool)

(assert (=> start!26152 (array_inv!4222 a!3325)))

(assert (=> start!26152 true))

(declare-fun b!269841 () Bool)

(assert (=> b!269841 (= e!174016 e!174014)))

(declare-fun res!133991 () Bool)

(assert (=> b!269841 (=> (not res!133991) (not e!174014))))

(declare-fun lt!135373 () SeekEntryResult!1437)

(assert (=> b!269841 (= res!133991 (or (= lt!135373 (MissingZero!1437 i!1267)) (= lt!135373 (MissingVacant!1437 i!1267))))))

(assert (=> b!269841 (= lt!135373 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269842 () Bool)

(declare-fun res!133992 () Bool)

(assert (=> b!269842 (=> (not res!133992) (not e!174016))))

(declare-datatypes ((List!4097 0))(
  ( (Nil!4094) (Cons!4093 (h!4760 (_ BitVec 64)) (t!9187 List!4097)) )
))
(declare-fun arrayNoDuplicates!0 (array!13238 (_ BitVec 32) List!4097) Bool)

(assert (=> b!269842 (= res!133992 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4094))))

(declare-fun b!269843 () Bool)

(assert (=> b!269843 (= e!174014 e!174012)))

(declare-fun res!133986 () Bool)

(assert (=> b!269843 (=> (not res!133986) (not e!174012))))

(assert (=> b!269843 (= res!133986 (= startIndex!26 i!1267))))

(assert (=> b!269843 (= lt!135377 (array!13239 (store (arr!6268 a!3325) i!1267 k!2581) (size!6620 a!3325)))))

(declare-fun b!269844 () Bool)

(declare-fun res!133988 () Bool)

(assert (=> b!269844 (=> (not res!133988) (not e!174016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269844 (= res!133988 (validKeyInArray!0 k!2581))))

(assert (= (and start!26152 res!133987) b!269836))

(assert (= (and b!269836 res!133985) b!269844))

(assert (= (and b!269844 res!133988) b!269842))

(assert (= (and b!269842 res!133992) b!269839))

(assert (= (and b!269839 res!133990) b!269841))

(assert (= (and b!269841 res!133991) b!269840))

(assert (= (and b!269840 res!133989) b!269843))

(assert (= (and b!269843 res!133986) b!269835))

(assert (= (and b!269835 c!45476) b!269837))

(assert (= (and b!269835 (not c!45476)) b!269838))

(declare-fun m!285601 () Bool)

(assert (=> b!269840 m!285601))

(declare-fun m!285603 () Bool)

(assert (=> b!269844 m!285603))

(declare-fun m!285605 () Bool)

(assert (=> b!269841 m!285605))

(declare-fun m!285607 () Bool)

(assert (=> b!269843 m!285607))

(declare-fun m!285609 () Bool)

(assert (=> b!269837 m!285609))

(declare-fun m!285611 () Bool)

(assert (=> b!269837 m!285611))

(declare-fun m!285613 () Bool)

(assert (=> b!269835 m!285613))

(declare-fun m!285615 () Bool)

(assert (=> b!269835 m!285615))

(declare-fun m!285617 () Bool)

(assert (=> start!26152 m!285617))

(declare-fun m!285619 () Bool)

(assert (=> start!26152 m!285619))

(declare-fun m!285621 () Bool)

(assert (=> b!269842 m!285621))

(declare-fun m!285623 () Bool)

(assert (=> b!269839 m!285623))

(push 1)

