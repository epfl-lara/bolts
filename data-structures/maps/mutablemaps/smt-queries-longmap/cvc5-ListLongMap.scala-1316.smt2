; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26464 () Bool)

(assert start!26464)

(declare-fun res!138568 () Bool)

(declare-fun e!175765 () Bool)

(assert (=> start!26464 (=> (not res!138568) (not e!175765))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26464 (= res!138568 (validMask!0 mask!3868))))

(assert (=> start!26464 e!175765))

(declare-datatypes ((array!13550 0))(
  ( (array!13551 (arr!6424 (Array (_ BitVec 32) (_ BitVec 64))) (size!6776 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13550)

(declare-fun array_inv!4378 (array!13550) Bool)

(assert (=> start!26464 (array_inv!4378 a!3325)))

(assert (=> start!26464 true))

(declare-fun b!274540 () Bool)

(declare-fun res!138570 () Bool)

(declare-fun e!175766 () Bool)

(assert (=> b!274540 (=> (not res!138570) (not e!175766))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274540 (= res!138570 (validKeyInArray!0 (select (arr!6424 a!3325) startIndex!26)))))

(declare-fun b!274541 () Bool)

(declare-fun res!138571 () Bool)

(assert (=> b!274541 (=> (not res!138571) (not e!175765))))

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!274541 (= res!138571 (validKeyInArray!0 k!2581))))

(declare-fun b!274542 () Bool)

(declare-fun res!138576 () Bool)

(assert (=> b!274542 (=> (not res!138576) (not e!175765))))

(declare-fun arrayContainsKey!0 (array!13550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274542 (= res!138576 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274543 () Bool)

(declare-fun e!175767 () Bool)

(assert (=> b!274543 (= e!175767 e!175766)))

(declare-fun res!138575 () Bool)

(assert (=> b!274543 (=> (not res!138575) (not e!175766))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274543 (= res!138575 (not (= startIndex!26 i!1267)))))

(declare-fun lt!137056 () array!13550)

(assert (=> b!274543 (= lt!137056 (array!13551 (store (arr!6424 a!3325) i!1267 k!2581) (size!6776 a!3325)))))

(declare-fun b!274544 () Bool)

(declare-fun res!138574 () Bool)

(assert (=> b!274544 (=> (not res!138574) (not e!175767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13550 (_ BitVec 32)) Bool)

(assert (=> b!274544 (= res!138574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274545 () Bool)

(declare-fun res!138569 () Bool)

(assert (=> b!274545 (=> (not res!138569) (not e!175765))))

(assert (=> b!274545 (= res!138569 (and (= (size!6776 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6776 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6776 a!3325))))))

(declare-fun b!274546 () Bool)

(declare-fun res!138572 () Bool)

(assert (=> b!274546 (=> (not res!138572) (not e!175765))))

(declare-datatypes ((List!4253 0))(
  ( (Nil!4250) (Cons!4249 (h!4916 (_ BitVec 64)) (t!9343 List!4253)) )
))
(declare-fun arrayNoDuplicates!0 (array!13550 (_ BitVec 32) List!4253) Bool)

(assert (=> b!274546 (= res!138572 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4250))))

(declare-fun b!274547 () Bool)

(assert (=> b!274547 (= e!175765 e!175767)))

(declare-fun res!138573 () Bool)

(assert (=> b!274547 (=> (not res!138573) (not e!175767))))

(declare-datatypes ((SeekEntryResult!1593 0))(
  ( (MissingZero!1593 (index!8542 (_ BitVec 32))) (Found!1593 (index!8543 (_ BitVec 32))) (Intermediate!1593 (undefined!2405 Bool) (index!8544 (_ BitVec 32)) (x!26806 (_ BitVec 32))) (Undefined!1593) (MissingVacant!1593 (index!8545 (_ BitVec 32))) )
))
(declare-fun lt!137058 () SeekEntryResult!1593)

(assert (=> b!274547 (= res!138573 (or (= lt!137058 (MissingZero!1593 i!1267)) (= lt!137058 (MissingVacant!1593 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13550 (_ BitVec 32)) SeekEntryResult!1593)

(assert (=> b!274547 (= lt!137058 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274548 () Bool)

(assert (=> b!274548 (= e!175766 (not true))))

(assert (=> b!274548 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8652 0))(
  ( (Unit!8653) )
))
(declare-fun lt!137059 () Unit!8652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8652)

(assert (=> b!274548 (= lt!137059 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274548 (= (seekEntryOrOpen!0 (select (arr!6424 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6424 a!3325) i!1267 k!2581) startIndex!26) lt!137056 mask!3868))))

(declare-fun lt!137057 () Unit!8652)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13550 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8652)

(assert (=> b!274548 (= lt!137057 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274548 (arrayNoDuplicates!0 lt!137056 #b00000000000000000000000000000000 Nil!4250)))

(declare-fun lt!137060 () Unit!8652)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13550 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4253) Unit!8652)

(assert (=> b!274548 (= lt!137060 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4250))))

(assert (= (and start!26464 res!138568) b!274545))

(assert (= (and b!274545 res!138569) b!274541))

(assert (= (and b!274541 res!138571) b!274546))

(assert (= (and b!274546 res!138572) b!274542))

(assert (= (and b!274542 res!138576) b!274547))

(assert (= (and b!274547 res!138573) b!274544))

(assert (= (and b!274544 res!138574) b!274543))

(assert (= (and b!274543 res!138575) b!274540))

(assert (= (and b!274540 res!138570) b!274548))

(declare-fun m!290155 () Bool)

(assert (=> b!274541 m!290155))

(declare-fun m!290157 () Bool)

(assert (=> b!274540 m!290157))

(assert (=> b!274540 m!290157))

(declare-fun m!290159 () Bool)

(assert (=> b!274540 m!290159))

(declare-fun m!290161 () Bool)

(assert (=> b!274543 m!290161))

(declare-fun m!290163 () Bool)

(assert (=> b!274544 m!290163))

(declare-fun m!290165 () Bool)

(assert (=> start!26464 m!290165))

(declare-fun m!290167 () Bool)

(assert (=> start!26464 m!290167))

(declare-fun m!290169 () Bool)

(assert (=> b!274542 m!290169))

(declare-fun m!290171 () Bool)

(assert (=> b!274548 m!290171))

(declare-fun m!290173 () Bool)

(assert (=> b!274548 m!290173))

(declare-fun m!290175 () Bool)

(assert (=> b!274548 m!290175))

(assert (=> b!274548 m!290173))

(declare-fun m!290177 () Bool)

(assert (=> b!274548 m!290177))

(assert (=> b!274548 m!290161))

(declare-fun m!290179 () Bool)

(assert (=> b!274548 m!290179))

(assert (=> b!274548 m!290157))

(declare-fun m!290181 () Bool)

(assert (=> b!274548 m!290181))

(declare-fun m!290183 () Bool)

(assert (=> b!274548 m!290183))

(assert (=> b!274548 m!290157))

(declare-fun m!290185 () Bool)

(assert (=> b!274548 m!290185))

(declare-fun m!290187 () Bool)

(assert (=> b!274546 m!290187))

(declare-fun m!290189 () Bool)

(assert (=> b!274547 m!290189))

(push 1)

