; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26300 () Bool)

(assert start!26300)

(declare-fun b!272290 () Bool)

(declare-fun res!136325 () Bool)

(declare-fun e!174800 () Bool)

(assert (=> b!272290 (=> (not res!136325) (not e!174800))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272290 (= res!136325 (not (= startIndex!26 i!1267)))))

(declare-fun res!136321 () Bool)

(declare-fun e!174802 () Bool)

(assert (=> start!26300 (=> (not res!136321) (not e!174802))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26300 (= res!136321 (validMask!0 mask!3868))))

(assert (=> start!26300 e!174802))

(declare-datatypes ((array!13386 0))(
  ( (array!13387 (arr!6342 (Array (_ BitVec 32) (_ BitVec 64))) (size!6694 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13386)

(declare-fun array_inv!4296 (array!13386) Bool)

(assert (=> start!26300 (array_inv!4296 a!3325)))

(assert (=> start!26300 true))

(declare-fun b!272291 () Bool)

(declare-fun res!136319 () Bool)

(assert (=> b!272291 (=> (not res!136319) (not e!174802))))

(assert (=> b!272291 (= res!136319 (and (= (size!6694 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6694 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6694 a!3325))))))

(declare-fun b!272292 () Bool)

(assert (=> b!272292 (= e!174800 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4171 0))(
  ( (Nil!4168) (Cons!4167 (h!4834 (_ BitVec 64)) (t!9261 List!4171)) )
))
(declare-fun arrayNoDuplicates!0 (array!13386 (_ BitVec 32) List!4171) Bool)

(assert (=> b!272292 (arrayNoDuplicates!0 (array!13387 (store (arr!6342 a!3325) i!1267 k!2581) (size!6694 a!3325)) #b00000000000000000000000000000000 Nil!4168)))

(declare-datatypes ((Unit!8488 0))(
  ( (Unit!8489) )
))
(declare-fun lt!136000 () Unit!8488)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13386 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4171) Unit!8488)

(assert (=> b!272292 (= lt!136000 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4168))))

(declare-fun b!272293 () Bool)

(declare-fun res!136318 () Bool)

(assert (=> b!272293 (=> (not res!136318) (not e!174800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272293 (= res!136318 (validKeyInArray!0 (select (arr!6342 a!3325) startIndex!26)))))

(declare-fun b!272294 () Bool)

(declare-fun res!136320 () Bool)

(assert (=> b!272294 (=> (not res!136320) (not e!174802))))

(assert (=> b!272294 (= res!136320 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4168))))

(declare-fun b!272295 () Bool)

(declare-fun res!136323 () Bool)

(assert (=> b!272295 (=> (not res!136323) (not e!174802))))

(declare-fun arrayContainsKey!0 (array!13386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272295 (= res!136323 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272296 () Bool)

(assert (=> b!272296 (= e!174802 e!174800)))

(declare-fun res!136326 () Bool)

(assert (=> b!272296 (=> (not res!136326) (not e!174800))))

(declare-datatypes ((SeekEntryResult!1511 0))(
  ( (MissingZero!1511 (index!8214 (_ BitVec 32))) (Found!1511 (index!8215 (_ BitVec 32))) (Intermediate!1511 (undefined!2323 Bool) (index!8216 (_ BitVec 32)) (x!26500 (_ BitVec 32))) (Undefined!1511) (MissingVacant!1511 (index!8217 (_ BitVec 32))) )
))
(declare-fun lt!136001 () SeekEntryResult!1511)

(assert (=> b!272296 (= res!136326 (or (= lt!136001 (MissingZero!1511 i!1267)) (= lt!136001 (MissingVacant!1511 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13386 (_ BitVec 32)) SeekEntryResult!1511)

(assert (=> b!272296 (= lt!136001 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272297 () Bool)

(declare-fun res!136324 () Bool)

(assert (=> b!272297 (=> (not res!136324) (not e!174800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13386 (_ BitVec 32)) Bool)

(assert (=> b!272297 (= res!136324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272298 () Bool)

(declare-fun res!136322 () Bool)

(assert (=> b!272298 (=> (not res!136322) (not e!174802))))

(assert (=> b!272298 (= res!136322 (validKeyInArray!0 k!2581))))

(assert (= (and start!26300 res!136321) b!272291))

(assert (= (and b!272291 res!136319) b!272298))

(assert (= (and b!272298 res!136322) b!272294))

(assert (= (and b!272294 res!136320) b!272295))

(assert (= (and b!272295 res!136323) b!272296))

(assert (= (and b!272296 res!136326) b!272297))

(assert (= (and b!272297 res!136324) b!272290))

(assert (= (and b!272290 res!136325) b!272293))

(assert (= (and b!272293 res!136318) b!272292))

(declare-fun m!287443 () Bool)

(assert (=> b!272295 m!287443))

(declare-fun m!287445 () Bool)

(assert (=> b!272297 m!287445))

(declare-fun m!287447 () Bool)

(assert (=> b!272298 m!287447))

(declare-fun m!287449 () Bool)

(assert (=> b!272293 m!287449))

(assert (=> b!272293 m!287449))

(declare-fun m!287451 () Bool)

(assert (=> b!272293 m!287451))

(declare-fun m!287453 () Bool)

(assert (=> b!272292 m!287453))

(declare-fun m!287455 () Bool)

(assert (=> b!272292 m!287455))

(declare-fun m!287457 () Bool)

(assert (=> b!272292 m!287457))

(declare-fun m!287459 () Bool)

(assert (=> start!26300 m!287459))

(declare-fun m!287461 () Bool)

(assert (=> start!26300 m!287461))

(declare-fun m!287463 () Bool)

(assert (=> b!272296 m!287463))

(declare-fun m!287465 () Bool)

(assert (=> b!272294 m!287465))

(push 1)

