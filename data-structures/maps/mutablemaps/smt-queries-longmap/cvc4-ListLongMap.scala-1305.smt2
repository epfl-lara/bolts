; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26402 () Bool)

(assert start!26402)

(declare-fun b!273667 () Bool)

(declare-fun res!137699 () Bool)

(declare-fun e!175360 () Bool)

(assert (=> b!273667 (=> (not res!137699) (not e!175360))))

(declare-datatypes ((array!13488 0))(
  ( (array!13489 (arr!6393 (Array (_ BitVec 32) (_ BitVec 64))) (size!6745 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13488)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273667 (= res!137699 (validKeyInArray!0 (select (arr!6393 a!3325) startIndex!26)))))

(declare-fun b!273668 () Bool)

(declare-fun e!175357 () Bool)

(assert (=> b!273668 (= e!175357 e!175360)))

(declare-fun res!137696 () Bool)

(assert (=> b!273668 (=> (not res!137696) (not e!175360))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273668 (= res!137696 (not (= startIndex!26 i!1267)))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!136556 () array!13488)

(assert (=> b!273668 (= lt!136556 (array!13489 (store (arr!6393 a!3325) i!1267 k!2581) (size!6745 a!3325)))))

(declare-fun res!137702 () Bool)

(declare-fun e!175359 () Bool)

(assert (=> start!26402 (=> (not res!137702) (not e!175359))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26402 (= res!137702 (validMask!0 mask!3868))))

(assert (=> start!26402 e!175359))

(declare-fun array_inv!4347 (array!13488) Bool)

(assert (=> start!26402 (array_inv!4347 a!3325)))

(assert (=> start!26402 true))

(declare-fun b!273669 () Bool)

(declare-fun res!137700 () Bool)

(assert (=> b!273669 (=> (not res!137700) (not e!175359))))

(declare-datatypes ((List!4222 0))(
  ( (Nil!4219) (Cons!4218 (h!4885 (_ BitVec 64)) (t!9312 List!4222)) )
))
(declare-fun arrayNoDuplicates!0 (array!13488 (_ BitVec 32) List!4222) Bool)

(assert (=> b!273669 (= res!137700 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4219))))

(declare-fun b!273670 () Bool)

(declare-fun res!137695 () Bool)

(assert (=> b!273670 (=> (not res!137695) (not e!175357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13488 (_ BitVec 32)) Bool)

(assert (=> b!273670 (= res!137695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273671 () Bool)

(assert (=> b!273671 (= e!175360 (not true))))

(assert (=> b!273671 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8590 0))(
  ( (Unit!8591) )
))
(declare-fun lt!136559 () Unit!8590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8590)

(assert (=> b!273671 (= lt!136559 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1562 0))(
  ( (MissingZero!1562 (index!8418 (_ BitVec 32))) (Found!1562 (index!8419 (_ BitVec 32))) (Intermediate!1562 (undefined!2374 Bool) (index!8420 (_ BitVec 32)) (x!26687 (_ BitVec 32))) (Undefined!1562) (MissingVacant!1562 (index!8421 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13488 (_ BitVec 32)) SeekEntryResult!1562)

(assert (=> b!273671 (= (seekEntryOrOpen!0 (select (arr!6393 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6393 a!3325) i!1267 k!2581) startIndex!26) lt!136556 mask!3868))))

(declare-fun lt!136558 () Unit!8590)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13488 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8590)

(assert (=> b!273671 (= lt!136558 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273671 (arrayNoDuplicates!0 lt!136556 #b00000000000000000000000000000000 Nil!4219)))

(declare-fun lt!136555 () Unit!8590)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13488 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4222) Unit!8590)

(assert (=> b!273671 (= lt!136555 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4219))))

(declare-fun b!273672 () Bool)

(declare-fun res!137697 () Bool)

(assert (=> b!273672 (=> (not res!137697) (not e!175359))))

(declare-fun arrayContainsKey!0 (array!13488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273672 (= res!137697 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273673 () Bool)

(assert (=> b!273673 (= e!175359 e!175357)))

(declare-fun res!137703 () Bool)

(assert (=> b!273673 (=> (not res!137703) (not e!175357))))

(declare-fun lt!136557 () SeekEntryResult!1562)

(assert (=> b!273673 (= res!137703 (or (= lt!136557 (MissingZero!1562 i!1267)) (= lt!136557 (MissingVacant!1562 i!1267))))))

(assert (=> b!273673 (= lt!136557 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273674 () Bool)

(declare-fun res!137701 () Bool)

(assert (=> b!273674 (=> (not res!137701) (not e!175359))))

(assert (=> b!273674 (= res!137701 (validKeyInArray!0 k!2581))))

(declare-fun b!273675 () Bool)

(declare-fun res!137698 () Bool)

(assert (=> b!273675 (=> (not res!137698) (not e!175359))))

(assert (=> b!273675 (= res!137698 (and (= (size!6745 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6745 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6745 a!3325))))))

(assert (= (and start!26402 res!137702) b!273675))

(assert (= (and b!273675 res!137698) b!273674))

(assert (= (and b!273674 res!137701) b!273669))

(assert (= (and b!273669 res!137700) b!273672))

(assert (= (and b!273672 res!137697) b!273673))

(assert (= (and b!273673 res!137703) b!273670))

(assert (= (and b!273670 res!137695) b!273668))

(assert (= (and b!273668 res!137696) b!273667))

(assert (= (and b!273667 res!137699) b!273671))

(declare-fun m!288991 () Bool)

(assert (=> b!273671 m!288991))

(declare-fun m!288993 () Bool)

(assert (=> b!273671 m!288993))

(declare-fun m!288995 () Bool)

(assert (=> b!273671 m!288995))

(declare-fun m!288997 () Bool)

(assert (=> b!273671 m!288997))

(declare-fun m!288999 () Bool)

(assert (=> b!273671 m!288999))

(assert (=> b!273671 m!288997))

(declare-fun m!289001 () Bool)

(assert (=> b!273671 m!289001))

(declare-fun m!289003 () Bool)

(assert (=> b!273671 m!289003))

(declare-fun m!289005 () Bool)

(assert (=> b!273671 m!289005))

(assert (=> b!273671 m!288993))

(declare-fun m!289007 () Bool)

(assert (=> b!273671 m!289007))

(declare-fun m!289009 () Bool)

(assert (=> b!273671 m!289009))

(declare-fun m!289011 () Bool)

(assert (=> b!273674 m!289011))

(assert (=> b!273668 m!288995))

(assert (=> b!273667 m!288997))

(assert (=> b!273667 m!288997))

(declare-fun m!289013 () Bool)

(assert (=> b!273667 m!289013))

(declare-fun m!289015 () Bool)

(assert (=> b!273672 m!289015))

(declare-fun m!289017 () Bool)

(assert (=> b!273673 m!289017))

(declare-fun m!289019 () Bool)

(assert (=> b!273669 m!289019))

(declare-fun m!289021 () Bool)

(assert (=> b!273670 m!289021))

(declare-fun m!289023 () Bool)

(assert (=> start!26402 m!289023))

(declare-fun m!289025 () Bool)

(assert (=> start!26402 m!289025))

(push 1)

