; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30294 () Bool)

(assert start!30294)

(declare-datatypes ((array!15398 0))(
  ( (array!15399 (arr!7285 (Array (_ BitVec 32) (_ BitVec 64))) (size!7637 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15398)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!190781 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun b!303004 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303004 (= e!190781 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7285 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7285 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7285 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun res!160651 () Bool)

(declare-fun e!190782 () Bool)

(assert (=> start!30294 (=> (not res!160651) (not e!190782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30294 (= res!160651 (validMask!0 mask!3709))))

(assert (=> start!30294 e!190782))

(declare-fun array_inv!5239 (array!15398) Bool)

(assert (=> start!30294 (array_inv!5239 a!3293)))

(assert (=> start!30294 true))

(declare-fun b!303005 () Bool)

(assert (=> b!303005 (= e!190782 e!190781)))

(declare-fun res!160655 () Bool)

(assert (=> b!303005 (=> (not res!160655) (not e!190781))))

(declare-datatypes ((SeekEntryResult!2436 0))(
  ( (MissingZero!2436 (index!11920 (_ BitVec 32))) (Found!2436 (index!11921 (_ BitVec 32))) (Intermediate!2436 (undefined!3248 Bool) (index!11922 (_ BitVec 32)) (x!30152 (_ BitVec 32))) (Undefined!2436) (MissingVacant!2436 (index!11923 (_ BitVec 32))) )
))
(declare-fun lt!150140 () SeekEntryResult!2436)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15398 (_ BitVec 32)) SeekEntryResult!2436)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303005 (= res!160655 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150140))))

(assert (=> b!303005 (= lt!150140 (Intermediate!2436 false resIndex!52 resX!52))))

(declare-fun b!303006 () Bool)

(declare-fun res!160653 () Bool)

(assert (=> b!303006 (=> (not res!160653) (not e!190782))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15398 (_ BitVec 32)) SeekEntryResult!2436)

(assert (=> b!303006 (= res!160653 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2436 i!1240)))))

(declare-fun b!303007 () Bool)

(declare-fun res!160648 () Bool)

(assert (=> b!303007 (=> (not res!160648) (not e!190782))))

(declare-fun arrayContainsKey!0 (array!15398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303007 (= res!160648 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303008 () Bool)

(declare-fun res!160654 () Bool)

(assert (=> b!303008 (=> (not res!160654) (not e!190782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303008 (= res!160654 (validKeyInArray!0 k!2441))))

(declare-fun b!303009 () Bool)

(declare-fun res!160649 () Bool)

(assert (=> b!303009 (=> (not res!160649) (not e!190782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15398 (_ BitVec 32)) Bool)

(assert (=> b!303009 (= res!160649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303010 () Bool)

(declare-fun res!160650 () Bool)

(assert (=> b!303010 (=> (not res!160650) (not e!190781))))

(assert (=> b!303010 (= res!160650 (and (= (select (arr!7285 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7637 a!3293))))))

(declare-fun b!303011 () Bool)

(declare-fun res!160656 () Bool)

(assert (=> b!303011 (=> (not res!160656) (not e!190782))))

(assert (=> b!303011 (= res!160656 (and (= (size!7637 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7637 a!3293))))))

(declare-fun b!303012 () Bool)

(declare-fun res!160652 () Bool)

(assert (=> b!303012 (=> (not res!160652) (not e!190781))))

(assert (=> b!303012 (= res!160652 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150140))))

(assert (= (and start!30294 res!160651) b!303011))

(assert (= (and b!303011 res!160656) b!303008))

(assert (= (and b!303008 res!160654) b!303007))

(assert (= (and b!303007 res!160648) b!303006))

(assert (= (and b!303006 res!160653) b!303009))

(assert (= (and b!303009 res!160649) b!303005))

(assert (= (and b!303005 res!160655) b!303010))

(assert (= (and b!303010 res!160650) b!303012))

(assert (= (and b!303012 res!160652) b!303004))

(declare-fun m!314437 () Bool)

(assert (=> b!303004 m!314437))

(declare-fun m!314439 () Bool)

(assert (=> b!303005 m!314439))

(assert (=> b!303005 m!314439))

(declare-fun m!314441 () Bool)

(assert (=> b!303005 m!314441))

(declare-fun m!314443 () Bool)

(assert (=> b!303009 m!314443))

(declare-fun m!314445 () Bool)

(assert (=> b!303008 m!314445))

(declare-fun m!314447 () Bool)

(assert (=> b!303010 m!314447))

(declare-fun m!314449 () Bool)

(assert (=> b!303006 m!314449))

(declare-fun m!314451 () Bool)

(assert (=> start!30294 m!314451))

(declare-fun m!314453 () Bool)

(assert (=> start!30294 m!314453))

(declare-fun m!314455 () Bool)

(assert (=> b!303012 m!314455))

(declare-fun m!314457 () Bool)

(assert (=> b!303007 m!314457))

(push 1)

