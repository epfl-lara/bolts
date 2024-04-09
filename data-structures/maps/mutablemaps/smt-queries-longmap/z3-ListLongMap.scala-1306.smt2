; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26406 () Bool)

(assert start!26406)

(declare-fun b!273721 () Bool)

(declare-fun res!137751 () Bool)

(declare-fun e!175381 () Bool)

(assert (=> b!273721 (=> (not res!137751) (not e!175381))))

(declare-datatypes ((array!13492 0))(
  ( (array!13493 (arr!6395 (Array (_ BitVec 32) (_ BitVec 64))) (size!6747 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13492)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!273721 (= res!137751 (and (= (size!6747 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6747 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6747 a!3325))))))

(declare-fun b!273722 () Bool)

(declare-fun e!175382 () Bool)

(assert (=> b!273722 (= e!175381 e!175382)))

(declare-fun res!137754 () Bool)

(assert (=> b!273722 (=> (not res!137754) (not e!175382))))

(declare-datatypes ((SeekEntryResult!1564 0))(
  ( (MissingZero!1564 (index!8426 (_ BitVec 32))) (Found!1564 (index!8427 (_ BitVec 32))) (Intermediate!1564 (undefined!2376 Bool) (index!8428 (_ BitVec 32)) (x!26697 (_ BitVec 32))) (Undefined!1564) (MissingVacant!1564 (index!8429 (_ BitVec 32))) )
))
(declare-fun lt!136589 () SeekEntryResult!1564)

(assert (=> b!273722 (= res!137754 (or (= lt!136589 (MissingZero!1564 i!1267)) (= lt!136589 (MissingVacant!1564 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13492 (_ BitVec 32)) SeekEntryResult!1564)

(assert (=> b!273722 (= lt!136589 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273723 () Bool)

(declare-fun res!137750 () Bool)

(declare-fun e!175384 () Bool)

(assert (=> b!273723 (=> (not res!137750) (not e!175384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273723 (= res!137750 (validKeyInArray!0 (select (arr!6395 a!3325) startIndex!26)))))

(declare-fun b!273724 () Bool)

(declare-fun res!137756 () Bool)

(assert (=> b!273724 (=> (not res!137756) (not e!175381))))

(declare-fun arrayContainsKey!0 (array!13492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273724 (= res!137756 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273725 () Bool)

(declare-fun res!137752 () Bool)

(assert (=> b!273725 (=> (not res!137752) (not e!175381))))

(declare-datatypes ((List!4224 0))(
  ( (Nil!4221) (Cons!4220 (h!4887 (_ BitVec 64)) (t!9314 List!4224)) )
))
(declare-fun arrayNoDuplicates!0 (array!13492 (_ BitVec 32) List!4224) Bool)

(assert (=> b!273725 (= res!137752 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4221))))

(declare-fun b!273726 () Bool)

(declare-fun res!137749 () Bool)

(assert (=> b!273726 (=> (not res!137749) (not e!175381))))

(assert (=> b!273726 (= res!137749 (validKeyInArray!0 k0!2581))))

(declare-fun b!273727 () Bool)

(declare-fun res!137755 () Bool)

(assert (=> b!273727 (=> (not res!137755) (not e!175382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13492 (_ BitVec 32)) Bool)

(assert (=> b!273727 (= res!137755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273728 () Bool)

(assert (=> b!273728 (= e!175384 (not true))))

(assert (=> b!273728 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8594 0))(
  ( (Unit!8595) )
))
(declare-fun lt!136587 () Unit!8594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8594)

(assert (=> b!273728 (= lt!136587 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136588 () array!13492)

(assert (=> b!273728 (= (seekEntryOrOpen!0 (select (arr!6395 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6395 a!3325) i!1267 k0!2581) startIndex!26) lt!136588 mask!3868))))

(declare-fun lt!136585 () Unit!8594)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13492 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8594)

(assert (=> b!273728 (= lt!136585 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!273728 (arrayNoDuplicates!0 lt!136588 #b00000000000000000000000000000000 Nil!4221)))

(declare-fun lt!136586 () Unit!8594)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13492 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4224) Unit!8594)

(assert (=> b!273728 (= lt!136586 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4221))))

(declare-fun res!137753 () Bool)

(assert (=> start!26406 (=> (not res!137753) (not e!175381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26406 (= res!137753 (validMask!0 mask!3868))))

(assert (=> start!26406 e!175381))

(declare-fun array_inv!4349 (array!13492) Bool)

(assert (=> start!26406 (array_inv!4349 a!3325)))

(assert (=> start!26406 true))

(declare-fun b!273729 () Bool)

(assert (=> b!273729 (= e!175382 e!175384)))

(declare-fun res!137757 () Bool)

(assert (=> b!273729 (=> (not res!137757) (not e!175384))))

(assert (=> b!273729 (= res!137757 (not (= startIndex!26 i!1267)))))

(assert (=> b!273729 (= lt!136588 (array!13493 (store (arr!6395 a!3325) i!1267 k0!2581) (size!6747 a!3325)))))

(assert (= (and start!26406 res!137753) b!273721))

(assert (= (and b!273721 res!137751) b!273726))

(assert (= (and b!273726 res!137749) b!273725))

(assert (= (and b!273725 res!137752) b!273724))

(assert (= (and b!273724 res!137756) b!273722))

(assert (= (and b!273722 res!137754) b!273727))

(assert (= (and b!273727 res!137755) b!273729))

(assert (= (and b!273729 res!137757) b!273723))

(assert (= (and b!273723 res!137750) b!273728))

(declare-fun m!289063 () Bool)

(assert (=> start!26406 m!289063))

(declare-fun m!289065 () Bool)

(assert (=> start!26406 m!289065))

(declare-fun m!289067 () Bool)

(assert (=> b!273724 m!289067))

(declare-fun m!289069 () Bool)

(assert (=> b!273725 m!289069))

(declare-fun m!289071 () Bool)

(assert (=> b!273726 m!289071))

(declare-fun m!289073 () Bool)

(assert (=> b!273728 m!289073))

(declare-fun m!289075 () Bool)

(assert (=> b!273728 m!289075))

(declare-fun m!289077 () Bool)

(assert (=> b!273728 m!289077))

(assert (=> b!273728 m!289075))

(declare-fun m!289079 () Bool)

(assert (=> b!273728 m!289079))

(declare-fun m!289081 () Bool)

(assert (=> b!273728 m!289081))

(declare-fun m!289083 () Bool)

(assert (=> b!273728 m!289083))

(declare-fun m!289085 () Bool)

(assert (=> b!273728 m!289085))

(declare-fun m!289087 () Bool)

(assert (=> b!273728 m!289087))

(declare-fun m!289089 () Bool)

(assert (=> b!273728 m!289089))

(assert (=> b!273728 m!289085))

(declare-fun m!289091 () Bool)

(assert (=> b!273728 m!289091))

(declare-fun m!289093 () Bool)

(assert (=> b!273722 m!289093))

(assert (=> b!273729 m!289081))

(assert (=> b!273723 m!289085))

(assert (=> b!273723 m!289085))

(declare-fun m!289095 () Bool)

(assert (=> b!273723 m!289095))

(declare-fun m!289097 () Bool)

(assert (=> b!273727 m!289097))

(check-sat (not b!273724) (not b!273723) (not b!273722) (not start!26406) (not b!273728) (not b!273726) (not b!273727) (not b!273725))
(check-sat)
