; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26726 () Bool)

(assert start!26726)

(declare-fun b!277374 () Bool)

(declare-fun res!141318 () Bool)

(declare-fun e!177024 () Bool)

(assert (=> b!277374 (=> (not res!141318) (not e!177024))))

(declare-datatypes ((array!13812 0))(
  ( (array!13813 (arr!6555 (Array (_ BitVec 32) (_ BitVec 64))) (size!6907 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13812)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277374 (= res!141318 (and (= (size!6907 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6907 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6907 a!3325))))))

(declare-fun b!277375 () Bool)

(declare-fun e!177025 () Bool)

(assert (=> b!277375 (= e!177025 false)))

(declare-datatypes ((Unit!8742 0))(
  ( (Unit!8743) )
))
(declare-fun lt!137952 () Unit!8742)

(declare-fun e!177022 () Unit!8742)

(assert (=> b!277375 (= lt!137952 e!177022)))

(declare-fun c!45581 () Bool)

(assert (=> b!277375 (= c!45581 (bvslt startIndex!26 (bvsub (size!6907 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277376 () Bool)

(declare-fun lt!137953 () Unit!8742)

(assert (=> b!277376 (= e!177022 lt!137953)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13812 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8742)

(assert (=> b!277376 (= lt!137953 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13812 (_ BitVec 32)) Bool)

(assert (=> b!277376 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13813 (store (arr!6555 a!3325) i!1267 k!2581) (size!6907 a!3325)) mask!3868)))

(declare-fun b!277377 () Bool)

(declare-fun res!141317 () Bool)

(assert (=> b!277377 (=> (not res!141317) (not e!177024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277377 (= res!141317 (validKeyInArray!0 k!2581))))

(declare-fun b!277378 () Bool)

(declare-fun Unit!8744 () Unit!8742)

(assert (=> b!277378 (= e!177022 Unit!8744)))

(declare-fun b!277379 () Bool)

(declare-fun res!141315 () Bool)

(assert (=> b!277379 (=> (not res!141315) (not e!177024))))

(declare-fun arrayContainsKey!0 (array!13812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277379 (= res!141315 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277381 () Bool)

(declare-fun res!141314 () Bool)

(assert (=> b!277381 (=> (not res!141314) (not e!177025))))

(assert (=> b!277381 (= res!141314 (= startIndex!26 i!1267))))

(declare-fun b!277382 () Bool)

(assert (=> b!277382 (= e!177024 e!177025)))

(declare-fun res!141319 () Bool)

(assert (=> b!277382 (=> (not res!141319) (not e!177025))))

(declare-datatypes ((SeekEntryResult!1724 0))(
  ( (MissingZero!1724 (index!9066 (_ BitVec 32))) (Found!1724 (index!9067 (_ BitVec 32))) (Intermediate!1724 (undefined!2536 Bool) (index!9068 (_ BitVec 32)) (x!27281 (_ BitVec 32))) (Undefined!1724) (MissingVacant!1724 (index!9069 (_ BitVec 32))) )
))
(declare-fun lt!137954 () SeekEntryResult!1724)

(assert (=> b!277382 (= res!141319 (or (= lt!137954 (MissingZero!1724 i!1267)) (= lt!137954 (MissingVacant!1724 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13812 (_ BitVec 32)) SeekEntryResult!1724)

(assert (=> b!277382 (= lt!137954 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277383 () Bool)

(declare-fun res!141321 () Bool)

(assert (=> b!277383 (=> (not res!141321) (not e!177025))))

(assert (=> b!277383 (= res!141321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277380 () Bool)

(declare-fun res!141316 () Bool)

(assert (=> b!277380 (=> (not res!141316) (not e!177024))))

(declare-datatypes ((List!4384 0))(
  ( (Nil!4381) (Cons!4380 (h!5047 (_ BitVec 64)) (t!9474 List!4384)) )
))
(declare-fun arrayNoDuplicates!0 (array!13812 (_ BitVec 32) List!4384) Bool)

(assert (=> b!277380 (= res!141316 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4381))))

(declare-fun res!141320 () Bool)

(assert (=> start!26726 (=> (not res!141320) (not e!177024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26726 (= res!141320 (validMask!0 mask!3868))))

(assert (=> start!26726 e!177024))

(declare-fun array_inv!4509 (array!13812) Bool)

(assert (=> start!26726 (array_inv!4509 a!3325)))

(assert (=> start!26726 true))

(assert (= (and start!26726 res!141320) b!277374))

(assert (= (and b!277374 res!141318) b!277377))

(assert (= (and b!277377 res!141317) b!277380))

(assert (= (and b!277380 res!141316) b!277379))

(assert (= (and b!277379 res!141315) b!277382))

(assert (= (and b!277382 res!141319) b!277383))

(assert (= (and b!277383 res!141321) b!277381))

(assert (= (and b!277381 res!141314) b!277375))

(assert (= (and b!277375 c!45581) b!277376))

(assert (= (and b!277375 (not c!45581)) b!277378))

(declare-fun m!292469 () Bool)

(assert (=> b!277382 m!292469))

(declare-fun m!292471 () Bool)

(assert (=> b!277376 m!292471))

(declare-fun m!292473 () Bool)

(assert (=> b!277376 m!292473))

(declare-fun m!292475 () Bool)

(assert (=> b!277376 m!292475))

(declare-fun m!292477 () Bool)

(assert (=> b!277377 m!292477))

(declare-fun m!292479 () Bool)

(assert (=> start!26726 m!292479))

(declare-fun m!292481 () Bool)

(assert (=> start!26726 m!292481))

(declare-fun m!292483 () Bool)

(assert (=> b!277383 m!292483))

(declare-fun m!292485 () Bool)

(assert (=> b!277379 m!292485))

(declare-fun m!292487 () Bool)

(assert (=> b!277380 m!292487))

(push 1)

(assert (not b!277376))

(assert (not start!26726))

(assert (not b!277377))

(assert (not b!277382))

(assert (not b!277383))

(assert (not b!277380))

(assert (not b!277379))

(check-sat)

(pop 1)

