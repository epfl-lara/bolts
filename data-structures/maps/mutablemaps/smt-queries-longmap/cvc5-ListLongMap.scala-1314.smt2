; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26452 () Bool)

(assert start!26452)

(declare-fun b!274362 () Bool)

(declare-fun res!138399 () Bool)

(declare-fun e!175677 () Bool)

(assert (=> b!274362 (=> (not res!138399) (not e!175677))))

(declare-datatypes ((array!13538 0))(
  ( (array!13539 (arr!6418 (Array (_ BitVec 32) (_ BitVec 64))) (size!6770 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13538)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13538 (_ BitVec 32)) Bool)

(assert (=> b!274362 (= res!138399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274363 () Bool)

(declare-fun res!138396 () Bool)

(declare-fun e!175679 () Bool)

(assert (=> b!274363 (=> (not res!138396) (not e!175679))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274363 (= res!138396 (validKeyInArray!0 (select (arr!6418 a!3325) startIndex!26)))))

(declare-fun b!274364 () Bool)

(declare-fun res!138391 () Bool)

(declare-fun e!175678 () Bool)

(assert (=> b!274364 (=> (not res!138391) (not e!175678))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274364 (= res!138391 (and (= (size!6770 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6770 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6770 a!3325))))))

(declare-fun b!274365 () Bool)

(declare-fun e!175680 () Bool)

(assert (=> b!274365 (= e!175680 true)))

(declare-fun lt!136951 () array!13538)

(assert (=> b!274365 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136951 mask!3868)))

(declare-datatypes ((Unit!8640 0))(
  ( (Unit!8641) )
))
(declare-fun lt!136954 () Unit!8640)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13538 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8640)

(assert (=> b!274365 (= lt!136954 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun res!138392 () Bool)

(assert (=> start!26452 (=> (not res!138392) (not e!175678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26452 (= res!138392 (validMask!0 mask!3868))))

(assert (=> start!26452 e!175678))

(declare-fun array_inv!4372 (array!13538) Bool)

(assert (=> start!26452 (array_inv!4372 a!3325)))

(assert (=> start!26452 true))

(declare-fun b!274366 () Bool)

(declare-fun res!138395 () Bool)

(assert (=> b!274366 (=> (not res!138395) (not e!175678))))

(assert (=> b!274366 (= res!138395 (validKeyInArray!0 k!2581))))

(declare-fun b!274367 () Bool)

(assert (=> b!274367 (= e!175678 e!175677)))

(declare-fun res!138390 () Bool)

(assert (=> b!274367 (=> (not res!138390) (not e!175677))))

(declare-datatypes ((SeekEntryResult!1587 0))(
  ( (MissingZero!1587 (index!8518 (_ BitVec 32))) (Found!1587 (index!8519 (_ BitVec 32))) (Intermediate!1587 (undefined!2399 Bool) (index!8520 (_ BitVec 32)) (x!26784 (_ BitVec 32))) (Undefined!1587) (MissingVacant!1587 (index!8521 (_ BitVec 32))) )
))
(declare-fun lt!136953 () SeekEntryResult!1587)

(assert (=> b!274367 (= res!138390 (or (= lt!136953 (MissingZero!1587 i!1267)) (= lt!136953 (MissingVacant!1587 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13538 (_ BitVec 32)) SeekEntryResult!1587)

(assert (=> b!274367 (= lt!136953 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274368 () Bool)

(assert (=> b!274368 (= e!175679 (not e!175680))))

(declare-fun res!138393 () Bool)

(assert (=> b!274368 (=> res!138393 e!175680)))

(assert (=> b!274368 (= res!138393 (or (bvsge startIndex!26 (bvsub (size!6770 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!274368 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!136952 () Unit!8640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8640)

(assert (=> b!274368 (= lt!136952 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274368 (= (seekEntryOrOpen!0 (select (arr!6418 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6418 a!3325) i!1267 k!2581) startIndex!26) lt!136951 mask!3868))))

(declare-fun lt!136950 () Unit!8640)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13538 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8640)

(assert (=> b!274368 (= lt!136950 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4247 0))(
  ( (Nil!4244) (Cons!4243 (h!4910 (_ BitVec 64)) (t!9337 List!4247)) )
))
(declare-fun arrayNoDuplicates!0 (array!13538 (_ BitVec 32) List!4247) Bool)

(assert (=> b!274368 (arrayNoDuplicates!0 lt!136951 #b00000000000000000000000000000000 Nil!4244)))

(declare-fun lt!136955 () Unit!8640)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13538 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4247) Unit!8640)

(assert (=> b!274368 (= lt!136955 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4244))))

(declare-fun b!274369 () Bool)

(declare-fun res!138394 () Bool)

(assert (=> b!274369 (=> (not res!138394) (not e!175678))))

(assert (=> b!274369 (= res!138394 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4244))))

(declare-fun b!274370 () Bool)

(declare-fun res!138398 () Bool)

(assert (=> b!274370 (=> (not res!138398) (not e!175678))))

(declare-fun arrayContainsKey!0 (array!13538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274370 (= res!138398 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274371 () Bool)

(assert (=> b!274371 (= e!175677 e!175679)))

(declare-fun res!138397 () Bool)

(assert (=> b!274371 (=> (not res!138397) (not e!175679))))

(assert (=> b!274371 (= res!138397 (not (= startIndex!26 i!1267)))))

(assert (=> b!274371 (= lt!136951 (array!13539 (store (arr!6418 a!3325) i!1267 k!2581) (size!6770 a!3325)))))

(assert (= (and start!26452 res!138392) b!274364))

(assert (= (and b!274364 res!138391) b!274366))

(assert (= (and b!274366 res!138395) b!274369))

(assert (= (and b!274369 res!138394) b!274370))

(assert (= (and b!274370 res!138398) b!274367))

(assert (= (and b!274367 res!138390) b!274362))

(assert (= (and b!274362 res!138399) b!274371))

(assert (= (and b!274371 res!138397) b!274363))

(assert (= (and b!274363 res!138396) b!274368))

(assert (= (and b!274368 (not res!138393)) b!274365))

(declare-fun m!289915 () Bool)

(assert (=> b!274371 m!289915))

(declare-fun m!289917 () Bool)

(assert (=> b!274363 m!289917))

(assert (=> b!274363 m!289917))

(declare-fun m!289919 () Bool)

(assert (=> b!274363 m!289919))

(declare-fun m!289921 () Bool)

(assert (=> b!274367 m!289921))

(declare-fun m!289923 () Bool)

(assert (=> b!274370 m!289923))

(declare-fun m!289925 () Bool)

(assert (=> b!274365 m!289925))

(declare-fun m!289927 () Bool)

(assert (=> b!274365 m!289927))

(declare-fun m!289929 () Bool)

(assert (=> b!274362 m!289929))

(declare-fun m!289931 () Bool)

(assert (=> b!274368 m!289931))

(declare-fun m!289933 () Bool)

(assert (=> b!274368 m!289933))

(declare-fun m!289935 () Bool)

(assert (=> b!274368 m!289935))

(assert (=> b!274368 m!289935))

(declare-fun m!289937 () Bool)

(assert (=> b!274368 m!289937))

(assert (=> b!274368 m!289915))

(declare-fun m!289939 () Bool)

(assert (=> b!274368 m!289939))

(assert (=> b!274368 m!289917))

(declare-fun m!289941 () Bool)

(assert (=> b!274368 m!289941))

(declare-fun m!289943 () Bool)

(assert (=> b!274368 m!289943))

(assert (=> b!274368 m!289917))

(declare-fun m!289945 () Bool)

(assert (=> b!274368 m!289945))

(declare-fun m!289947 () Bool)

(assert (=> b!274369 m!289947))

(declare-fun m!289949 () Bool)

(assert (=> start!26452 m!289949))

(declare-fun m!289951 () Bool)

(assert (=> start!26452 m!289951))

(declare-fun m!289953 () Bool)

(assert (=> b!274366 m!289953))

(push 1)

(assert (not start!26452))

(assert (not b!274369))

(assert (not b!274365))

(assert (not b!274368))

(assert (not b!274363))

(assert (not b!274367))

(assert (not b!274362))

(assert (not b!274370))

(assert (not b!274366))

(check-sat)

