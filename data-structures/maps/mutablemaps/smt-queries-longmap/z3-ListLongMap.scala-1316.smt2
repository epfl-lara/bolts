; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26466 () Bool)

(assert start!26466)

(declare-fun b!274567 () Bool)

(declare-fun res!138596 () Bool)

(declare-fun e!175780 () Bool)

(assert (=> b!274567 (=> (not res!138596) (not e!175780))))

(declare-datatypes ((array!13552 0))(
  ( (array!13553 (arr!6425 (Array (_ BitVec 32) (_ BitVec 64))) (size!6777 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13552)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13552 (_ BitVec 32)) Bool)

(assert (=> b!274567 (= res!138596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274568 () Bool)

(declare-fun res!138599 () Bool)

(declare-fun e!175778 () Bool)

(assert (=> b!274568 (=> (not res!138599) (not e!175778))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274568 (= res!138599 (and (= (size!6777 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6777 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6777 a!3325))))))

(declare-fun b!274569 () Bool)

(declare-fun res!138600 () Bool)

(assert (=> b!274569 (=> (not res!138600) (not e!175778))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274569 (= res!138600 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274570 () Bool)

(declare-fun res!138595 () Bool)

(assert (=> b!274570 (=> (not res!138595) (not e!175778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274570 (= res!138595 (validKeyInArray!0 k0!2581))))

(declare-fun b!274571 () Bool)

(assert (=> b!274571 (= e!175778 e!175780)))

(declare-fun res!138597 () Bool)

(assert (=> b!274571 (=> (not res!138597) (not e!175780))))

(declare-datatypes ((SeekEntryResult!1594 0))(
  ( (MissingZero!1594 (index!8546 (_ BitVec 32))) (Found!1594 (index!8547 (_ BitVec 32))) (Intermediate!1594 (undefined!2406 Bool) (index!8548 (_ BitVec 32)) (x!26807 (_ BitVec 32))) (Undefined!1594) (MissingVacant!1594 (index!8549 (_ BitVec 32))) )
))
(declare-fun lt!137075 () SeekEntryResult!1594)

(assert (=> b!274571 (= res!138597 (or (= lt!137075 (MissingZero!1594 i!1267)) (= lt!137075 (MissingVacant!1594 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13552 (_ BitVec 32)) SeekEntryResult!1594)

(assert (=> b!274571 (= lt!137075 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274572 () Bool)

(declare-fun e!175777 () Bool)

(assert (=> b!274572 (= e!175777 (not true))))

(assert (=> b!274572 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8654 0))(
  ( (Unit!8655) )
))
(declare-fun lt!137073 () Unit!8654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8654)

(assert (=> b!274572 (= lt!137073 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!137072 () array!13552)

(assert (=> b!274572 (= (seekEntryOrOpen!0 (select (arr!6425 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6425 a!3325) i!1267 k0!2581) startIndex!26) lt!137072 mask!3868))))

(declare-fun lt!137071 () Unit!8654)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13552 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8654)

(assert (=> b!274572 (= lt!137071 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4254 0))(
  ( (Nil!4251) (Cons!4250 (h!4917 (_ BitVec 64)) (t!9344 List!4254)) )
))
(declare-fun arrayNoDuplicates!0 (array!13552 (_ BitVec 32) List!4254) Bool)

(assert (=> b!274572 (arrayNoDuplicates!0 lt!137072 #b00000000000000000000000000000000 Nil!4251)))

(declare-fun lt!137074 () Unit!8654)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13552 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4254) Unit!8654)

(assert (=> b!274572 (= lt!137074 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4251))))

(declare-fun b!274573 () Bool)

(assert (=> b!274573 (= e!175780 e!175777)))

(declare-fun res!138598 () Bool)

(assert (=> b!274573 (=> (not res!138598) (not e!175777))))

(assert (=> b!274573 (= res!138598 (not (= startIndex!26 i!1267)))))

(assert (=> b!274573 (= lt!137072 (array!13553 (store (arr!6425 a!3325) i!1267 k0!2581) (size!6777 a!3325)))))

(declare-fun b!274574 () Bool)

(declare-fun res!138601 () Bool)

(assert (=> b!274574 (=> (not res!138601) (not e!175778))))

(assert (=> b!274574 (= res!138601 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4251))))

(declare-fun res!138603 () Bool)

(assert (=> start!26466 (=> (not res!138603) (not e!175778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26466 (= res!138603 (validMask!0 mask!3868))))

(assert (=> start!26466 e!175778))

(declare-fun array_inv!4379 (array!13552) Bool)

(assert (=> start!26466 (array_inv!4379 a!3325)))

(assert (=> start!26466 true))

(declare-fun b!274575 () Bool)

(declare-fun res!138602 () Bool)

(assert (=> b!274575 (=> (not res!138602) (not e!175777))))

(assert (=> b!274575 (= res!138602 (validKeyInArray!0 (select (arr!6425 a!3325) startIndex!26)))))

(assert (= (and start!26466 res!138603) b!274568))

(assert (= (and b!274568 res!138599) b!274570))

(assert (= (and b!274570 res!138595) b!274574))

(assert (= (and b!274574 res!138601) b!274569))

(assert (= (and b!274569 res!138600) b!274571))

(assert (= (and b!274571 res!138597) b!274567))

(assert (= (and b!274567 res!138596) b!274573))

(assert (= (and b!274573 res!138598) b!274575))

(assert (= (and b!274575 res!138602) b!274572))

(declare-fun m!290191 () Bool)

(assert (=> b!274572 m!290191))

(declare-fun m!290193 () Bool)

(assert (=> b!274572 m!290193))

(declare-fun m!290195 () Bool)

(assert (=> b!274572 m!290195))

(declare-fun m!290197 () Bool)

(assert (=> b!274572 m!290197))

(declare-fun m!290199 () Bool)

(assert (=> b!274572 m!290199))

(declare-fun m!290201 () Bool)

(assert (=> b!274572 m!290201))

(declare-fun m!290203 () Bool)

(assert (=> b!274572 m!290203))

(declare-fun m!290205 () Bool)

(assert (=> b!274572 m!290205))

(assert (=> b!274572 m!290199))

(declare-fun m!290207 () Bool)

(assert (=> b!274572 m!290207))

(assert (=> b!274572 m!290193))

(declare-fun m!290209 () Bool)

(assert (=> b!274572 m!290209))

(assert (=> b!274573 m!290195))

(declare-fun m!290211 () Bool)

(assert (=> b!274574 m!290211))

(declare-fun m!290213 () Bool)

(assert (=> b!274571 m!290213))

(declare-fun m!290215 () Bool)

(assert (=> start!26466 m!290215))

(declare-fun m!290217 () Bool)

(assert (=> start!26466 m!290217))

(declare-fun m!290219 () Bool)

(assert (=> b!274569 m!290219))

(declare-fun m!290221 () Bool)

(assert (=> b!274567 m!290221))

(assert (=> b!274575 m!290199))

(assert (=> b!274575 m!290199))

(declare-fun m!290223 () Bool)

(assert (=> b!274575 m!290223))

(declare-fun m!290225 () Bool)

(assert (=> b!274570 m!290225))

(check-sat (not b!274567) (not b!274569) (not b!274572) (not b!274570) (not start!26466) (not b!274575) (not b!274574) (not b!274571))
(check-sat)
