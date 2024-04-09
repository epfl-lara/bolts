; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30918 () Bool)

(assert start!30918)

(declare-fun b!310044 () Bool)

(declare-fun e!193611 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310044 (= e!193611 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun e!193614 () Bool)

(assert (=> b!310044 e!193614))

(declare-fun res!166664 () Bool)

(assert (=> b!310044 (=> (not res!166664) (not e!193614))))

(declare-datatypes ((array!15818 0))(
  ( (array!15819 (arr!7489 (Array (_ BitVec 32) (_ BitVec 64))) (size!7841 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15818)

(declare-fun lt!151839 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2640 0))(
  ( (MissingZero!2640 (index!12736 (_ BitVec 32))) (Found!2640 (index!12737 (_ BitVec 32))) (Intermediate!2640 (undefined!3452 Bool) (index!12738 (_ BitVec 32)) (x!30936 (_ BitVec 32))) (Undefined!2640) (MissingVacant!2640 (index!12739 (_ BitVec 32))) )
))
(declare-fun lt!151841 () SeekEntryResult!2640)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15818 (_ BitVec 32)) SeekEntryResult!2640)

(assert (=> b!310044 (= res!166664 (= lt!151841 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151839 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310044 (= lt!151839 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310045 () Bool)

(declare-fun res!166658 () Bool)

(declare-fun e!193615 () Bool)

(assert (=> b!310045 (=> (not res!166658) (not e!193615))))

(declare-fun arrayContainsKey!0 (array!15818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310045 (= res!166658 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun lt!151840 () array!15818)

(declare-fun b!310046 () Bool)

(assert (=> b!310046 (= e!193614 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151840 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151839 k!2441 lt!151840 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310046 (= lt!151840 (array!15819 (store (arr!7489 a!3293) i!1240 k!2441) (size!7841 a!3293)))))

(declare-fun b!310047 () Bool)

(declare-fun res!166662 () Bool)

(declare-fun e!193612 () Bool)

(assert (=> b!310047 (=> (not res!166662) (not e!193612))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310047 (= res!166662 (and (= (select (arr!7489 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7841 a!3293))))))

(declare-fun b!310048 () Bool)

(declare-fun res!166656 () Bool)

(assert (=> b!310048 (=> (not res!166656) (not e!193615))))

(assert (=> b!310048 (= res!166656 (and (= (size!7841 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7841 a!3293))))))

(declare-fun b!310049 () Bool)

(declare-fun res!166659 () Bool)

(assert (=> b!310049 (=> (not res!166659) (not e!193615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310049 (= res!166659 (validKeyInArray!0 k!2441))))

(declare-fun b!310050 () Bool)

(declare-fun res!166661 () Bool)

(assert (=> b!310050 (=> (not res!166661) (not e!193615))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15818 (_ BitVec 32)) SeekEntryResult!2640)

(assert (=> b!310050 (= res!166661 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2640 i!1240)))))

(declare-fun b!310051 () Bool)

(declare-fun res!166657 () Bool)

(assert (=> b!310051 (=> (not res!166657) (not e!193615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15818 (_ BitVec 32)) Bool)

(assert (=> b!310051 (= res!166657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310052 () Bool)

(assert (=> b!310052 (= e!193615 e!193612)))

(declare-fun res!166665 () Bool)

(assert (=> b!310052 (=> (not res!166665) (not e!193612))))

(declare-fun lt!151838 () SeekEntryResult!2640)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310052 (= res!166665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151838))))

(assert (=> b!310052 (= lt!151838 (Intermediate!2640 false resIndex!52 resX!52))))

(declare-fun b!310053 () Bool)

(assert (=> b!310053 (= e!193612 e!193611)))

(declare-fun res!166663 () Bool)

(assert (=> b!310053 (=> (not res!166663) (not e!193611))))

(assert (=> b!310053 (= res!166663 (and (= lt!151841 lt!151838) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7489 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310053 (= lt!151841 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!166660 () Bool)

(assert (=> start!30918 (=> (not res!166660) (not e!193615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30918 (= res!166660 (validMask!0 mask!3709))))

(assert (=> start!30918 e!193615))

(declare-fun array_inv!5443 (array!15818) Bool)

(assert (=> start!30918 (array_inv!5443 a!3293)))

(assert (=> start!30918 true))

(assert (= (and start!30918 res!166660) b!310048))

(assert (= (and b!310048 res!166656) b!310049))

(assert (= (and b!310049 res!166659) b!310045))

(assert (= (and b!310045 res!166658) b!310050))

(assert (= (and b!310050 res!166661) b!310051))

(assert (= (and b!310051 res!166657) b!310052))

(assert (= (and b!310052 res!166665) b!310047))

(assert (= (and b!310047 res!166662) b!310053))

(assert (= (and b!310053 res!166663) b!310044))

(assert (= (and b!310044 res!166664) b!310046))

(declare-fun m!319981 () Bool)

(assert (=> b!310047 m!319981))

(declare-fun m!319983 () Bool)

(assert (=> b!310046 m!319983))

(declare-fun m!319985 () Bool)

(assert (=> b!310046 m!319985))

(declare-fun m!319987 () Bool)

(assert (=> b!310046 m!319987))

(declare-fun m!319989 () Bool)

(assert (=> b!310050 m!319989))

(declare-fun m!319991 () Bool)

(assert (=> b!310052 m!319991))

(assert (=> b!310052 m!319991))

(declare-fun m!319993 () Bool)

(assert (=> b!310052 m!319993))

(declare-fun m!319995 () Bool)

(assert (=> b!310044 m!319995))

(declare-fun m!319997 () Bool)

(assert (=> b!310044 m!319997))

(declare-fun m!319999 () Bool)

(assert (=> b!310049 m!319999))

(declare-fun m!320001 () Bool)

(assert (=> start!30918 m!320001))

(declare-fun m!320003 () Bool)

(assert (=> start!30918 m!320003))

(declare-fun m!320005 () Bool)

(assert (=> b!310051 m!320005))

(declare-fun m!320007 () Bool)

(assert (=> b!310045 m!320007))

(declare-fun m!320009 () Bool)

(assert (=> b!310053 m!320009))

(declare-fun m!320011 () Bool)

(assert (=> b!310053 m!320011))

(push 1)

(assert (not b!310052))

(assert (not start!30918))

(assert (not b!310050))

(assert (not b!310044))

(assert (not b!310046))

(assert (not b!310045))

(assert (not b!310053))

(assert (not b!310049))

(assert (not b!310051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

