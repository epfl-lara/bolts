; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30932 () Bool)

(assert start!30932)

(declare-fun b!310255 () Bool)

(declare-fun res!166875 () Bool)

(declare-fun e!193719 () Bool)

(assert (=> b!310255 (=> (not res!166875) (not e!193719))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!15832 0))(
  ( (array!15833 (arr!7496 (Array (_ BitVec 32) (_ BitVec 64))) (size!7848 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15832)

(assert (=> b!310255 (= res!166875 (and (= (size!7848 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7848 a!3293))))))

(declare-fun b!310256 () Bool)

(declare-fun e!193716 () Bool)

(assert (=> b!310256 (= e!193719 e!193716)))

(declare-fun res!166868 () Bool)

(assert (=> b!310256 (=> (not res!166868) (not e!193716))))

(declare-datatypes ((SeekEntryResult!2647 0))(
  ( (MissingZero!2647 (index!12764 (_ BitVec 32))) (Found!2647 (index!12765 (_ BitVec 32))) (Intermediate!2647 (undefined!3459 Bool) (index!12766 (_ BitVec 32)) (x!30959 (_ BitVec 32))) (Undefined!2647) (MissingVacant!2647 (index!12767 (_ BitVec 32))) )
))
(declare-fun lt!151924 () SeekEntryResult!2647)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15832 (_ BitVec 32)) SeekEntryResult!2647)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310256 (= res!166868 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151924))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310256 (= lt!151924 (Intermediate!2647 false resIndex!52 resX!52))))

(declare-fun b!310257 () Bool)

(declare-fun e!193720 () Bool)

(assert (=> b!310257 (= e!193720 (not true))))

(declare-fun e!193718 () Bool)

(assert (=> b!310257 e!193718))

(declare-fun res!166872 () Bool)

(assert (=> b!310257 (=> (not res!166872) (not e!193718))))

(declare-fun lt!151925 () (_ BitVec 32))

(declare-fun lt!151923 () SeekEntryResult!2647)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!310257 (= res!166872 (= lt!151923 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151925 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310257 (= lt!151925 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310258 () Bool)

(declare-fun res!166870 () Bool)

(assert (=> b!310258 (=> (not res!166870) (not e!193719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15832 (_ BitVec 32)) Bool)

(assert (=> b!310258 (= res!166870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!166869 () Bool)

(assert (=> start!30932 (=> (not res!166869) (not e!193719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30932 (= res!166869 (validMask!0 mask!3709))))

(assert (=> start!30932 e!193719))

(declare-fun array_inv!5450 (array!15832) Bool)

(assert (=> start!30932 (array_inv!5450 a!3293)))

(assert (=> start!30932 true))

(declare-fun b!310254 () Bool)

(assert (=> b!310254 (= e!193716 e!193720)))

(declare-fun res!166873 () Bool)

(assert (=> b!310254 (=> (not res!166873) (not e!193720))))

(assert (=> b!310254 (= res!166873 (and (= lt!151923 lt!151924) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7496 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310254 (= lt!151923 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!310259 () Bool)

(declare-fun res!166874 () Bool)

(assert (=> b!310259 (=> (not res!166874) (not e!193719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310259 (= res!166874 (validKeyInArray!0 k0!2441))))

(declare-fun b!310260 () Bool)

(declare-fun res!166866 () Bool)

(assert (=> b!310260 (=> (not res!166866) (not e!193719))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15832 (_ BitVec 32)) SeekEntryResult!2647)

(assert (=> b!310260 (= res!166866 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2647 i!1240)))))

(declare-fun b!310261 () Bool)

(declare-fun res!166871 () Bool)

(assert (=> b!310261 (=> (not res!166871) (not e!193719))))

(declare-fun arrayContainsKey!0 (array!15832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310261 (= res!166871 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun lt!151922 () array!15832)

(declare-fun b!310262 () Bool)

(assert (=> b!310262 (= e!193718 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!151922 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151925 k0!2441 lt!151922 mask!3709)))))

(assert (=> b!310262 (= lt!151922 (array!15833 (store (arr!7496 a!3293) i!1240 k0!2441) (size!7848 a!3293)))))

(declare-fun b!310263 () Bool)

(declare-fun res!166867 () Bool)

(assert (=> b!310263 (=> (not res!166867) (not e!193716))))

(assert (=> b!310263 (= res!166867 (and (= (select (arr!7496 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7848 a!3293))))))

(assert (= (and start!30932 res!166869) b!310255))

(assert (= (and b!310255 res!166875) b!310259))

(assert (= (and b!310259 res!166874) b!310261))

(assert (= (and b!310261 res!166871) b!310260))

(assert (= (and b!310260 res!166866) b!310258))

(assert (= (and b!310258 res!166870) b!310256))

(assert (= (and b!310256 res!166868) b!310263))

(assert (= (and b!310263 res!166867) b!310254))

(assert (= (and b!310254 res!166873) b!310257))

(assert (= (and b!310257 res!166872) b!310262))

(declare-fun m!320205 () Bool)

(assert (=> b!310256 m!320205))

(assert (=> b!310256 m!320205))

(declare-fun m!320207 () Bool)

(assert (=> b!310256 m!320207))

(declare-fun m!320209 () Bool)

(assert (=> b!310260 m!320209))

(declare-fun m!320211 () Bool)

(assert (=> b!310257 m!320211))

(declare-fun m!320213 () Bool)

(assert (=> b!310257 m!320213))

(declare-fun m!320215 () Bool)

(assert (=> b!310259 m!320215))

(declare-fun m!320217 () Bool)

(assert (=> b!310261 m!320217))

(declare-fun m!320219 () Bool)

(assert (=> b!310258 m!320219))

(declare-fun m!320221 () Bool)

(assert (=> b!310254 m!320221))

(declare-fun m!320223 () Bool)

(assert (=> b!310254 m!320223))

(declare-fun m!320225 () Bool)

(assert (=> start!30932 m!320225))

(declare-fun m!320227 () Bool)

(assert (=> start!30932 m!320227))

(declare-fun m!320229 () Bool)

(assert (=> b!310262 m!320229))

(declare-fun m!320231 () Bool)

(assert (=> b!310262 m!320231))

(declare-fun m!320233 () Bool)

(assert (=> b!310262 m!320233))

(declare-fun m!320235 () Bool)

(assert (=> b!310263 m!320235))

(check-sat (not b!310254) (not b!310260) (not b!310257) (not b!310262) (not b!310261) (not b!310256) (not b!310258) (not b!310259) (not start!30932))
(check-sat)
