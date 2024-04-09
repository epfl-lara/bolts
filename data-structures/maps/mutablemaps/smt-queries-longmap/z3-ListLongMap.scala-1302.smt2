; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26382 () Bool)

(assert start!26382)

(declare-fun b!273397 () Bool)

(declare-fun res!137429 () Bool)

(declare-fun e!175237 () Bool)

(assert (=> b!273397 (=> (not res!137429) (not e!175237))))

(declare-datatypes ((array!13468 0))(
  ( (array!13469 (arr!6383 (Array (_ BitVec 32) (_ BitVec 64))) (size!6735 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13468)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!273397 (= res!137429 (and (= (size!6735 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6735 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6735 a!3325))))))

(declare-fun b!273399 () Bool)

(declare-fun res!137432 () Bool)

(assert (=> b!273399 (=> (not res!137432) (not e!175237))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273399 (= res!137432 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273400 () Bool)

(declare-fun e!175239 () Bool)

(declare-fun e!175238 () Bool)

(assert (=> b!273400 (= e!175239 e!175238)))

(declare-fun res!137425 () Bool)

(assert (=> b!273400 (=> (not res!137425) (not e!175238))))

(assert (=> b!273400 (= res!137425 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136405 () array!13468)

(assert (=> b!273400 (= lt!136405 (array!13469 (store (arr!6383 a!3325) i!1267 k0!2581) (size!6735 a!3325)))))

(declare-fun b!273401 () Bool)

(declare-fun res!137430 () Bool)

(assert (=> b!273401 (=> (not res!137430) (not e!175237))))

(declare-datatypes ((List!4212 0))(
  ( (Nil!4209) (Cons!4208 (h!4875 (_ BitVec 64)) (t!9302 List!4212)) )
))
(declare-fun arrayNoDuplicates!0 (array!13468 (_ BitVec 32) List!4212) Bool)

(assert (=> b!273401 (= res!137430 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4209))))

(declare-fun b!273402 () Bool)

(assert (=> b!273402 (= e!175237 e!175239)))

(declare-fun res!137426 () Bool)

(assert (=> b!273402 (=> (not res!137426) (not e!175239))))

(declare-datatypes ((SeekEntryResult!1552 0))(
  ( (MissingZero!1552 (index!8378 (_ BitVec 32))) (Found!1552 (index!8379 (_ BitVec 32))) (Intermediate!1552 (undefined!2364 Bool) (index!8380 (_ BitVec 32)) (x!26653 (_ BitVec 32))) (Undefined!1552) (MissingVacant!1552 (index!8381 (_ BitVec 32))) )
))
(declare-fun lt!136407 () SeekEntryResult!1552)

(assert (=> b!273402 (= res!137426 (or (= lt!136407 (MissingZero!1552 i!1267)) (= lt!136407 (MissingVacant!1552 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13468 (_ BitVec 32)) SeekEntryResult!1552)

(assert (=> b!273402 (= lt!136407 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273403 () Bool)

(declare-fun res!137433 () Bool)

(assert (=> b!273403 (=> (not res!137433) (not e!175238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273403 (= res!137433 (validKeyInArray!0 (select (arr!6383 a!3325) startIndex!26)))))

(declare-fun b!273398 () Bool)

(assert (=> b!273398 (= e!175238 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13468 (_ BitVec 32)) Bool)

(assert (=> b!273398 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8570 0))(
  ( (Unit!8571) )
))
(declare-fun lt!136408 () Unit!8570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8570)

(assert (=> b!273398 (= lt!136408 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273398 (= (seekEntryOrOpen!0 (select (arr!6383 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6383 a!3325) i!1267 k0!2581) startIndex!26) lt!136405 mask!3868))))

(declare-fun lt!136409 () Unit!8570)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13468 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8570)

(assert (=> b!273398 (= lt!136409 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!273398 (arrayNoDuplicates!0 lt!136405 #b00000000000000000000000000000000 Nil!4209)))

(declare-fun lt!136406 () Unit!8570)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13468 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4212) Unit!8570)

(assert (=> b!273398 (= lt!136406 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4209))))

(declare-fun res!137428 () Bool)

(assert (=> start!26382 (=> (not res!137428) (not e!175237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26382 (= res!137428 (validMask!0 mask!3868))))

(assert (=> start!26382 e!175237))

(declare-fun array_inv!4337 (array!13468) Bool)

(assert (=> start!26382 (array_inv!4337 a!3325)))

(assert (=> start!26382 true))

(declare-fun b!273404 () Bool)

(declare-fun res!137431 () Bool)

(assert (=> b!273404 (=> (not res!137431) (not e!175239))))

(assert (=> b!273404 (= res!137431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273405 () Bool)

(declare-fun res!137427 () Bool)

(assert (=> b!273405 (=> (not res!137427) (not e!175237))))

(assert (=> b!273405 (= res!137427 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26382 res!137428) b!273397))

(assert (= (and b!273397 res!137429) b!273405))

(assert (= (and b!273405 res!137427) b!273401))

(assert (= (and b!273401 res!137430) b!273399))

(assert (= (and b!273399 res!137432) b!273402))

(assert (= (and b!273402 res!137426) b!273404))

(assert (= (and b!273404 res!137431) b!273400))

(assert (= (and b!273400 res!137425) b!273403))

(assert (= (and b!273403 res!137433) b!273398))

(declare-fun m!288631 () Bool)

(assert (=> b!273404 m!288631))

(declare-fun m!288633 () Bool)

(assert (=> b!273400 m!288633))

(declare-fun m!288635 () Bool)

(assert (=> b!273402 m!288635))

(declare-fun m!288637 () Bool)

(assert (=> start!26382 m!288637))

(declare-fun m!288639 () Bool)

(assert (=> start!26382 m!288639))

(declare-fun m!288641 () Bool)

(assert (=> b!273401 m!288641))

(declare-fun m!288643 () Bool)

(assert (=> b!273403 m!288643))

(assert (=> b!273403 m!288643))

(declare-fun m!288645 () Bool)

(assert (=> b!273403 m!288645))

(declare-fun m!288647 () Bool)

(assert (=> b!273405 m!288647))

(declare-fun m!288649 () Bool)

(assert (=> b!273399 m!288649))

(declare-fun m!288651 () Bool)

(assert (=> b!273398 m!288651))

(declare-fun m!288653 () Bool)

(assert (=> b!273398 m!288653))

(declare-fun m!288655 () Bool)

(assert (=> b!273398 m!288655))

(assert (=> b!273398 m!288653))

(assert (=> b!273398 m!288633))

(declare-fun m!288657 () Bool)

(assert (=> b!273398 m!288657))

(assert (=> b!273398 m!288643))

(declare-fun m!288659 () Bool)

(assert (=> b!273398 m!288659))

(declare-fun m!288661 () Bool)

(assert (=> b!273398 m!288661))

(declare-fun m!288663 () Bool)

(assert (=> b!273398 m!288663))

(assert (=> b!273398 m!288643))

(declare-fun m!288665 () Bool)

(assert (=> b!273398 m!288665))

(check-sat (not b!273399) (not b!273403) (not b!273405) (not b!273398) (not start!26382) (not b!273401) (not b!273404) (not b!273402))
(check-sat)
