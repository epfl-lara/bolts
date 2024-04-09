; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26306 () Bool)

(assert start!26306)

(declare-fun b!272371 () Bool)

(declare-fun res!136406 () Bool)

(declare-fun e!174828 () Bool)

(assert (=> b!272371 (=> (not res!136406) (not e!174828))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272371 (= res!136406 (validKeyInArray!0 k!2581))))

(declare-fun b!272372 () Bool)

(declare-fun res!136405 () Bool)

(declare-fun e!174829 () Bool)

(assert (=> b!272372 (=> (not res!136405) (not e!174829))))

(declare-datatypes ((array!13392 0))(
  ( (array!13393 (arr!6345 (Array (_ BitVec 32) (_ BitVec 64))) (size!6697 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13392)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13392 (_ BitVec 32)) Bool)

(assert (=> b!272372 (= res!136405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!136402 () Bool)

(assert (=> start!26306 (=> (not res!136402) (not e!174828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26306 (= res!136402 (validMask!0 mask!3868))))

(assert (=> start!26306 e!174828))

(declare-fun array_inv!4299 (array!13392) Bool)

(assert (=> start!26306 (array_inv!4299 a!3325)))

(assert (=> start!26306 true))

(declare-fun b!272373 () Bool)

(declare-fun res!136407 () Bool)

(assert (=> b!272373 (=> (not res!136407) (not e!174829))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272373 (= res!136407 (not (= startIndex!26 i!1267)))))

(declare-fun b!272374 () Bool)

(declare-fun res!136403 () Bool)

(assert (=> b!272374 (=> (not res!136403) (not e!174828))))

(declare-fun arrayContainsKey!0 (array!13392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272374 (= res!136403 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272375 () Bool)

(declare-fun res!136399 () Bool)

(assert (=> b!272375 (=> (not res!136399) (not e!174829))))

(assert (=> b!272375 (= res!136399 (validKeyInArray!0 (select (arr!6345 a!3325) startIndex!26)))))

(declare-fun b!272376 () Bool)

(assert (=> b!272376 (= e!174829 (not true))))

(declare-datatypes ((List!4174 0))(
  ( (Nil!4171) (Cons!4170 (h!4837 (_ BitVec 64)) (t!9264 List!4174)) )
))
(declare-fun arrayNoDuplicates!0 (array!13392 (_ BitVec 32) List!4174) Bool)

(assert (=> b!272376 (arrayNoDuplicates!0 (array!13393 (store (arr!6345 a!3325) i!1267 k!2581) (size!6697 a!3325)) #b00000000000000000000000000000000 Nil!4171)))

(declare-datatypes ((Unit!8494 0))(
  ( (Unit!8495) )
))
(declare-fun lt!136018 () Unit!8494)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13392 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4174) Unit!8494)

(assert (=> b!272376 (= lt!136018 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4171))))

(declare-fun b!272377 () Bool)

(declare-fun res!136401 () Bool)

(assert (=> b!272377 (=> (not res!136401) (not e!174828))))

(assert (=> b!272377 (= res!136401 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4171))))

(declare-fun b!272378 () Bool)

(declare-fun res!136404 () Bool)

(assert (=> b!272378 (=> (not res!136404) (not e!174828))))

(assert (=> b!272378 (= res!136404 (and (= (size!6697 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6697 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6697 a!3325))))))

(declare-fun b!272379 () Bool)

(assert (=> b!272379 (= e!174828 e!174829)))

(declare-fun res!136400 () Bool)

(assert (=> b!272379 (=> (not res!136400) (not e!174829))))

(declare-datatypes ((SeekEntryResult!1514 0))(
  ( (MissingZero!1514 (index!8226 (_ BitVec 32))) (Found!1514 (index!8227 (_ BitVec 32))) (Intermediate!1514 (undefined!2326 Bool) (index!8228 (_ BitVec 32)) (x!26511 (_ BitVec 32))) (Undefined!1514) (MissingVacant!1514 (index!8229 (_ BitVec 32))) )
))
(declare-fun lt!136019 () SeekEntryResult!1514)

(assert (=> b!272379 (= res!136400 (or (= lt!136019 (MissingZero!1514 i!1267)) (= lt!136019 (MissingVacant!1514 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13392 (_ BitVec 32)) SeekEntryResult!1514)

(assert (=> b!272379 (= lt!136019 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26306 res!136402) b!272378))

(assert (= (and b!272378 res!136404) b!272371))

(assert (= (and b!272371 res!136406) b!272377))

(assert (= (and b!272377 res!136401) b!272374))

(assert (= (and b!272374 res!136403) b!272379))

(assert (= (and b!272379 res!136400) b!272372))

(assert (= (and b!272372 res!136405) b!272373))

(assert (= (and b!272373 res!136407) b!272375))

(assert (= (and b!272375 res!136399) b!272376))

(declare-fun m!287515 () Bool)

(assert (=> b!272376 m!287515))

(declare-fun m!287517 () Bool)

(assert (=> b!272376 m!287517))

(declare-fun m!287519 () Bool)

(assert (=> b!272376 m!287519))

(declare-fun m!287521 () Bool)

(assert (=> start!26306 m!287521))

(declare-fun m!287523 () Bool)

(assert (=> start!26306 m!287523))

(declare-fun m!287525 () Bool)

(assert (=> b!272379 m!287525))

(declare-fun m!287527 () Bool)

(assert (=> b!272377 m!287527))

(declare-fun m!287529 () Bool)

(assert (=> b!272374 m!287529))

(declare-fun m!287531 () Bool)

(assert (=> b!272372 m!287531))

(declare-fun m!287533 () Bool)

(assert (=> b!272371 m!287533))

(declare-fun m!287535 () Bool)

(assert (=> b!272375 m!287535))

(assert (=> b!272375 m!287535))

(declare-fun m!287537 () Bool)

(assert (=> b!272375 m!287537))

(push 1)

(assert (not b!272376))

