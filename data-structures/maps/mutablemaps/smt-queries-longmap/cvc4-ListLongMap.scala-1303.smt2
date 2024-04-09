; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26390 () Bool)

(assert start!26390)

(declare-fun b!273505 () Bool)

(declare-fun res!137533 () Bool)

(declare-fun e!175286 () Bool)

(assert (=> b!273505 (=> (not res!137533) (not e!175286))))

(declare-datatypes ((array!13476 0))(
  ( (array!13477 (arr!6387 (Array (_ BitVec 32) (_ BitVec 64))) (size!6739 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13476)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13476 (_ BitVec 32)) Bool)

(assert (=> b!273505 (= res!137533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273506 () Bool)

(declare-fun res!137534 () Bool)

(declare-fun e!175287 () Bool)

(assert (=> b!273506 (=> (not res!137534) (not e!175287))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273506 (= res!137534 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273507 () Bool)

(declare-fun e!175288 () Bool)

(assert (=> b!273507 (= e!175288 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273507 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8578 0))(
  ( (Unit!8579) )
))
(declare-fun lt!136467 () Unit!8578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8578)

(assert (=> b!273507 (= lt!136467 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!136466 () array!13476)

(declare-datatypes ((SeekEntryResult!1556 0))(
  ( (MissingZero!1556 (index!8394 (_ BitVec 32))) (Found!1556 (index!8395 (_ BitVec 32))) (Intermediate!1556 (undefined!2368 Bool) (index!8396 (_ BitVec 32)) (x!26665 (_ BitVec 32))) (Undefined!1556) (MissingVacant!1556 (index!8397 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13476 (_ BitVec 32)) SeekEntryResult!1556)

(assert (=> b!273507 (= (seekEntryOrOpen!0 (select (arr!6387 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6387 a!3325) i!1267 k!2581) startIndex!26) lt!136466 mask!3868))))

(declare-fun lt!136468 () Unit!8578)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13476 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8578)

(assert (=> b!273507 (= lt!136468 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4216 0))(
  ( (Nil!4213) (Cons!4212 (h!4879 (_ BitVec 64)) (t!9306 List!4216)) )
))
(declare-fun arrayNoDuplicates!0 (array!13476 (_ BitVec 32) List!4216) Bool)

(assert (=> b!273507 (arrayNoDuplicates!0 lt!136466 #b00000000000000000000000000000000 Nil!4213)))

(declare-fun lt!136469 () Unit!8578)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13476 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4216) Unit!8578)

(assert (=> b!273507 (= lt!136469 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4213))))

(declare-fun b!273508 () Bool)

(assert (=> b!273508 (= e!175286 e!175288)))

(declare-fun res!137538 () Bool)

(assert (=> b!273508 (=> (not res!137538) (not e!175288))))

(assert (=> b!273508 (= res!137538 (not (= startIndex!26 i!1267)))))

(assert (=> b!273508 (= lt!136466 (array!13477 (store (arr!6387 a!3325) i!1267 k!2581) (size!6739 a!3325)))))

(declare-fun b!273509 () Bool)

(assert (=> b!273509 (= e!175287 e!175286)))

(declare-fun res!137539 () Bool)

(assert (=> b!273509 (=> (not res!137539) (not e!175286))))

(declare-fun lt!136465 () SeekEntryResult!1556)

(assert (=> b!273509 (= res!137539 (or (= lt!136465 (MissingZero!1556 i!1267)) (= lt!136465 (MissingVacant!1556 i!1267))))))

(assert (=> b!273509 (= lt!136465 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273510 () Bool)

(declare-fun res!137537 () Bool)

(assert (=> b!273510 (=> (not res!137537) (not e!175287))))

(assert (=> b!273510 (= res!137537 (and (= (size!6739 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6739 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6739 a!3325))))))

(declare-fun b!273511 () Bool)

(declare-fun res!137541 () Bool)

(assert (=> b!273511 (=> (not res!137541) (not e!175288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273511 (= res!137541 (validKeyInArray!0 (select (arr!6387 a!3325) startIndex!26)))))

(declare-fun res!137536 () Bool)

(assert (=> start!26390 (=> (not res!137536) (not e!175287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26390 (= res!137536 (validMask!0 mask!3868))))

(assert (=> start!26390 e!175287))

(declare-fun array_inv!4341 (array!13476) Bool)

(assert (=> start!26390 (array_inv!4341 a!3325)))

(assert (=> start!26390 true))

(declare-fun b!273512 () Bool)

(declare-fun res!137540 () Bool)

(assert (=> b!273512 (=> (not res!137540) (not e!175287))))

(assert (=> b!273512 (= res!137540 (validKeyInArray!0 k!2581))))

(declare-fun b!273513 () Bool)

(declare-fun res!137535 () Bool)

(assert (=> b!273513 (=> (not res!137535) (not e!175287))))

(assert (=> b!273513 (= res!137535 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4213))))

(assert (= (and start!26390 res!137536) b!273510))

(assert (= (and b!273510 res!137537) b!273512))

(assert (= (and b!273512 res!137540) b!273513))

(assert (= (and b!273513 res!137535) b!273506))

(assert (= (and b!273506 res!137534) b!273509))

(assert (= (and b!273509 res!137539) b!273505))

(assert (= (and b!273505 res!137533) b!273508))

(assert (= (and b!273508 res!137538) b!273511))

(assert (= (and b!273511 res!137541) b!273507))

(declare-fun m!288775 () Bool)

(assert (=> start!26390 m!288775))

(declare-fun m!288777 () Bool)

(assert (=> start!26390 m!288777))

(declare-fun m!288779 () Bool)

(assert (=> b!273511 m!288779))

(assert (=> b!273511 m!288779))

(declare-fun m!288781 () Bool)

(assert (=> b!273511 m!288781))

(declare-fun m!288783 () Bool)

(assert (=> b!273506 m!288783))

(declare-fun m!288785 () Bool)

(assert (=> b!273505 m!288785))

(declare-fun m!288787 () Bool)

(assert (=> b!273513 m!288787))

(declare-fun m!288789 () Bool)

(assert (=> b!273508 m!288789))

(declare-fun m!288791 () Bool)

(assert (=> b!273507 m!288791))

(declare-fun m!288793 () Bool)

(assert (=> b!273507 m!288793))

(declare-fun m!288795 () Bool)

(assert (=> b!273507 m!288795))

(assert (=> b!273507 m!288789))

(declare-fun m!288797 () Bool)

(assert (=> b!273507 m!288797))

(assert (=> b!273507 m!288779))

(declare-fun m!288799 () Bool)

(assert (=> b!273507 m!288799))

(declare-fun m!288801 () Bool)

(assert (=> b!273507 m!288801))

(assert (=> b!273507 m!288779))

(declare-fun m!288803 () Bool)

(assert (=> b!273507 m!288803))

(declare-fun m!288805 () Bool)

(assert (=> b!273507 m!288805))

(assert (=> b!273507 m!288793))

(declare-fun m!288807 () Bool)

(assert (=> b!273512 m!288807))

(declare-fun m!288809 () Bool)

(assert (=> b!273509 m!288809))

(push 1)

