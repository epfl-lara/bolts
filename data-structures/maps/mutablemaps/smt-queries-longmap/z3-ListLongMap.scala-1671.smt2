; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30920 () Bool)

(assert start!30920)

(declare-fun b!310074 () Bool)

(declare-fun res!166688 () Bool)

(declare-fun e!193626 () Bool)

(assert (=> b!310074 (=> (not res!166688) (not e!193626))))

(declare-datatypes ((array!15820 0))(
  ( (array!15821 (arr!7490 (Array (_ BitVec 32) (_ BitVec 64))) (size!7842 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15820)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310074 (= res!166688 (and (= (select (arr!7490 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7842 a!3293))))))

(declare-fun b!310075 () Bool)

(declare-fun res!166689 () Bool)

(declare-fun e!193627 () Bool)

(assert (=> b!310075 (=> (not res!166689) (not e!193627))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310075 (= res!166689 (validKeyInArray!0 k0!2441))))

(declare-fun b!310076 () Bool)

(declare-fun e!193630 () Bool)

(assert (=> b!310076 (= e!193626 e!193630)))

(declare-fun res!166693 () Bool)

(assert (=> b!310076 (=> (not res!166693) (not e!193630))))

(declare-datatypes ((SeekEntryResult!2641 0))(
  ( (MissingZero!2641 (index!12740 (_ BitVec 32))) (Found!2641 (index!12741 (_ BitVec 32))) (Intermediate!2641 (undefined!3453 Bool) (index!12742 (_ BitVec 32)) (x!30937 (_ BitVec 32))) (Undefined!2641) (MissingVacant!2641 (index!12743 (_ BitVec 32))) )
))
(declare-fun lt!151853 () SeekEntryResult!2641)

(declare-fun lt!151852 () SeekEntryResult!2641)

(assert (=> b!310076 (= res!166693 (and (= lt!151852 lt!151853) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7490 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15820 (_ BitVec 32)) SeekEntryResult!2641)

(assert (=> b!310076 (= lt!151852 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!310077 () Bool)

(declare-fun res!166686 () Bool)

(assert (=> b!310077 (=> (not res!166686) (not e!193627))))

(assert (=> b!310077 (= res!166686 (and (= (size!7842 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7842 a!3293))))))

(declare-fun b!310078 () Bool)

(declare-fun e!193629 () Bool)

(declare-fun lt!151850 () (_ BitVec 32))

(declare-fun lt!151851 () array!15820)

(assert (=> b!310078 (= e!193629 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!151851 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151850 k0!2441 lt!151851 mask!3709)))))

(assert (=> b!310078 (= lt!151851 (array!15821 (store (arr!7490 a!3293) i!1240 k0!2441) (size!7842 a!3293)))))

(declare-fun b!310079 () Bool)

(declare-fun res!166690 () Bool)

(assert (=> b!310079 (=> (not res!166690) (not e!193627))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15820 (_ BitVec 32)) SeekEntryResult!2641)

(assert (=> b!310079 (= res!166690 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2641 i!1240)))))

(declare-fun res!166695 () Bool)

(assert (=> start!30920 (=> (not res!166695) (not e!193627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30920 (= res!166695 (validMask!0 mask!3709))))

(assert (=> start!30920 e!193627))

(declare-fun array_inv!5444 (array!15820) Bool)

(assert (=> start!30920 (array_inv!5444 a!3293)))

(assert (=> start!30920 true))

(declare-fun b!310080 () Bool)

(declare-fun res!166687 () Bool)

(assert (=> b!310080 (=> (not res!166687) (not e!193627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15820 (_ BitVec 32)) Bool)

(assert (=> b!310080 (= res!166687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310081 () Bool)

(declare-fun res!166692 () Bool)

(assert (=> b!310081 (=> (not res!166692) (not e!193627))))

(declare-fun arrayContainsKey!0 (array!15820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310081 (= res!166692 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310082 () Bool)

(assert (=> b!310082 (= e!193630 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(assert (=> b!310082 e!193629))

(declare-fun res!166691 () Bool)

(assert (=> b!310082 (=> (not res!166691) (not e!193629))))

(assert (=> b!310082 (= res!166691 (= lt!151852 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151850 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310082 (= lt!151850 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310083 () Bool)

(assert (=> b!310083 (= e!193627 e!193626)))

(declare-fun res!166694 () Bool)

(assert (=> b!310083 (=> (not res!166694) (not e!193626))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310083 (= res!166694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151853))))

(assert (=> b!310083 (= lt!151853 (Intermediate!2641 false resIndex!52 resX!52))))

(assert (= (and start!30920 res!166695) b!310077))

(assert (= (and b!310077 res!166686) b!310075))

(assert (= (and b!310075 res!166689) b!310081))

(assert (= (and b!310081 res!166692) b!310079))

(assert (= (and b!310079 res!166690) b!310080))

(assert (= (and b!310080 res!166687) b!310083))

(assert (= (and b!310083 res!166694) b!310074))

(assert (= (and b!310074 res!166688) b!310076))

(assert (= (and b!310076 res!166693) b!310082))

(assert (= (and b!310082 res!166691) b!310078))

(declare-fun m!320013 () Bool)

(assert (=> b!310078 m!320013))

(declare-fun m!320015 () Bool)

(assert (=> b!310078 m!320015))

(declare-fun m!320017 () Bool)

(assert (=> b!310078 m!320017))

(declare-fun m!320019 () Bool)

(assert (=> b!310074 m!320019))

(declare-fun m!320021 () Bool)

(assert (=> start!30920 m!320021))

(declare-fun m!320023 () Bool)

(assert (=> start!30920 m!320023))

(declare-fun m!320025 () Bool)

(assert (=> b!310082 m!320025))

(declare-fun m!320027 () Bool)

(assert (=> b!310082 m!320027))

(declare-fun m!320029 () Bool)

(assert (=> b!310079 m!320029))

(declare-fun m!320031 () Bool)

(assert (=> b!310075 m!320031))

(declare-fun m!320033 () Bool)

(assert (=> b!310080 m!320033))

(declare-fun m!320035 () Bool)

(assert (=> b!310083 m!320035))

(assert (=> b!310083 m!320035))

(declare-fun m!320037 () Bool)

(assert (=> b!310083 m!320037))

(declare-fun m!320039 () Bool)

(assert (=> b!310076 m!320039))

(declare-fun m!320041 () Bool)

(assert (=> b!310076 m!320041))

(declare-fun m!320043 () Bool)

(assert (=> b!310081 m!320043))

(check-sat (not b!310075) (not b!310081) (not b!310079) (not b!310076) (not b!310082) (not b!310080) (not b!310078) (not b!310083) (not start!30920))
(check-sat)
