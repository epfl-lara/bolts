; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30448 () Bool)

(assert start!30448)

(declare-fun b!304606 () Bool)

(declare-fun e!191392 () Bool)

(assert (=> b!304606 (= e!191392 (not true))))

(declare-datatypes ((array!15501 0))(
  ( (array!15502 (arr!7335 (Array (_ BitVec 32) (_ BitVec 64))) (size!7687 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15501)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2486 0))(
  ( (MissingZero!2486 (index!12120 (_ BitVec 32))) (Found!2486 (index!12121 (_ BitVec 32))) (Intermediate!2486 (undefined!3298 Bool) (index!12122 (_ BitVec 32)) (x!30339 (_ BitVec 32))) (Undefined!2486) (MissingVacant!2486 (index!12123 (_ BitVec 32))) )
))
(declare-fun lt!150493 () SeekEntryResult!2486)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15501 (_ BitVec 32)) SeekEntryResult!2486)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304606 (= lt!150493 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304608 () Bool)

(declare-fun res!162109 () Bool)

(declare-fun e!191390 () Bool)

(assert (=> b!304608 (=> (not res!162109) (not e!191390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304608 (= res!162109 (validKeyInArray!0 k!2441))))

(declare-fun b!304609 () Bool)

(declare-fun res!162113 () Bool)

(assert (=> b!304609 (=> (not res!162113) (not e!191390))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15501 (_ BitVec 32)) SeekEntryResult!2486)

(assert (=> b!304609 (= res!162113 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2486 i!1240)))))

(declare-fun b!304610 () Bool)

(declare-fun res!162116 () Bool)

(assert (=> b!304610 (=> (not res!162116) (not e!191390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15501 (_ BitVec 32)) Bool)

(assert (=> b!304610 (= res!162116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304611 () Bool)

(declare-fun res!162111 () Bool)

(declare-fun e!191391 () Bool)

(assert (=> b!304611 (=> (not res!162111) (not e!191391))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304611 (= res!162111 (and (= (select (arr!7335 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7687 a!3293))))))

(declare-fun b!304612 () Bool)

(assert (=> b!304612 (= e!191390 e!191391)))

(declare-fun res!162117 () Bool)

(assert (=> b!304612 (=> (not res!162117) (not e!191391))))

(declare-fun lt!150494 () SeekEntryResult!2486)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304612 (= res!162117 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150494))))

(assert (=> b!304612 (= lt!150494 (Intermediate!2486 false resIndex!52 resX!52))))

(declare-fun b!304607 () Bool)

(assert (=> b!304607 (= e!191391 e!191392)))

(declare-fun res!162112 () Bool)

(assert (=> b!304607 (=> (not res!162112) (not e!191392))))

(assert (=> b!304607 (= res!162112 (and (= lt!150493 lt!150494) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7335 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7335 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7335 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304607 (= lt!150493 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!162110 () Bool)

(assert (=> start!30448 (=> (not res!162110) (not e!191390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30448 (= res!162110 (validMask!0 mask!3709))))

(assert (=> start!30448 e!191390))

(declare-fun array_inv!5289 (array!15501) Bool)

(assert (=> start!30448 (array_inv!5289 a!3293)))

(assert (=> start!30448 true))

(declare-fun b!304613 () Bool)

(declare-fun res!162114 () Bool)

(assert (=> b!304613 (=> (not res!162114) (not e!191390))))

(assert (=> b!304613 (= res!162114 (and (= (size!7687 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7687 a!3293))))))

(declare-fun b!304614 () Bool)

(declare-fun res!162115 () Bool)

(assert (=> b!304614 (=> (not res!162115) (not e!191390))))

(declare-fun arrayContainsKey!0 (array!15501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304614 (= res!162115 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30448 res!162110) b!304613))

(assert (= (and b!304613 res!162114) b!304608))

(assert (= (and b!304608 res!162109) b!304614))

(assert (= (and b!304614 res!162115) b!304609))

(assert (= (and b!304609 res!162113) b!304610))

(assert (= (and b!304610 res!162116) b!304612))

(assert (= (and b!304612 res!162117) b!304611))

(assert (= (and b!304611 res!162111) b!304607))

(assert (= (and b!304607 res!162112) b!304606))

(declare-fun m!315731 () Bool)

(assert (=> b!304614 m!315731))

(declare-fun m!315733 () Bool)

(assert (=> b!304612 m!315733))

(assert (=> b!304612 m!315733))

(declare-fun m!315735 () Bool)

(assert (=> b!304612 m!315735))

(declare-fun m!315737 () Bool)

(assert (=> b!304611 m!315737))

(declare-fun m!315739 () Bool)

(assert (=> b!304606 m!315739))

(assert (=> b!304606 m!315739))

(declare-fun m!315741 () Bool)

(assert (=> b!304606 m!315741))

(declare-fun m!315743 () Bool)

(assert (=> b!304608 m!315743))

(declare-fun m!315745 () Bool)

(assert (=> b!304609 m!315745))

(declare-fun m!315747 () Bool)

(assert (=> b!304610 m!315747))

(declare-fun m!315749 () Bool)

(assert (=> b!304607 m!315749))

(declare-fun m!315751 () Bool)

(assert (=> b!304607 m!315751))

(declare-fun m!315753 () Bool)

(assert (=> start!30448 m!315753))

(declare-fun m!315755 () Bool)

(assert (=> start!30448 m!315755))

(push 1)

(assert (not b!304606))

(assert (not b!304607))

(assert (not b!304608))

(assert (not start!30448))

(assert (not b!304612))

(assert (not 