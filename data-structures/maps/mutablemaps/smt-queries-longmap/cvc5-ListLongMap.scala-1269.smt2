; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26182 () Bool)

(assert start!26182)

(declare-fun b!270285 () Bool)

(declare-fun res!134346 () Bool)

(declare-fun e!174239 () Bool)

(assert (=> b!270285 (=> (not res!134346) (not e!174239))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270285 (= res!134346 (validKeyInArray!0 k!2581))))

(declare-fun res!134345 () Bool)

(assert (=> start!26182 (=> (not res!134345) (not e!174239))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26182 (= res!134345 (validMask!0 mask!3868))))

(assert (=> start!26182 e!174239))

(declare-datatypes ((array!13268 0))(
  ( (array!13269 (arr!6283 (Array (_ BitVec 32) (_ BitVec 64))) (size!6635 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13268)

(declare-fun array_inv!4237 (array!13268) Bool)

(assert (=> start!26182 (array_inv!4237 a!3325)))

(assert (=> start!26182 true))

(declare-fun b!270286 () Bool)

(declare-fun res!134348 () Bool)

(assert (=> b!270286 (=> (not res!134348) (not e!174239))))

(declare-fun arrayContainsKey!0 (array!13268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270286 (= res!134348 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270287 () Bool)

(declare-fun e!174240 () Bool)

(assert (=> b!270287 (= e!174240 (not true))))

(declare-fun lt!135599 () array!13268)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1452 0))(
  ( (MissingZero!1452 (index!7978 (_ BitVec 32))) (Found!1452 (index!7979 (_ BitVec 32))) (Intermediate!1452 (undefined!2264 Bool) (index!7980 (_ BitVec 32)) (x!26289 (_ BitVec 32))) (Undefined!1452) (MissingVacant!1452 (index!7981 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13268 (_ BitVec 32)) SeekEntryResult!1452)

(assert (=> b!270287 (= (seekEntryOrOpen!0 k!2581 lt!135599 mask!3868) (Found!1452 i!1267))))

(declare-datatypes ((Unit!8430 0))(
  ( (Unit!8431) )
))
(declare-fun lt!135598 () Unit!8430)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13268 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8430)

(assert (=> b!270287 (= lt!135598 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135602 () Unit!8430)

(declare-fun e!174237 () Unit!8430)

(assert (=> b!270287 (= lt!135602 e!174237)))

(declare-fun c!45521 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270287 (= c!45521 (bvslt startIndex!26 (bvsub (size!6635 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270288 () Bool)

(declare-fun Unit!8432 () Unit!8430)

(assert (=> b!270288 (= e!174237 Unit!8432)))

(declare-fun b!270289 () Bool)

(declare-fun res!134347 () Bool)

(assert (=> b!270289 (=> (not res!134347) (not e!174239))))

(declare-datatypes ((List!4112 0))(
  ( (Nil!4109) (Cons!4108 (h!4775 (_ BitVec 64)) (t!9202 List!4112)) )
))
(declare-fun arrayNoDuplicates!0 (array!13268 (_ BitVec 32) List!4112) Bool)

(assert (=> b!270289 (= res!134347 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4109))))

(declare-fun b!270290 () Bool)

(declare-fun e!174241 () Bool)

(assert (=> b!270290 (= e!174241 e!174240)))

(declare-fun res!134352 () Bool)

(assert (=> b!270290 (=> (not res!134352) (not e!174240))))

(assert (=> b!270290 (= res!134352 (= startIndex!26 i!1267))))

(assert (=> b!270290 (= lt!135599 (array!13269 (store (arr!6283 a!3325) i!1267 k!2581) (size!6635 a!3325)))))

(declare-fun b!270291 () Bool)

(declare-fun res!134350 () Bool)

(assert (=> b!270291 (=> (not res!134350) (not e!174239))))

(assert (=> b!270291 (= res!134350 (and (= (size!6635 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6635 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6635 a!3325))))))

(declare-fun b!270292 () Bool)

(assert (=> b!270292 (= e!174239 e!174241)))

(declare-fun res!134349 () Bool)

(assert (=> b!270292 (=> (not res!134349) (not e!174241))))

(declare-fun lt!135600 () SeekEntryResult!1452)

(assert (=> b!270292 (= res!134349 (or (= lt!135600 (MissingZero!1452 i!1267)) (= lt!135600 (MissingVacant!1452 i!1267))))))

(assert (=> b!270292 (= lt!135600 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270293 () Bool)

(declare-fun res!134351 () Bool)

(assert (=> b!270293 (=> (not res!134351) (not e!174241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13268 (_ BitVec 32)) Bool)

(assert (=> b!270293 (= res!134351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270294 () Bool)

(declare-fun lt!135601 () Unit!8430)

(assert (=> b!270294 (= e!174237 lt!135601)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13268 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8430)

(assert (=> b!270294 (= lt!135601 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270294 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135599 mask!3868)))

(assert (= (and start!26182 res!134345) b!270291))

(assert (= (and b!270291 res!134350) b!270285))

(assert (= (and b!270285 res!134346) b!270289))

(assert (= (and b!270289 res!134347) b!270286))

(assert (= (and b!270286 res!134348) b!270292))

(assert (= (and b!270292 res!134349) b!270293))

(assert (= (and b!270293 res!134351) b!270290))

(assert (= (and b!270290 res!134352) b!270287))

(assert (= (and b!270287 c!45521) b!270294))

(assert (= (and b!270287 (not c!45521)) b!270288))

(declare-fun m!285961 () Bool)

(assert (=> b!270292 m!285961))

(declare-fun m!285963 () Bool)

(assert (=> b!270287 m!285963))

(declare-fun m!285965 () Bool)

(assert (=> b!270287 m!285965))

(declare-fun m!285967 () Bool)

(assert (=> b!270290 m!285967))

(declare-fun m!285969 () Bool)

(assert (=> b!270289 m!285969))

(declare-fun m!285971 () Bool)

(assert (=> b!270293 m!285971))

(declare-fun m!285973 () Bool)

(assert (=> b!270294 m!285973))

(declare-fun m!285975 () Bool)

(assert (=> b!270294 m!285975))

(declare-fun m!285977 () Bool)

(assert (=> b!270286 m!285977))

(declare-fun m!285979 () Bool)

(assert (=> start!26182 m!285979))

(declare-fun m!285981 () Bool)

(assert (=> start!26182 m!285981))

(declare-fun m!285983 () Bool)

(assert (=> b!270285 m!285983))

(push 1)

