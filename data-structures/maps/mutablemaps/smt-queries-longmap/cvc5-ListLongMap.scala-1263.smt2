; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26146 () Bool)

(assert start!26146)

(declare-fun res!133914 () Bool)

(declare-fun e!173967 () Bool)

(assert (=> start!26146 (=> (not res!133914) (not e!173967))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26146 (= res!133914 (validMask!0 mask!3868))))

(assert (=> start!26146 e!173967))

(declare-datatypes ((array!13232 0))(
  ( (array!13233 (arr!6265 (Array (_ BitVec 32) (_ BitVec 64))) (size!6617 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13232)

(declare-fun array_inv!4219 (array!13232) Bool)

(assert (=> start!26146 (array_inv!4219 a!3325)))

(assert (=> start!26146 true))

(declare-fun b!269745 () Bool)

(declare-fun e!173970 () Bool)

(assert (=> b!269745 (= e!173970 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!135331 () array!13232)

(declare-datatypes ((SeekEntryResult!1434 0))(
  ( (MissingZero!1434 (index!7906 (_ BitVec 32))) (Found!1434 (index!7907 (_ BitVec 32))) (Intermediate!1434 (undefined!2246 Bool) (index!7908 (_ BitVec 32)) (x!26223 (_ BitVec 32))) (Undefined!1434) (MissingVacant!1434 (index!7909 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13232 (_ BitVec 32)) SeekEntryResult!1434)

(assert (=> b!269745 (= (seekEntryOrOpen!0 k!2581 lt!135331 mask!3868) (Found!1434 i!1267))))

(declare-datatypes ((Unit!8376 0))(
  ( (Unit!8377) )
))
(declare-fun lt!135332 () Unit!8376)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13232 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8376)

(assert (=> b!269745 (= lt!135332 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135328 () Unit!8376)

(declare-fun e!173968 () Unit!8376)

(assert (=> b!269745 (= lt!135328 e!173968)))

(declare-fun c!45467 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269745 (= c!45467 (bvslt startIndex!26 (bvsub (size!6617 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269746 () Bool)

(declare-fun res!133917 () Bool)

(assert (=> b!269746 (=> (not res!133917) (not e!173967))))

(declare-fun arrayContainsKey!0 (array!13232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269746 (= res!133917 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269747 () Bool)

(declare-fun res!133915 () Bool)

(assert (=> b!269747 (=> (not res!133915) (not e!173967))))

(declare-datatypes ((List!4094 0))(
  ( (Nil!4091) (Cons!4090 (h!4757 (_ BitVec 64)) (t!9184 List!4094)) )
))
(declare-fun arrayNoDuplicates!0 (array!13232 (_ BitVec 32) List!4094) Bool)

(assert (=> b!269747 (= res!133915 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4091))))

(declare-fun b!269748 () Bool)

(declare-fun res!133913 () Bool)

(assert (=> b!269748 (=> (not res!133913) (not e!173967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269748 (= res!133913 (validKeyInArray!0 k!2581))))

(declare-fun b!269749 () Bool)

(declare-fun lt!135330 () Unit!8376)

(assert (=> b!269749 (= e!173968 lt!135330)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13232 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8376)

(assert (=> b!269749 (= lt!135330 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13232 (_ BitVec 32)) Bool)

(assert (=> b!269749 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135331 mask!3868)))

(declare-fun b!269750 () Bool)

(declare-fun Unit!8378 () Unit!8376)

(assert (=> b!269750 (= e!173968 Unit!8378)))

(declare-fun b!269751 () Bool)

(declare-fun res!133920 () Bool)

(declare-fun e!173969 () Bool)

(assert (=> b!269751 (=> (not res!133920) (not e!173969))))

(assert (=> b!269751 (= res!133920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269752 () Bool)

(declare-fun res!133916 () Bool)

(assert (=> b!269752 (=> (not res!133916) (not e!173967))))

(assert (=> b!269752 (= res!133916 (and (= (size!6617 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6617 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6617 a!3325))))))

(declare-fun b!269753 () Bool)

(assert (=> b!269753 (= e!173969 e!173970)))

(declare-fun res!133918 () Bool)

(assert (=> b!269753 (=> (not res!133918) (not e!173970))))

(assert (=> b!269753 (= res!133918 (= startIndex!26 i!1267))))

(assert (=> b!269753 (= lt!135331 (array!13233 (store (arr!6265 a!3325) i!1267 k!2581) (size!6617 a!3325)))))

(declare-fun b!269754 () Bool)

(assert (=> b!269754 (= e!173967 e!173969)))

(declare-fun res!133919 () Bool)

(assert (=> b!269754 (=> (not res!133919) (not e!173969))))

(declare-fun lt!135329 () SeekEntryResult!1434)

(assert (=> b!269754 (= res!133919 (or (= lt!135329 (MissingZero!1434 i!1267)) (= lt!135329 (MissingVacant!1434 i!1267))))))

(assert (=> b!269754 (= lt!135329 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26146 res!133914) b!269752))

(assert (= (and b!269752 res!133916) b!269748))

(assert (= (and b!269748 res!133913) b!269747))

(assert (= (and b!269747 res!133915) b!269746))

(assert (= (and b!269746 res!133917) b!269754))

(assert (= (and b!269754 res!133919) b!269751))

(assert (= (and b!269751 res!133920) b!269753))

(assert (= (and b!269753 res!133918) b!269745))

(assert (= (and b!269745 c!45467) b!269749))

(assert (= (and b!269745 (not c!45467)) b!269750))

(declare-fun m!285529 () Bool)

(assert (=> b!269746 m!285529))

(declare-fun m!285531 () Bool)

(assert (=> b!269748 m!285531))

(declare-fun m!285533 () Bool)

(assert (=> b!269751 m!285533))

(declare-fun m!285535 () Bool)

(assert (=> b!269745 m!285535))

(declare-fun m!285537 () Bool)

(assert (=> b!269745 m!285537))

(declare-fun m!285539 () Bool)

(assert (=> b!269754 m!285539))

(declare-fun m!285541 () Bool)

(assert (=> b!269747 m!285541))

(declare-fun m!285543 () Bool)

(assert (=> b!269753 m!285543))

(declare-fun m!285545 () Bool)

(assert (=> b!269749 m!285545))

(declare-fun m!285547 () Bool)

(assert (=> b!269749 m!285547))

(declare-fun m!285549 () Bool)

(assert (=> start!26146 m!285549))

(declare-fun m!285551 () Bool)

(assert (=> start!26146 m!285551))

(push 1)

