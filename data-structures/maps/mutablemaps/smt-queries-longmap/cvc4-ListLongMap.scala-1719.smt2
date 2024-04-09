; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31720 () Bool)

(assert start!31720)

(declare-fun b!316711 () Bool)

(declare-fun res!171647 () Bool)

(declare-fun e!196974 () Bool)

(assert (=> b!316711 (=> (not res!171647) (not e!196974))))

(declare-datatypes ((array!16140 0))(
  ( (array!16141 (arr!7635 (Array (_ BitVec 32) (_ BitVec 64))) (size!7987 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16140)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!316711 (= res!171647 (and (= (select (arr!7635 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7987 a!3293))))))

(declare-fun b!316712 () Bool)

(declare-fun res!171650 () Bool)

(declare-fun e!196975 () Bool)

(assert (=> b!316712 (=> (not res!171650) (not e!196975))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!316712 (= res!171650 (and (= (size!7987 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7987 a!3293))))))

(declare-fun b!316713 () Bool)

(declare-fun e!196972 () Bool)

(assert (=> b!316713 (= e!196974 e!196972)))

(declare-fun res!171643 () Bool)

(assert (=> b!316713 (=> (not res!171643) (not e!196972))))

(declare-datatypes ((SeekEntryResult!2786 0))(
  ( (MissingZero!2786 (index!13320 (_ BitVec 32))) (Found!2786 (index!13321 (_ BitVec 32))) (Intermediate!2786 (undefined!3598 Bool) (index!13322 (_ BitVec 32)) (x!31541 (_ BitVec 32))) (Undefined!2786) (MissingVacant!2786 (index!13323 (_ BitVec 32))) )
))
(declare-fun lt!154708 () SeekEntryResult!2786)

(declare-fun lt!154709 () SeekEntryResult!2786)

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!316713 (= res!171643 (and (= lt!154708 lt!154709) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7635 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16140 (_ BitVec 32)) SeekEntryResult!2786)

(assert (=> b!316713 (= lt!154708 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!316715 () Bool)

(declare-fun res!171649 () Bool)

(assert (=> b!316715 (=> (not res!171649) (not e!196975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316715 (= res!171649 (validKeyInArray!0 k!2441))))

(declare-fun b!316716 () Bool)

(declare-fun res!171648 () Bool)

(assert (=> b!316716 (=> (not res!171648) (not e!196975))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16140 (_ BitVec 32)) SeekEntryResult!2786)

(assert (=> b!316716 (= res!171648 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2786 i!1240)))))

(declare-fun b!316717 () Bool)

(assert (=> b!316717 (= e!196972 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316717 (= lt!154708 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316718 () Bool)

(declare-fun res!171651 () Bool)

(assert (=> b!316718 (=> (not res!171651) (not e!196975))))

(declare-fun arrayContainsKey!0 (array!16140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316718 (= res!171651 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316719 () Bool)

(declare-fun res!171645 () Bool)

(assert (=> b!316719 (=> (not res!171645) (not e!196975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16140 (_ BitVec 32)) Bool)

(assert (=> b!316719 (= res!171645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!171644 () Bool)

(assert (=> start!31720 (=> (not res!171644) (not e!196975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31720 (= res!171644 (validMask!0 mask!3709))))

(assert (=> start!31720 e!196975))

(declare-fun array_inv!5589 (array!16140) Bool)

(assert (=> start!31720 (array_inv!5589 a!3293)))

(assert (=> start!31720 true))

(declare-fun b!316714 () Bool)

(assert (=> b!316714 (= e!196975 e!196974)))

(declare-fun res!171646 () Bool)

(assert (=> b!316714 (=> (not res!171646) (not e!196974))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316714 (= res!171646 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154709))))

(assert (=> b!316714 (= lt!154709 (Intermediate!2786 false resIndex!52 resX!52))))

(assert (= (and start!31720 res!171644) b!316712))

(assert (= (and b!316712 res!171650) b!316715))

(assert (= (and b!316715 res!171649) b!316718))

(assert (= (and b!316718 res!171651) b!316716))

(assert (= (and b!316716 res!171648) b!316719))

(assert (= (and b!316719 res!171645) b!316714))

(assert (= (and b!316714 res!171646) b!316711))

(assert (= (and b!316711 res!171647) b!316713))

(assert (= (and b!316713 res!171643) b!316717))

(declare-fun m!325499 () Bool)

(assert (=> b!316715 m!325499))

(declare-fun m!325501 () Bool)

(assert (=> b!316714 m!325501))

(assert (=> b!316714 m!325501))

(declare-fun m!325503 () Bool)

(assert (=> b!316714 m!325503))

(declare-fun m!325505 () Bool)

(assert (=> b!316713 m!325505))

(declare-fun m!325507 () Bool)

(assert (=> b!316713 m!325507))

(declare-fun m!325509 () Bool)

(assert (=> start!31720 m!325509))

(declare-fun m!325511 () Bool)

(assert (=> start!31720 m!325511))

(declare-fun m!325513 () Bool)

(assert (=> b!316717 m!325513))

(assert (=> b!316717 m!325513))

(declare-fun m!325515 () Bool)

(assert (=> b!316717 m!325515))

(declare-fun m!325517 () Bool)

(assert (=> b!316711 m!325517))

(declare-fun m!325519 () Bool)

(assert (=> b!316718 m!325519))

(declare-fun m!325521 () Bool)

(assert (=> b!316716 m!325521))

(declare-fun m!325523 () Bool)

(assert (=> b!316719 m!325523))

(push 1)

