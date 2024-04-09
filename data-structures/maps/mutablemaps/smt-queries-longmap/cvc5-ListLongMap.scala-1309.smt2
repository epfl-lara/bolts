; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26422 () Bool)

(assert start!26422)

(declare-fun res!137965 () Bool)

(declare-fun e!175477 () Bool)

(assert (=> start!26422 (=> (not res!137965) (not e!175477))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26422 (= res!137965 (validMask!0 mask!3868))))

(assert (=> start!26422 e!175477))

(declare-datatypes ((array!13508 0))(
  ( (array!13509 (arr!6403 (Array (_ BitVec 32) (_ BitVec 64))) (size!6755 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13508)

(declare-fun array_inv!4357 (array!13508) Bool)

(assert (=> start!26422 (array_inv!4357 a!3325)))

(assert (=> start!26422 true))

(declare-fun b!273937 () Bool)

(declare-fun e!175480 () Bool)

(declare-fun e!175479 () Bool)

(assert (=> b!273937 (= e!175480 e!175479)))

(declare-fun res!137969 () Bool)

(assert (=> b!273937 (=> (not res!137969) (not e!175479))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273937 (= res!137969 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136708 () array!13508)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!273937 (= lt!136708 (array!13509 (store (arr!6403 a!3325) i!1267 k!2581) (size!6755 a!3325)))))

(declare-fun b!273938 () Bool)

(assert (=> b!273938 (= e!175479 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13508 (_ BitVec 32)) Bool)

(assert (=> b!273938 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8610 0))(
  ( (Unit!8611) )
))
(declare-fun lt!136709 () Unit!8610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8610)

(assert (=> b!273938 (= lt!136709 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1572 0))(
  ( (MissingZero!1572 (index!8458 (_ BitVec 32))) (Found!1572 (index!8459 (_ BitVec 32))) (Intermediate!1572 (undefined!2384 Bool) (index!8460 (_ BitVec 32)) (x!26729 (_ BitVec 32))) (Undefined!1572) (MissingVacant!1572 (index!8461 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13508 (_ BitVec 32)) SeekEntryResult!1572)

(assert (=> b!273938 (= (seekEntryOrOpen!0 (select (arr!6403 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6403 a!3325) i!1267 k!2581) startIndex!26) lt!136708 mask!3868))))

(declare-fun lt!136706 () Unit!8610)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13508 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8610)

(assert (=> b!273938 (= lt!136706 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4232 0))(
  ( (Nil!4229) (Cons!4228 (h!4895 (_ BitVec 64)) (t!9322 List!4232)) )
))
(declare-fun arrayNoDuplicates!0 (array!13508 (_ BitVec 32) List!4232) Bool)

(assert (=> b!273938 (arrayNoDuplicates!0 lt!136708 #b00000000000000000000000000000000 Nil!4229)))

(declare-fun lt!136705 () Unit!8610)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4232) Unit!8610)

(assert (=> b!273938 (= lt!136705 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4229))))

(declare-fun b!273939 () Bool)

(declare-fun res!137971 () Bool)

(assert (=> b!273939 (=> (not res!137971) (not e!175480))))

(assert (=> b!273939 (= res!137971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273940 () Bool)

(declare-fun res!137972 () Bool)

(assert (=> b!273940 (=> (not res!137972) (not e!175477))))

(assert (=> b!273940 (= res!137972 (and (= (size!6755 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6755 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6755 a!3325))))))

(declare-fun b!273941 () Bool)

(declare-fun res!137973 () Bool)

(assert (=> b!273941 (=> (not res!137973) (not e!175477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273941 (= res!137973 (validKeyInArray!0 k!2581))))

(declare-fun b!273942 () Bool)

(declare-fun res!137966 () Bool)

(assert (=> b!273942 (=> (not res!137966) (not e!175477))))

(declare-fun arrayContainsKey!0 (array!13508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273942 (= res!137966 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273943 () Bool)

(declare-fun res!137970 () Bool)

(assert (=> b!273943 (=> (not res!137970) (not e!175479))))

(assert (=> b!273943 (= res!137970 (validKeyInArray!0 (select (arr!6403 a!3325) startIndex!26)))))

(declare-fun b!273944 () Bool)

(declare-fun res!137968 () Bool)

(assert (=> b!273944 (=> (not res!137968) (not e!175477))))

(assert (=> b!273944 (= res!137968 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4229))))

(declare-fun b!273945 () Bool)

(assert (=> b!273945 (= e!175477 e!175480)))

(declare-fun res!137967 () Bool)

(assert (=> b!273945 (=> (not res!137967) (not e!175480))))

(declare-fun lt!136707 () SeekEntryResult!1572)

(assert (=> b!273945 (= res!137967 (or (= lt!136707 (MissingZero!1572 i!1267)) (= lt!136707 (MissingVacant!1572 i!1267))))))

(assert (=> b!273945 (= lt!136707 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26422 res!137965) b!273940))

(assert (= (and b!273940 res!137972) b!273941))

(assert (= (and b!273941 res!137973) b!273944))

(assert (= (and b!273944 res!137968) b!273942))

(assert (= (and b!273942 res!137966) b!273945))

(assert (= (and b!273945 res!137967) b!273939))

(assert (= (and b!273939 res!137971) b!273937))

(assert (= (and b!273937 res!137969) b!273943))

(assert (= (and b!273943 res!137970) b!273938))

(declare-fun m!289351 () Bool)

(assert (=> b!273945 m!289351))

(declare-fun m!289353 () Bool)

(assert (=> b!273942 m!289353))

(declare-fun m!289355 () Bool)

(assert (=> b!273941 m!289355))

(declare-fun m!289357 () Bool)

(assert (=> b!273939 m!289357))

(declare-fun m!289359 () Bool)

(assert (=> b!273938 m!289359))

(declare-fun m!289361 () Bool)

(assert (=> b!273938 m!289361))

(declare-fun m!289363 () Bool)

(assert (=> b!273938 m!289363))

(declare-fun m!289365 () Bool)

(assert (=> b!273938 m!289365))

(assert (=> b!273938 m!289361))

(declare-fun m!289367 () Bool)

(assert (=> b!273938 m!289367))

(declare-fun m!289369 () Bool)

(assert (=> b!273938 m!289369))

(declare-fun m!289371 () Bool)

(assert (=> b!273938 m!289371))

(declare-fun m!289373 () Bool)

(assert (=> b!273938 m!289373))

(declare-fun m!289375 () Bool)

(assert (=> b!273938 m!289375))

(assert (=> b!273938 m!289371))

(declare-fun m!289377 () Bool)

(assert (=> b!273938 m!289377))

(assert (=> b!273943 m!289371))

(assert (=> b!273943 m!289371))

(declare-fun m!289379 () Bool)

(assert (=> b!273943 m!289379))

(assert (=> b!273937 m!289367))

(declare-fun m!289381 () Bool)

(assert (=> start!26422 m!289381))

(declare-fun m!289383 () Bool)

(assert (=> start!26422 m!289383))

(declare-fun m!289385 () Bool)

(assert (=> b!273944 m!289385))

(push 1)

