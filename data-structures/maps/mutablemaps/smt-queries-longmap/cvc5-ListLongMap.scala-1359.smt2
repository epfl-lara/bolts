; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26722 () Bool)

(assert start!26722)

(declare-fun b!277314 () Bool)

(declare-fun res!141266 () Bool)

(declare-fun e!177001 () Bool)

(assert (=> b!277314 (=> (not res!141266) (not e!177001))))

(declare-datatypes ((array!13808 0))(
  ( (array!13809 (arr!6553 (Array (_ BitVec 32) (_ BitVec 64))) (size!6905 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13808)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277314 (= res!141266 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277315 () Bool)

(declare-fun res!141269 () Bool)

(assert (=> b!277315 (=> (not res!141269) (not e!177001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277315 (= res!141269 (validKeyInArray!0 k!2581))))

(declare-fun b!277316 () Bool)

(declare-fun res!141270 () Bool)

(assert (=> b!277316 (=> (not res!141270) (not e!177001))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277316 (= res!141270 (and (= (size!6905 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6905 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6905 a!3325))))))

(declare-fun b!277317 () Bool)

(declare-fun e!177000 () Bool)

(assert (=> b!277317 (= e!177000 false)))

(declare-datatypes ((Unit!8736 0))(
  ( (Unit!8737) )
))
(declare-fun lt!137935 () Unit!8736)

(declare-fun e!176998 () Unit!8736)

(assert (=> b!277317 (= lt!137935 e!176998)))

(declare-fun c!45575 () Bool)

(assert (=> b!277317 (= c!45575 (bvslt startIndex!26 (bvsub (size!6905 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277318 () Bool)

(declare-fun lt!137934 () Unit!8736)

(assert (=> b!277318 (= e!176998 lt!137934)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13808 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8736)

(assert (=> b!277318 (= lt!137934 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13808 (_ BitVec 32)) Bool)

(assert (=> b!277318 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13809 (store (arr!6553 a!3325) i!1267 k!2581) (size!6905 a!3325)) mask!3868)))

(declare-fun res!141272 () Bool)

(assert (=> start!26722 (=> (not res!141272) (not e!177001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26722 (= res!141272 (validMask!0 mask!3868))))

(assert (=> start!26722 e!177001))

(declare-fun array_inv!4507 (array!13808) Bool)

(assert (=> start!26722 (array_inv!4507 a!3325)))

(assert (=> start!26722 true))

(declare-fun b!277319 () Bool)

(declare-fun res!141273 () Bool)

(assert (=> b!277319 (=> (not res!141273) (not e!177000))))

(assert (=> b!277319 (= res!141273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277320 () Bool)

(assert (=> b!277320 (= e!177001 e!177000)))

(declare-fun res!141267 () Bool)

(assert (=> b!277320 (=> (not res!141267) (not e!177000))))

(declare-datatypes ((SeekEntryResult!1722 0))(
  ( (MissingZero!1722 (index!9058 (_ BitVec 32))) (Found!1722 (index!9059 (_ BitVec 32))) (Intermediate!1722 (undefined!2534 Bool) (index!9060 (_ BitVec 32)) (x!27279 (_ BitVec 32))) (Undefined!1722) (MissingVacant!1722 (index!9061 (_ BitVec 32))) )
))
(declare-fun lt!137936 () SeekEntryResult!1722)

(assert (=> b!277320 (= res!141267 (or (= lt!137936 (MissingZero!1722 i!1267)) (= lt!137936 (MissingVacant!1722 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13808 (_ BitVec 32)) SeekEntryResult!1722)

(assert (=> b!277320 (= lt!137936 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277321 () Bool)

(declare-fun res!141268 () Bool)

(assert (=> b!277321 (=> (not res!141268) (not e!177001))))

(declare-datatypes ((List!4382 0))(
  ( (Nil!4379) (Cons!4378 (h!5045 (_ BitVec 64)) (t!9472 List!4382)) )
))
(declare-fun arrayNoDuplicates!0 (array!13808 (_ BitVec 32) List!4382) Bool)

(assert (=> b!277321 (= res!141268 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4379))))

(declare-fun b!277322 () Bool)

(declare-fun res!141271 () Bool)

(assert (=> b!277322 (=> (not res!141271) (not e!177000))))

(assert (=> b!277322 (= res!141271 (= startIndex!26 i!1267))))

(declare-fun b!277323 () Bool)

(declare-fun Unit!8738 () Unit!8736)

(assert (=> b!277323 (= e!176998 Unit!8738)))

(assert (= (and start!26722 res!141272) b!277316))

(assert (= (and b!277316 res!141270) b!277315))

(assert (= (and b!277315 res!141269) b!277321))

(assert (= (and b!277321 res!141268) b!277314))

(assert (= (and b!277314 res!141266) b!277320))

(assert (= (and b!277320 res!141267) b!277319))

(assert (= (and b!277319 res!141273) b!277322))

(assert (= (and b!277322 res!141271) b!277317))

(assert (= (and b!277317 c!45575) b!277318))

(assert (= (and b!277317 (not c!45575)) b!277323))

(declare-fun m!292429 () Bool)

(assert (=> b!277319 m!292429))

(declare-fun m!292431 () Bool)

(assert (=> start!26722 m!292431))

(declare-fun m!292433 () Bool)

(assert (=> start!26722 m!292433))

(declare-fun m!292435 () Bool)

(assert (=> b!277321 m!292435))

(declare-fun m!292437 () Bool)

(assert (=> b!277320 m!292437))

(declare-fun m!292439 () Bool)

(assert (=> b!277314 m!292439))

(declare-fun m!292441 () Bool)

(assert (=> b!277318 m!292441))

(declare-fun m!292443 () Bool)

(assert (=> b!277318 m!292443))

(declare-fun m!292445 () Bool)

(assert (=> b!277318 m!292445))

(declare-fun m!292447 () Bool)

(assert (=> b!277315 m!292447))

(push 1)

