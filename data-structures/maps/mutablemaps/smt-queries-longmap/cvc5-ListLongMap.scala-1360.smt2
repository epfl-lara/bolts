; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26728 () Bool)

(assert start!26728)

(declare-fun b!277404 () Bool)

(declare-fun res!141340 () Bool)

(declare-fun e!177036 () Bool)

(assert (=> b!277404 (=> (not res!141340) (not e!177036))))

(declare-datatypes ((array!13814 0))(
  ( (array!13815 (arr!6556 (Array (_ BitVec 32) (_ BitVec 64))) (size!6908 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13814)

(declare-datatypes ((List!4385 0))(
  ( (Nil!4382) (Cons!4381 (h!5048 (_ BitVec 64)) (t!9475 List!4385)) )
))
(declare-fun arrayNoDuplicates!0 (array!13814 (_ BitVec 32) List!4385) Bool)

(assert (=> b!277404 (= res!141340 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4382))))

(declare-fun res!141338 () Bool)

(assert (=> start!26728 (=> (not res!141338) (not e!177036))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26728 (= res!141338 (validMask!0 mask!3868))))

(assert (=> start!26728 e!177036))

(declare-fun array_inv!4510 (array!13814) Bool)

(assert (=> start!26728 (array_inv!4510 a!3325)))

(assert (=> start!26728 true))

(declare-fun b!277405 () Bool)

(declare-fun res!141342 () Bool)

(declare-fun e!177035 () Bool)

(assert (=> b!277405 (=> (not res!141342) (not e!177035))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277405 (= res!141342 (= startIndex!26 i!1267))))

(declare-fun b!277406 () Bool)

(declare-fun res!141344 () Bool)

(assert (=> b!277406 (=> (not res!141344) (not e!177035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13814 (_ BitVec 32)) Bool)

(assert (=> b!277406 (= res!141344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277407 () Bool)

(assert (=> b!277407 (= e!177036 e!177035)))

(declare-fun res!141343 () Bool)

(assert (=> b!277407 (=> (not res!141343) (not e!177035))))

(declare-datatypes ((SeekEntryResult!1725 0))(
  ( (MissingZero!1725 (index!9070 (_ BitVec 32))) (Found!1725 (index!9071 (_ BitVec 32))) (Intermediate!1725 (undefined!2537 Bool) (index!9072 (_ BitVec 32)) (x!27290 (_ BitVec 32))) (Undefined!1725) (MissingVacant!1725 (index!9073 (_ BitVec 32))) )
))
(declare-fun lt!137961 () SeekEntryResult!1725)

(assert (=> b!277407 (= res!141343 (or (= lt!137961 (MissingZero!1725 i!1267)) (= lt!137961 (MissingVacant!1725 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13814 (_ BitVec 32)) SeekEntryResult!1725)

(assert (=> b!277407 (= lt!137961 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277408 () Bool)

(assert (=> b!277408 (= e!177035 false)))

(declare-datatypes ((Unit!8745 0))(
  ( (Unit!8746) )
))
(declare-fun lt!137962 () Unit!8745)

(declare-fun e!177034 () Unit!8745)

(assert (=> b!277408 (= lt!137962 e!177034)))

(declare-fun c!45584 () Bool)

(assert (=> b!277408 (= c!45584 (bvslt startIndex!26 (bvsub (size!6908 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277409 () Bool)

(declare-fun Unit!8747 () Unit!8745)

(assert (=> b!277409 (= e!177034 Unit!8747)))

(declare-fun b!277410 () Bool)

(declare-fun res!141341 () Bool)

(assert (=> b!277410 (=> (not res!141341) (not e!177036))))

(assert (=> b!277410 (= res!141341 (and (= (size!6908 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6908 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6908 a!3325))))))

(declare-fun b!277411 () Bool)

(declare-fun lt!137963 () Unit!8745)

(assert (=> b!277411 (= e!177034 lt!137963)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13814 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8745)

(assert (=> b!277411 (= lt!137963 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277411 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13815 (store (arr!6556 a!3325) i!1267 k!2581) (size!6908 a!3325)) mask!3868)))

(declare-fun b!277412 () Bool)

(declare-fun res!141345 () Bool)

(assert (=> b!277412 (=> (not res!141345) (not e!177036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277412 (= res!141345 (validKeyInArray!0 k!2581))))

(declare-fun b!277413 () Bool)

(declare-fun res!141339 () Bool)

(assert (=> b!277413 (=> (not res!141339) (not e!177036))))

(declare-fun arrayContainsKey!0 (array!13814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277413 (= res!141339 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26728 res!141338) b!277410))

(assert (= (and b!277410 res!141341) b!277412))

(assert (= (and b!277412 res!141345) b!277404))

(assert (= (and b!277404 res!141340) b!277413))

(assert (= (and b!277413 res!141339) b!277407))

(assert (= (and b!277407 res!141343) b!277406))

(assert (= (and b!277406 res!141344) b!277405))

(assert (= (and b!277405 res!141342) b!277408))

(assert (= (and b!277408 c!45584) b!277411))

(assert (= (and b!277408 (not c!45584)) b!277409))

(declare-fun m!292489 () Bool)

(assert (=> b!277413 m!292489))

(declare-fun m!292491 () Bool)

(assert (=> b!277404 m!292491))

(declare-fun m!292493 () Bool)

(assert (=> b!277406 m!292493))

(declare-fun m!292495 () Bool)

(assert (=> b!277411 m!292495))

(declare-fun m!292497 () Bool)

(assert (=> b!277411 m!292497))

(declare-fun m!292499 () Bool)

(assert (=> b!277411 m!292499))

(declare-fun m!292501 () Bool)

(assert (=> b!277407 m!292501))

(declare-fun m!292503 () Bool)

(assert (=> b!277412 m!292503))

(declare-fun m!292505 () Bool)

(assert (=> start!26728 m!292505))

(declare-fun m!292507 () Bool)

(assert (=> start!26728 m!292507))

(push 1)

