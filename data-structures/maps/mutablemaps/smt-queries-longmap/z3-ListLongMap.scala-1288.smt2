; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26298 () Bool)

(assert start!26298)

(declare-fun b!272263 () Bool)

(declare-fun e!174793 () Bool)

(assert (=> b!272263 (= e!174793 (not true))))

(declare-datatypes ((array!13384 0))(
  ( (array!13385 (arr!6341 (Array (_ BitVec 32) (_ BitVec 64))) (size!6693 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13384)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((List!4170 0))(
  ( (Nil!4167) (Cons!4166 (h!4833 (_ BitVec 64)) (t!9260 List!4170)) )
))
(declare-fun arrayNoDuplicates!0 (array!13384 (_ BitVec 32) List!4170) Bool)

(assert (=> b!272263 (arrayNoDuplicates!0 (array!13385 (store (arr!6341 a!3325) i!1267 k0!2581) (size!6693 a!3325)) #b00000000000000000000000000000000 Nil!4167)))

(declare-datatypes ((Unit!8486 0))(
  ( (Unit!8487) )
))
(declare-fun lt!135994 () Unit!8486)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13384 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4170) Unit!8486)

(assert (=> b!272263 (= lt!135994 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4167))))

(declare-fun b!272264 () Bool)

(declare-fun res!136291 () Bool)

(declare-fun e!174792 () Bool)

(assert (=> b!272264 (=> (not res!136291) (not e!174792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272264 (= res!136291 (validKeyInArray!0 k0!2581))))

(declare-fun b!272265 () Bool)

(declare-fun res!136299 () Bool)

(assert (=> b!272265 (=> (not res!136299) (not e!174793))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272265 (= res!136299 (validKeyInArray!0 (select (arr!6341 a!3325) startIndex!26)))))

(declare-fun b!272266 () Bool)

(declare-fun res!136295 () Bool)

(assert (=> b!272266 (=> (not res!136295) (not e!174792))))

(declare-fun arrayContainsKey!0 (array!13384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272266 (= res!136295 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272267 () Bool)

(declare-fun res!136296 () Bool)

(assert (=> b!272267 (=> (not res!136296) (not e!174792))))

(assert (=> b!272267 (= res!136296 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4167))))

(declare-fun res!136297 () Bool)

(assert (=> start!26298 (=> (not res!136297) (not e!174792))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26298 (= res!136297 (validMask!0 mask!3868))))

(assert (=> start!26298 e!174792))

(declare-fun array_inv!4295 (array!13384) Bool)

(assert (=> start!26298 (array_inv!4295 a!3325)))

(assert (=> start!26298 true))

(declare-fun b!272268 () Bool)

(assert (=> b!272268 (= e!174792 e!174793)))

(declare-fun res!136293 () Bool)

(assert (=> b!272268 (=> (not res!136293) (not e!174793))))

(declare-datatypes ((SeekEntryResult!1510 0))(
  ( (MissingZero!1510 (index!8210 (_ BitVec 32))) (Found!1510 (index!8211 (_ BitVec 32))) (Intermediate!1510 (undefined!2322 Bool) (index!8212 (_ BitVec 32)) (x!26499 (_ BitVec 32))) (Undefined!1510) (MissingVacant!1510 (index!8213 (_ BitVec 32))) )
))
(declare-fun lt!135995 () SeekEntryResult!1510)

(assert (=> b!272268 (= res!136293 (or (= lt!135995 (MissingZero!1510 i!1267)) (= lt!135995 (MissingVacant!1510 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13384 (_ BitVec 32)) SeekEntryResult!1510)

(assert (=> b!272268 (= lt!135995 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272269 () Bool)

(declare-fun res!136298 () Bool)

(assert (=> b!272269 (=> (not res!136298) (not e!174793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13384 (_ BitVec 32)) Bool)

(assert (=> b!272269 (= res!136298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272270 () Bool)

(declare-fun res!136294 () Bool)

(assert (=> b!272270 (=> (not res!136294) (not e!174793))))

(assert (=> b!272270 (= res!136294 (not (= startIndex!26 i!1267)))))

(declare-fun b!272271 () Bool)

(declare-fun res!136292 () Bool)

(assert (=> b!272271 (=> (not res!136292) (not e!174792))))

(assert (=> b!272271 (= res!136292 (and (= (size!6693 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6693 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6693 a!3325))))))

(assert (= (and start!26298 res!136297) b!272271))

(assert (= (and b!272271 res!136292) b!272264))

(assert (= (and b!272264 res!136291) b!272267))

(assert (= (and b!272267 res!136296) b!272266))

(assert (= (and b!272266 res!136295) b!272268))

(assert (= (and b!272268 res!136293) b!272269))

(assert (= (and b!272269 res!136298) b!272270))

(assert (= (and b!272270 res!136294) b!272265))

(assert (= (and b!272265 res!136299) b!272263))

(declare-fun m!287419 () Bool)

(assert (=> b!272265 m!287419))

(assert (=> b!272265 m!287419))

(declare-fun m!287421 () Bool)

(assert (=> b!272265 m!287421))

(declare-fun m!287423 () Bool)

(assert (=> b!272268 m!287423))

(declare-fun m!287425 () Bool)

(assert (=> start!26298 m!287425))

(declare-fun m!287427 () Bool)

(assert (=> start!26298 m!287427))

(declare-fun m!287429 () Bool)

(assert (=> b!272266 m!287429))

(declare-fun m!287431 () Bool)

(assert (=> b!272263 m!287431))

(declare-fun m!287433 () Bool)

(assert (=> b!272263 m!287433))

(declare-fun m!287435 () Bool)

(assert (=> b!272263 m!287435))

(declare-fun m!287437 () Bool)

(assert (=> b!272269 m!287437))

(declare-fun m!287439 () Bool)

(assert (=> b!272264 m!287439))

(declare-fun m!287441 () Bool)

(assert (=> b!272267 m!287441))

(check-sat (not b!272264) (not b!272267) (not b!272263) (not start!26298) (not b!272266) (not b!272265) (not b!272269) (not b!272268))
(check-sat)
