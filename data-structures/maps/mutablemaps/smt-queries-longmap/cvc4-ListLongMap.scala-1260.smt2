; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26132 () Bool)

(assert start!26132)

(declare-fun b!269535 () Bool)

(declare-fun e!173883 () Bool)

(declare-fun e!173881 () Bool)

(assert (=> b!269535 (= e!173883 e!173881)))

(declare-fun res!133749 () Bool)

(assert (=> b!269535 (=> (not res!133749) (not e!173881))))

(declare-datatypes ((SeekEntryResult!1427 0))(
  ( (MissingZero!1427 (index!7878 (_ BitVec 32))) (Found!1427 (index!7879 (_ BitVec 32))) (Intermediate!1427 (undefined!2239 Bool) (index!7880 (_ BitVec 32)) (x!26192 (_ BitVec 32))) (Undefined!1427) (MissingVacant!1427 (index!7881 (_ BitVec 32))) )
))
(declare-fun lt!135263 () SeekEntryResult!1427)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269535 (= res!133749 (or (= lt!135263 (MissingZero!1427 i!1267)) (= lt!135263 (MissingVacant!1427 i!1267))))))

(declare-datatypes ((array!13218 0))(
  ( (array!13219 (arr!6258 (Array (_ BitVec 32) (_ BitVec 64))) (size!6610 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13218)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13218 (_ BitVec 32)) SeekEntryResult!1427)

(assert (=> b!269535 (= lt!135263 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269536 () Bool)

(declare-fun res!133748 () Bool)

(assert (=> b!269536 (=> (not res!133748) (not e!173881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13218 (_ BitVec 32)) Bool)

(assert (=> b!269536 (= res!133748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269537 () Bool)

(declare-fun res!133751 () Bool)

(assert (=> b!269537 (=> (not res!133751) (not e!173883))))

(declare-fun arrayContainsKey!0 (array!13218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269537 (= res!133751 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269538 () Bool)

(assert (=> b!269538 (= e!173881 false)))

(declare-datatypes ((Unit!8355 0))(
  ( (Unit!8356) )
))
(declare-fun lt!135261 () Unit!8355)

(declare-fun e!173882 () Unit!8355)

(assert (=> b!269538 (= lt!135261 e!173882)))

(declare-fun c!45446 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269538 (= c!45446 (bvslt startIndex!26 (bvsub (size!6610 a!3325) #b00000000000000000000000000000001)))))

(declare-fun res!133752 () Bool)

(assert (=> start!26132 (=> (not res!133752) (not e!173883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26132 (= res!133752 (validMask!0 mask!3868))))

(assert (=> start!26132 e!173883))

(declare-fun array_inv!4212 (array!13218) Bool)

(assert (=> start!26132 (array_inv!4212 a!3325)))

(assert (=> start!26132 true))

(declare-fun b!269539 () Bool)

(declare-fun Unit!8357 () Unit!8355)

(assert (=> b!269539 (= e!173882 Unit!8357)))

(declare-fun b!269540 () Bool)

(declare-fun res!133747 () Bool)

(assert (=> b!269540 (=> (not res!133747) (not e!173881))))

(assert (=> b!269540 (= res!133747 (= startIndex!26 i!1267))))

(declare-fun b!269541 () Bool)

(declare-fun lt!135262 () Unit!8355)

(assert (=> b!269541 (= e!173882 lt!135262)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13218 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8355)

(assert (=> b!269541 (= lt!135262 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269541 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13219 (store (arr!6258 a!3325) i!1267 k!2581) (size!6610 a!3325)) mask!3868)))

(declare-fun b!269542 () Bool)

(declare-fun res!133746 () Bool)

(assert (=> b!269542 (=> (not res!133746) (not e!173883))))

(assert (=> b!269542 (= res!133746 (and (= (size!6610 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6610 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6610 a!3325))))))

(declare-fun b!269543 () Bool)

(declare-fun res!133745 () Bool)

(assert (=> b!269543 (=> (not res!133745) (not e!173883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269543 (= res!133745 (validKeyInArray!0 k!2581))))

(declare-fun b!269544 () Bool)

(declare-fun res!133750 () Bool)

(assert (=> b!269544 (=> (not res!133750) (not e!173883))))

(declare-datatypes ((List!4087 0))(
  ( (Nil!4084) (Cons!4083 (h!4750 (_ BitVec 64)) (t!9177 List!4087)) )
))
(declare-fun arrayNoDuplicates!0 (array!13218 (_ BitVec 32) List!4087) Bool)

(assert (=> b!269544 (= res!133750 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4084))))

(assert (= (and start!26132 res!133752) b!269542))

(assert (= (and b!269542 res!133746) b!269543))

(assert (= (and b!269543 res!133745) b!269544))

(assert (= (and b!269544 res!133750) b!269537))

(assert (= (and b!269537 res!133751) b!269535))

(assert (= (and b!269535 res!133749) b!269536))

(assert (= (and b!269536 res!133748) b!269540))

(assert (= (and b!269540 res!133747) b!269538))

(assert (= (and b!269538 c!45446) b!269541))

(assert (= (and b!269538 (not c!45446)) b!269539))

(declare-fun m!285389 () Bool)

(assert (=> b!269535 m!285389))

(declare-fun m!285391 () Bool)

(assert (=> b!269536 m!285391))

(declare-fun m!285393 () Bool)

(assert (=> b!269543 m!285393))

(declare-fun m!285395 () Bool)

(assert (=> b!269537 m!285395))

(declare-fun m!285397 () Bool)

(assert (=> b!269544 m!285397))

(declare-fun m!285399 () Bool)

(assert (=> start!26132 m!285399))

(declare-fun m!285401 () Bool)

(assert (=> start!26132 m!285401))

(declare-fun m!285403 () Bool)

(assert (=> b!269541 m!285403))

(declare-fun m!285405 () Bool)

(assert (=> b!269541 m!285405))

(declare-fun m!285407 () Bool)

(assert (=> b!269541 m!285407))

(push 1)

(assert (not b!269535))

(assert (not b!269544))

(assert (not b!269537))

(assert (not b!269543))

(assert (not b!269541))

