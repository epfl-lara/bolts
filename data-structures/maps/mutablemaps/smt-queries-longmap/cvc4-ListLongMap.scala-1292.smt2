; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26324 () Bool)

(assert start!26324)

(declare-fun res!136644 () Bool)

(declare-fun e!174910 () Bool)

(assert (=> start!26324 (=> (not res!136644) (not e!174910))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26324 (= res!136644 (validMask!0 mask!3868))))

(assert (=> start!26324 e!174910))

(declare-datatypes ((array!13410 0))(
  ( (array!13411 (arr!6354 (Array (_ BitVec 32) (_ BitVec 64))) (size!6706 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13410)

(declare-fun array_inv!4308 (array!13410) Bool)

(assert (=> start!26324 (array_inv!4308 a!3325)))

(assert (=> start!26324 true))

(declare-fun b!272614 () Bool)

(declare-fun res!136650 () Bool)

(assert (=> b!272614 (=> (not res!136650) (not e!174910))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272614 (= res!136650 (validKeyInArray!0 k!2581))))

(declare-fun b!272615 () Bool)

(declare-fun res!136645 () Bool)

(declare-fun e!174909 () Bool)

(assert (=> b!272615 (=> (not res!136645) (not e!174909))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272615 (= res!136645 (not (= startIndex!26 i!1267)))))

(declare-fun b!272616 () Bool)

(declare-fun res!136649 () Bool)

(assert (=> b!272616 (=> (not res!136649) (not e!174909))))

(assert (=> b!272616 (= res!136649 (validKeyInArray!0 (select (arr!6354 a!3325) startIndex!26)))))

(declare-fun b!272617 () Bool)

(declare-fun res!136643 () Bool)

(assert (=> b!272617 (=> (not res!136643) (not e!174910))))

(declare-datatypes ((List!4183 0))(
  ( (Nil!4180) (Cons!4179 (h!4846 (_ BitVec 64)) (t!9273 List!4183)) )
))
(declare-fun arrayNoDuplicates!0 (array!13410 (_ BitVec 32) List!4183) Bool)

(assert (=> b!272617 (= res!136643 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4180))))

(declare-fun b!272618 () Bool)

(assert (=> b!272618 (= e!174910 e!174909)))

(declare-fun res!136648 () Bool)

(assert (=> b!272618 (=> (not res!136648) (not e!174909))))

(declare-datatypes ((SeekEntryResult!1523 0))(
  ( (MissingZero!1523 (index!8262 (_ BitVec 32))) (Found!1523 (index!8263 (_ BitVec 32))) (Intermediate!1523 (undefined!2335 Bool) (index!8264 (_ BitVec 32)) (x!26544 (_ BitVec 32))) (Undefined!1523) (MissingVacant!1523 (index!8265 (_ BitVec 32))) )
))
(declare-fun lt!136073 () SeekEntryResult!1523)

(assert (=> b!272618 (= res!136648 (or (= lt!136073 (MissingZero!1523 i!1267)) (= lt!136073 (MissingVacant!1523 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13410 (_ BitVec 32)) SeekEntryResult!1523)

(assert (=> b!272618 (= lt!136073 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272619 () Bool)

(declare-fun res!136642 () Bool)

(assert (=> b!272619 (=> (not res!136642) (not e!174909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13410 (_ BitVec 32)) Bool)

(assert (=> b!272619 (= res!136642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272620 () Bool)

(declare-fun res!136647 () Bool)

(assert (=> b!272620 (=> (not res!136647) (not e!174910))))

(declare-fun arrayContainsKey!0 (array!13410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272620 (= res!136647 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272621 () Bool)

(declare-fun res!136646 () Bool)

(assert (=> b!272621 (=> (not res!136646) (not e!174910))))

(assert (=> b!272621 (= res!136646 (and (= (size!6706 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6706 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6706 a!3325))))))

(declare-fun b!272622 () Bool)

(assert (=> b!272622 (= e!174909 (not true))))

(assert (=> b!272622 (arrayNoDuplicates!0 (array!13411 (store (arr!6354 a!3325) i!1267 k!2581) (size!6706 a!3325)) #b00000000000000000000000000000000 Nil!4180)))

(declare-datatypes ((Unit!8512 0))(
  ( (Unit!8513) )
))
(declare-fun lt!136072 () Unit!8512)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13410 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4183) Unit!8512)

(assert (=> b!272622 (= lt!136072 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4180))))

(assert (= (and start!26324 res!136644) b!272621))

(assert (= (and b!272621 res!136646) b!272614))

(assert (= (and b!272614 res!136650) b!272617))

(assert (= (and b!272617 res!136643) b!272620))

(assert (= (and b!272620 res!136647) b!272618))

(assert (= (and b!272618 res!136648) b!272619))

(assert (= (and b!272619 res!136642) b!272615))

(assert (= (and b!272615 res!136645) b!272616))

(assert (= (and b!272616 res!136649) b!272622))

(declare-fun m!287731 () Bool)

(assert (=> b!272622 m!287731))

(declare-fun m!287733 () Bool)

(assert (=> b!272622 m!287733))

(declare-fun m!287735 () Bool)

(assert (=> b!272622 m!287735))

(declare-fun m!287737 () Bool)

(assert (=> b!272617 m!287737))

(declare-fun m!287739 () Bool)

(assert (=> b!272620 m!287739))

(declare-fun m!287741 () Bool)

(assert (=> b!272614 m!287741))

(declare-fun m!287743 () Bool)

(assert (=> b!272619 m!287743))

(declare-fun m!287745 () Bool)

(assert (=> start!26324 m!287745))

(declare-fun m!287747 () Bool)

(assert (=> start!26324 m!287747))

(declare-fun m!287749 () Bool)

(assert (=> b!272618 m!287749))

(declare-fun m!287751 () Bool)

(assert (=> b!272616 m!287751))

(assert (=> b!272616 m!287751))

(declare-fun m!287753 () Bool)

(assert (=> b!272616 m!287753))

(push 1)

(assert (not start!26324))

(assert (not b!272622))

