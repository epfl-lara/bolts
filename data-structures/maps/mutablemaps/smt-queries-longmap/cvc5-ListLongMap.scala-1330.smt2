; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26548 () Bool)

(assert start!26548)

(declare-fun b!275398 () Bool)

(declare-fun e!176178 () Bool)

(declare-fun e!176177 () Bool)

(assert (=> b!275398 (= e!176178 e!176177)))

(declare-fun res!139430 () Bool)

(assert (=> b!275398 (=> (not res!139430) (not e!176177))))

(declare-datatypes ((SeekEntryResult!1635 0))(
  ( (MissingZero!1635 (index!8710 (_ BitVec 32))) (Found!1635 (index!8711 (_ BitVec 32))) (Intermediate!1635 (undefined!2447 Bool) (index!8712 (_ BitVec 32)) (x!26960 (_ BitVec 32))) (Undefined!1635) (MissingVacant!1635 (index!8713 (_ BitVec 32))) )
))
(declare-fun lt!137410 () SeekEntryResult!1635)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275398 (= res!139430 (or (= lt!137410 (MissingZero!1635 i!1267)) (= lt!137410 (MissingVacant!1635 i!1267))))))

(declare-datatypes ((array!13634 0))(
  ( (array!13635 (arr!6466 (Array (_ BitVec 32) (_ BitVec 64))) (size!6818 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13634)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13634 (_ BitVec 32)) SeekEntryResult!1635)

(assert (=> b!275398 (= lt!137410 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275399 () Bool)

(declare-fun res!139426 () Bool)

(assert (=> b!275399 (=> (not res!139426) (not e!176178))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275399 (= res!139426 (and (= (size!6818 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6818 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6818 a!3325))))))

(declare-fun b!275400 () Bool)

(declare-fun res!139427 () Bool)

(assert (=> b!275400 (=> (not res!139427) (not e!176178))))

(declare-fun arrayContainsKey!0 (array!13634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275400 (= res!139427 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275401 () Bool)

(assert (=> b!275401 (= e!176177 false)))

(declare-fun lt!137411 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13634 (_ BitVec 32)) Bool)

(assert (=> b!275401 (= lt!137411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275402 () Bool)

(declare-fun res!139431 () Bool)

(assert (=> b!275402 (=> (not res!139431) (not e!176178))))

(declare-datatypes ((List!4295 0))(
  ( (Nil!4292) (Cons!4291 (h!4958 (_ BitVec 64)) (t!9385 List!4295)) )
))
(declare-fun arrayNoDuplicates!0 (array!13634 (_ BitVec 32) List!4295) Bool)

(assert (=> b!275402 (= res!139431 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4292))))

(declare-fun res!139429 () Bool)

(assert (=> start!26548 (=> (not res!139429) (not e!176178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26548 (= res!139429 (validMask!0 mask!3868))))

(assert (=> start!26548 e!176178))

(declare-fun array_inv!4420 (array!13634) Bool)

(assert (=> start!26548 (array_inv!4420 a!3325)))

(assert (=> start!26548 true))

(declare-fun b!275403 () Bool)

(declare-fun res!139428 () Bool)

(assert (=> b!275403 (=> (not res!139428) (not e!176178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275403 (= res!139428 (validKeyInArray!0 k!2581))))

(assert (= (and start!26548 res!139429) b!275399))

(assert (= (and b!275399 res!139426) b!275403))

(assert (= (and b!275403 res!139428) b!275402))

(assert (= (and b!275402 res!139431) b!275400))

(assert (= (and b!275400 res!139427) b!275398))

(assert (= (and b!275398 res!139430) b!275401))

(declare-fun m!291007 () Bool)

(assert (=> start!26548 m!291007))

(declare-fun m!291009 () Bool)

(assert (=> start!26548 m!291009))

(declare-fun m!291011 () Bool)

(assert (=> b!275402 m!291011))

(declare-fun m!291013 () Bool)

(assert (=> b!275398 m!291013))

(declare-fun m!291015 () Bool)

(assert (=> b!275400 m!291015))

(declare-fun m!291017 () Bool)

(assert (=> b!275401 m!291017))

(declare-fun m!291019 () Bool)

(assert (=> b!275403 m!291019))

(push 1)

(assert (not b!275401))

(assert (not b!275400))

