; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27552 () Bool)

(assert start!27552)

(declare-fun b!284548 () Bool)

(declare-fun res!147098 () Bool)

(declare-fun e!180489 () Bool)

(assert (=> b!284548 (=> (not res!147098) (not e!180489))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284548 (= res!147098 (validKeyInArray!0 k0!2581))))

(declare-fun b!284549 () Bool)

(declare-fun res!147097 () Bool)

(assert (=> b!284549 (=> (not res!147097) (not e!180489))))

(declare-datatypes ((array!14191 0))(
  ( (array!14192 (arr!6734 (Array (_ BitVec 32) (_ BitVec 64))) (size!7086 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14191)

(declare-fun arrayContainsKey!0 (array!14191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284549 (= res!147097 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284550 () Bool)

(declare-fun res!147095 () Bool)

(assert (=> b!284550 (=> (not res!147095) (not e!180489))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284550 (= res!147095 (and (= (size!7086 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7086 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7086 a!3325))))))

(declare-fun b!284551 () Bool)

(declare-fun e!180490 () Bool)

(assert (=> b!284551 (= e!180489 e!180490)))

(declare-fun res!147094 () Bool)

(assert (=> b!284551 (=> (not res!147094) (not e!180490))))

(declare-datatypes ((SeekEntryResult!1903 0))(
  ( (MissingZero!1903 (index!9782 (_ BitVec 32))) (Found!1903 (index!9783 (_ BitVec 32))) (Intermediate!1903 (undefined!2715 Bool) (index!9784 (_ BitVec 32)) (x!27958 (_ BitVec 32))) (Undefined!1903) (MissingVacant!1903 (index!9785 (_ BitVec 32))) )
))
(declare-fun lt!140576 () SeekEntryResult!1903)

(assert (=> b!284551 (= res!147094 (or (= lt!140576 (MissingZero!1903 i!1267)) (= lt!140576 (MissingVacant!1903 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14191 (_ BitVec 32)) SeekEntryResult!1903)

(assert (=> b!284551 (= lt!140576 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284552 () Bool)

(declare-fun res!147099 () Bool)

(assert (=> b!284552 (=> (not res!147099) (not e!180489))))

(declare-datatypes ((List!4563 0))(
  ( (Nil!4560) (Cons!4559 (h!5232 (_ BitVec 64)) (t!9653 List!4563)) )
))
(declare-fun arrayNoDuplicates!0 (array!14191 (_ BitVec 32) List!4563) Bool)

(assert (=> b!284552 (= res!147099 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4560))))

(declare-fun b!284553 () Bool)

(assert (=> b!284553 (= e!180490 false)))

(declare-fun lt!140575 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14191 (_ BitVec 32)) Bool)

(assert (=> b!284553 (= lt!140575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!147096 () Bool)

(assert (=> start!27552 (=> (not res!147096) (not e!180489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27552 (= res!147096 (validMask!0 mask!3868))))

(assert (=> start!27552 e!180489))

(declare-fun array_inv!4688 (array!14191) Bool)

(assert (=> start!27552 (array_inv!4688 a!3325)))

(assert (=> start!27552 true))

(assert (= (and start!27552 res!147096) b!284550))

(assert (= (and b!284550 res!147095) b!284548))

(assert (= (and b!284548 res!147098) b!284552))

(assert (= (and b!284552 res!147099) b!284549))

(assert (= (and b!284549 res!147097) b!284551))

(assert (= (and b!284551 res!147094) b!284553))

(declare-fun m!299571 () Bool)

(assert (=> b!284552 m!299571))

(declare-fun m!299573 () Bool)

(assert (=> b!284551 m!299573))

(declare-fun m!299575 () Bool)

(assert (=> b!284549 m!299575))

(declare-fun m!299577 () Bool)

(assert (=> b!284548 m!299577))

(declare-fun m!299579 () Bool)

(assert (=> start!27552 m!299579))

(declare-fun m!299581 () Bool)

(assert (=> start!27552 m!299581))

(declare-fun m!299583 () Bool)

(assert (=> b!284553 m!299583))

(check-sat (not start!27552) (not b!284551) (not b!284548) (not b!284549) (not b!284553) (not b!284552))
(check-sat)
