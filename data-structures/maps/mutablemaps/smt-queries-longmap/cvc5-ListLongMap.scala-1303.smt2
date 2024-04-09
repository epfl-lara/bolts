; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26386 () Bool)

(assert start!26386)

(declare-fun res!137487 () Bool)

(declare-fun e!175261 () Bool)

(assert (=> start!26386 (=> (not res!137487) (not e!175261))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26386 (= res!137487 (validMask!0 mask!3868))))

(assert (=> start!26386 e!175261))

(declare-datatypes ((array!13472 0))(
  ( (array!13473 (arr!6385 (Array (_ BitVec 32) (_ BitVec 64))) (size!6737 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13472)

(declare-fun array_inv!4339 (array!13472) Bool)

(assert (=> start!26386 (array_inv!4339 a!3325)))

(assert (=> start!26386 true))

(declare-fun b!273451 () Bool)

(declare-fun res!137479 () Bool)

(declare-fun e!175264 () Bool)

(assert (=> b!273451 (=> (not res!137479) (not e!175264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13472 (_ BitVec 32)) Bool)

(assert (=> b!273451 (= res!137479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273452 () Bool)

(declare-fun e!175262 () Bool)

(assert (=> b!273452 (= e!175262 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273452 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8574 0))(
  ( (Unit!8575) )
))
(declare-fun lt!136436 () Unit!8574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8574)

(assert (=> b!273452 (= lt!136436 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136439 () array!13472)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1554 0))(
  ( (MissingZero!1554 (index!8386 (_ BitVec 32))) (Found!1554 (index!8387 (_ BitVec 32))) (Intermediate!1554 (undefined!2366 Bool) (index!8388 (_ BitVec 32)) (x!26663 (_ BitVec 32))) (Undefined!1554) (MissingVacant!1554 (index!8389 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13472 (_ BitVec 32)) SeekEntryResult!1554)

(assert (=> b!273452 (= (seekEntryOrOpen!0 (select (arr!6385 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6385 a!3325) i!1267 k!2581) startIndex!26) lt!136439 mask!3868))))

(declare-fun lt!136437 () Unit!8574)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13472 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8574)

(assert (=> b!273452 (= lt!136437 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4214 0))(
  ( (Nil!4211) (Cons!4210 (h!4877 (_ BitVec 64)) (t!9304 List!4214)) )
))
(declare-fun arrayNoDuplicates!0 (array!13472 (_ BitVec 32) List!4214) Bool)

(assert (=> b!273452 (arrayNoDuplicates!0 lt!136439 #b00000000000000000000000000000000 Nil!4211)))

(declare-fun lt!136438 () Unit!8574)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13472 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4214) Unit!8574)

(assert (=> b!273452 (= lt!136438 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4211))))

(declare-fun b!273453 () Bool)

(declare-fun res!137483 () Bool)

(assert (=> b!273453 (=> (not res!137483) (not e!175261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273453 (= res!137483 (validKeyInArray!0 k!2581))))

(declare-fun b!273454 () Bool)

(assert (=> b!273454 (= e!175261 e!175264)))

(declare-fun res!137484 () Bool)

(assert (=> b!273454 (=> (not res!137484) (not e!175264))))

(declare-fun lt!136435 () SeekEntryResult!1554)

(assert (=> b!273454 (= res!137484 (or (= lt!136435 (MissingZero!1554 i!1267)) (= lt!136435 (MissingVacant!1554 i!1267))))))

(assert (=> b!273454 (= lt!136435 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273455 () Bool)

(declare-fun res!137480 () Bool)

(assert (=> b!273455 (=> (not res!137480) (not e!175261))))

(declare-fun arrayContainsKey!0 (array!13472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273455 (= res!137480 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273456 () Bool)

(declare-fun res!137481 () Bool)

(assert (=> b!273456 (=> (not res!137481) (not e!175262))))

(assert (=> b!273456 (= res!137481 (validKeyInArray!0 (select (arr!6385 a!3325) startIndex!26)))))

(declare-fun b!273457 () Bool)

(declare-fun res!137486 () Bool)

(assert (=> b!273457 (=> (not res!137486) (not e!175261))))

(assert (=> b!273457 (= res!137486 (and (= (size!6737 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6737 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6737 a!3325))))))

(declare-fun b!273458 () Bool)

(declare-fun res!137485 () Bool)

(assert (=> b!273458 (=> (not res!137485) (not e!175261))))

(assert (=> b!273458 (= res!137485 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4211))))

(declare-fun b!273459 () Bool)

(assert (=> b!273459 (= e!175264 e!175262)))

(declare-fun res!137482 () Bool)

(assert (=> b!273459 (=> (not res!137482) (not e!175262))))

(assert (=> b!273459 (= res!137482 (not (= startIndex!26 i!1267)))))

(assert (=> b!273459 (= lt!136439 (array!13473 (store (arr!6385 a!3325) i!1267 k!2581) (size!6737 a!3325)))))

(assert (= (and start!26386 res!137487) b!273457))

(assert (= (and b!273457 res!137486) b!273453))

(assert (= (and b!273453 res!137483) b!273458))

(assert (= (and b!273458 res!137485) b!273455))

(assert (= (and b!273455 res!137480) b!273454))

(assert (= (and b!273454 res!137484) b!273451))

(assert (= (and b!273451 res!137479) b!273459))

(assert (= (and b!273459 res!137482) b!273456))

(assert (= (and b!273456 res!137481) b!273452))

(declare-fun m!288703 () Bool)

(assert (=> b!273452 m!288703))

(declare-fun m!288705 () Bool)

(assert (=> b!273452 m!288705))

(declare-fun m!288707 () Bool)

(assert (=> b!273452 m!288707))

(declare-fun m!288709 () Bool)

(assert (=> b!273452 m!288709))

(declare-fun m!288711 () Bool)

(assert (=> b!273452 m!288711))

(assert (=> b!273452 m!288709))

(declare-fun m!288713 () Bool)

(assert (=> b!273452 m!288713))

(assert (=> b!273452 m!288705))

(declare-fun m!288715 () Bool)

(assert (=> b!273452 m!288715))

(declare-fun m!288717 () Bool)

(assert (=> b!273452 m!288717))

(declare-fun m!288719 () Bool)

(assert (=> b!273452 m!288719))

(declare-fun m!288721 () Bool)

(assert (=> b!273452 m!288721))

(assert (=> b!273456 m!288709))

(assert (=> b!273456 m!288709))

(declare-fun m!288723 () Bool)

(assert (=> b!273456 m!288723))

(declare-fun m!288725 () Bool)

(assert (=> b!273455 m!288725))

(declare-fun m!288727 () Bool)

(assert (=> b!273451 m!288727))

(declare-fun m!288729 () Bool)

(assert (=> b!273458 m!288729))

(declare-fun m!288731 () Bool)

(assert (=> b!273453 m!288731))

(declare-fun m!288733 () Bool)

(assert (=> start!26386 m!288733))

(declare-fun m!288735 () Bool)

(assert (=> start!26386 m!288735))

(declare-fun m!288737 () Bool)

(assert (=> b!273454 m!288737))

(assert (=> b!273459 m!288707))

(push 1)

