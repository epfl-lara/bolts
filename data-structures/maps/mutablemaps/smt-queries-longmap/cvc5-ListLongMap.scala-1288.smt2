; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26296 () Bool)

(assert start!26296)

(declare-fun b!272236 () Bool)

(declare-fun e!174784 () Bool)

(declare-fun e!174782 () Bool)

(assert (=> b!272236 (= e!174784 e!174782)))

(declare-fun res!136267 () Bool)

(assert (=> b!272236 (=> (not res!136267) (not e!174782))))

(declare-datatypes ((SeekEntryResult!1509 0))(
  ( (MissingZero!1509 (index!8206 (_ BitVec 32))) (Found!1509 (index!8207 (_ BitVec 32))) (Intermediate!1509 (undefined!2321 Bool) (index!8208 (_ BitVec 32)) (x!26498 (_ BitVec 32))) (Undefined!1509) (MissingVacant!1509 (index!8209 (_ BitVec 32))) )
))
(declare-fun lt!135988 () SeekEntryResult!1509)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272236 (= res!136267 (or (= lt!135988 (MissingZero!1509 i!1267)) (= lt!135988 (MissingVacant!1509 i!1267))))))

(declare-datatypes ((array!13382 0))(
  ( (array!13383 (arr!6340 (Array (_ BitVec 32) (_ BitVec 64))) (size!6692 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13382)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13382 (_ BitVec 32)) SeekEntryResult!1509)

(assert (=> b!272236 (= lt!135988 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272237 () Bool)

(declare-fun res!136268 () Bool)

(assert (=> b!272237 (=> (not res!136268) (not e!174782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13382 (_ BitVec 32)) Bool)

(assert (=> b!272237 (= res!136268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272238 () Bool)

(declare-fun res!136265 () Bool)

(assert (=> b!272238 (=> (not res!136265) (not e!174784))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272238 (= res!136265 (validKeyInArray!0 k!2581))))

(declare-fun b!272239 () Bool)

(declare-fun res!136269 () Bool)

(assert (=> b!272239 (=> (not res!136269) (not e!174782))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272239 (= res!136269 (validKeyInArray!0 (select (arr!6340 a!3325) startIndex!26)))))

(declare-fun b!272240 () Bool)

(declare-fun res!136264 () Bool)

(assert (=> b!272240 (=> (not res!136264) (not e!174784))))

(assert (=> b!272240 (= res!136264 (and (= (size!6692 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6692 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6692 a!3325))))))

(declare-fun b!272241 () Bool)

(declare-fun res!136272 () Bool)

(assert (=> b!272241 (=> (not res!136272) (not e!174784))))

(declare-fun arrayContainsKey!0 (array!13382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272241 (= res!136272 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272242 () Bool)

(declare-fun res!136271 () Bool)

(assert (=> b!272242 (=> (not res!136271) (not e!174782))))

(assert (=> b!272242 (= res!136271 (not (= startIndex!26 i!1267)))))

(declare-fun res!136270 () Bool)

(assert (=> start!26296 (=> (not res!136270) (not e!174784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26296 (= res!136270 (validMask!0 mask!3868))))

(assert (=> start!26296 e!174784))

(declare-fun array_inv!4294 (array!13382) Bool)

(assert (=> start!26296 (array_inv!4294 a!3325)))

(assert (=> start!26296 true))

(declare-fun b!272243 () Bool)

(declare-fun res!136266 () Bool)

(assert (=> b!272243 (=> (not res!136266) (not e!174784))))

(declare-datatypes ((List!4169 0))(
  ( (Nil!4166) (Cons!4165 (h!4832 (_ BitVec 64)) (t!9259 List!4169)) )
))
(declare-fun arrayNoDuplicates!0 (array!13382 (_ BitVec 32) List!4169) Bool)

(assert (=> b!272243 (= res!136266 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4166))))

(declare-fun b!272244 () Bool)

(assert (=> b!272244 (= e!174782 (not true))))

(assert (=> b!272244 (arrayNoDuplicates!0 (array!13383 (store (arr!6340 a!3325) i!1267 k!2581) (size!6692 a!3325)) #b00000000000000000000000000000000 Nil!4166)))

(declare-datatypes ((Unit!8484 0))(
  ( (Unit!8485) )
))
(declare-fun lt!135989 () Unit!8484)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13382 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4169) Unit!8484)

(assert (=> b!272244 (= lt!135989 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4166))))

(assert (= (and start!26296 res!136270) b!272240))

(assert (= (and b!272240 res!136264) b!272238))

(assert (= (and b!272238 res!136265) b!272243))

(assert (= (and b!272243 res!136266) b!272241))

(assert (= (and b!272241 res!136272) b!272236))

(assert (= (and b!272236 res!136267) b!272237))

(assert (= (and b!272237 res!136268) b!272242))

(assert (= (and b!272242 res!136271) b!272239))

(assert (= (and b!272239 res!136269) b!272244))

(declare-fun m!287395 () Bool)

(assert (=> b!272239 m!287395))

(assert (=> b!272239 m!287395))

(declare-fun m!287397 () Bool)

(assert (=> b!272239 m!287397))

(declare-fun m!287399 () Bool)

(assert (=> b!272244 m!287399))

(declare-fun m!287401 () Bool)

(assert (=> b!272244 m!287401))

(declare-fun m!287403 () Bool)

(assert (=> b!272244 m!287403))

(declare-fun m!287405 () Bool)

(assert (=> b!272236 m!287405))

(declare-fun m!287407 () Bool)

(assert (=> b!272241 m!287407))

(declare-fun m!287409 () Bool)

(assert (=> start!26296 m!287409))

(declare-fun m!287411 () Bool)

(assert (=> start!26296 m!287411))

(declare-fun m!287413 () Bool)

(assert (=> b!272238 m!287413))

(declare-fun m!287415 () Bool)

(assert (=> b!272243 m!287415))

(declare-fun m!287417 () Bool)

(assert (=> b!272237 m!287417))

(push 1)

