; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26454 () Bool)

(assert start!26454)

(declare-fun b!274392 () Bool)

(declare-fun res!138421 () Bool)

(declare-fun e!175696 () Bool)

(assert (=> b!274392 (=> (not res!138421) (not e!175696))))

(declare-datatypes ((array!13540 0))(
  ( (array!13541 (arr!6419 (Array (_ BitVec 32) (_ BitVec 64))) (size!6771 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13540)

(declare-datatypes ((List!4248 0))(
  ( (Nil!4245) (Cons!4244 (h!4911 (_ BitVec 64)) (t!9338 List!4248)) )
))
(declare-fun arrayNoDuplicates!0 (array!13540 (_ BitVec 32) List!4248) Bool)

(assert (=> b!274392 (= res!138421 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4245))))

(declare-fun b!274393 () Bool)

(declare-fun res!138428 () Bool)

(assert (=> b!274393 (=> (not res!138428) (not e!175696))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274393 (= res!138428 (validKeyInArray!0 k0!2581))))

(declare-fun res!138429 () Bool)

(assert (=> start!26454 (=> (not res!138429) (not e!175696))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26454 (= res!138429 (validMask!0 mask!3868))))

(assert (=> start!26454 e!175696))

(declare-fun array_inv!4373 (array!13540) Bool)

(assert (=> start!26454 (array_inv!4373 a!3325)))

(assert (=> start!26454 true))

(declare-fun b!274394 () Bool)

(declare-fun e!175695 () Bool)

(declare-fun e!175693 () Bool)

(assert (=> b!274394 (= e!175695 (not e!175693))))

(declare-fun res!138425 () Bool)

(assert (=> b!274394 (=> res!138425 e!175693)))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274394 (= res!138425 (or (bvsge startIndex!26 (bvsub (size!6771 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13540 (_ BitVec 32)) Bool)

(assert (=> b!274394 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8642 0))(
  ( (Unit!8643) )
))
(declare-fun lt!136971 () Unit!8642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8642)

(assert (=> b!274394 (= lt!136971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!136972 () array!13540)

(declare-datatypes ((SeekEntryResult!1588 0))(
  ( (MissingZero!1588 (index!8522 (_ BitVec 32))) (Found!1588 (index!8523 (_ BitVec 32))) (Intermediate!1588 (undefined!2400 Bool) (index!8524 (_ BitVec 32)) (x!26785 (_ BitVec 32))) (Undefined!1588) (MissingVacant!1588 (index!8525 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13540 (_ BitVec 32)) SeekEntryResult!1588)

(assert (=> b!274394 (= (seekEntryOrOpen!0 (select (arr!6419 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6419 a!3325) i!1267 k0!2581) startIndex!26) lt!136972 mask!3868))))

(declare-fun lt!136973 () Unit!8642)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13540 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8642)

(assert (=> b!274394 (= lt!136973 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!274394 (arrayNoDuplicates!0 lt!136972 #b00000000000000000000000000000000 Nil!4245)))

(declare-fun lt!136969 () Unit!8642)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13540 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4248) Unit!8642)

(assert (=> b!274394 (= lt!136969 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4245))))

(declare-fun b!274395 () Bool)

(declare-fun e!175694 () Bool)

(assert (=> b!274395 (= e!175696 e!175694)))

(declare-fun res!138422 () Bool)

(assert (=> b!274395 (=> (not res!138422) (not e!175694))))

(declare-fun lt!136968 () SeekEntryResult!1588)

(assert (=> b!274395 (= res!138422 (or (= lt!136968 (MissingZero!1588 i!1267)) (= lt!136968 (MissingVacant!1588 i!1267))))))

(assert (=> b!274395 (= lt!136968 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274396 () Bool)

(assert (=> b!274396 (= e!175693 true)))

(assert (=> b!274396 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136972 mask!3868)))

(declare-fun lt!136970 () Unit!8642)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13540 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8642)

(assert (=> b!274396 (= lt!136970 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274397 () Bool)

(declare-fun res!138427 () Bool)

(assert (=> b!274397 (=> (not res!138427) (not e!175696))))

(assert (=> b!274397 (= res!138427 (and (= (size!6771 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6771 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6771 a!3325))))))

(declare-fun b!274398 () Bool)

(declare-fun res!138426 () Bool)

(assert (=> b!274398 (=> (not res!138426) (not e!175696))))

(declare-fun arrayContainsKey!0 (array!13540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274398 (= res!138426 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274399 () Bool)

(declare-fun res!138420 () Bool)

(assert (=> b!274399 (=> (not res!138420) (not e!175695))))

(assert (=> b!274399 (= res!138420 (validKeyInArray!0 (select (arr!6419 a!3325) startIndex!26)))))

(declare-fun b!274400 () Bool)

(declare-fun res!138424 () Bool)

(assert (=> b!274400 (=> (not res!138424) (not e!175694))))

(assert (=> b!274400 (= res!138424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274401 () Bool)

(assert (=> b!274401 (= e!175694 e!175695)))

(declare-fun res!138423 () Bool)

(assert (=> b!274401 (=> (not res!138423) (not e!175695))))

(assert (=> b!274401 (= res!138423 (not (= startIndex!26 i!1267)))))

(assert (=> b!274401 (= lt!136972 (array!13541 (store (arr!6419 a!3325) i!1267 k0!2581) (size!6771 a!3325)))))

(assert (= (and start!26454 res!138429) b!274397))

(assert (= (and b!274397 res!138427) b!274393))

(assert (= (and b!274393 res!138428) b!274392))

(assert (= (and b!274392 res!138421) b!274398))

(assert (= (and b!274398 res!138426) b!274395))

(assert (= (and b!274395 res!138422) b!274400))

(assert (= (and b!274400 res!138424) b!274401))

(assert (= (and b!274401 res!138423) b!274399))

(assert (= (and b!274399 res!138420) b!274394))

(assert (= (and b!274394 (not res!138425)) b!274396))

(declare-fun m!289955 () Bool)

(assert (=> b!274392 m!289955))

(declare-fun m!289957 () Bool)

(assert (=> b!274394 m!289957))

(declare-fun m!289959 () Bool)

(assert (=> b!274394 m!289959))

(declare-fun m!289961 () Bool)

(assert (=> b!274394 m!289961))

(declare-fun m!289963 () Bool)

(assert (=> b!274394 m!289963))

(assert (=> b!274394 m!289959))

(declare-fun m!289965 () Bool)

(assert (=> b!274394 m!289965))

(declare-fun m!289967 () Bool)

(assert (=> b!274394 m!289967))

(declare-fun m!289969 () Bool)

(assert (=> b!274394 m!289969))

(declare-fun m!289971 () Bool)

(assert (=> b!274394 m!289971))

(declare-fun m!289973 () Bool)

(assert (=> b!274394 m!289973))

(assert (=> b!274394 m!289969))

(declare-fun m!289975 () Bool)

(assert (=> b!274394 m!289975))

(declare-fun m!289977 () Bool)

(assert (=> b!274398 m!289977))

(declare-fun m!289979 () Bool)

(assert (=> start!26454 m!289979))

(declare-fun m!289981 () Bool)

(assert (=> start!26454 m!289981))

(declare-fun m!289983 () Bool)

(assert (=> b!274393 m!289983))

(declare-fun m!289985 () Bool)

(assert (=> b!274395 m!289985))

(assert (=> b!274401 m!289965))

(assert (=> b!274399 m!289969))

(assert (=> b!274399 m!289969))

(declare-fun m!289987 () Bool)

(assert (=> b!274399 m!289987))

(declare-fun m!289989 () Bool)

(assert (=> b!274400 m!289989))

(declare-fun m!289991 () Bool)

(assert (=> b!274396 m!289991))

(declare-fun m!289993 () Bool)

(assert (=> b!274396 m!289993))

(check-sat (not b!274399) (not b!274400) (not start!26454) (not b!274392) (not b!274395) (not b!274394) (not b!274393) (not b!274396) (not b!274398))
(check-sat)
