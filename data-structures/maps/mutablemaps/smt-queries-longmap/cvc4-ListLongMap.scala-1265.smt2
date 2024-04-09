; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26162 () Bool)

(assert start!26162)

(declare-fun b!269985 () Bool)

(declare-fun res!134112 () Bool)

(declare-fun e!174091 () Bool)

(assert (=> b!269985 (=> (not res!134112) (not e!174091))))

(declare-datatypes ((array!13248 0))(
  ( (array!13249 (arr!6273 (Array (_ BitVec 32) (_ BitVec 64))) (size!6625 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13248)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269985 (= res!134112 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269986 () Bool)

(declare-datatypes ((Unit!8400 0))(
  ( (Unit!8401) )
))
(declare-fun e!174089 () Unit!8400)

(declare-fun Unit!8402 () Unit!8400)

(assert (=> b!269986 (= e!174089 Unit!8402)))

(declare-fun b!269987 () Bool)

(declare-fun e!174090 () Bool)

(assert (=> b!269987 (= e!174091 e!174090)))

(declare-fun res!134109 () Bool)

(assert (=> b!269987 (=> (not res!134109) (not e!174090))))

(declare-datatypes ((SeekEntryResult!1442 0))(
  ( (MissingZero!1442 (index!7938 (_ BitVec 32))) (Found!1442 (index!7939 (_ BitVec 32))) (Intermediate!1442 (undefined!2254 Bool) (index!7940 (_ BitVec 32)) (x!26247 (_ BitVec 32))) (Undefined!1442) (MissingVacant!1442 (index!7941 (_ BitVec 32))) )
))
(declare-fun lt!135452 () SeekEntryResult!1442)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269987 (= res!134109 (or (= lt!135452 (MissingZero!1442 i!1267)) (= lt!135452 (MissingVacant!1442 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13248 (_ BitVec 32)) SeekEntryResult!1442)

(assert (=> b!269987 (= lt!135452 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269988 () Bool)

(declare-fun res!134106 () Bool)

(assert (=> b!269988 (=> (not res!134106) (not e!174091))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269988 (= res!134106 (and (= (size!6625 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6625 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6625 a!3325))))))

(declare-fun b!269989 () Bool)

(declare-fun e!174087 () Bool)

(assert (=> b!269989 (= e!174090 e!174087)))

(declare-fun res!134110 () Bool)

(assert (=> b!269989 (=> (not res!134110) (not e!174087))))

(assert (=> b!269989 (= res!134110 (= startIndex!26 i!1267))))

(declare-fun lt!135448 () array!13248)

(assert (=> b!269989 (= lt!135448 (array!13249 (store (arr!6273 a!3325) i!1267 k!2581) (size!6625 a!3325)))))

(declare-fun b!269990 () Bool)

(declare-fun lt!135450 () Unit!8400)

(assert (=> b!269990 (= e!174089 lt!135450)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13248 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8400)

(assert (=> b!269990 (= lt!135450 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13248 (_ BitVec 32)) Bool)

(assert (=> b!269990 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135448 mask!3868)))

(declare-fun b!269991 () Bool)

(assert (=> b!269991 (= e!174087 (not true))))

(assert (=> b!269991 (= (seekEntryOrOpen!0 k!2581 lt!135448 mask!3868) (Found!1442 i!1267))))

(declare-fun lt!135449 () Unit!8400)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13248 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8400)

(assert (=> b!269991 (= lt!135449 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135451 () Unit!8400)

(assert (=> b!269991 (= lt!135451 e!174089)))

(declare-fun c!45491 () Bool)

(assert (=> b!269991 (= c!45491 (bvslt startIndex!26 (bvsub (size!6625 a!3325) #b00000000000000000000000000000001)))))

(declare-fun res!134108 () Bool)

(assert (=> start!26162 (=> (not res!134108) (not e!174091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26162 (= res!134108 (validMask!0 mask!3868))))

(assert (=> start!26162 e!174091))

(declare-fun array_inv!4227 (array!13248) Bool)

(assert (=> start!26162 (array_inv!4227 a!3325)))

(assert (=> start!26162 true))

(declare-fun b!269992 () Bool)

(declare-fun res!134111 () Bool)

(assert (=> b!269992 (=> (not res!134111) (not e!174091))))

(declare-datatypes ((List!4102 0))(
  ( (Nil!4099) (Cons!4098 (h!4765 (_ BitVec 64)) (t!9192 List!4102)) )
))
(declare-fun arrayNoDuplicates!0 (array!13248 (_ BitVec 32) List!4102) Bool)

(assert (=> b!269992 (= res!134111 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4099))))

(declare-fun b!269993 () Bool)

(declare-fun res!134107 () Bool)

(assert (=> b!269993 (=> (not res!134107) (not e!174090))))

(assert (=> b!269993 (= res!134107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269994 () Bool)

(declare-fun res!134105 () Bool)

(assert (=> b!269994 (=> (not res!134105) (not e!174091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269994 (= res!134105 (validKeyInArray!0 k!2581))))

(assert (= (and start!26162 res!134108) b!269988))

(assert (= (and b!269988 res!134106) b!269994))

(assert (= (and b!269994 res!134105) b!269992))

(assert (= (and b!269992 res!134111) b!269985))

(assert (= (and b!269985 res!134112) b!269987))

(assert (= (and b!269987 res!134109) b!269993))

(assert (= (and b!269993 res!134107) b!269989))

(assert (= (and b!269989 res!134110) b!269991))

(assert (= (and b!269991 c!45491) b!269990))

(assert (= (and b!269991 (not c!45491)) b!269986))

(declare-fun m!285721 () Bool)

(assert (=> b!269985 m!285721))

(declare-fun m!285723 () Bool)

(assert (=> b!269991 m!285723))

(declare-fun m!285725 () Bool)

(assert (=> b!269991 m!285725))

(declare-fun m!285727 () Bool)

(assert (=> b!269987 m!285727))

(declare-fun m!285729 () Bool)

(assert (=> b!269993 m!285729))

(declare-fun m!285731 () Bool)

(assert (=> b!269989 m!285731))

(declare-fun m!285733 () Bool)

(assert (=> start!26162 m!285733))

(declare-fun m!285735 () Bool)

(assert (=> start!26162 m!285735))

(declare-fun m!285737 () Bool)

(assert (=> b!269994 m!285737))

(declare-fun m!285739 () Bool)

(assert (=> b!269990 m!285739))

(declare-fun m!285741 () Bool)

(assert (=> b!269990 m!285741))

(declare-fun m!285743 () Bool)

(assert (=> b!269992 m!285743))

(push 1)

(assert (not b!269987))

