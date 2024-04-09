; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27288 () Bool)

(assert start!27288)

(declare-fun b!282535 () Bool)

(declare-fun e!179356 () Bool)

(assert (=> b!282535 (= e!179356 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14095 0))(
  ( (array!14096 (arr!6689 (Array (_ BitVec 32) (_ BitVec 64))) (size!7041 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14095)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14095 (_ BitVec 32)) Bool)

(assert (=> b!282535 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8979 0))(
  ( (Unit!8980) )
))
(declare-fun lt!139645 () Unit!8979)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8979)

(assert (=> b!282535 (= lt!139645 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!139646 () array!14095)

(declare-datatypes ((SeekEntryResult!1858 0))(
  ( (MissingZero!1858 (index!9602 (_ BitVec 32))) (Found!1858 (index!9603 (_ BitVec 32))) (Intermediate!1858 (undefined!2670 Bool) (index!9604 (_ BitVec 32)) (x!27784 (_ BitVec 32))) (Undefined!1858) (MissingVacant!1858 (index!9605 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14095 (_ BitVec 32)) SeekEntryResult!1858)

(assert (=> b!282535 (= (seekEntryOrOpen!0 (select (arr!6689 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6689 a!3325) i!1267 k0!2581) startIndex!26) lt!139646 mask!3868))))

(declare-fun lt!139649 () Unit!8979)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14095 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8979)

(assert (=> b!282535 (= lt!139649 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4518 0))(
  ( (Nil!4515) (Cons!4514 (h!5184 (_ BitVec 64)) (t!9608 List!4518)) )
))
(declare-fun arrayNoDuplicates!0 (array!14095 (_ BitVec 32) List!4518) Bool)

(assert (=> b!282535 (arrayNoDuplicates!0 lt!139646 #b00000000000000000000000000000000 Nil!4515)))

(declare-fun lt!139647 () Unit!8979)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14095 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4518) Unit!8979)

(assert (=> b!282535 (= lt!139647 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4515))))

(declare-fun b!282536 () Bool)

(declare-fun res!145645 () Bool)

(declare-fun e!179357 () Bool)

(assert (=> b!282536 (=> (not res!145645) (not e!179357))))

(declare-fun arrayContainsKey!0 (array!14095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282536 (= res!145645 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!145643 () Bool)

(assert (=> start!27288 (=> (not res!145643) (not e!179357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27288 (= res!145643 (validMask!0 mask!3868))))

(assert (=> start!27288 e!179357))

(declare-fun array_inv!4643 (array!14095) Bool)

(assert (=> start!27288 (array_inv!4643 a!3325)))

(assert (=> start!27288 true))

(declare-fun b!282537 () Bool)

(declare-fun res!145644 () Bool)

(assert (=> b!282537 (=> (not res!145644) (not e!179357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282537 (= res!145644 (validKeyInArray!0 k0!2581))))

(declare-fun b!282538 () Bool)

(declare-fun res!145648 () Bool)

(assert (=> b!282538 (=> (not res!145648) (not e!179356))))

(assert (=> b!282538 (= res!145648 (validKeyInArray!0 (select (arr!6689 a!3325) startIndex!26)))))

(declare-fun b!282539 () Bool)

(declare-fun e!179358 () Bool)

(assert (=> b!282539 (= e!179357 e!179358)))

(declare-fun res!145646 () Bool)

(assert (=> b!282539 (=> (not res!145646) (not e!179358))))

(declare-fun lt!139648 () SeekEntryResult!1858)

(assert (=> b!282539 (= res!145646 (or (= lt!139648 (MissingZero!1858 i!1267)) (= lt!139648 (MissingVacant!1858 i!1267))))))

(assert (=> b!282539 (= lt!139648 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282540 () Bool)

(assert (=> b!282540 (= e!179358 e!179356)))

(declare-fun res!145647 () Bool)

(assert (=> b!282540 (=> (not res!145647) (not e!179356))))

(assert (=> b!282540 (= res!145647 (not (= startIndex!26 i!1267)))))

(assert (=> b!282540 (= lt!139646 (array!14096 (store (arr!6689 a!3325) i!1267 k0!2581) (size!7041 a!3325)))))

(declare-fun b!282541 () Bool)

(declare-fun res!145642 () Bool)

(assert (=> b!282541 (=> (not res!145642) (not e!179358))))

(assert (=> b!282541 (= res!145642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282542 () Bool)

(declare-fun res!145649 () Bool)

(assert (=> b!282542 (=> (not res!145649) (not e!179357))))

(assert (=> b!282542 (= res!145649 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4515))))

(declare-fun b!282543 () Bool)

(declare-fun res!145650 () Bool)

(assert (=> b!282543 (=> (not res!145650) (not e!179357))))

(assert (=> b!282543 (= res!145650 (and (= (size!7041 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7041 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7041 a!3325))))))

(assert (= (and start!27288 res!145643) b!282543))

(assert (= (and b!282543 res!145650) b!282537))

(assert (= (and b!282537 res!145644) b!282542))

(assert (= (and b!282542 res!145649) b!282536))

(assert (= (and b!282536 res!145645) b!282539))

(assert (= (and b!282539 res!145646) b!282541))

(assert (= (and b!282541 res!145642) b!282540))

(assert (= (and b!282540 res!145647) b!282538))

(assert (= (and b!282538 res!145648) b!282535))

(declare-fun m!297193 () Bool)

(assert (=> start!27288 m!297193))

(declare-fun m!297195 () Bool)

(assert (=> start!27288 m!297195))

(declare-fun m!297197 () Bool)

(assert (=> b!282535 m!297197))

(declare-fun m!297199 () Bool)

(assert (=> b!282535 m!297199))

(declare-fun m!297201 () Bool)

(assert (=> b!282535 m!297201))

(assert (=> b!282535 m!297201))

(declare-fun m!297203 () Bool)

(assert (=> b!282535 m!297203))

(declare-fun m!297205 () Bool)

(assert (=> b!282535 m!297205))

(declare-fun m!297207 () Bool)

(assert (=> b!282535 m!297207))

(declare-fun m!297209 () Bool)

(assert (=> b!282535 m!297209))

(declare-fun m!297211 () Bool)

(assert (=> b!282535 m!297211))

(declare-fun m!297213 () Bool)

(assert (=> b!282535 m!297213))

(assert (=> b!282535 m!297209))

(declare-fun m!297215 () Bool)

(assert (=> b!282535 m!297215))

(declare-fun m!297217 () Bool)

(assert (=> b!282539 m!297217))

(declare-fun m!297219 () Bool)

(assert (=> b!282536 m!297219))

(assert (=> b!282540 m!297205))

(assert (=> b!282538 m!297209))

(assert (=> b!282538 m!297209))

(declare-fun m!297221 () Bool)

(assert (=> b!282538 m!297221))

(declare-fun m!297223 () Bool)

(assert (=> b!282537 m!297223))

(declare-fun m!297225 () Bool)

(assert (=> b!282541 m!297225))

(declare-fun m!297227 () Bool)

(assert (=> b!282542 m!297227))

(check-sat (not b!282536) (not b!282535) (not b!282538) (not b!282541) (not b!282537) (not b!282542) (not b!282539) (not start!27288))
(check-sat)
