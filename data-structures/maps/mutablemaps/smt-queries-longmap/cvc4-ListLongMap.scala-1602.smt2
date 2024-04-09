; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30292 () Bool)

(assert start!30292)

(declare-fun b!302977 () Bool)

(declare-fun res!160628 () Bool)

(declare-fun e!190774 () Bool)

(assert (=> b!302977 (=> (not res!160628) (not e!190774))))

(declare-datatypes ((array!15396 0))(
  ( (array!15397 (arr!7284 (Array (_ BitVec 32) (_ BitVec 64))) (size!7636 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15396)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2435 0))(
  ( (MissingZero!2435 (index!11916 (_ BitVec 32))) (Found!2435 (index!11917 (_ BitVec 32))) (Intermediate!2435 (undefined!3247 Bool) (index!11918 (_ BitVec 32)) (x!30143 (_ BitVec 32))) (Undefined!2435) (MissingVacant!2435 (index!11919 (_ BitVec 32))) )
))
(declare-fun lt!150137 () SeekEntryResult!2435)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15396 (_ BitVec 32)) SeekEntryResult!2435)

(assert (=> b!302977 (= res!160628 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150137))))

(declare-fun b!302978 () Bool)

(declare-fun res!160623 () Bool)

(declare-fun e!190772 () Bool)

(assert (=> b!302978 (=> (not res!160623) (not e!190772))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15396 (_ BitVec 32)) SeekEntryResult!2435)

(assert (=> b!302978 (= res!160623 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2435 i!1240)))))

(declare-fun b!302979 () Bool)

(declare-fun res!160625 () Bool)

(assert (=> b!302979 (=> (not res!160625) (not e!190774))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302979 (= res!160625 (and (= (select (arr!7284 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7636 a!3293))))))

(declare-fun b!302980 () Bool)

(declare-fun res!160627 () Bool)

(assert (=> b!302980 (=> (not res!160627) (not e!190772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302980 (= res!160627 (validKeyInArray!0 k!2441))))

(declare-fun b!302981 () Bool)

(declare-fun res!160626 () Bool)

(assert (=> b!302981 (=> (not res!160626) (not e!190772))))

(assert (=> b!302981 (= res!160626 (and (= (size!7636 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7636 a!3293))))))

(declare-fun res!160629 () Bool)

(assert (=> start!30292 (=> (not res!160629) (not e!190772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30292 (= res!160629 (validMask!0 mask!3709))))

(assert (=> start!30292 e!190772))

(declare-fun array_inv!5238 (array!15396) Bool)

(assert (=> start!30292 (array_inv!5238 a!3293)))

(assert (=> start!30292 true))

(declare-fun b!302982 () Bool)

(declare-fun res!160621 () Bool)

(assert (=> b!302982 (=> (not res!160621) (not e!190772))))

(declare-fun arrayContainsKey!0 (array!15396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302982 (= res!160621 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302983 () Bool)

(assert (=> b!302983 (= e!190772 e!190774)))

(declare-fun res!160622 () Bool)

(assert (=> b!302983 (=> (not res!160622) (not e!190774))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302983 (= res!160622 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150137))))

(assert (=> b!302983 (= lt!150137 (Intermediate!2435 false resIndex!52 resX!52))))

(declare-fun b!302984 () Bool)

(assert (=> b!302984 (= e!190774 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7284 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7284 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7284 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!302985 () Bool)

(declare-fun res!160624 () Bool)

(assert (=> b!302985 (=> (not res!160624) (not e!190772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15396 (_ BitVec 32)) Bool)

(assert (=> b!302985 (= res!160624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30292 res!160629) b!302981))

(assert (= (and b!302981 res!160626) b!302980))

(assert (= (and b!302980 res!160627) b!302982))

(assert (= (and b!302982 res!160621) b!302978))

(assert (= (and b!302978 res!160623) b!302985))

(assert (= (and b!302985 res!160624) b!302983))

(assert (= (and b!302983 res!160622) b!302979))

(assert (= (and b!302979 res!160625) b!302977))

(assert (= (and b!302977 res!160628) b!302984))

(declare-fun m!314415 () Bool)

(assert (=> b!302985 m!314415))

(declare-fun m!314417 () Bool)

(assert (=> b!302979 m!314417))

(declare-fun m!314419 () Bool)

(assert (=> b!302978 m!314419))

(declare-fun m!314421 () Bool)

(assert (=> b!302984 m!314421))

(declare-fun m!314423 () Bool)

(assert (=> b!302977 m!314423))

(declare-fun m!314425 () Bool)

(assert (=> start!30292 m!314425))

(declare-fun m!314427 () Bool)

(assert (=> start!30292 m!314427))

(declare-fun m!314429 () Bool)

(assert (=> b!302983 m!314429))

(assert (=> b!302983 m!314429))

(declare-fun m!314431 () Bool)

(assert (=> b!302983 m!314431))

(declare-fun m!314433 () Bool)

(assert (=> b!302982 m!314433))

(declare-fun m!314435 () Bool)

(assert (=> b!302980 m!314435))

(push 1)

(assert (not b!302985))

(assert (not b!302977))

(assert (not b!302980))

(assert (not b!302983))

(assert (not start!30292))

(assert (not b!302978))

(assert (not b!302982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

