; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30232 () Bool)

(assert start!30232)

(declare-fun b!302215 () Bool)

(declare-fun res!159864 () Bool)

(declare-fun e!190548 () Bool)

(assert (=> b!302215 (=> (not res!159864) (not e!190548))))

(declare-datatypes ((array!15336 0))(
  ( (array!15337 (arr!7254 (Array (_ BitVec 32) (_ BitVec 64))) (size!7606 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15336)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2405 0))(
  ( (MissingZero!2405 (index!11796 (_ BitVec 32))) (Found!2405 (index!11797 (_ BitVec 32))) (Intermediate!2405 (undefined!3217 Bool) (index!11798 (_ BitVec 32)) (x!30033 (_ BitVec 32))) (Undefined!2405) (MissingVacant!2405 (index!11799 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15336 (_ BitVec 32)) SeekEntryResult!2405)

(assert (=> b!302215 (= res!159864 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2405 i!1240)))))

(declare-fun b!302216 () Bool)

(declare-fun res!159859 () Bool)

(assert (=> b!302216 (=> (not res!159859) (not e!190548))))

(assert (=> b!302216 (= res!159859 (and (= (size!7606 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7606 a!3293))))))

(declare-fun b!302217 () Bool)

(declare-fun res!159863 () Bool)

(assert (=> b!302217 (=> (not res!159863) (not e!190548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302217 (= res!159863 (validKeyInArray!0 k!2441))))

(declare-fun b!302219 () Bool)

(declare-fun res!159862 () Bool)

(assert (=> b!302219 (=> (not res!159862) (not e!190548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15336 (_ BitVec 32)) Bool)

(assert (=> b!302219 (= res!159862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302220 () Bool)

(assert (=> b!302220 (= e!190548 false)))

(declare-fun lt!150047 () SeekEntryResult!2405)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15336 (_ BitVec 32)) SeekEntryResult!2405)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302220 (= lt!150047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun res!159860 () Bool)

(assert (=> start!30232 (=> (not res!159860) (not e!190548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30232 (= res!159860 (validMask!0 mask!3709))))

(assert (=> start!30232 e!190548))

(assert (=> start!30232 true))

(declare-fun array_inv!5208 (array!15336) Bool)

(assert (=> start!30232 (array_inv!5208 a!3293)))

(declare-fun b!302218 () Bool)

(declare-fun res!159861 () Bool)

(assert (=> b!302218 (=> (not res!159861) (not e!190548))))

(declare-fun arrayContainsKey!0 (array!15336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302218 (= res!159861 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30232 res!159860) b!302216))

(assert (= (and b!302216 res!159859) b!302217))

(assert (= (and b!302217 res!159863) b!302218))

(assert (= (and b!302218 res!159861) b!302215))

(assert (= (and b!302215 res!159864) b!302219))

(assert (= (and b!302219 res!159862) b!302220))

(declare-fun m!313791 () Bool)

(assert (=> b!302215 m!313791))

(declare-fun m!313793 () Bool)

(assert (=> start!30232 m!313793))

(declare-fun m!313795 () Bool)

(assert (=> start!30232 m!313795))

(declare-fun m!313797 () Bool)

(assert (=> b!302218 m!313797))

(declare-fun m!313799 () Bool)

(assert (=> b!302220 m!313799))

(assert (=> b!302220 m!313799))

(declare-fun m!313801 () Bool)

(assert (=> b!302220 m!313801))

(declare-fun m!313803 () Bool)

(assert (=> b!302219 m!313803))

(declare-fun m!313805 () Bool)

(assert (=> b!302217 m!313805))

(push 1)

(assert (not b!302220))

(assert (not b!302217))

(assert (not b!302218))

(assert (not b!302219))

(assert (not b!302215))

(assert (not start!30232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

