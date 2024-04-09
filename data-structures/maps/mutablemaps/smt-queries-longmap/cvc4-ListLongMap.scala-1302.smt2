; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26384 () Bool)

(assert start!26384)

(declare-fun b!273424 () Bool)

(declare-fun res!137454 () Bool)

(declare-fun e!175252 () Bool)

(assert (=> b!273424 (=> (not res!137454) (not e!175252))))

(declare-datatypes ((array!13470 0))(
  ( (array!13471 (arr!6384 (Array (_ BitVec 32) (_ BitVec 64))) (size!6736 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13470)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273424 (= res!137454 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273425 () Bool)

(declare-fun e!175249 () Bool)

(assert (=> b!273425 (= e!175249 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13470 (_ BitVec 32)) Bool)

(assert (=> b!273425 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8572 0))(
  ( (Unit!8573) )
))
(declare-fun lt!136421 () Unit!8572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8572)

(assert (=> b!273425 (= lt!136421 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136422 () array!13470)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1553 0))(
  ( (MissingZero!1553 (index!8382 (_ BitVec 32))) (Found!1553 (index!8383 (_ BitVec 32))) (Intermediate!1553 (undefined!2365 Bool) (index!8384 (_ BitVec 32)) (x!26654 (_ BitVec 32))) (Undefined!1553) (MissingVacant!1553 (index!8385 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13470 (_ BitVec 32)) SeekEntryResult!1553)

(assert (=> b!273425 (= (seekEntryOrOpen!0 (select (arr!6384 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6384 a!3325) i!1267 k!2581) startIndex!26) lt!136422 mask!3868))))

(declare-fun lt!136424 () Unit!8572)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13470 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8572)

(assert (=> b!273425 (= lt!136424 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4213 0))(
  ( (Nil!4210) (Cons!4209 (h!4876 (_ BitVec 64)) (t!9303 List!4213)) )
))
(declare-fun arrayNoDuplicates!0 (array!13470 (_ BitVec 32) List!4213) Bool)

(assert (=> b!273425 (arrayNoDuplicates!0 lt!136422 #b00000000000000000000000000000000 Nil!4210)))

(declare-fun lt!136420 () Unit!8572)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13470 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4213) Unit!8572)

(assert (=> b!273425 (= lt!136420 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4210))))

(declare-fun b!273426 () Bool)

(declare-fun res!137455 () Bool)

(assert (=> b!273426 (=> (not res!137455) (not e!175252))))

(assert (=> b!273426 (= res!137455 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4210))))

(declare-fun res!137452 () Bool)

(assert (=> start!26384 (=> (not res!137452) (not e!175252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26384 (= res!137452 (validMask!0 mask!3868))))

(assert (=> start!26384 e!175252))

(declare-fun array_inv!4338 (array!13470) Bool)

(assert (=> start!26384 (array_inv!4338 a!3325)))

(assert (=> start!26384 true))

(declare-fun b!273427 () Bool)

(declare-fun res!137458 () Bool)

(assert (=> b!273427 (=> (not res!137458) (not e!175252))))

(assert (=> b!273427 (= res!137458 (and (= (size!6736 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6736 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6736 a!3325))))))

(declare-fun b!273428 () Bool)

(declare-fun res!137456 () Bool)

(assert (=> b!273428 (=> (not res!137456) (not e!175249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273428 (= res!137456 (validKeyInArray!0 (select (arr!6384 a!3325) startIndex!26)))))

(declare-fun b!273429 () Bool)

(declare-fun e!175251 () Bool)

(assert (=> b!273429 (= e!175252 e!175251)))

(declare-fun res!137453 () Bool)

(assert (=> b!273429 (=> (not res!137453) (not e!175251))))

(declare-fun lt!136423 () SeekEntryResult!1553)

(assert (=> b!273429 (= res!137453 (or (= lt!136423 (MissingZero!1553 i!1267)) (= lt!136423 (MissingVacant!1553 i!1267))))))

(assert (=> b!273429 (= lt!136423 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273430 () Bool)

(declare-fun res!137460 () Bool)

(assert (=> b!273430 (=> (not res!137460) (not e!175251))))

(assert (=> b!273430 (= res!137460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273431 () Bool)

(assert (=> b!273431 (= e!175251 e!175249)))

(declare-fun res!137459 () Bool)

(assert (=> b!273431 (=> (not res!137459) (not e!175249))))

(assert (=> b!273431 (= res!137459 (not (= startIndex!26 i!1267)))))

(assert (=> b!273431 (= lt!136422 (array!13471 (store (arr!6384 a!3325) i!1267 k!2581) (size!6736 a!3325)))))

(declare-fun b!273432 () Bool)

(declare-fun res!137457 () Bool)

(assert (=> b!273432 (=> (not res!137457) (not e!175252))))

(assert (=> b!273432 (= res!137457 (validKeyInArray!0 k!2581))))

(assert (= (and start!26384 res!137452) b!273427))

(assert (= (and b!273427 res!137458) b!273432))

(assert (= (and b!273432 res!137457) b!273426))

(assert (= (and b!273426 res!137455) b!273424))

(assert (= (and b!273424 res!137454) b!273429))

(assert (= (and b!273429 res!137453) b!273430))

(assert (= (and b!273430 res!137460) b!273431))

(assert (= (and b!273431 res!137459) b!273428))

(assert (= (and b!273428 res!137456) b!273425))

(declare-fun m!288667 () Bool)

(assert (=> b!273424 m!288667))

(declare-fun m!288669 () Bool)

(assert (=> b!273426 m!288669))

(declare-fun m!288671 () Bool)

(assert (=> start!26384 m!288671))

(declare-fun m!288673 () Bool)

(assert (=> start!26384 m!288673))

(declare-fun m!288675 () Bool)

(assert (=> b!273428 m!288675))

(assert (=> b!273428 m!288675))

(declare-fun m!288677 () Bool)

(assert (=> b!273428 m!288677))

(declare-fun m!288679 () Bool)

(assert (=> b!273425 m!288679))

(declare-fun m!288681 () Bool)

(assert (=> b!273425 m!288681))

(assert (=> b!273425 m!288681))

(declare-fun m!288683 () Bool)

(assert (=> b!273425 m!288683))

(declare-fun m!288685 () Bool)

(assert (=> b!273425 m!288685))

(declare-fun m!288687 () Bool)

(assert (=> b!273425 m!288687))

(declare-fun m!288689 () Bool)

(assert (=> b!273425 m!288689))

(assert (=> b!273425 m!288675))

(declare-fun m!288691 () Bool)

(assert (=> b!273425 m!288691))

(declare-fun m!288693 () Bool)

(assert (=> b!273425 m!288693))

(assert (=> b!273425 m!288675))

(declare-fun m!288695 () Bool)

(assert (=> b!273425 m!288695))

(declare-fun m!288697 () Bool)

(assert (=> b!273429 m!288697))

(declare-fun m!288699 () Bool)

(assert (=> b!273430 m!288699))

(assert (=> b!273431 m!288687))

(declare-fun m!288701 () Bool)

(assert (=> b!273432 m!288701))

(push 1)

