; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30252 () Bool)

(assert start!30252)

(declare-fun b!302464 () Bool)

(declare-fun res!160114 () Bool)

(declare-fun e!190619 () Bool)

(assert (=> b!302464 (=> (not res!160114) (not e!190619))))

(declare-datatypes ((array!15356 0))(
  ( (array!15357 (arr!7264 (Array (_ BitVec 32) (_ BitVec 64))) (size!7616 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15356)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302464 (= res!160114 (and (= (select (arr!7264 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7616 a!3293))))))

(declare-fun b!302465 () Bool)

(declare-fun res!160116 () Bool)

(declare-fun e!190620 () Bool)

(assert (=> b!302465 (=> (not res!160116) (not e!190620))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!302465 (= res!160116 (and (= (size!7616 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7616 a!3293))))))

(declare-fun b!302466 () Bool)

(declare-fun res!160115 () Bool)

(assert (=> b!302466 (=> (not res!160115) (not e!190619))))

(declare-datatypes ((SeekEntryResult!2415 0))(
  ( (MissingZero!2415 (index!11836 (_ BitVec 32))) (Found!2415 (index!11837 (_ BitVec 32))) (Intermediate!2415 (undefined!3227 Bool) (index!11838 (_ BitVec 32)) (x!30075 (_ BitVec 32))) (Undefined!2415) (MissingVacant!2415 (index!11839 (_ BitVec 32))) )
))
(declare-fun lt!150077 () SeekEntryResult!2415)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15356 (_ BitVec 32)) SeekEntryResult!2415)

(assert (=> b!302466 (= res!160115 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150077))))

(declare-fun b!302467 () Bool)

(declare-fun res!160113 () Bool)

(assert (=> b!302467 (=> (not res!160113) (not e!190620))))

(declare-fun arrayContainsKey!0 (array!15356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302467 (= res!160113 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!160109 () Bool)

(assert (=> start!30252 (=> (not res!160109) (not e!190620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30252 (= res!160109 (validMask!0 mask!3709))))

(assert (=> start!30252 e!190620))

(declare-fun array_inv!5218 (array!15356) Bool)

(assert (=> start!30252 (array_inv!5218 a!3293)))

(assert (=> start!30252 true))

(declare-fun b!302468 () Bool)

(declare-fun res!160112 () Bool)

(assert (=> b!302468 (=> (not res!160112) (not e!190620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302468 (= res!160112 (validKeyInArray!0 k!2441))))

(declare-fun b!302469 () Bool)

(assert (=> b!302469 (= e!190619 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7264 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7264 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7264 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!302470 () Bool)

(declare-fun res!160108 () Bool)

(assert (=> b!302470 (=> (not res!160108) (not e!190620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15356 (_ BitVec 32)) Bool)

(assert (=> b!302470 (= res!160108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302471 () Bool)

(declare-fun res!160110 () Bool)

(assert (=> b!302471 (=> (not res!160110) (not e!190620))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15356 (_ BitVec 32)) SeekEntryResult!2415)

(assert (=> b!302471 (= res!160110 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2415 i!1240)))))

(declare-fun b!302472 () Bool)

(assert (=> b!302472 (= e!190620 e!190619)))

(declare-fun res!160111 () Bool)

(assert (=> b!302472 (=> (not res!160111) (not e!190619))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302472 (= res!160111 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150077))))

(assert (=> b!302472 (= lt!150077 (Intermediate!2415 false resIndex!52 resX!52))))

(assert (= (and start!30252 res!160109) b!302465))

(assert (= (and b!302465 res!160116) b!302468))

(assert (= (and b!302468 res!160112) b!302467))

(assert (= (and b!302467 res!160113) b!302471))

(assert (= (and b!302471 res!160110) b!302470))

(assert (= (and b!302470 res!160108) b!302472))

(assert (= (and b!302472 res!160111) b!302464))

(assert (= (and b!302464 res!160114) b!302466))

(assert (= (and b!302466 res!160115) b!302469))

(declare-fun m!313993 () Bool)

(assert (=> b!302468 m!313993))

(declare-fun m!313995 () Bool)

(assert (=> b!302472 m!313995))

(assert (=> b!302472 m!313995))

(declare-fun m!313997 () Bool)

(assert (=> b!302472 m!313997))

(declare-fun m!313999 () Bool)

(assert (=> b!302470 m!313999))

(declare-fun m!314001 () Bool)

(assert (=> b!302464 m!314001))

(declare-fun m!314003 () Bool)

(assert (=> b!302467 m!314003))

(declare-fun m!314005 () Bool)

(assert (=> start!30252 m!314005))

(declare-fun m!314007 () Bool)

(assert (=> start!30252 m!314007))

(declare-fun m!314009 () Bool)

(assert (=> b!302471 m!314009))

(declare-fun m!314011 () Bool)

(assert (=> b!302469 m!314011))

(declare-fun m!314013 () Bool)

(assert (=> b!302466 m!314013))

(push 1)

(assert (not b!302470))

(assert (not b!302472))

(assert (not b!302466))

(assert (not b!302468))

(assert (not start!30252))

(assert (not b!302467))

(assert (not b!302471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

