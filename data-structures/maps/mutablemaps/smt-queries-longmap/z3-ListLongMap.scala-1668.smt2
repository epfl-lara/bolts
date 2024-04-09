; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30902 () Bool)

(assert start!30902)

(declare-fun b!309808 () Bool)

(declare-fun res!166425 () Bool)

(declare-fun e!193497 () Bool)

(assert (=> b!309808 (=> (not res!166425) (not e!193497))))

(declare-datatypes ((array!15802 0))(
  ( (array!15803 (arr!7481 (Array (_ BitVec 32) (_ BitVec 64))) (size!7833 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15802)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2632 0))(
  ( (MissingZero!2632 (index!12704 (_ BitVec 32))) (Found!2632 (index!12705 (_ BitVec 32))) (Intermediate!2632 (undefined!3444 Bool) (index!12706 (_ BitVec 32)) (x!30904 (_ BitVec 32))) (Undefined!2632) (MissingVacant!2632 (index!12707 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15802 (_ BitVec 32)) SeekEntryResult!2632)

(assert (=> b!309808 (= res!166425 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2632 i!1240)))))

(declare-fun b!309809 () Bool)

(declare-fun res!166420 () Bool)

(assert (=> b!309809 (=> (not res!166420) (not e!193497))))

(assert (=> b!309809 (= res!166420 (and (= (size!7833 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7833 a!3293))))))

(declare-fun b!309810 () Bool)

(declare-fun res!166424 () Bool)

(declare-fun e!193496 () Bool)

(assert (=> b!309810 (=> (not res!166424) (not e!193496))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309810 (= res!166424 (and (= (select (arr!7481 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7833 a!3293))))))

(declare-fun b!309811 () Bool)

(assert (=> b!309811 (= e!193497 e!193496)))

(declare-fun res!166423 () Bool)

(assert (=> b!309811 (=> (not res!166423) (not e!193496))))

(declare-fun lt!151750 () SeekEntryResult!2632)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15802 (_ BitVec 32)) SeekEntryResult!2632)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309811 (= res!166423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151750))))

(assert (=> b!309811 (= lt!151750 (Intermediate!2632 false resIndex!52 resX!52))))

(declare-fun b!309813 () Bool)

(declare-fun res!166421 () Bool)

(assert (=> b!309813 (=> (not res!166421) (not e!193497))))

(declare-fun arrayContainsKey!0 (array!15802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309813 (= res!166421 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309814 () Bool)

(declare-fun e!193498 () Bool)

(assert (=> b!309814 (= e!193498 (not true))))

(declare-fun lt!151751 () SeekEntryResult!2632)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309814 (= lt!151751 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309815 () Bool)

(declare-fun res!166428 () Bool)

(assert (=> b!309815 (=> (not res!166428) (not e!193497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309815 (= res!166428 (validKeyInArray!0 k0!2441))))

(declare-fun b!309816 () Bool)

(declare-fun res!166422 () Bool)

(assert (=> b!309816 (=> (not res!166422) (not e!193497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15802 (_ BitVec 32)) Bool)

(assert (=> b!309816 (= res!166422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309812 () Bool)

(assert (=> b!309812 (= e!193496 e!193498)))

(declare-fun res!166426 () Bool)

(assert (=> b!309812 (=> (not res!166426) (not e!193498))))

(assert (=> b!309812 (= res!166426 (and (= lt!151751 lt!151750) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7481 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309812 (= lt!151751 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!166427 () Bool)

(assert (=> start!30902 (=> (not res!166427) (not e!193497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30902 (= res!166427 (validMask!0 mask!3709))))

(assert (=> start!30902 e!193497))

(declare-fun array_inv!5435 (array!15802) Bool)

(assert (=> start!30902 (array_inv!5435 a!3293)))

(assert (=> start!30902 true))

(assert (= (and start!30902 res!166427) b!309809))

(assert (= (and b!309809 res!166420) b!309815))

(assert (= (and b!309815 res!166428) b!309813))

(assert (= (and b!309813 res!166421) b!309808))

(assert (= (and b!309808 res!166425) b!309816))

(assert (= (and b!309816 res!166422) b!309811))

(assert (= (and b!309811 res!166423) b!309810))

(assert (= (and b!309810 res!166424) b!309812))

(assert (= (and b!309812 res!166426) b!309814))

(declare-fun m!319737 () Bool)

(assert (=> b!309814 m!319737))

(assert (=> b!309814 m!319737))

(declare-fun m!319739 () Bool)

(assert (=> b!309814 m!319739))

(declare-fun m!319741 () Bool)

(assert (=> b!309812 m!319741))

(declare-fun m!319743 () Bool)

(assert (=> b!309812 m!319743))

(declare-fun m!319745 () Bool)

(assert (=> start!30902 m!319745))

(declare-fun m!319747 () Bool)

(assert (=> start!30902 m!319747))

(declare-fun m!319749 () Bool)

(assert (=> b!309811 m!319749))

(assert (=> b!309811 m!319749))

(declare-fun m!319751 () Bool)

(assert (=> b!309811 m!319751))

(declare-fun m!319753 () Bool)

(assert (=> b!309810 m!319753))

(declare-fun m!319755 () Bool)

(assert (=> b!309816 m!319755))

(declare-fun m!319757 () Bool)

(assert (=> b!309815 m!319757))

(declare-fun m!319759 () Bool)

(assert (=> b!309813 m!319759))

(declare-fun m!319761 () Bool)

(assert (=> b!309808 m!319761))

(check-sat (not b!309813) (not b!309814) (not b!309815) (not b!309816) (not b!309808) (not start!30902) (not b!309812) (not b!309811))
(check-sat)
