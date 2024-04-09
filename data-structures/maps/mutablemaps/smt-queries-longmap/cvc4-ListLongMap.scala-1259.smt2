; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26126 () Bool)

(assert start!26126)

(declare-fun b!269445 () Bool)

(declare-fun res!133674 () Bool)

(declare-fun e!173847 () Bool)

(assert (=> b!269445 (=> (not res!133674) (not e!173847))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269445 (= res!133674 (= startIndex!26 i!1267))))

(declare-fun b!269447 () Bool)

(assert (=> b!269447 (= e!173847 false)))

(declare-datatypes ((Unit!8346 0))(
  ( (Unit!8347) )
))
(declare-fun lt!135234 () Unit!8346)

(declare-fun e!173846 () Unit!8346)

(assert (=> b!269447 (= lt!135234 e!173846)))

(declare-fun c!45437 () Bool)

(declare-datatypes ((array!13212 0))(
  ( (array!13213 (arr!6255 (Array (_ BitVec 32) (_ BitVec 64))) (size!6607 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13212)

(assert (=> b!269447 (= c!45437 (bvslt startIndex!26 (bvsub (size!6607 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269448 () Bool)

(declare-fun res!133676 () Bool)

(assert (=> b!269448 (=> (not res!133676) (not e!173847))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13212 (_ BitVec 32)) Bool)

(assert (=> b!269448 (= res!133676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269449 () Bool)

(declare-fun res!133678 () Bool)

(declare-fun e!173845 () Bool)

(assert (=> b!269449 (=> (not res!133678) (not e!173845))))

(assert (=> b!269449 (= res!133678 (and (= (size!6607 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6607 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6607 a!3325))))))

(declare-fun b!269450 () Bool)

(declare-fun Unit!8348 () Unit!8346)

(assert (=> b!269450 (= e!173846 Unit!8348)))

(declare-fun b!269451 () Bool)

(declare-fun res!133677 () Bool)

(assert (=> b!269451 (=> (not res!133677) (not e!173845))))

(declare-datatypes ((List!4084 0))(
  ( (Nil!4081) (Cons!4080 (h!4747 (_ BitVec 64)) (t!9174 List!4084)) )
))
(declare-fun arrayNoDuplicates!0 (array!13212 (_ BitVec 32) List!4084) Bool)

(assert (=> b!269451 (= res!133677 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4081))))

(declare-fun b!269452 () Bool)

(declare-fun res!133680 () Bool)

(assert (=> b!269452 (=> (not res!133680) (not e!173845))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269452 (= res!133680 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269453 () Bool)

(declare-fun res!133675 () Bool)

(assert (=> b!269453 (=> (not res!133675) (not e!173845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269453 (= res!133675 (validKeyInArray!0 k!2581))))

(declare-fun b!269454 () Bool)

(declare-fun lt!135235 () Unit!8346)

(assert (=> b!269454 (= e!173846 lt!135235)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13212 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8346)

(assert (=> b!269454 (= lt!135235 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269454 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13213 (store (arr!6255 a!3325) i!1267 k!2581) (size!6607 a!3325)) mask!3868)))

(declare-fun res!133679 () Bool)

(assert (=> start!26126 (=> (not res!133679) (not e!173845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26126 (= res!133679 (validMask!0 mask!3868))))

(assert (=> start!26126 e!173845))

(declare-fun array_inv!4209 (array!13212) Bool)

(assert (=> start!26126 (array_inv!4209 a!3325)))

(assert (=> start!26126 true))

(declare-fun b!269446 () Bool)

(assert (=> b!269446 (= e!173845 e!173847)))

(declare-fun res!133673 () Bool)

(assert (=> b!269446 (=> (not res!133673) (not e!173847))))

(declare-datatypes ((SeekEntryResult!1424 0))(
  ( (MissingZero!1424 (index!7866 (_ BitVec 32))) (Found!1424 (index!7867 (_ BitVec 32))) (Intermediate!1424 (undefined!2236 Bool) (index!7868 (_ BitVec 32)) (x!26181 (_ BitVec 32))) (Undefined!1424) (MissingVacant!1424 (index!7869 (_ BitVec 32))) )
))
(declare-fun lt!135236 () SeekEntryResult!1424)

(assert (=> b!269446 (= res!133673 (or (= lt!135236 (MissingZero!1424 i!1267)) (= lt!135236 (MissingVacant!1424 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13212 (_ BitVec 32)) SeekEntryResult!1424)

(assert (=> b!269446 (= lt!135236 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26126 res!133679) b!269449))

(assert (= (and b!269449 res!133678) b!269453))

(assert (= (and b!269453 res!133675) b!269451))

(assert (= (and b!269451 res!133677) b!269452))

(assert (= (and b!269452 res!133680) b!269446))

(assert (= (and b!269446 res!133673) b!269448))

(assert (= (and b!269448 res!133676) b!269445))

(assert (= (and b!269445 res!133674) b!269447))

(assert (= (and b!269447 c!45437) b!269454))

(assert (= (and b!269447 (not c!45437)) b!269450))

(declare-fun m!285329 () Bool)

(assert (=> b!269446 m!285329))

(declare-fun m!285331 () Bool)

(assert (=> b!269453 m!285331))

(declare-fun m!285333 () Bool)

(assert (=> b!269448 m!285333))

(declare-fun m!285335 () Bool)

(assert (=> b!269451 m!285335))

(declare-fun m!285337 () Bool)

(assert (=> b!269452 m!285337))

(declare-fun m!285339 () Bool)

(assert (=> start!26126 m!285339))

(declare-fun m!285341 () Bool)

(assert (=> start!26126 m!285341))

(declare-fun m!285343 () Bool)

(assert (=> b!269454 m!285343))

(declare-fun m!285345 () Bool)

(assert (=> b!269454 m!285345))

(declare-fun m!285347 () Bool)

(assert (=> b!269454 m!285347))

(push 1)

(assert (not b!269448))

(assert (not start!26126))

(assert (not b!269451))

(assert (not b!269446))

(assert (not b!269453))

(assert (not b!269454))

(assert (not b!269452))

(check-sat)

(pop 1)

