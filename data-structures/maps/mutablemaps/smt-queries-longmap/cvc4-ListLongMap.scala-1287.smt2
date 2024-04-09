; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26294 () Bool)

(assert start!26294)

(declare-fun b!272209 () Bool)

(declare-fun res!136241 () Bool)

(declare-fun e!174774 () Bool)

(assert (=> b!272209 (=> (not res!136241) (not e!174774))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272209 (= res!136241 (validKeyInArray!0 k!2581))))

(declare-fun b!272210 () Bool)

(declare-fun res!136244 () Bool)

(assert (=> b!272210 (=> (not res!136244) (not e!174774))))

(declare-datatypes ((array!13380 0))(
  ( (array!13381 (arr!6339 (Array (_ BitVec 32) (_ BitVec 64))) (size!6691 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13380)

(declare-datatypes ((List!4168 0))(
  ( (Nil!4165) (Cons!4164 (h!4831 (_ BitVec 64)) (t!9258 List!4168)) )
))
(declare-fun arrayNoDuplicates!0 (array!13380 (_ BitVec 32) List!4168) Bool)

(assert (=> b!272210 (= res!136244 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4165))))

(declare-fun b!272211 () Bool)

(declare-fun res!136242 () Bool)

(declare-fun e!174773 () Bool)

(assert (=> b!272211 (=> (not res!136242) (not e!174773))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13380 (_ BitVec 32)) Bool)

(assert (=> b!272211 (= res!136242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272212 () Bool)

(declare-fun res!136245 () Bool)

(assert (=> b!272212 (=> (not res!136245) (not e!174773))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272212 (= res!136245 (validKeyInArray!0 (select (arr!6339 a!3325) startIndex!26)))))

(declare-fun res!136238 () Bool)

(assert (=> start!26294 (=> (not res!136238) (not e!174774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26294 (= res!136238 (validMask!0 mask!3868))))

(assert (=> start!26294 e!174774))

(declare-fun array_inv!4293 (array!13380) Bool)

(assert (=> start!26294 (array_inv!4293 a!3325)))

(assert (=> start!26294 true))

(declare-fun b!272213 () Bool)

(declare-fun res!136240 () Bool)

(assert (=> b!272213 (=> (not res!136240) (not e!174773))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272213 (= res!136240 (not (= startIndex!26 i!1267)))))

(declare-fun b!272214 () Bool)

(assert (=> b!272214 (= e!174774 e!174773)))

(declare-fun res!136243 () Bool)

(assert (=> b!272214 (=> (not res!136243) (not e!174773))))

(declare-datatypes ((SeekEntryResult!1508 0))(
  ( (MissingZero!1508 (index!8202 (_ BitVec 32))) (Found!1508 (index!8203 (_ BitVec 32))) (Intermediate!1508 (undefined!2320 Bool) (index!8204 (_ BitVec 32)) (x!26489 (_ BitVec 32))) (Undefined!1508) (MissingVacant!1508 (index!8205 (_ BitVec 32))) )
))
(declare-fun lt!135982 () SeekEntryResult!1508)

(assert (=> b!272214 (= res!136243 (or (= lt!135982 (MissingZero!1508 i!1267)) (= lt!135982 (MissingVacant!1508 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13380 (_ BitVec 32)) SeekEntryResult!1508)

(assert (=> b!272214 (= lt!135982 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272215 () Bool)

(declare-fun res!136239 () Bool)

(assert (=> b!272215 (=> (not res!136239) (not e!174774))))

(assert (=> b!272215 (= res!136239 (and (= (size!6691 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6691 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6691 a!3325))))))

(declare-fun b!272216 () Bool)

(declare-fun res!136237 () Bool)

(assert (=> b!272216 (=> (not res!136237) (not e!174774))))

(declare-fun arrayContainsKey!0 (array!13380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272216 (= res!136237 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272217 () Bool)

(assert (=> b!272217 (= e!174773 (not true))))

(assert (=> b!272217 (arrayNoDuplicates!0 (array!13381 (store (arr!6339 a!3325) i!1267 k!2581) (size!6691 a!3325)) #b00000000000000000000000000000000 Nil!4165)))

(declare-datatypes ((Unit!8482 0))(
  ( (Unit!8483) )
))
(declare-fun lt!135983 () Unit!8482)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13380 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4168) Unit!8482)

(assert (=> b!272217 (= lt!135983 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4165))))

(assert (= (and start!26294 res!136238) b!272215))

(assert (= (and b!272215 res!136239) b!272209))

(assert (= (and b!272209 res!136241) b!272210))

(assert (= (and b!272210 res!136244) b!272216))

(assert (= (and b!272216 res!136237) b!272214))

(assert (= (and b!272214 res!136243) b!272211))

(assert (= (and b!272211 res!136242) b!272213))

(assert (= (and b!272213 res!136240) b!272212))

(assert (= (and b!272212 res!136245) b!272217))

(declare-fun m!287371 () Bool)

(assert (=> b!272214 m!287371))

(declare-fun m!287373 () Bool)

(assert (=> b!272210 m!287373))

(declare-fun m!287375 () Bool)

(assert (=> b!272211 m!287375))

(declare-fun m!287377 () Bool)

(assert (=> b!272209 m!287377))

(declare-fun m!287379 () Bool)

(assert (=> b!272217 m!287379))

(declare-fun m!287381 () Bool)

(assert (=> b!272217 m!287381))

(declare-fun m!287383 () Bool)

(assert (=> b!272217 m!287383))

(declare-fun m!287385 () Bool)

(assert (=> b!272216 m!287385))

(declare-fun m!287387 () Bool)

(assert (=> start!26294 m!287387))

(declare-fun m!287389 () Bool)

(assert (=> start!26294 m!287389))

(declare-fun m!287391 () Bool)

(assert (=> b!272212 m!287391))

(assert (=> b!272212 m!287391))

(declare-fun m!287393 () Bool)

(assert (=> b!272212 m!287393))

(push 1)

(assert (not b!272214))

