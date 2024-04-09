; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26448 () Bool)

(assert start!26448)

(declare-fun b!274302 () Bool)

(declare-fun res!138336 () Bool)

(declare-fun e!175650 () Bool)

(assert (=> b!274302 (=> (not res!138336) (not e!175650))))

(declare-datatypes ((array!13534 0))(
  ( (array!13535 (arr!6416 (Array (_ BitVec 32) (_ BitVec 64))) (size!6768 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13534)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!274302 (= res!138336 (and (= (size!6768 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6768 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6768 a!3325))))))

(declare-fun b!274303 () Bool)

(declare-fun res!138339 () Bool)

(assert (=> b!274303 (=> (not res!138339) (not e!175650))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274303 (= res!138339 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274304 () Bool)

(declare-fun e!175651 () Bool)

(declare-fun e!175649 () Bool)

(assert (=> b!274304 (= e!175651 (not e!175649))))

(declare-fun res!138333 () Bool)

(assert (=> b!274304 (=> res!138333 e!175649)))

(assert (=> b!274304 (= res!138333 (or (bvsge startIndex!26 (bvsub (size!6768 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13534 (_ BitVec 32)) Bool)

(assert (=> b!274304 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8636 0))(
  ( (Unit!8637) )
))
(declare-fun lt!136918 () Unit!8636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8636)

(assert (=> b!274304 (= lt!136918 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136917 () array!13534)

(declare-datatypes ((SeekEntryResult!1585 0))(
  ( (MissingZero!1585 (index!8510 (_ BitVec 32))) (Found!1585 (index!8511 (_ BitVec 32))) (Intermediate!1585 (undefined!2397 Bool) (index!8512 (_ BitVec 32)) (x!26774 (_ BitVec 32))) (Undefined!1585) (MissingVacant!1585 (index!8513 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13534 (_ BitVec 32)) SeekEntryResult!1585)

(assert (=> b!274304 (= (seekEntryOrOpen!0 (select (arr!6416 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6416 a!3325) i!1267 k0!2581) startIndex!26) lt!136917 mask!3868))))

(declare-fun lt!136916 () Unit!8636)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13534 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8636)

(assert (=> b!274304 (= lt!136916 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4245 0))(
  ( (Nil!4242) (Cons!4241 (h!4908 (_ BitVec 64)) (t!9335 List!4245)) )
))
(declare-fun arrayNoDuplicates!0 (array!13534 (_ BitVec 32) List!4245) Bool)

(assert (=> b!274304 (arrayNoDuplicates!0 lt!136917 #b00000000000000000000000000000000 Nil!4242)))

(declare-fun lt!136915 () Unit!8636)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13534 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4245) Unit!8636)

(assert (=> b!274304 (= lt!136915 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4242))))

(declare-fun b!274305 () Bool)

(declare-fun e!175647 () Bool)

(assert (=> b!274305 (= e!175647 e!175651)))

(declare-fun res!138330 () Bool)

(assert (=> b!274305 (=> (not res!138330) (not e!175651))))

(assert (=> b!274305 (= res!138330 (not (= startIndex!26 i!1267)))))

(assert (=> b!274305 (= lt!136917 (array!13535 (store (arr!6416 a!3325) i!1267 k0!2581) (size!6768 a!3325)))))

(declare-fun b!274306 () Bool)

(declare-fun res!138331 () Bool)

(assert (=> b!274306 (=> (not res!138331) (not e!175647))))

(assert (=> b!274306 (= res!138331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274307 () Bool)

(assert (=> b!274307 (= e!175649 true)))

(assert (=> b!274307 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136917 mask!3868)))

(declare-fun lt!136914 () Unit!8636)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13534 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8636)

(assert (=> b!274307 (= lt!136914 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274308 () Bool)

(declare-fun res!138335 () Bool)

(assert (=> b!274308 (=> (not res!138335) (not e!175650))))

(assert (=> b!274308 (= res!138335 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4242))))

(declare-fun b!274310 () Bool)

(declare-fun res!138338 () Bool)

(assert (=> b!274310 (=> (not res!138338) (not e!175650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274310 (= res!138338 (validKeyInArray!0 k0!2581))))

(declare-fun b!274311 () Bool)

(declare-fun res!138334 () Bool)

(assert (=> b!274311 (=> (not res!138334) (not e!175651))))

(assert (=> b!274311 (= res!138334 (validKeyInArray!0 (select (arr!6416 a!3325) startIndex!26)))))

(declare-fun b!274309 () Bool)

(assert (=> b!274309 (= e!175650 e!175647)))

(declare-fun res!138332 () Bool)

(assert (=> b!274309 (=> (not res!138332) (not e!175647))))

(declare-fun lt!136919 () SeekEntryResult!1585)

(assert (=> b!274309 (= res!138332 (or (= lt!136919 (MissingZero!1585 i!1267)) (= lt!136919 (MissingVacant!1585 i!1267))))))

(assert (=> b!274309 (= lt!136919 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!138337 () Bool)

(assert (=> start!26448 (=> (not res!138337) (not e!175650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26448 (= res!138337 (validMask!0 mask!3868))))

(assert (=> start!26448 e!175650))

(declare-fun array_inv!4370 (array!13534) Bool)

(assert (=> start!26448 (array_inv!4370 a!3325)))

(assert (=> start!26448 true))

(assert (= (and start!26448 res!138337) b!274302))

(assert (= (and b!274302 res!138336) b!274310))

(assert (= (and b!274310 res!138338) b!274308))

(assert (= (and b!274308 res!138335) b!274303))

(assert (= (and b!274303 res!138339) b!274309))

(assert (= (and b!274309 res!138332) b!274306))

(assert (= (and b!274306 res!138331) b!274305))

(assert (= (and b!274305 res!138330) b!274311))

(assert (= (and b!274311 res!138334) b!274304))

(assert (= (and b!274304 (not res!138333)) b!274307))

(declare-fun m!289835 () Bool)

(assert (=> b!274306 m!289835))

(declare-fun m!289837 () Bool)

(assert (=> b!274309 m!289837))

(declare-fun m!289839 () Bool)

(assert (=> b!274307 m!289839))

(declare-fun m!289841 () Bool)

(assert (=> b!274307 m!289841))

(declare-fun m!289843 () Bool)

(assert (=> start!26448 m!289843))

(declare-fun m!289845 () Bool)

(assert (=> start!26448 m!289845))

(declare-fun m!289847 () Bool)

(assert (=> b!274304 m!289847))

(declare-fun m!289849 () Bool)

(assert (=> b!274304 m!289849))

(declare-fun m!289851 () Bool)

(assert (=> b!274304 m!289851))

(declare-fun m!289853 () Bool)

(assert (=> b!274304 m!289853))

(declare-fun m!289855 () Bool)

(assert (=> b!274304 m!289855))

(declare-fun m!289857 () Bool)

(assert (=> b!274304 m!289857))

(declare-fun m!289859 () Bool)

(assert (=> b!274304 m!289859))

(assert (=> b!274304 m!289851))

(declare-fun m!289861 () Bool)

(assert (=> b!274304 m!289861))

(declare-fun m!289863 () Bool)

(assert (=> b!274304 m!289863))

(assert (=> b!274304 m!289857))

(declare-fun m!289865 () Bool)

(assert (=> b!274304 m!289865))

(assert (=> b!274311 m!289857))

(assert (=> b!274311 m!289857))

(declare-fun m!289867 () Bool)

(assert (=> b!274311 m!289867))

(declare-fun m!289869 () Bool)

(assert (=> b!274308 m!289869))

(declare-fun m!289871 () Bool)

(assert (=> b!274303 m!289871))

(assert (=> b!274305 m!289853))

(declare-fun m!289873 () Bool)

(assert (=> b!274310 m!289873))

(check-sat (not b!274309) (not b!274308) (not b!274304) (not b!274303) (not b!274306) (not b!274310) (not start!26448) (not b!274307) (not b!274311))
(check-sat)
