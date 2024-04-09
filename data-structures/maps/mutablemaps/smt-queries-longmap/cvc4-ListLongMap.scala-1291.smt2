; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26318 () Bool)

(assert start!26318)

(declare-fun b!272533 () Bool)

(declare-fun res!136564 () Bool)

(declare-fun e!174883 () Bool)

(assert (=> b!272533 (=> (not res!136564) (not e!174883))))

(declare-datatypes ((array!13404 0))(
  ( (array!13405 (arr!6351 (Array (_ BitVec 32) (_ BitVec 64))) (size!6703 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13404)

(declare-datatypes ((List!4180 0))(
  ( (Nil!4177) (Cons!4176 (h!4843 (_ BitVec 64)) (t!9270 List!4180)) )
))
(declare-fun arrayNoDuplicates!0 (array!13404 (_ BitVec 32) List!4180) Bool)

(assert (=> b!272533 (= res!136564 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4177))))

(declare-fun b!272534 () Bool)

(declare-fun res!136566 () Bool)

(declare-fun e!174882 () Bool)

(assert (=> b!272534 (=> (not res!136566) (not e!174882))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272534 (= res!136566 (not (= startIndex!26 i!1267)))))

(declare-fun b!272535 () Bool)

(assert (=> b!272535 (= e!174882 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!272535 (arrayNoDuplicates!0 (array!13405 (store (arr!6351 a!3325) i!1267 k!2581) (size!6703 a!3325)) #b00000000000000000000000000000000 Nil!4177)))

(declare-datatypes ((Unit!8506 0))(
  ( (Unit!8507) )
))
(declare-fun lt!136054 () Unit!8506)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13404 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4180) Unit!8506)

(assert (=> b!272535 (= lt!136054 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4177))))

(declare-fun b!272536 () Bool)

(declare-fun res!136562 () Bool)

(assert (=> b!272536 (=> (not res!136562) (not e!174883))))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!272536 (= res!136562 (and (= (size!6703 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6703 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6703 a!3325))))))

(declare-fun b!272537 () Bool)

(declare-fun res!136569 () Bool)

(assert (=> b!272537 (=> (not res!136569) (not e!174883))))

(declare-fun arrayContainsKey!0 (array!13404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272537 (= res!136569 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272538 () Bool)

(declare-fun res!136563 () Bool)

(assert (=> b!272538 (=> (not res!136563) (not e!174882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13404 (_ BitVec 32)) Bool)

(assert (=> b!272538 (= res!136563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!136568 () Bool)

(assert (=> start!26318 (=> (not res!136568) (not e!174883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26318 (= res!136568 (validMask!0 mask!3868))))

(assert (=> start!26318 e!174883))

(declare-fun array_inv!4305 (array!13404) Bool)

(assert (=> start!26318 (array_inv!4305 a!3325)))

(assert (=> start!26318 true))

(declare-fun b!272539 () Bool)

(assert (=> b!272539 (= e!174883 e!174882)))

(declare-fun res!136565 () Bool)

(assert (=> b!272539 (=> (not res!136565) (not e!174882))))

(declare-datatypes ((SeekEntryResult!1520 0))(
  ( (MissingZero!1520 (index!8250 (_ BitVec 32))) (Found!1520 (index!8251 (_ BitVec 32))) (Intermediate!1520 (undefined!2332 Bool) (index!8252 (_ BitVec 32)) (x!26533 (_ BitVec 32))) (Undefined!1520) (MissingVacant!1520 (index!8253 (_ BitVec 32))) )
))
(declare-fun lt!136055 () SeekEntryResult!1520)

(assert (=> b!272539 (= res!136565 (or (= lt!136055 (MissingZero!1520 i!1267)) (= lt!136055 (MissingVacant!1520 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13404 (_ BitVec 32)) SeekEntryResult!1520)

(assert (=> b!272539 (= lt!136055 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272540 () Bool)

(declare-fun res!136561 () Bool)

(assert (=> b!272540 (=> (not res!136561) (not e!174882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272540 (= res!136561 (validKeyInArray!0 (select (arr!6351 a!3325) startIndex!26)))))

(declare-fun b!272541 () Bool)

(declare-fun res!136567 () Bool)

(assert (=> b!272541 (=> (not res!136567) (not e!174883))))

(assert (=> b!272541 (= res!136567 (validKeyInArray!0 k!2581))))

(assert (= (and start!26318 res!136568) b!272536))

(assert (= (and b!272536 res!136562) b!272541))

(assert (= (and b!272541 res!136567) b!272533))

(assert (= (and b!272533 res!136564) b!272537))

(assert (= (and b!272537 res!136569) b!272539))

(assert (= (and b!272539 res!136565) b!272538))

(assert (= (and b!272538 res!136563) b!272534))

(assert (= (and b!272534 res!136566) b!272540))

(assert (= (and b!272540 res!136561) b!272535))

(declare-fun m!287659 () Bool)

(assert (=> b!272533 m!287659))

(declare-fun m!287661 () Bool)

(assert (=> b!272541 m!287661))

(declare-fun m!287663 () Bool)

(assert (=> b!272537 m!287663))

(declare-fun m!287665 () Bool)

(assert (=> start!26318 m!287665))

(declare-fun m!287667 () Bool)

(assert (=> start!26318 m!287667))

(declare-fun m!287669 () Bool)

(assert (=> b!272539 m!287669))

(declare-fun m!287671 () Bool)

(assert (=> b!272535 m!287671))

(declare-fun m!287673 () Bool)

(assert (=> b!272535 m!287673))

(declare-fun m!287675 () Bool)

(assert (=> b!272535 m!287675))

(declare-fun m!287677 () Bool)

(assert (=> b!272538 m!287677))

(declare-fun m!287679 () Bool)

(assert (=> b!272540 m!287679))

(assert (=> b!272540 m!287679))

(declare-fun m!287681 () Bool)

(assert (=> b!272540 m!287681))

(push 1)

(assert (not b!272541))

