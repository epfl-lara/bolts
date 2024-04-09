; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30800 () Bool)

(assert start!30800)

(declare-fun b!308917 () Bool)

(declare-fun e!193063 () Bool)

(declare-fun e!193062 () Bool)

(assert (=> b!308917 (= e!193063 e!193062)))

(declare-fun res!165692 () Bool)

(assert (=> b!308917 (=> (not res!165692) (not e!193062))))

(declare-datatypes ((SeekEntryResult!2608 0))(
  ( (MissingZero!2608 (index!12608 (_ BitVec 32))) (Found!2608 (index!12609 (_ BitVec 32))) (Intermediate!2608 (undefined!3420 Bool) (index!12610 (_ BitVec 32)) (x!30807 (_ BitVec 32))) (Undefined!2608) (MissingVacant!2608 (index!12611 (_ BitVec 32))) )
))
(declare-fun lt!151478 () SeekEntryResult!2608)

(declare-datatypes ((array!15751 0))(
  ( (array!15752 (arr!7457 (Array (_ BitVec 32) (_ BitVec 64))) (size!7809 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15751)

(declare-fun lt!151477 () SeekEntryResult!2608)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308917 (= res!165692 (and (= lt!151477 lt!151478) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7457 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15751 (_ BitVec 32)) SeekEntryResult!2608)

(assert (=> b!308917 (= lt!151477 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!308918 () Bool)

(assert (=> b!308918 (= e!193062 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308918 (= lt!151477 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308919 () Bool)

(declare-fun res!165688 () Bool)

(declare-fun e!193061 () Bool)

(assert (=> b!308919 (=> (not res!165688) (not e!193061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308919 (= res!165688 (validKeyInArray!0 k0!2441))))

(declare-fun b!308920 () Bool)

(assert (=> b!308920 (= e!193061 e!193063)))

(declare-fun res!165695 () Bool)

(assert (=> b!308920 (=> (not res!165695) (not e!193063))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308920 (= res!165695 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151478))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308920 (= lt!151478 (Intermediate!2608 false resIndex!52 resX!52))))

(declare-fun b!308921 () Bool)

(declare-fun res!165693 () Bool)

(assert (=> b!308921 (=> (not res!165693) (not e!193063))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308921 (= res!165693 (and (= (select (arr!7457 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7809 a!3293))))))

(declare-fun res!165690 () Bool)

(assert (=> start!30800 (=> (not res!165690) (not e!193061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30800 (= res!165690 (validMask!0 mask!3709))))

(assert (=> start!30800 e!193061))

(declare-fun array_inv!5411 (array!15751) Bool)

(assert (=> start!30800 (array_inv!5411 a!3293)))

(assert (=> start!30800 true))

(declare-fun b!308922 () Bool)

(declare-fun res!165689 () Bool)

(assert (=> b!308922 (=> (not res!165689) (not e!193061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15751 (_ BitVec 32)) Bool)

(assert (=> b!308922 (= res!165689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308923 () Bool)

(declare-fun res!165691 () Bool)

(assert (=> b!308923 (=> (not res!165691) (not e!193061))))

(declare-fun arrayContainsKey!0 (array!15751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308923 (= res!165691 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308924 () Bool)

(declare-fun res!165694 () Bool)

(assert (=> b!308924 (=> (not res!165694) (not e!193061))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15751 (_ BitVec 32)) SeekEntryResult!2608)

(assert (=> b!308924 (= res!165694 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2608 i!1240)))))

(declare-fun b!308925 () Bool)

(declare-fun res!165696 () Bool)

(assert (=> b!308925 (=> (not res!165696) (not e!193061))))

(assert (=> b!308925 (= res!165696 (and (= (size!7809 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7809 a!3293))))))

(assert (= (and start!30800 res!165690) b!308925))

(assert (= (and b!308925 res!165696) b!308919))

(assert (= (and b!308919 res!165688) b!308923))

(assert (= (and b!308923 res!165691) b!308924))

(assert (= (and b!308924 res!165694) b!308922))

(assert (= (and b!308922 res!165689) b!308920))

(assert (= (and b!308920 res!165695) b!308921))

(assert (= (and b!308921 res!165693) b!308917))

(assert (= (and b!308917 res!165692) b!308918))

(declare-fun m!318975 () Bool)

(assert (=> b!308918 m!318975))

(assert (=> b!308918 m!318975))

(declare-fun m!318977 () Bool)

(assert (=> b!308918 m!318977))

(declare-fun m!318979 () Bool)

(assert (=> start!30800 m!318979))

(declare-fun m!318981 () Bool)

(assert (=> start!30800 m!318981))

(declare-fun m!318983 () Bool)

(assert (=> b!308917 m!318983))

(declare-fun m!318985 () Bool)

(assert (=> b!308917 m!318985))

(declare-fun m!318987 () Bool)

(assert (=> b!308924 m!318987))

(declare-fun m!318989 () Bool)

(assert (=> b!308922 m!318989))

(declare-fun m!318991 () Bool)

(assert (=> b!308921 m!318991))

(declare-fun m!318993 () Bool)

(assert (=> b!308919 m!318993))

(declare-fun m!318995 () Bool)

(assert (=> b!308920 m!318995))

(assert (=> b!308920 m!318995))

(declare-fun m!318997 () Bool)

(assert (=> b!308920 m!318997))

(declare-fun m!318999 () Bool)

(assert (=> b!308923 m!318999))

(check-sat (not start!30800) (not b!308922) (not b!308923) (not b!308919) (not b!308917) (not b!308918) (not b!308920) (not b!308924))
(check-sat)
