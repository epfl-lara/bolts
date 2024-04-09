; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26436 () Bool)

(assert start!26436)

(declare-fun b!274126 () Bool)

(declare-fun res!138162 () Bool)

(declare-fun e!175561 () Bool)

(assert (=> b!274126 (=> (not res!138162) (not e!175561))))

(declare-datatypes ((array!13522 0))(
  ( (array!13523 (arr!6410 (Array (_ BitVec 32) (_ BitVec 64))) (size!6762 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13522)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!274126 (= res!138162 (and (= (size!6762 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6762 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6762 a!3325))))))

(declare-fun b!274127 () Bool)

(declare-fun e!175564 () Bool)

(declare-fun e!175562 () Bool)

(assert (=> b!274127 (= e!175564 e!175562)))

(declare-fun res!138158 () Bool)

(assert (=> b!274127 (=> (not res!138158) (not e!175562))))

(assert (=> b!274127 (= res!138158 (not (= startIndex!26 i!1267)))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!136813 () array!13522)

(assert (=> b!274127 (= lt!136813 (array!13523 (store (arr!6410 a!3325) i!1267 k0!2581) (size!6762 a!3325)))))

(declare-fun b!274128 () Bool)

(declare-fun res!138161 () Bool)

(assert (=> b!274128 (=> (not res!138161) (not e!175562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274128 (= res!138161 (validKeyInArray!0 (select (arr!6410 a!3325) startIndex!26)))))

(declare-fun b!274129 () Bool)

(assert (=> b!274129 (= e!175562 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13522 (_ BitVec 32)) Bool)

(assert (=> b!274129 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8624 0))(
  ( (Unit!8625) )
))
(declare-fun lt!136810 () Unit!8624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8624)

(assert (=> b!274129 (= lt!136810 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1579 0))(
  ( (MissingZero!1579 (index!8486 (_ BitVec 32))) (Found!1579 (index!8487 (_ BitVec 32))) (Intermediate!1579 (undefined!2391 Bool) (index!8488 (_ BitVec 32)) (x!26752 (_ BitVec 32))) (Undefined!1579) (MissingVacant!1579 (index!8489 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13522 (_ BitVec 32)) SeekEntryResult!1579)

(assert (=> b!274129 (= (seekEntryOrOpen!0 (select (arr!6410 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6410 a!3325) i!1267 k0!2581) startIndex!26) lt!136813 mask!3868))))

(declare-fun lt!136811 () Unit!8624)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13522 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8624)

(assert (=> b!274129 (= lt!136811 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4239 0))(
  ( (Nil!4236) (Cons!4235 (h!4902 (_ BitVec 64)) (t!9329 List!4239)) )
))
(declare-fun arrayNoDuplicates!0 (array!13522 (_ BitVec 32) List!4239) Bool)

(assert (=> b!274129 (arrayNoDuplicates!0 lt!136813 #b00000000000000000000000000000000 Nil!4236)))

(declare-fun lt!136812 () Unit!8624)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4239) Unit!8624)

(assert (=> b!274129 (= lt!136812 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4236))))

(declare-fun b!274130 () Bool)

(declare-fun res!138154 () Bool)

(assert (=> b!274130 (=> (not res!138154) (not e!175561))))

(declare-fun arrayContainsKey!0 (array!13522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274130 (= res!138154 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274131 () Bool)

(declare-fun res!138157 () Bool)

(assert (=> b!274131 (=> (not res!138157) (not e!175564))))

(assert (=> b!274131 (= res!138157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274132 () Bool)

(declare-fun res!138159 () Bool)

(assert (=> b!274132 (=> (not res!138159) (not e!175561))))

(assert (=> b!274132 (= res!138159 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4236))))

(declare-fun res!138155 () Bool)

(assert (=> start!26436 (=> (not res!138155) (not e!175561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26436 (= res!138155 (validMask!0 mask!3868))))

(assert (=> start!26436 e!175561))

(declare-fun array_inv!4364 (array!13522) Bool)

(assert (=> start!26436 (array_inv!4364 a!3325)))

(assert (=> start!26436 true))

(declare-fun b!274133 () Bool)

(assert (=> b!274133 (= e!175561 e!175564)))

(declare-fun res!138160 () Bool)

(assert (=> b!274133 (=> (not res!138160) (not e!175564))))

(declare-fun lt!136814 () SeekEntryResult!1579)

(assert (=> b!274133 (= res!138160 (or (= lt!136814 (MissingZero!1579 i!1267)) (= lt!136814 (MissingVacant!1579 i!1267))))))

(assert (=> b!274133 (= lt!136814 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274134 () Bool)

(declare-fun res!138156 () Bool)

(assert (=> b!274134 (=> (not res!138156) (not e!175561))))

(assert (=> b!274134 (= res!138156 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26436 res!138155) b!274126))

(assert (= (and b!274126 res!138162) b!274134))

(assert (= (and b!274134 res!138156) b!274132))

(assert (= (and b!274132 res!138159) b!274130))

(assert (= (and b!274130 res!138154) b!274133))

(assert (= (and b!274133 res!138160) b!274131))

(assert (= (and b!274131 res!138157) b!274127))

(assert (= (and b!274127 res!138158) b!274128))

(assert (= (and b!274128 res!138161) b!274129))

(declare-fun m!289603 () Bool)

(assert (=> b!274134 m!289603))

(declare-fun m!289605 () Bool)

(assert (=> b!274131 m!289605))

(declare-fun m!289607 () Bool)

(assert (=> start!26436 m!289607))

(declare-fun m!289609 () Bool)

(assert (=> start!26436 m!289609))

(declare-fun m!289611 () Bool)

(assert (=> b!274128 m!289611))

(assert (=> b!274128 m!289611))

(declare-fun m!289613 () Bool)

(assert (=> b!274128 m!289613))

(declare-fun m!289615 () Bool)

(assert (=> b!274130 m!289615))

(declare-fun m!289617 () Bool)

(assert (=> b!274127 m!289617))

(declare-fun m!289619 () Bool)

(assert (=> b!274129 m!289619))

(declare-fun m!289621 () Bool)

(assert (=> b!274129 m!289621))

(declare-fun m!289623 () Bool)

(assert (=> b!274129 m!289623))

(declare-fun m!289625 () Bool)

(assert (=> b!274129 m!289625))

(assert (=> b!274129 m!289621))

(assert (=> b!274129 m!289617))

(declare-fun m!289627 () Bool)

(assert (=> b!274129 m!289627))

(assert (=> b!274129 m!289611))

(declare-fun m!289629 () Bool)

(assert (=> b!274129 m!289629))

(declare-fun m!289631 () Bool)

(assert (=> b!274129 m!289631))

(assert (=> b!274129 m!289611))

(declare-fun m!289633 () Bool)

(assert (=> b!274129 m!289633))

(declare-fun m!289635 () Bool)

(assert (=> b!274132 m!289635))

(declare-fun m!289637 () Bool)

(assert (=> b!274133 m!289637))

(check-sat (not start!26436) (not b!274131) (not b!274133) (not b!274134) (not b!274130) (not b!274129) (not b!274132) (not b!274128))
(check-sat)
