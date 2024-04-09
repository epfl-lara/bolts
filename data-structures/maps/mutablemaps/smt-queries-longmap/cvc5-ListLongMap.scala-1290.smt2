; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26308 () Bool)

(assert start!26308)

(declare-fun b!272398 () Bool)

(declare-fun res!136426 () Bool)

(declare-fun e!174837 () Bool)

(assert (=> b!272398 (=> (not res!136426) (not e!174837))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272398 (= res!136426 (not (= startIndex!26 i!1267)))))

(declare-fun b!272399 () Bool)

(declare-fun res!136432 () Bool)

(assert (=> b!272399 (=> (not res!136432) (not e!174837))))

(declare-datatypes ((array!13394 0))(
  ( (array!13395 (arr!6346 (Array (_ BitVec 32) (_ BitVec 64))) (size!6698 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13394)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272399 (= res!136432 (validKeyInArray!0 (select (arr!6346 a!3325) startIndex!26)))))

(declare-fun res!136433 () Bool)

(declare-fun e!174838 () Bool)

(assert (=> start!26308 (=> (not res!136433) (not e!174838))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26308 (= res!136433 (validMask!0 mask!3868))))

(assert (=> start!26308 e!174838))

(declare-fun array_inv!4300 (array!13394) Bool)

(assert (=> start!26308 (array_inv!4300 a!3325)))

(assert (=> start!26308 true))

(declare-fun b!272400 () Bool)

(declare-fun res!136430 () Bool)

(assert (=> b!272400 (=> (not res!136430) (not e!174838))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272400 (= res!136430 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272401 () Bool)

(assert (=> b!272401 (= e!174838 e!174837)))

(declare-fun res!136429 () Bool)

(assert (=> b!272401 (=> (not res!136429) (not e!174837))))

(declare-datatypes ((SeekEntryResult!1515 0))(
  ( (MissingZero!1515 (index!8230 (_ BitVec 32))) (Found!1515 (index!8231 (_ BitVec 32))) (Intermediate!1515 (undefined!2327 Bool) (index!8232 (_ BitVec 32)) (x!26520 (_ BitVec 32))) (Undefined!1515) (MissingVacant!1515 (index!8233 (_ BitVec 32))) )
))
(declare-fun lt!136025 () SeekEntryResult!1515)

(assert (=> b!272401 (= res!136429 (or (= lt!136025 (MissingZero!1515 i!1267)) (= lt!136025 (MissingVacant!1515 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13394 (_ BitVec 32)) SeekEntryResult!1515)

(assert (=> b!272401 (= lt!136025 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272402 () Bool)

(declare-fun res!136431 () Bool)

(assert (=> b!272402 (=> (not res!136431) (not e!174838))))

(assert (=> b!272402 (= res!136431 (validKeyInArray!0 k!2581))))

(declare-fun b!272403 () Bool)

(declare-fun res!136434 () Bool)

(assert (=> b!272403 (=> (not res!136434) (not e!174838))))

(declare-datatypes ((List!4175 0))(
  ( (Nil!4172) (Cons!4171 (h!4838 (_ BitVec 64)) (t!9265 List!4175)) )
))
(declare-fun arrayNoDuplicates!0 (array!13394 (_ BitVec 32) List!4175) Bool)

(assert (=> b!272403 (= res!136434 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4172))))

(declare-fun b!272404 () Bool)

(declare-fun res!136428 () Bool)

(assert (=> b!272404 (=> (not res!136428) (not e!174838))))

(assert (=> b!272404 (= res!136428 (and (= (size!6698 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6698 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6698 a!3325))))))

(declare-fun b!272405 () Bool)

(assert (=> b!272405 (= e!174837 (not true))))

(assert (=> b!272405 (arrayNoDuplicates!0 (array!13395 (store (arr!6346 a!3325) i!1267 k!2581) (size!6698 a!3325)) #b00000000000000000000000000000000 Nil!4172)))

(declare-datatypes ((Unit!8496 0))(
  ( (Unit!8497) )
))
(declare-fun lt!136024 () Unit!8496)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13394 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4175) Unit!8496)

(assert (=> b!272405 (= lt!136024 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4172))))

(declare-fun b!272406 () Bool)

(declare-fun res!136427 () Bool)

(assert (=> b!272406 (=> (not res!136427) (not e!174837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13394 (_ BitVec 32)) Bool)

(assert (=> b!272406 (= res!136427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26308 res!136433) b!272404))

(assert (= (and b!272404 res!136428) b!272402))

(assert (= (and b!272402 res!136431) b!272403))

(assert (= (and b!272403 res!136434) b!272400))

(assert (= (and b!272400 res!136430) b!272401))

(assert (= (and b!272401 res!136429) b!272406))

(assert (= (and b!272406 res!136427) b!272398))

(assert (= (and b!272398 res!136426) b!272399))

(assert (= (and b!272399 res!136432) b!272405))

(declare-fun m!287539 () Bool)

(assert (=> b!272406 m!287539))

(declare-fun m!287541 () Bool)

(assert (=> b!272405 m!287541))

(declare-fun m!287543 () Bool)

(assert (=> b!272405 m!287543))

(declare-fun m!287545 () Bool)

(assert (=> b!272405 m!287545))

(declare-fun m!287547 () Bool)

(assert (=> b!272399 m!287547))

(assert (=> b!272399 m!287547))

(declare-fun m!287549 () Bool)

(assert (=> b!272399 m!287549))

(declare-fun m!287551 () Bool)

(assert (=> start!26308 m!287551))

(declare-fun m!287553 () Bool)

(assert (=> start!26308 m!287553))

(declare-fun m!287555 () Bool)

(assert (=> b!272403 m!287555))

(declare-fun m!287557 () Bool)

(assert (=> b!272401 m!287557))

(declare-fun m!287559 () Bool)

(assert (=> b!272400 m!287559))

(declare-fun m!287561 () Bool)

(assert (=> b!272402 m!287561))

(push 1)

