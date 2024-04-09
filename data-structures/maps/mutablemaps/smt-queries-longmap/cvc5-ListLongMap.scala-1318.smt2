; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26476 () Bool)

(assert start!26476)

(declare-fun b!274702 () Bool)

(declare-fun res!138730 () Bool)

(declare-fun e!175838 () Bool)

(assert (=> b!274702 (=> (not res!138730) (not e!175838))))

(declare-datatypes ((array!13562 0))(
  ( (array!13563 (arr!6430 (Array (_ BitVec 32) (_ BitVec 64))) (size!6782 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13562)

(declare-datatypes ((List!4259 0))(
  ( (Nil!4256) (Cons!4255 (h!4922 (_ BitVec 64)) (t!9349 List!4259)) )
))
(declare-fun arrayNoDuplicates!0 (array!13562 (_ BitVec 32) List!4259) Bool)

(assert (=> b!274702 (= res!138730 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4256))))

(declare-fun res!138736 () Bool)

(assert (=> start!26476 (=> (not res!138736) (not e!175838))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26476 (= res!138736 (validMask!0 mask!3868))))

(assert (=> start!26476 e!175838))

(declare-fun array_inv!4384 (array!13562) Bool)

(assert (=> start!26476 (array_inv!4384 a!3325)))

(assert (=> start!26476 true))

(declare-fun b!274703 () Bool)

(declare-fun e!175837 () Bool)

(declare-fun e!175840 () Bool)

(assert (=> b!274703 (= e!175837 e!175840)))

(declare-fun res!138734 () Bool)

(assert (=> b!274703 (=> (not res!138734) (not e!175840))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274703 (= res!138734 (not (= startIndex!26 i!1267)))))

(declare-fun lt!137147 () array!13562)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!274703 (= lt!137147 (array!13563 (store (arr!6430 a!3325) i!1267 k!2581) (size!6782 a!3325)))))

(declare-fun b!274704 () Bool)

(assert (=> b!274704 (= e!175840 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13562 (_ BitVec 32)) Bool)

(assert (=> b!274704 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8664 0))(
  ( (Unit!8665) )
))
(declare-fun lt!137146 () Unit!8664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13562 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8664)

(assert (=> b!274704 (= lt!137146 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1599 0))(
  ( (MissingZero!1599 (index!8566 (_ BitVec 32))) (Found!1599 (index!8567 (_ BitVec 32))) (Intermediate!1599 (undefined!2411 Bool) (index!8568 (_ BitVec 32)) (x!26828 (_ BitVec 32))) (Undefined!1599) (MissingVacant!1599 (index!8569 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13562 (_ BitVec 32)) SeekEntryResult!1599)

(assert (=> b!274704 (= (seekEntryOrOpen!0 (select (arr!6430 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6430 a!3325) i!1267 k!2581) startIndex!26) lt!137147 mask!3868))))

(declare-fun lt!137150 () Unit!8664)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13562 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8664)

(assert (=> b!274704 (= lt!137150 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274704 (arrayNoDuplicates!0 lt!137147 #b00000000000000000000000000000000 Nil!4256)))

(declare-fun lt!137148 () Unit!8664)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13562 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4259) Unit!8664)

(assert (=> b!274704 (= lt!137148 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4256))))

(declare-fun b!274705 () Bool)

(declare-fun res!138738 () Bool)

(assert (=> b!274705 (=> (not res!138738) (not e!175838))))

(assert (=> b!274705 (= res!138738 (and (= (size!6782 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6782 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6782 a!3325))))))

(declare-fun b!274706 () Bool)

(assert (=> b!274706 (= e!175838 e!175837)))

(declare-fun res!138735 () Bool)

(assert (=> b!274706 (=> (not res!138735) (not e!175837))))

(declare-fun lt!137149 () SeekEntryResult!1599)

(assert (=> b!274706 (= res!138735 (or (= lt!137149 (MissingZero!1599 i!1267)) (= lt!137149 (MissingVacant!1599 i!1267))))))

(assert (=> b!274706 (= lt!137149 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274707 () Bool)

(declare-fun res!138732 () Bool)

(assert (=> b!274707 (=> (not res!138732) (not e!175838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274707 (= res!138732 (validKeyInArray!0 k!2581))))

(declare-fun b!274708 () Bool)

(declare-fun res!138731 () Bool)

(assert (=> b!274708 (=> (not res!138731) (not e!175840))))

(assert (=> b!274708 (= res!138731 (validKeyInArray!0 (select (arr!6430 a!3325) startIndex!26)))))

(declare-fun b!274709 () Bool)

(declare-fun res!138737 () Bool)

(assert (=> b!274709 (=> (not res!138737) (not e!175837))))

(assert (=> b!274709 (= res!138737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274710 () Bool)

(declare-fun res!138733 () Bool)

(assert (=> b!274710 (=> (not res!138733) (not e!175838))))

(declare-fun arrayContainsKey!0 (array!13562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274710 (= res!138733 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26476 res!138736) b!274705))

(assert (= (and b!274705 res!138738) b!274707))

(assert (= (and b!274707 res!138732) b!274702))

(assert (= (and b!274702 res!138730) b!274710))

(assert (= (and b!274710 res!138733) b!274706))

(assert (= (and b!274706 res!138735) b!274709))

(assert (= (and b!274709 res!138737) b!274703))

(assert (= (and b!274703 res!138734) b!274708))

(assert (= (and b!274708 res!138731) b!274704))

(declare-fun m!290371 () Bool)

(assert (=> b!274703 m!290371))

(declare-fun m!290373 () Bool)

(assert (=> b!274706 m!290373))

(declare-fun m!290375 () Bool)

(assert (=> b!274707 m!290375))

(declare-fun m!290377 () Bool)

(assert (=> b!274708 m!290377))

(assert (=> b!274708 m!290377))

(declare-fun m!290379 () Bool)

(assert (=> b!274708 m!290379))

(declare-fun m!290381 () Bool)

(assert (=> b!274709 m!290381))

(declare-fun m!290383 () Bool)

(assert (=> b!274710 m!290383))

(declare-fun m!290385 () Bool)

(assert (=> start!26476 m!290385))

(declare-fun m!290387 () Bool)

(assert (=> start!26476 m!290387))

(declare-fun m!290389 () Bool)

(assert (=> b!274704 m!290389))

(declare-fun m!290391 () Bool)

(assert (=> b!274704 m!290391))

(assert (=> b!274704 m!290371))

(declare-fun m!290393 () Bool)

(assert (=> b!274704 m!290393))

(assert (=> b!274704 m!290377))

(declare-fun m!290395 () Bool)

(assert (=> b!274704 m!290395))

(declare-fun m!290397 () Bool)

(assert (=> b!274704 m!290397))

(assert (=> b!274704 m!290377))

(declare-fun m!290399 () Bool)

(assert (=> b!274704 m!290399))

(declare-fun m!290401 () Bool)

(assert (=> b!274704 m!290401))

(assert (=> b!274704 m!290391))

(declare-fun m!290403 () Bool)

(assert (=> b!274704 m!290403))

(declare-fun m!290405 () Bool)

(assert (=> b!274702 m!290405))

(push 1)

