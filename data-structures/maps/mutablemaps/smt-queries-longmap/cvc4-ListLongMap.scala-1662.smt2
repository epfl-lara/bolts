; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30814 () Bool)

(assert start!30814)

(declare-fun b!309106 () Bool)

(declare-fun res!165882 () Bool)

(declare-fun e!193144 () Bool)

(assert (=> b!309106 (=> (not res!165882) (not e!193144))))

(declare-datatypes ((array!15765 0))(
  ( (array!15766 (arr!7464 (Array (_ BitVec 32) (_ BitVec 64))) (size!7816 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15765)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309106 (= res!165882 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309107 () Bool)

(declare-fun res!165878 () Bool)

(assert (=> b!309107 (=> (not res!165878) (not e!193144))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309107 (= res!165878 (and (= (size!7816 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7816 a!3293))))))

(declare-fun b!309108 () Bool)

(declare-fun res!165884 () Bool)

(assert (=> b!309108 (=> (not res!165884) (not e!193144))))

(declare-datatypes ((SeekEntryResult!2615 0))(
  ( (MissingZero!2615 (index!12636 (_ BitVec 32))) (Found!2615 (index!12637 (_ BitVec 32))) (Intermediate!2615 (undefined!3427 Bool) (index!12638 (_ BitVec 32)) (x!30830 (_ BitVec 32))) (Undefined!2615) (MissingVacant!2615 (index!12639 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15765 (_ BitVec 32)) SeekEntryResult!2615)

(assert (=> b!309108 (= res!165884 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2615 i!1240)))))

(declare-fun b!309109 () Bool)

(declare-fun e!193145 () Bool)

(assert (=> b!309109 (= e!193144 e!193145)))

(declare-fun res!165879 () Bool)

(assert (=> b!309109 (=> (not res!165879) (not e!193145))))

(declare-fun lt!151520 () SeekEntryResult!2615)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15765 (_ BitVec 32)) SeekEntryResult!2615)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309109 (= res!165879 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151520))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309109 (= lt!151520 (Intermediate!2615 false resIndex!52 resX!52))))

(declare-fun b!309110 () Bool)

(declare-fun res!165880 () Bool)

(assert (=> b!309110 (=> (not res!165880) (not e!193144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309110 (= res!165880 (validKeyInArray!0 k!2441))))

(declare-fun res!165881 () Bool)

(assert (=> start!30814 (=> (not res!165881) (not e!193144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30814 (= res!165881 (validMask!0 mask!3709))))

(assert (=> start!30814 e!193144))

(declare-fun array_inv!5418 (array!15765) Bool)

(assert (=> start!30814 (array_inv!5418 a!3293)))

(assert (=> start!30814 true))

(declare-fun b!309111 () Bool)

(declare-fun res!165883 () Bool)

(assert (=> b!309111 (=> (not res!165883) (not e!193145))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309111 (= res!165883 (and (= (select (arr!7464 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7816 a!3293))))))

(declare-fun b!309112 () Bool)

(declare-fun e!193147 () Bool)

(assert (=> b!309112 (= e!193145 e!193147)))

(declare-fun res!165877 () Bool)

(assert (=> b!309112 (=> (not res!165877) (not e!193147))))

(declare-fun lt!151519 () SeekEntryResult!2615)

(assert (=> b!309112 (= res!165877 (and (= lt!151519 lt!151520) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7464 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309112 (= lt!151519 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309113 () Bool)

(declare-fun res!165885 () Bool)

(assert (=> b!309113 (=> (not res!165885) (not e!193144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15765 (_ BitVec 32)) Bool)

(assert (=> b!309113 (= res!165885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309114 () Bool)

(assert (=> b!309114 (= e!193147 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309114 (= lt!151519 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30814 res!165881) b!309107))

(assert (= (and b!309107 res!165878) b!309110))

(assert (= (and b!309110 res!165880) b!309106))

(assert (= (and b!309106 res!165882) b!309108))

(assert (= (and b!309108 res!165884) b!309113))

(assert (= (and b!309113 res!165885) b!309109))

(assert (= (and b!309109 res!165879) b!309111))

(assert (= (and b!309111 res!165883) b!309112))

(assert (= (and b!309112 res!165877) b!309114))

(declare-fun m!319157 () Bool)

(assert (=> b!309112 m!319157))

(declare-fun m!319159 () Bool)

(assert (=> b!309112 m!319159))

(declare-fun m!319161 () Bool)

(assert (=> b!309110 m!319161))

(declare-fun m!319163 () Bool)

(assert (=> b!309109 m!319163))

(assert (=> b!309109 m!319163))

(declare-fun m!319165 () Bool)

(assert (=> b!309109 m!319165))

(declare-fun m!319167 () Bool)

(assert (=> b!309111 m!319167))

(declare-fun m!319169 () Bool)

(assert (=> start!30814 m!319169))

(declare-fun m!319171 () Bool)

(assert (=> start!30814 m!319171))

(declare-fun m!319173 () Bool)

(assert (=> b!309114 m!319173))

(assert (=> b!309114 m!319173))

(declare-fun m!319175 () Bool)

(assert (=> b!309114 m!319175))

(declare-fun m!319177 () Bool)

(assert (=> b!309113 m!319177))

(declare-fun m!319179 () Bool)

(assert (=> b!309108 m!319179))

(declare-fun m!319181 () Bool)

(assert (=> b!309106 m!319181))

(push 1)

(assert (not start!30814))

(assert (not b!309108))

(assert (not b!309106))

(assert (not b!309114))

(assert (not b!309110))

(assert (not b!309112))

(assert (not b!309113))

(assert (not b!309109))

(check-sat)

