; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26432 () Bool)

(assert start!26432)

(declare-fun b!274072 () Bool)

(declare-fun res!138100 () Bool)

(declare-fun e!175538 () Bool)

(assert (=> b!274072 (=> (not res!138100) (not e!175538))))

(declare-datatypes ((array!13518 0))(
  ( (array!13519 (arr!6408 (Array (_ BitVec 32) (_ BitVec 64))) (size!6760 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13518)

(declare-datatypes ((List!4237 0))(
  ( (Nil!4234) (Cons!4233 (h!4900 (_ BitVec 64)) (t!9327 List!4237)) )
))
(declare-fun arrayNoDuplicates!0 (array!13518 (_ BitVec 32) List!4237) Bool)

(assert (=> b!274072 (= res!138100 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4234))))

(declare-fun b!274074 () Bool)

(declare-fun res!138106 () Bool)

(assert (=> b!274074 (=> (not res!138106) (not e!175538))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274074 (= res!138106 (validKeyInArray!0 k!2581))))

(declare-fun b!274075 () Bool)

(declare-fun e!175540 () Bool)

(assert (=> b!274075 (= e!175538 e!175540)))

(declare-fun res!138102 () Bool)

(assert (=> b!274075 (=> (not res!138102) (not e!175540))))

(declare-datatypes ((SeekEntryResult!1577 0))(
  ( (MissingZero!1577 (index!8478 (_ BitVec 32))) (Found!1577 (index!8479 (_ BitVec 32))) (Intermediate!1577 (undefined!2389 Bool) (index!8480 (_ BitVec 32)) (x!26742 (_ BitVec 32))) (Undefined!1577) (MissingVacant!1577 (index!8481 (_ BitVec 32))) )
))
(declare-fun lt!136782 () SeekEntryResult!1577)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274075 (= res!138102 (or (= lt!136782 (MissingZero!1577 i!1267)) (= lt!136782 (MissingVacant!1577 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13518 (_ BitVec 32)) SeekEntryResult!1577)

(assert (=> b!274075 (= lt!136782 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274076 () Bool)

(declare-fun res!138101 () Bool)

(assert (=> b!274076 (=> (not res!138101) (not e!175538))))

(declare-fun arrayContainsKey!0 (array!13518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274076 (= res!138101 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274077 () Bool)

(declare-fun e!175537 () Bool)

(assert (=> b!274077 (= e!175537 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13518 (_ BitVec 32)) Bool)

(assert (=> b!274077 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8620 0))(
  ( (Unit!8621) )
))
(declare-fun lt!136784 () Unit!8620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8620)

(assert (=> b!274077 (= lt!136784 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136780 () array!13518)

(assert (=> b!274077 (= (seekEntryOrOpen!0 (select (arr!6408 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6408 a!3325) i!1267 k!2581) startIndex!26) lt!136780 mask!3868))))

(declare-fun lt!136783 () Unit!8620)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13518 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8620)

(assert (=> b!274077 (= lt!136783 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274077 (arrayNoDuplicates!0 lt!136780 #b00000000000000000000000000000000 Nil!4234)))

(declare-fun lt!136781 () Unit!8620)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13518 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4237) Unit!8620)

(assert (=> b!274077 (= lt!136781 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4234))))

(declare-fun b!274078 () Bool)

(assert (=> b!274078 (= e!175540 e!175537)))

(declare-fun res!138107 () Bool)

(assert (=> b!274078 (=> (not res!138107) (not e!175537))))

(assert (=> b!274078 (= res!138107 (not (= startIndex!26 i!1267)))))

(assert (=> b!274078 (= lt!136780 (array!13519 (store (arr!6408 a!3325) i!1267 k!2581) (size!6760 a!3325)))))

(declare-fun res!138104 () Bool)

(assert (=> start!26432 (=> (not res!138104) (not e!175538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26432 (= res!138104 (validMask!0 mask!3868))))

(assert (=> start!26432 e!175538))

(declare-fun array_inv!4362 (array!13518) Bool)

(assert (=> start!26432 (array_inv!4362 a!3325)))

(assert (=> start!26432 true))

(declare-fun b!274073 () Bool)

(declare-fun res!138103 () Bool)

(assert (=> b!274073 (=> (not res!138103) (not e!175537))))

(assert (=> b!274073 (= res!138103 (validKeyInArray!0 (select (arr!6408 a!3325) startIndex!26)))))

(declare-fun b!274079 () Bool)

(declare-fun res!138105 () Bool)

(assert (=> b!274079 (=> (not res!138105) (not e!175540))))

(assert (=> b!274079 (= res!138105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274080 () Bool)

(declare-fun res!138108 () Bool)

(assert (=> b!274080 (=> (not res!138108) (not e!175538))))

(assert (=> b!274080 (= res!138108 (and (= (size!6760 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6760 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6760 a!3325))))))

(assert (= (and start!26432 res!138104) b!274080))

(assert (= (and b!274080 res!138108) b!274074))

(assert (= (and b!274074 res!138106) b!274072))

(assert (= (and b!274072 res!138100) b!274076))

(assert (= (and b!274076 res!138101) b!274075))

(assert (= (and b!274075 res!138102) b!274079))

(assert (= (and b!274079 res!138105) b!274078))

(assert (= (and b!274078 res!138107) b!274073))

(assert (= (and b!274073 res!138103) b!274077))

(declare-fun m!289531 () Bool)

(assert (=> b!274074 m!289531))

(declare-fun m!289533 () Bool)

(assert (=> b!274075 m!289533))

(declare-fun m!289535 () Bool)

(assert (=> b!274076 m!289535))

(declare-fun m!289537 () Bool)

(assert (=> b!274077 m!289537))

(declare-fun m!289539 () Bool)

(assert (=> b!274077 m!289539))

(declare-fun m!289541 () Bool)

(assert (=> b!274077 m!289541))

(declare-fun m!289543 () Bool)

(assert (=> b!274077 m!289543))

(declare-fun m!289545 () Bool)

(assert (=> b!274077 m!289545))

(declare-fun m!289547 () Bool)

(assert (=> b!274077 m!289547))

(declare-fun m!289549 () Bool)

(assert (=> b!274077 m!289549))

(declare-fun m!289551 () Bool)

(assert (=> b!274077 m!289551))

(assert (=> b!274077 m!289539))

(declare-fun m!289553 () Bool)

(assert (=> b!274077 m!289553))

(assert (=> b!274077 m!289545))

(declare-fun m!289555 () Bool)

(assert (=> b!274077 m!289555))

(declare-fun m!289557 () Bool)

(assert (=> b!274072 m!289557))

(declare-fun m!289559 () Bool)

(assert (=> b!274079 m!289559))

(declare-fun m!289561 () Bool)

(assert (=> start!26432 m!289561))

(declare-fun m!289563 () Bool)

(assert (=> start!26432 m!289563))

(assert (=> b!274078 m!289541))

(assert (=> b!274073 m!289545))

(assert (=> b!274073 m!289545))

(declare-fun m!289565 () Bool)

(assert (=> b!274073 m!289565))

(push 1)

