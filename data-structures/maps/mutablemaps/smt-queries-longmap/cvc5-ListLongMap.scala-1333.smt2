; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26566 () Bool)

(assert start!26566)

(declare-fun b!275604 () Bool)

(declare-fun e!176260 () Bool)

(assert (=> b!275604 (= e!176260 (not true))))

(declare-datatypes ((array!13652 0))(
  ( (array!13653 (arr!6475 (Array (_ BitVec 32) (_ BitVec 64))) (size!6827 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13652)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13652 (_ BitVec 32)) Bool)

(assert (=> b!275604 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13653 (store (arr!6475 a!3325) i!1267 k!2581) (size!6827 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8682 0))(
  ( (Unit!8683) )
))
(declare-fun lt!137464 () Unit!8682)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13652 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8682)

(assert (=> b!275604 (= lt!137464 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275605 () Bool)

(declare-fun res!139640 () Bool)

(assert (=> b!275605 (=> (not res!139640) (not e!176260))))

(assert (=> b!275605 (= res!139640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275606 () Bool)

(declare-fun res!139633 () Bool)

(assert (=> b!275606 (=> (not res!139633) (not e!176260))))

(assert (=> b!275606 (= res!139633 (not (= startIndex!26 i!1267)))))

(declare-fun b!275607 () Bool)

(declare-fun res!139641 () Bool)

(assert (=> b!275607 (=> (not res!139641) (not e!176260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275607 (= res!139641 (not (validKeyInArray!0 (select (arr!6475 a!3325) startIndex!26))))))

(declare-fun b!275608 () Bool)

(declare-fun res!139632 () Bool)

(declare-fun e!176258 () Bool)

(assert (=> b!275608 (=> (not res!139632) (not e!176258))))

(assert (=> b!275608 (= res!139632 (and (= (size!6827 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6827 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6827 a!3325))))))

(declare-fun b!275609 () Bool)

(assert (=> b!275609 (= e!176258 e!176260)))

(declare-fun res!139638 () Bool)

(assert (=> b!275609 (=> (not res!139638) (not e!176260))))

(declare-datatypes ((SeekEntryResult!1644 0))(
  ( (MissingZero!1644 (index!8746 (_ BitVec 32))) (Found!1644 (index!8747 (_ BitVec 32))) (Intermediate!1644 (undefined!2456 Bool) (index!8748 (_ BitVec 32)) (x!26993 (_ BitVec 32))) (Undefined!1644) (MissingVacant!1644 (index!8749 (_ BitVec 32))) )
))
(declare-fun lt!137465 () SeekEntryResult!1644)

(assert (=> b!275609 (= res!139638 (or (= lt!137465 (MissingZero!1644 i!1267)) (= lt!137465 (MissingVacant!1644 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13652 (_ BitVec 32)) SeekEntryResult!1644)

(assert (=> b!275609 (= lt!137465 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275610 () Bool)

(declare-fun res!139634 () Bool)

(assert (=> b!275610 (=> (not res!139634) (not e!176260))))

(assert (=> b!275610 (= res!139634 (and (bvslt startIndex!26 (bvsub (size!6827 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275611 () Bool)

(declare-fun res!139639 () Bool)

(assert (=> b!275611 (=> (not res!139639) (not e!176258))))

(declare-datatypes ((List!4304 0))(
  ( (Nil!4301) (Cons!4300 (h!4967 (_ BitVec 64)) (t!9394 List!4304)) )
))
(declare-fun arrayNoDuplicates!0 (array!13652 (_ BitVec 32) List!4304) Bool)

(assert (=> b!275611 (= res!139639 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4301))))

(declare-fun b!275612 () Bool)

(declare-fun res!139635 () Bool)

(assert (=> b!275612 (=> (not res!139635) (not e!176258))))

(assert (=> b!275612 (= res!139635 (validKeyInArray!0 k!2581))))

(declare-fun res!139636 () Bool)

(assert (=> start!26566 (=> (not res!139636) (not e!176258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26566 (= res!139636 (validMask!0 mask!3868))))

(assert (=> start!26566 e!176258))

(declare-fun array_inv!4429 (array!13652) Bool)

(assert (=> start!26566 (array_inv!4429 a!3325)))

(assert (=> start!26566 true))

(declare-fun b!275613 () Bool)

(declare-fun res!139637 () Bool)

(assert (=> b!275613 (=> (not res!139637) (not e!176258))))

(declare-fun arrayContainsKey!0 (array!13652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275613 (= res!139637 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26566 res!139636) b!275608))

(assert (= (and b!275608 res!139632) b!275612))

(assert (= (and b!275612 res!139635) b!275611))

(assert (= (and b!275611 res!139639) b!275613))

(assert (= (and b!275613 res!139637) b!275609))

(assert (= (and b!275609 res!139638) b!275605))

(assert (= (and b!275605 res!139640) b!275606))

(assert (= (and b!275606 res!139633) b!275607))

(assert (= (and b!275607 res!139641) b!275610))

(assert (= (and b!275610 res!139634) b!275604))

(declare-fun m!291163 () Bool)

(assert (=> b!275607 m!291163))

(assert (=> b!275607 m!291163))

(declare-fun m!291165 () Bool)

(assert (=> b!275607 m!291165))

(declare-fun m!291167 () Bool)

(assert (=> b!275611 m!291167))

(declare-fun m!291169 () Bool)

(assert (=> b!275605 m!291169))

(declare-fun m!291171 () Bool)

(assert (=> b!275609 m!291171))

(declare-fun m!291173 () Bool)

(assert (=> b!275604 m!291173))

(declare-fun m!291175 () Bool)

(assert (=> b!275604 m!291175))

(declare-fun m!291177 () Bool)

(assert (=> b!275604 m!291177))

(declare-fun m!291179 () Bool)

(assert (=> start!26566 m!291179))

(declare-fun m!291181 () Bool)

(assert (=> start!26566 m!291181))

(declare-fun m!291183 () Bool)

(assert (=> b!275613 m!291183))

(declare-fun m!291185 () Bool)

(assert (=> b!275612 m!291185))

(push 1)

