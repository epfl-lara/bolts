; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30456 () Bool)

(assert start!30456)

(declare-fun b!304714 () Bool)

(declare-fun res!162223 () Bool)

(declare-fun e!191437 () Bool)

(assert (=> b!304714 (=> (not res!162223) (not e!191437))))

(declare-datatypes ((array!15509 0))(
  ( (array!15510 (arr!7339 (Array (_ BitVec 32) (_ BitVec 64))) (size!7691 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15509)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304714 (= res!162223 (and (= (select (arr!7339 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7691 a!3293))))))

(declare-fun res!162221 () Bool)

(declare-fun e!191439 () Bool)

(assert (=> start!30456 (=> (not res!162221) (not e!191439))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30456 (= res!162221 (validMask!0 mask!3709))))

(assert (=> start!30456 e!191439))

(declare-fun array_inv!5293 (array!15509) Bool)

(assert (=> start!30456 (array_inv!5293 a!3293)))

(assert (=> start!30456 true))

(declare-fun b!304715 () Bool)

(declare-fun e!191440 () Bool)

(assert (=> b!304715 (= e!191437 e!191440)))

(declare-fun res!162220 () Bool)

(assert (=> b!304715 (=> (not res!162220) (not e!191440))))

(declare-datatypes ((SeekEntryResult!2490 0))(
  ( (MissingZero!2490 (index!12136 (_ BitVec 32))) (Found!2490 (index!12137 (_ BitVec 32))) (Intermediate!2490 (undefined!3302 Bool) (index!12138 (_ BitVec 32)) (x!30359 (_ BitVec 32))) (Undefined!2490) (MissingVacant!2490 (index!12139 (_ BitVec 32))) )
))
(declare-fun lt!150517 () SeekEntryResult!2490)

(declare-fun lt!150518 () SeekEntryResult!2490)

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!304715 (= res!162220 (and (= lt!150517 lt!150518) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7339 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7339 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7339 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15509 (_ BitVec 32)) SeekEntryResult!2490)

(assert (=> b!304715 (= lt!150517 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304716 () Bool)

(declare-fun res!162222 () Bool)

(assert (=> b!304716 (=> (not res!162222) (not e!191439))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15509 (_ BitVec 32)) SeekEntryResult!2490)

(assert (=> b!304716 (= res!162222 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2490 i!1240)))))

(declare-fun b!304717 () Bool)

(declare-fun res!162218 () Bool)

(assert (=> b!304717 (=> (not res!162218) (not e!191439))))

(assert (=> b!304717 (= res!162218 (and (= (size!7691 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7691 a!3293))))))

(declare-fun b!304718 () Bool)

(declare-fun res!162225 () Bool)

(assert (=> b!304718 (=> (not res!162225) (not e!191439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304718 (= res!162225 (validKeyInArray!0 k!2441))))

(declare-fun b!304719 () Bool)

(declare-fun res!162219 () Bool)

(assert (=> b!304719 (=> (not res!162219) (not e!191439))))

(declare-fun arrayContainsKey!0 (array!15509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304719 (= res!162219 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304720 () Bool)

(assert (=> b!304720 (= e!191440 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304720 (= lt!150517 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304721 () Bool)

(assert (=> b!304721 (= e!191439 e!191437)))

(declare-fun res!162217 () Bool)

(assert (=> b!304721 (=> (not res!162217) (not e!191437))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304721 (= res!162217 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150518))))

(assert (=> b!304721 (= lt!150518 (Intermediate!2490 false resIndex!52 resX!52))))

(declare-fun b!304722 () Bool)

(declare-fun res!162224 () Bool)

(assert (=> b!304722 (=> (not res!162224) (not e!191439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15509 (_ BitVec 32)) Bool)

(assert (=> b!304722 (= res!162224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30456 res!162221) b!304717))

(assert (= (and b!304717 res!162218) b!304718))

(assert (= (and b!304718 res!162225) b!304719))

(assert (= (and b!304719 res!162219) b!304716))

(assert (= (and b!304716 res!162222) b!304722))

(assert (= (and b!304722 res!162224) b!304721))

(assert (= (and b!304721 res!162217) b!304714))

(assert (= (and b!304714 res!162223) b!304715))

(assert (= (and b!304715 res!162220) b!304720))

(declare-fun m!315835 () Bool)

(assert (=> b!304714 m!315835))

(declare-fun m!315837 () Bool)

(assert (=> b!304721 m!315837))

(assert (=> b!304721 m!315837))

(declare-fun m!315839 () Bool)

(assert (=> b!304721 m!315839))

(declare-fun m!315841 () Bool)

(assert (=> start!30456 m!315841))

(declare-fun m!315843 () Bool)

(assert (=> start!30456 m!315843))

(declare-fun m!315845 () Bool)

(assert (=> b!304718 m!315845))

(declare-fun m!315847 () Bool)

(assert (=> b!304719 m!315847))

(declare-fun m!315849 () Bool)

(assert (=> b!304715 m!315849))

(declare-fun m!315851 () Bool)

(assert (=> b!304715 m!315851))

(declare-fun m!315853 () Bool)

(assert (=> b!304722 m!315853))

(declare-fun m!315855 () Bool)

(assert (=> b!304720 m!315855))

(assert (=> b!304720 m!315855))

(declare-fun m!315857 () Bool)

(assert (=> b!304720 m!315857))

(declare-fun m!315859 () Bool)

(assert (=> b!304716 m!315859))

(push 1)

