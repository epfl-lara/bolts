; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26380 () Bool)

(assert start!26380)

(declare-fun b!273370 () Bool)

(declare-fun e!175227 () Bool)

(declare-fun e!175226 () Bool)

(assert (=> b!273370 (= e!175227 e!175226)))

(declare-fun res!137405 () Bool)

(assert (=> b!273370 (=> (not res!137405) (not e!175226))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273370 (= res!137405 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!13466 0))(
  ( (array!13467 (arr!6382 (Array (_ BitVec 32) (_ BitVec 64))) (size!6734 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13466)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!136391 () array!13466)

(assert (=> b!273370 (= lt!136391 (array!13467 (store (arr!6382 a!3325) i!1267 k!2581) (size!6734 a!3325)))))

(declare-fun res!137404 () Bool)

(declare-fun e!175228 () Bool)

(assert (=> start!26380 (=> (not res!137404) (not e!175228))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26380 (= res!137404 (validMask!0 mask!3868))))

(assert (=> start!26380 e!175228))

(declare-fun array_inv!4336 (array!13466) Bool)

(assert (=> start!26380 (array_inv!4336 a!3325)))

(assert (=> start!26380 true))

(declare-fun b!273371 () Bool)

(assert (=> b!273371 (= e!175228 e!175227)))

(declare-fun res!137402 () Bool)

(assert (=> b!273371 (=> (not res!137402) (not e!175227))))

(declare-datatypes ((SeekEntryResult!1551 0))(
  ( (MissingZero!1551 (index!8374 (_ BitVec 32))) (Found!1551 (index!8375 (_ BitVec 32))) (Intermediate!1551 (undefined!2363 Bool) (index!8376 (_ BitVec 32)) (x!26652 (_ BitVec 32))) (Undefined!1551) (MissingVacant!1551 (index!8377 (_ BitVec 32))) )
))
(declare-fun lt!136393 () SeekEntryResult!1551)

(assert (=> b!273371 (= res!137402 (or (= lt!136393 (MissingZero!1551 i!1267)) (= lt!136393 (MissingVacant!1551 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13466 (_ BitVec 32)) SeekEntryResult!1551)

(assert (=> b!273371 (= lt!136393 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273372 () Bool)

(assert (=> b!273372 (= e!175226 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13466 (_ BitVec 32)) Bool)

(assert (=> b!273372 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8568 0))(
  ( (Unit!8569) )
))
(declare-fun lt!136394 () Unit!8568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8568)

(assert (=> b!273372 (= lt!136394 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273372 (= (seekEntryOrOpen!0 (select (arr!6382 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6382 a!3325) i!1267 k!2581) startIndex!26) lt!136391 mask!3868))))

(declare-fun lt!136390 () Unit!8568)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13466 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8568)

(assert (=> b!273372 (= lt!136390 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4211 0))(
  ( (Nil!4208) (Cons!4207 (h!4874 (_ BitVec 64)) (t!9301 List!4211)) )
))
(declare-fun arrayNoDuplicates!0 (array!13466 (_ BitVec 32) List!4211) Bool)

(assert (=> b!273372 (arrayNoDuplicates!0 lt!136391 #b00000000000000000000000000000000 Nil!4208)))

(declare-fun lt!136392 () Unit!8568)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4211) Unit!8568)

(assert (=> b!273372 (= lt!136392 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4208))))

(declare-fun b!273373 () Bool)

(declare-fun res!137403 () Bool)

(assert (=> b!273373 (=> (not res!137403) (not e!175228))))

(assert (=> b!273373 (= res!137403 (and (= (size!6734 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6734 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6734 a!3325))))))

(declare-fun b!273374 () Bool)

(declare-fun res!137398 () Bool)

(assert (=> b!273374 (=> (not res!137398) (not e!175228))))

(assert (=> b!273374 (= res!137398 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4208))))

(declare-fun b!273375 () Bool)

(declare-fun res!137399 () Bool)

(assert (=> b!273375 (=> (not res!137399) (not e!175228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273375 (= res!137399 (validKeyInArray!0 k!2581))))

(declare-fun b!273376 () Bool)

(declare-fun res!137406 () Bool)

(assert (=> b!273376 (=> (not res!137406) (not e!175228))))

(declare-fun arrayContainsKey!0 (array!13466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273376 (= res!137406 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273377 () Bool)

(declare-fun res!137401 () Bool)

(assert (=> b!273377 (=> (not res!137401) (not e!175226))))

(assert (=> b!273377 (= res!137401 (validKeyInArray!0 (select (arr!6382 a!3325) startIndex!26)))))

(declare-fun b!273378 () Bool)

(declare-fun res!137400 () Bool)

(assert (=> b!273378 (=> (not res!137400) (not e!175227))))

(assert (=> b!273378 (= res!137400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26380 res!137404) b!273373))

(assert (= (and b!273373 res!137403) b!273375))

(assert (= (and b!273375 res!137399) b!273374))

(assert (= (and b!273374 res!137398) b!273376))

(assert (= (and b!273376 res!137406) b!273371))

(assert (= (and b!273371 res!137402) b!273378))

(assert (= (and b!273378 res!137400) b!273370))

(assert (= (and b!273370 res!137405) b!273377))

(assert (= (and b!273377 res!137401) b!273372))

(declare-fun m!288595 () Bool)

(assert (=> b!273370 m!288595))

(declare-fun m!288597 () Bool)

(assert (=> b!273371 m!288597))

(declare-fun m!288599 () Bool)

(assert (=> b!273374 m!288599))

(declare-fun m!288601 () Bool)

(assert (=> b!273376 m!288601))

(declare-fun m!288603 () Bool)

(assert (=> b!273375 m!288603))

(declare-fun m!288605 () Bool)

(assert (=> start!26380 m!288605))

(declare-fun m!288607 () Bool)

(assert (=> start!26380 m!288607))

(declare-fun m!288609 () Bool)

(assert (=> b!273372 m!288609))

(declare-fun m!288611 () Bool)

(assert (=> b!273372 m!288611))

(declare-fun m!288613 () Bool)

(assert (=> b!273372 m!288613))

(assert (=> b!273372 m!288595))

(declare-fun m!288615 () Bool)

(assert (=> b!273372 m!288615))

(declare-fun m!288617 () Bool)

(assert (=> b!273372 m!288617))

(declare-fun m!288619 () Bool)

(assert (=> b!273372 m!288619))

(declare-fun m!288621 () Bool)

(assert (=> b!273372 m!288621))

(assert (=> b!273372 m!288611))

(declare-fun m!288623 () Bool)

(assert (=> b!273372 m!288623))

(assert (=> b!273372 m!288617))

(declare-fun m!288625 () Bool)

(assert (=> b!273372 m!288625))

(declare-fun m!288627 () Bool)

(assert (=> b!273378 m!288627))

(assert (=> b!273377 m!288617))

(assert (=> b!273377 m!288617))

(declare-fun m!288629 () Bool)

(assert (=> b!273377 m!288629))

(push 1)

