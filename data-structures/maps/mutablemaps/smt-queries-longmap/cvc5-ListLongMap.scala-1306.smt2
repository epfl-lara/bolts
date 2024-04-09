; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26404 () Bool)

(assert start!26404)

(declare-fun res!137728 () Bool)

(declare-fun e!175371 () Bool)

(assert (=> start!26404 (=> (not res!137728) (not e!175371))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26404 (= res!137728 (validMask!0 mask!3868))))

(assert (=> start!26404 e!175371))

(declare-datatypes ((array!13490 0))(
  ( (array!13491 (arr!6394 (Array (_ BitVec 32) (_ BitVec 64))) (size!6746 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13490)

(declare-fun array_inv!4348 (array!13490) Bool)

(assert (=> start!26404 (array_inv!4348 a!3325)))

(assert (=> start!26404 true))

(declare-fun b!273694 () Bool)

(declare-fun res!137725 () Bool)

(declare-fun e!175372 () Bool)

(assert (=> b!273694 (=> (not res!137725) (not e!175372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13490 (_ BitVec 32)) Bool)

(assert (=> b!273694 (= res!137725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273695 () Bool)

(declare-fun res!137723 () Bool)

(assert (=> b!273695 (=> (not res!137723) (not e!175371))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273695 (= res!137723 (and (= (size!6746 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6746 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6746 a!3325))))))

(declare-fun b!273696 () Bool)

(declare-fun res!137722 () Bool)

(assert (=> b!273696 (=> (not res!137722) (not e!175371))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273696 (= res!137722 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273697 () Bool)

(declare-fun res!137724 () Bool)

(assert (=> b!273697 (=> (not res!137724) (not e!175371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273697 (= res!137724 (validKeyInArray!0 k!2581))))

(declare-fun b!273698 () Bool)

(declare-fun res!137726 () Bool)

(declare-fun e!175370 () Bool)

(assert (=> b!273698 (=> (not res!137726) (not e!175370))))

(assert (=> b!273698 (= res!137726 (validKeyInArray!0 (select (arr!6394 a!3325) startIndex!26)))))

(declare-fun b!273699 () Bool)

(assert (=> b!273699 (= e!175371 e!175372)))

(declare-fun res!137729 () Bool)

(assert (=> b!273699 (=> (not res!137729) (not e!175372))))

(declare-datatypes ((SeekEntryResult!1563 0))(
  ( (MissingZero!1563 (index!8422 (_ BitVec 32))) (Found!1563 (index!8423 (_ BitVec 32))) (Intermediate!1563 (undefined!2375 Bool) (index!8424 (_ BitVec 32)) (x!26696 (_ BitVec 32))) (Undefined!1563) (MissingVacant!1563 (index!8425 (_ BitVec 32))) )
))
(declare-fun lt!136572 () SeekEntryResult!1563)

(assert (=> b!273699 (= res!137729 (or (= lt!136572 (MissingZero!1563 i!1267)) (= lt!136572 (MissingVacant!1563 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13490 (_ BitVec 32)) SeekEntryResult!1563)

(assert (=> b!273699 (= lt!136572 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273700 () Bool)

(assert (=> b!273700 (= e!175370 (not true))))

(assert (=> b!273700 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8592 0))(
  ( (Unit!8593) )
))
(declare-fun lt!136574 () Unit!8592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8592)

(assert (=> b!273700 (= lt!136574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136570 () array!13490)

(assert (=> b!273700 (= (seekEntryOrOpen!0 (select (arr!6394 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6394 a!3325) i!1267 k!2581) startIndex!26) lt!136570 mask!3868))))

(declare-fun lt!136573 () Unit!8592)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13490 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8592)

(assert (=> b!273700 (= lt!136573 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4223 0))(
  ( (Nil!4220) (Cons!4219 (h!4886 (_ BitVec 64)) (t!9313 List!4223)) )
))
(declare-fun arrayNoDuplicates!0 (array!13490 (_ BitVec 32) List!4223) Bool)

(assert (=> b!273700 (arrayNoDuplicates!0 lt!136570 #b00000000000000000000000000000000 Nil!4220)))

(declare-fun lt!136571 () Unit!8592)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13490 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4223) Unit!8592)

(assert (=> b!273700 (= lt!136571 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4220))))

(declare-fun b!273701 () Bool)

(declare-fun res!137727 () Bool)

(assert (=> b!273701 (=> (not res!137727) (not e!175371))))

(assert (=> b!273701 (= res!137727 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4220))))

(declare-fun b!273702 () Bool)

(assert (=> b!273702 (= e!175372 e!175370)))

(declare-fun res!137730 () Bool)

(assert (=> b!273702 (=> (not res!137730) (not e!175370))))

(assert (=> b!273702 (= res!137730 (not (= startIndex!26 i!1267)))))

(assert (=> b!273702 (= lt!136570 (array!13491 (store (arr!6394 a!3325) i!1267 k!2581) (size!6746 a!3325)))))

(assert (= (and start!26404 res!137728) b!273695))

(assert (= (and b!273695 res!137723) b!273697))

(assert (= (and b!273697 res!137724) b!273701))

(assert (= (and b!273701 res!137727) b!273696))

(assert (= (and b!273696 res!137722) b!273699))

(assert (= (and b!273699 res!137729) b!273694))

(assert (= (and b!273694 res!137725) b!273702))

(assert (= (and b!273702 res!137730) b!273698))

(assert (= (and b!273698 res!137726) b!273700))

(declare-fun m!289027 () Bool)

(assert (=> b!273700 m!289027))

(declare-fun m!289029 () Bool)

(assert (=> b!273700 m!289029))

(declare-fun m!289031 () Bool)

(assert (=> b!273700 m!289031))

(declare-fun m!289033 () Bool)

(assert (=> b!273700 m!289033))

(declare-fun m!289035 () Bool)

(assert (=> b!273700 m!289035))

(declare-fun m!289037 () Bool)

(assert (=> b!273700 m!289037))

(declare-fun m!289039 () Bool)

(assert (=> b!273700 m!289039))

(declare-fun m!289041 () Bool)

(assert (=> b!273700 m!289041))

(assert (=> b!273700 m!289037))

(declare-fun m!289043 () Bool)

(assert (=> b!273700 m!289043))

(assert (=> b!273700 m!289029))

(declare-fun m!289045 () Bool)

(assert (=> b!273700 m!289045))

(assert (=> b!273698 m!289037))

(assert (=> b!273698 m!289037))

(declare-fun m!289047 () Bool)

(assert (=> b!273698 m!289047))

(declare-fun m!289049 () Bool)

(assert (=> b!273697 m!289049))

(declare-fun m!289051 () Bool)

(assert (=> b!273701 m!289051))

(declare-fun m!289053 () Bool)

(assert (=> start!26404 m!289053))

(declare-fun m!289055 () Bool)

(assert (=> start!26404 m!289055))

(assert (=> b!273702 m!289031))

(declare-fun m!289057 () Bool)

(assert (=> b!273699 m!289057))

(declare-fun m!289059 () Bool)

(assert (=> b!273696 m!289059))

(declare-fun m!289061 () Bool)

(assert (=> b!273694 m!289061))

(push 1)

