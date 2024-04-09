; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26128 () Bool)

(assert start!26128)

(declare-fun b!269475 () Bool)

(declare-datatypes ((Unit!8349 0))(
  ( (Unit!8350) )
))
(declare-fun e!173859 () Unit!8349)

(declare-fun lt!135243 () Unit!8349)

(assert (=> b!269475 (= e!173859 lt!135243)))

(declare-datatypes ((array!13214 0))(
  ( (array!13215 (arr!6256 (Array (_ BitVec 32) (_ BitVec 64))) (size!6608 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13214)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13214 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8349)

(assert (=> b!269475 (= lt!135243 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13214 (_ BitVec 32)) Bool)

(assert (=> b!269475 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13215 (store (arr!6256 a!3325) i!1267 k!2581) (size!6608 a!3325)) mask!3868)))

(declare-fun b!269476 () Bool)

(declare-fun res!133701 () Bool)

(declare-fun e!173857 () Bool)

(assert (=> b!269476 (=> (not res!133701) (not e!173857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269476 (= res!133701 (validKeyInArray!0 k!2581))))

(declare-fun res!133704 () Bool)

(assert (=> start!26128 (=> (not res!133704) (not e!173857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26128 (= res!133704 (validMask!0 mask!3868))))

(assert (=> start!26128 e!173857))

(declare-fun array_inv!4210 (array!13214) Bool)

(assert (=> start!26128 (array_inv!4210 a!3325)))

(assert (=> start!26128 true))

(declare-fun b!269477 () Bool)

(declare-fun res!133700 () Bool)

(assert (=> b!269477 (=> (not res!133700) (not e!173857))))

(declare-datatypes ((List!4085 0))(
  ( (Nil!4082) (Cons!4081 (h!4748 (_ BitVec 64)) (t!9175 List!4085)) )
))
(declare-fun arrayNoDuplicates!0 (array!13214 (_ BitVec 32) List!4085) Bool)

(assert (=> b!269477 (= res!133700 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4082))))

(declare-fun b!269478 () Bool)

(declare-fun e!173858 () Bool)

(assert (=> b!269478 (= e!173858 false)))

(declare-fun lt!135244 () Unit!8349)

(assert (=> b!269478 (= lt!135244 e!173859)))

(declare-fun c!45440 () Bool)

(assert (=> b!269478 (= c!45440 (bvslt startIndex!26 (bvsub (size!6608 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269479 () Bool)

(declare-fun res!133703 () Bool)

(assert (=> b!269479 (=> (not res!133703) (not e!173857))))

(assert (=> b!269479 (= res!133703 (and (= (size!6608 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6608 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6608 a!3325))))))

(declare-fun b!269480 () Bool)

(declare-fun res!133698 () Bool)

(assert (=> b!269480 (=> (not res!133698) (not e!173858))))

(assert (=> b!269480 (= res!133698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269481 () Bool)

(declare-fun res!133702 () Bool)

(assert (=> b!269481 (=> (not res!133702) (not e!173857))))

(declare-fun arrayContainsKey!0 (array!13214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269481 (= res!133702 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269482 () Bool)

(assert (=> b!269482 (= e!173857 e!173858)))

(declare-fun res!133699 () Bool)

(assert (=> b!269482 (=> (not res!133699) (not e!173858))))

(declare-datatypes ((SeekEntryResult!1425 0))(
  ( (MissingZero!1425 (index!7870 (_ BitVec 32))) (Found!1425 (index!7871 (_ BitVec 32))) (Intermediate!1425 (undefined!2237 Bool) (index!7872 (_ BitVec 32)) (x!26190 (_ BitVec 32))) (Undefined!1425) (MissingVacant!1425 (index!7873 (_ BitVec 32))) )
))
(declare-fun lt!135245 () SeekEntryResult!1425)

(assert (=> b!269482 (= res!133699 (or (= lt!135245 (MissingZero!1425 i!1267)) (= lt!135245 (MissingVacant!1425 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13214 (_ BitVec 32)) SeekEntryResult!1425)

(assert (=> b!269482 (= lt!135245 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269483 () Bool)

(declare-fun Unit!8351 () Unit!8349)

(assert (=> b!269483 (= e!173859 Unit!8351)))

(declare-fun b!269484 () Bool)

(declare-fun res!133697 () Bool)

(assert (=> b!269484 (=> (not res!133697) (not e!173858))))

(assert (=> b!269484 (= res!133697 (= startIndex!26 i!1267))))

(assert (= (and start!26128 res!133704) b!269479))

(assert (= (and b!269479 res!133703) b!269476))

(assert (= (and b!269476 res!133701) b!269477))

(assert (= (and b!269477 res!133700) b!269481))

(assert (= (and b!269481 res!133702) b!269482))

(assert (= (and b!269482 res!133699) b!269480))

(assert (= (and b!269480 res!133698) b!269484))

(assert (= (and b!269484 res!133697) b!269478))

(assert (= (and b!269478 c!45440) b!269475))

(assert (= (and b!269478 (not c!45440)) b!269483))

(declare-fun m!285349 () Bool)

(assert (=> start!26128 m!285349))

(declare-fun m!285351 () Bool)

(assert (=> start!26128 m!285351))

(declare-fun m!285353 () Bool)

(assert (=> b!269482 m!285353))

(declare-fun m!285355 () Bool)

(assert (=> b!269475 m!285355))

(declare-fun m!285357 () Bool)

(assert (=> b!269475 m!285357))

(declare-fun m!285359 () Bool)

(assert (=> b!269475 m!285359))

(declare-fun m!285361 () Bool)

(assert (=> b!269480 m!285361))

(declare-fun m!285363 () Bool)

(assert (=> b!269477 m!285363))

(declare-fun m!285365 () Bool)

(assert (=> b!269481 m!285365))

(declare-fun m!285367 () Bool)

(assert (=> b!269476 m!285367))

(push 1)

