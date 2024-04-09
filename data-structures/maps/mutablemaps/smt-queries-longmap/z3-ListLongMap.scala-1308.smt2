; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26418 () Bool)

(assert start!26418)

(declare-fun res!137919 () Bool)

(declare-fun e!175456 () Bool)

(assert (=> start!26418 (=> (not res!137919) (not e!175456))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26418 (= res!137919 (validMask!0 mask!3868))))

(assert (=> start!26418 e!175456))

(declare-datatypes ((array!13504 0))(
  ( (array!13505 (arr!6401 (Array (_ BitVec 32) (_ BitVec 64))) (size!6753 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13504)

(declare-fun array_inv!4355 (array!13504) Bool)

(assert (=> start!26418 (array_inv!4355 a!3325)))

(assert (=> start!26418 true))

(declare-fun b!273883 () Bool)

(declare-fun res!137911 () Bool)

(declare-fun e!175454 () Bool)

(assert (=> b!273883 (=> (not res!137911) (not e!175454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13504 (_ BitVec 32)) Bool)

(assert (=> b!273883 (= res!137911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273884 () Bool)

(declare-fun res!137916 () Bool)

(declare-fun e!175453 () Bool)

(assert (=> b!273884 (=> (not res!137916) (not e!175453))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273884 (= res!137916 (validKeyInArray!0 (select (arr!6401 a!3325) startIndex!26)))))

(declare-fun b!273885 () Bool)

(declare-fun res!137914 () Bool)

(assert (=> b!273885 (=> (not res!137914) (not e!175456))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273885 (= res!137914 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273886 () Bool)

(assert (=> b!273886 (= e!175453 (not true))))

(assert (=> b!273886 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8606 0))(
  ( (Unit!8607) )
))
(declare-fun lt!136675 () Unit!8606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8606)

(assert (=> b!273886 (= lt!136675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!136679 () array!13504)

(declare-datatypes ((SeekEntryResult!1570 0))(
  ( (MissingZero!1570 (index!8450 (_ BitVec 32))) (Found!1570 (index!8451 (_ BitVec 32))) (Intermediate!1570 (undefined!2382 Bool) (index!8452 (_ BitVec 32)) (x!26719 (_ BitVec 32))) (Undefined!1570) (MissingVacant!1570 (index!8453 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13504 (_ BitVec 32)) SeekEntryResult!1570)

(assert (=> b!273886 (= (seekEntryOrOpen!0 (select (arr!6401 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6401 a!3325) i!1267 k0!2581) startIndex!26) lt!136679 mask!3868))))

(declare-fun lt!136676 () Unit!8606)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13504 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8606)

(assert (=> b!273886 (= lt!136676 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4230 0))(
  ( (Nil!4227) (Cons!4226 (h!4893 (_ BitVec 64)) (t!9320 List!4230)) )
))
(declare-fun arrayNoDuplicates!0 (array!13504 (_ BitVec 32) List!4230) Bool)

(assert (=> b!273886 (arrayNoDuplicates!0 lt!136679 #b00000000000000000000000000000000 Nil!4227)))

(declare-fun lt!136678 () Unit!8606)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13504 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4230) Unit!8606)

(assert (=> b!273886 (= lt!136678 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4227))))

(declare-fun b!273887 () Bool)

(declare-fun res!137917 () Bool)

(assert (=> b!273887 (=> (not res!137917) (not e!175456))))

(assert (=> b!273887 (= res!137917 (validKeyInArray!0 k0!2581))))

(declare-fun b!273888 () Bool)

(assert (=> b!273888 (= e!175454 e!175453)))

(declare-fun res!137918 () Bool)

(assert (=> b!273888 (=> (not res!137918) (not e!175453))))

(assert (=> b!273888 (= res!137918 (not (= startIndex!26 i!1267)))))

(assert (=> b!273888 (= lt!136679 (array!13505 (store (arr!6401 a!3325) i!1267 k0!2581) (size!6753 a!3325)))))

(declare-fun b!273889 () Bool)

(declare-fun res!137915 () Bool)

(assert (=> b!273889 (=> (not res!137915) (not e!175456))))

(assert (=> b!273889 (= res!137915 (and (= (size!6753 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6753 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6753 a!3325))))))

(declare-fun b!273890 () Bool)

(declare-fun res!137913 () Bool)

(assert (=> b!273890 (=> (not res!137913) (not e!175456))))

(assert (=> b!273890 (= res!137913 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4227))))

(declare-fun b!273891 () Bool)

(assert (=> b!273891 (= e!175456 e!175454)))

(declare-fun res!137912 () Bool)

(assert (=> b!273891 (=> (not res!137912) (not e!175454))))

(declare-fun lt!136677 () SeekEntryResult!1570)

(assert (=> b!273891 (= res!137912 (or (= lt!136677 (MissingZero!1570 i!1267)) (= lt!136677 (MissingVacant!1570 i!1267))))))

(assert (=> b!273891 (= lt!136677 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26418 res!137919) b!273889))

(assert (= (and b!273889 res!137915) b!273887))

(assert (= (and b!273887 res!137917) b!273890))

(assert (= (and b!273890 res!137913) b!273885))

(assert (= (and b!273885 res!137914) b!273891))

(assert (= (and b!273891 res!137912) b!273883))

(assert (= (and b!273883 res!137911) b!273888))

(assert (= (and b!273888 res!137918) b!273884))

(assert (= (and b!273884 res!137916) b!273886))

(declare-fun m!289279 () Bool)

(assert (=> b!273887 m!289279))

(declare-fun m!289281 () Bool)

(assert (=> start!26418 m!289281))

(declare-fun m!289283 () Bool)

(assert (=> start!26418 m!289283))

(declare-fun m!289285 () Bool)

(assert (=> b!273888 m!289285))

(declare-fun m!289287 () Bool)

(assert (=> b!273883 m!289287))

(declare-fun m!289289 () Bool)

(assert (=> b!273886 m!289289))

(declare-fun m!289291 () Bool)

(assert (=> b!273886 m!289291))

(declare-fun m!289293 () Bool)

(assert (=> b!273886 m!289293))

(assert (=> b!273886 m!289285))

(declare-fun m!289295 () Bool)

(assert (=> b!273886 m!289295))

(declare-fun m!289297 () Bool)

(assert (=> b!273886 m!289297))

(declare-fun m!289299 () Bool)

(assert (=> b!273886 m!289299))

(declare-fun m!289301 () Bool)

(assert (=> b!273886 m!289301))

(assert (=> b!273886 m!289297))

(declare-fun m!289303 () Bool)

(assert (=> b!273886 m!289303))

(assert (=> b!273886 m!289291))

(declare-fun m!289305 () Bool)

(assert (=> b!273886 m!289305))

(declare-fun m!289307 () Bool)

(assert (=> b!273891 m!289307))

(assert (=> b!273884 m!289297))

(assert (=> b!273884 m!289297))

(declare-fun m!289309 () Bool)

(assert (=> b!273884 m!289309))

(declare-fun m!289311 () Bool)

(assert (=> b!273890 m!289311))

(declare-fun m!289313 () Bool)

(assert (=> b!273885 m!289313))

(check-sat (not b!273883) (not b!273890) (not b!273887) (not b!273891) (not b!273884) (not b!273886) (not start!26418) (not b!273885))
(check-sat)
