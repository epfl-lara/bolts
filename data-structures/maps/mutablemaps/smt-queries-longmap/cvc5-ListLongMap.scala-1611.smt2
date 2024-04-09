; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30342 () Bool)

(assert start!30342)

(declare-fun b!303654 () Bool)

(declare-fun e!190980 () Bool)

(assert (=> b!303654 (= e!190980 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!150233 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303654 (= lt!150233 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303655 () Bool)

(declare-fun res!161300 () Bool)

(declare-fun e!190979 () Bool)

(assert (=> b!303655 (=> (not res!161300) (not e!190979))))

(declare-datatypes ((array!15446 0))(
  ( (array!15447 (arr!7309 (Array (_ BitVec 32) (_ BitVec 64))) (size!7661 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15446)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303655 (= res!161300 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303656 () Bool)

(declare-fun res!161299 () Bool)

(assert (=> b!303656 (=> (not res!161299) (not e!190979))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2460 0))(
  ( (MissingZero!2460 (index!12016 (_ BitVec 32))) (Found!2460 (index!12017 (_ BitVec 32))) (Intermediate!2460 (undefined!3272 Bool) (index!12018 (_ BitVec 32)) (x!30240 (_ BitVec 32))) (Undefined!2460) (MissingVacant!2460 (index!12019 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15446 (_ BitVec 32)) SeekEntryResult!2460)

(assert (=> b!303656 (= res!161299 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2460 i!1240)))))

(declare-fun b!303657 () Bool)

(declare-fun res!161305 () Bool)

(assert (=> b!303657 (=> (not res!161305) (not e!190980))))

(declare-fun lt!150232 () SeekEntryResult!2460)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15446 (_ BitVec 32)) SeekEntryResult!2460)

(assert (=> b!303657 (= res!161305 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150232))))

(declare-fun b!303659 () Bool)

(declare-fun res!161301 () Bool)

(assert (=> b!303659 (=> (not res!161301) (not e!190980))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303659 (= res!161301 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7309 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7309 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7309 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303660 () Bool)

(declare-fun res!161304 () Bool)

(assert (=> b!303660 (=> (not res!161304) (not e!190979))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303660 (= res!161304 (validKeyInArray!0 k!2441))))

(declare-fun b!303661 () Bool)

(declare-fun res!161302 () Bool)

(assert (=> b!303661 (=> (not res!161302) (not e!190979))))

(assert (=> b!303661 (= res!161302 (and (= (size!7661 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7661 a!3293))))))

(declare-fun b!303662 () Bool)

(declare-fun res!161303 () Bool)

(assert (=> b!303662 (=> (not res!161303) (not e!190979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15446 (_ BitVec 32)) Bool)

(assert (=> b!303662 (= res!161303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303663 () Bool)

(assert (=> b!303663 (= e!190979 e!190980)))

(declare-fun res!161306 () Bool)

(assert (=> b!303663 (=> (not res!161306) (not e!190980))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303663 (= res!161306 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150232))))

(assert (=> b!303663 (= lt!150232 (Intermediate!2460 false resIndex!52 resX!52))))

(declare-fun b!303658 () Bool)

(declare-fun res!161298 () Bool)

(assert (=> b!303658 (=> (not res!161298) (not e!190980))))

(assert (=> b!303658 (= res!161298 (and (= (select (arr!7309 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7661 a!3293))))))

(declare-fun res!161307 () Bool)

(assert (=> start!30342 (=> (not res!161307) (not e!190979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30342 (= res!161307 (validMask!0 mask!3709))))

(assert (=> start!30342 e!190979))

(declare-fun array_inv!5263 (array!15446) Bool)

(assert (=> start!30342 (array_inv!5263 a!3293)))

(assert (=> start!30342 true))

(assert (= (and start!30342 res!161307) b!303661))

(assert (= (and b!303661 res!161302) b!303660))

(assert (= (and b!303660 res!161304) b!303655))

(assert (= (and b!303655 res!161300) b!303656))

(assert (= (and b!303656 res!161299) b!303662))

(assert (= (and b!303662 res!161303) b!303663))

(assert (= (and b!303663 res!161306) b!303658))

(assert (= (and b!303658 res!161298) b!303657))

(assert (= (and b!303657 res!161305) b!303659))

(assert (= (and b!303659 res!161301) b!303654))

(declare-fun m!314965 () Bool)

(assert (=> start!30342 m!314965))

(declare-fun m!314967 () Bool)

(assert (=> start!30342 m!314967))

(declare-fun m!314969 () Bool)

(assert (=> b!303660 m!314969))

(declare-fun m!314971 () Bool)

(assert (=> b!303654 m!314971))

(declare-fun m!314973 () Bool)

(assert (=> b!303663 m!314973))

(assert (=> b!303663 m!314973))

(declare-fun m!314975 () Bool)

(assert (=> b!303663 m!314975))

(declare-fun m!314977 () Bool)

(assert (=> b!303659 m!314977))

(declare-fun m!314979 () Bool)

(assert (=> b!303658 m!314979))

(declare-fun m!314981 () Bool)

(assert (=> b!303655 m!314981))

(declare-fun m!314983 () Bool)

(assert (=> b!303662 m!314983))

(declare-fun m!314985 () Bool)

(assert (=> b!303657 m!314985))

(declare-fun m!314987 () Bool)

(assert (=> b!303656 m!314987))

(push 1)

