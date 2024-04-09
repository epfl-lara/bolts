; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26408 () Bool)

(assert start!26408)

(declare-fun b!273748 () Bool)

(declare-fun res!137783 () Bool)

(declare-fun e!175395 () Bool)

(assert (=> b!273748 (=> (not res!137783) (not e!175395))))

(declare-datatypes ((array!13494 0))(
  ( (array!13495 (arr!6396 (Array (_ BitVec 32) (_ BitVec 64))) (size!6748 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13494)

(declare-datatypes ((List!4225 0))(
  ( (Nil!4222) (Cons!4221 (h!4888 (_ BitVec 64)) (t!9315 List!4225)) )
))
(declare-fun arrayNoDuplicates!0 (array!13494 (_ BitVec 32) List!4225) Bool)

(assert (=> b!273748 (= res!137783 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4222))))

(declare-fun res!137776 () Bool)

(assert (=> start!26408 (=> (not res!137776) (not e!175395))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26408 (= res!137776 (validMask!0 mask!3868))))

(assert (=> start!26408 e!175395))

(declare-fun array_inv!4350 (array!13494) Bool)

(assert (=> start!26408 (array_inv!4350 a!3325)))

(assert (=> start!26408 true))

(declare-fun b!273749 () Bool)

(declare-fun res!137777 () Bool)

(assert (=> b!273749 (=> (not res!137777) (not e!175395))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273749 (= res!137777 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273750 () Bool)

(declare-fun res!137779 () Bool)

(assert (=> b!273750 (=> (not res!137779) (not e!175395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273750 (= res!137779 (validKeyInArray!0 k!2581))))

(declare-fun b!273751 () Bool)

(declare-fun e!175394 () Bool)

(assert (=> b!273751 (= e!175394 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13494 (_ BitVec 32)) Bool)

(assert (=> b!273751 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8596 0))(
  ( (Unit!8597) )
))
(declare-fun lt!136602 () Unit!8596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8596)

(assert (=> b!273751 (= lt!136602 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136603 () array!13494)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1565 0))(
  ( (MissingZero!1565 (index!8430 (_ BitVec 32))) (Found!1565 (index!8431 (_ BitVec 32))) (Intermediate!1565 (undefined!2377 Bool) (index!8432 (_ BitVec 32)) (x!26698 (_ BitVec 32))) (Undefined!1565) (MissingVacant!1565 (index!8433 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13494 (_ BitVec 32)) SeekEntryResult!1565)

(assert (=> b!273751 (= (seekEntryOrOpen!0 (select (arr!6396 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6396 a!3325) i!1267 k!2581) startIndex!26) lt!136603 mask!3868))))

(declare-fun lt!136601 () Unit!8596)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13494 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8596)

(assert (=> b!273751 (= lt!136601 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273751 (arrayNoDuplicates!0 lt!136603 #b00000000000000000000000000000000 Nil!4222)))

(declare-fun lt!136604 () Unit!8596)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13494 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4225) Unit!8596)

(assert (=> b!273751 (= lt!136604 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4222))))

(declare-fun b!273752 () Bool)

(declare-fun e!175396 () Bool)

(assert (=> b!273752 (= e!175396 e!175394)))

(declare-fun res!137781 () Bool)

(assert (=> b!273752 (=> (not res!137781) (not e!175394))))

(assert (=> b!273752 (= res!137781 (not (= startIndex!26 i!1267)))))

(assert (=> b!273752 (= lt!136603 (array!13495 (store (arr!6396 a!3325) i!1267 k!2581) (size!6748 a!3325)))))

(declare-fun b!273753 () Bool)

(assert (=> b!273753 (= e!175395 e!175396)))

(declare-fun res!137780 () Bool)

(assert (=> b!273753 (=> (not res!137780) (not e!175396))))

(declare-fun lt!136600 () SeekEntryResult!1565)

(assert (=> b!273753 (= res!137780 (or (= lt!136600 (MissingZero!1565 i!1267)) (= lt!136600 (MissingVacant!1565 i!1267))))))

(assert (=> b!273753 (= lt!136600 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273754 () Bool)

(declare-fun res!137784 () Bool)

(assert (=> b!273754 (=> (not res!137784) (not e!175396))))

(assert (=> b!273754 (= res!137784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273755 () Bool)

(declare-fun res!137778 () Bool)

(assert (=> b!273755 (=> (not res!137778) (not e!175395))))

(assert (=> b!273755 (= res!137778 (and (= (size!6748 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6748 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6748 a!3325))))))

(declare-fun b!273756 () Bool)

(declare-fun res!137782 () Bool)

(assert (=> b!273756 (=> (not res!137782) (not e!175394))))

(assert (=> b!273756 (= res!137782 (validKeyInArray!0 (select (arr!6396 a!3325) startIndex!26)))))

(assert (= (and start!26408 res!137776) b!273755))

(assert (= (and b!273755 res!137778) b!273750))

(assert (= (and b!273750 res!137779) b!273748))

(assert (= (and b!273748 res!137783) b!273749))

(assert (= (and b!273749 res!137777) b!273753))

(assert (= (and b!273753 res!137780) b!273754))

(assert (= (and b!273754 res!137784) b!273752))

(assert (= (and b!273752 res!137781) b!273756))

(assert (= (and b!273756 res!137782) b!273751))

(declare-fun m!289099 () Bool)

(assert (=> b!273752 m!289099))

(declare-fun m!289101 () Bool)

(assert (=> b!273748 m!289101))

(declare-fun m!289103 () Bool)

(assert (=> start!26408 m!289103))

(declare-fun m!289105 () Bool)

(assert (=> start!26408 m!289105))

(declare-fun m!289107 () Bool)

(assert (=> b!273754 m!289107))

(declare-fun m!289109 () Bool)

(assert (=> b!273751 m!289109))

(declare-fun m!289111 () Bool)

(assert (=> b!273751 m!289111))

(assert (=> b!273751 m!289099))

(declare-fun m!289113 () Bool)

(assert (=> b!273751 m!289113))

(declare-fun m!289115 () Bool)

(assert (=> b!273751 m!289115))

(declare-fun m!289117 () Bool)

(assert (=> b!273751 m!289117))

(assert (=> b!273751 m!289115))

(declare-fun m!289119 () Bool)

(assert (=> b!273751 m!289119))

(declare-fun m!289121 () Bool)

(assert (=> b!273751 m!289121))

(assert (=> b!273751 m!289111))

(declare-fun m!289123 () Bool)

(assert (=> b!273751 m!289123))

(declare-fun m!289125 () Bool)

(assert (=> b!273751 m!289125))

(assert (=> b!273756 m!289115))

(assert (=> b!273756 m!289115))

(declare-fun m!289127 () Bool)

(assert (=> b!273756 m!289127))

(declare-fun m!289129 () Bool)

(assert (=> b!273749 m!289129))

(declare-fun m!289131 () Bool)

(assert (=> b!273753 m!289131))

(declare-fun m!289133 () Bool)

(assert (=> b!273750 m!289133))

(push 1)

