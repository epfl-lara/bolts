; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26120 () Bool)

(assert start!26120)

(declare-fun b!269356 () Bool)

(declare-fun res!133605 () Bool)

(declare-fun e!173809 () Bool)

(assert (=> b!269356 (=> (not res!133605) (not e!173809))))

(declare-datatypes ((array!13206 0))(
  ( (array!13207 (arr!6252 (Array (_ BitVec 32) (_ BitVec 64))) (size!6604 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13206)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13206 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269356 (= res!133605 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269357 () Bool)

(declare-datatypes ((Unit!8337 0))(
  ( (Unit!8338) )
))
(declare-fun e!173812 () Unit!8337)

(declare-fun Unit!8339 () Unit!8337)

(assert (=> b!269357 (= e!173812 Unit!8339)))

(declare-fun b!269358 () Bool)

(declare-fun res!133608 () Bool)

(assert (=> b!269358 (=> (not res!133608) (not e!173809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269358 (= res!133608 (validKeyInArray!0 k!2581))))

(declare-fun b!269359 () Bool)

(declare-fun e!173810 () Bool)

(assert (=> b!269359 (= e!173809 e!173810)))

(declare-fun res!133602 () Bool)

(assert (=> b!269359 (=> (not res!133602) (not e!173810))))

(declare-datatypes ((SeekEntryResult!1421 0))(
  ( (MissingZero!1421 (index!7854 (_ BitVec 32))) (Found!1421 (index!7855 (_ BitVec 32))) (Intermediate!1421 (undefined!2233 Bool) (index!7856 (_ BitVec 32)) (x!26170 (_ BitVec 32))) (Undefined!1421) (MissingVacant!1421 (index!7857 (_ BitVec 32))) )
))
(declare-fun lt!135208 () SeekEntryResult!1421)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269359 (= res!133602 (or (= lt!135208 (MissingZero!1421 i!1267)) (= lt!135208 (MissingVacant!1421 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13206 (_ BitVec 32)) SeekEntryResult!1421)

(assert (=> b!269359 (= lt!135208 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269360 () Bool)

(declare-fun res!133604 () Bool)

(assert (=> b!269360 (=> (not res!133604) (not e!173809))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269360 (= res!133604 (and (= (size!6604 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6604 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6604 a!3325))))))

(declare-fun b!269361 () Bool)

(declare-fun res!133603 () Bool)

(assert (=> b!269361 (=> (not res!133603) (not e!173810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13206 (_ BitVec 32)) Bool)

(assert (=> b!269361 (= res!133603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269362 () Bool)

(assert (=> b!269362 (= e!173810 false)))

(declare-fun lt!135209 () Unit!8337)

(assert (=> b!269362 (= lt!135209 e!173812)))

(declare-fun c!45428 () Bool)

(assert (=> b!269362 (= c!45428 (bvslt startIndex!26 (bvsub (size!6604 a!3325) #b00000000000000000000000000000001)))))

(declare-fun res!133606 () Bool)

(assert (=> start!26120 (=> (not res!133606) (not e!173809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26120 (= res!133606 (validMask!0 mask!3868))))

(assert (=> start!26120 e!173809))

(declare-fun array_inv!4206 (array!13206) Bool)

(assert (=> start!26120 (array_inv!4206 a!3325)))

(assert (=> start!26120 true))

(declare-fun b!269355 () Bool)

(declare-fun res!133601 () Bool)

(assert (=> b!269355 (=> (not res!133601) (not e!173810))))

(assert (=> b!269355 (= res!133601 (= startIndex!26 i!1267))))

(declare-fun b!269363 () Bool)

(declare-fun lt!135207 () Unit!8337)

(assert (=> b!269363 (= e!173812 lt!135207)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13206 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8337)

(assert (=> b!269363 (= lt!135207 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269363 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13207 (store (arr!6252 a!3325) i!1267 k!2581) (size!6604 a!3325)) mask!3868)))

(declare-fun b!269364 () Bool)

(declare-fun res!133607 () Bool)

(assert (=> b!269364 (=> (not res!133607) (not e!173809))))

(declare-datatypes ((List!4081 0))(
  ( (Nil!4078) (Cons!4077 (h!4744 (_ BitVec 64)) (t!9171 List!4081)) )
))
(declare-fun arrayNoDuplicates!0 (array!13206 (_ BitVec 32) List!4081) Bool)

(assert (=> b!269364 (= res!133607 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4078))))

(assert (= (and start!26120 res!133606) b!269360))

(assert (= (and b!269360 res!133604) b!269358))

(assert (= (and b!269358 res!133608) b!269364))

(assert (= (and b!269364 res!133607) b!269356))

(assert (= (and b!269356 res!133605) b!269359))

(assert (= (and b!269359 res!133602) b!269361))

(assert (= (and b!269361 res!133603) b!269355))

(assert (= (and b!269355 res!133601) b!269362))

(assert (= (and b!269362 c!45428) b!269363))

(assert (= (and b!269362 (not c!45428)) b!269357))

(declare-fun m!285269 () Bool)

(assert (=> b!269356 m!285269))

(declare-fun m!285271 () Bool)

(assert (=> start!26120 m!285271))

(declare-fun m!285273 () Bool)

(assert (=> start!26120 m!285273))

(declare-fun m!285275 () Bool)

(assert (=> b!269364 m!285275))

(declare-fun m!285277 () Bool)

(assert (=> b!269359 m!285277))

(declare-fun m!285279 () Bool)

(assert (=> b!269358 m!285279))

(declare-fun m!285281 () Bool)

(assert (=> b!269361 m!285281))

(declare-fun m!285283 () Bool)

(assert (=> b!269363 m!285283))

(declare-fun m!285285 () Bool)

(assert (=> b!269363 m!285285))

(declare-fun m!285287 () Bool)

(assert (=> b!269363 m!285287))

(push 1)

(assert (not b!269364))

(assert (not b!269363))

(assert (not b!269356))

(assert (not b!269359))

(assert (not b!269361))

(assert (not start!26120))

