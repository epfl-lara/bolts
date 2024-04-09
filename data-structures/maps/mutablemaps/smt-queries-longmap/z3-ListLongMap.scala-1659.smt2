; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30794 () Bool)

(assert start!30794)

(declare-fun b!308836 () Bool)

(declare-fun res!165614 () Bool)

(declare-fun e!193027 () Bool)

(assert (=> b!308836 (=> (not res!165614) (not e!193027))))

(declare-datatypes ((array!15745 0))(
  ( (array!15746 (arr!7454 (Array (_ BitVec 32) (_ BitVec 64))) (size!7806 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15745)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2605 0))(
  ( (MissingZero!2605 (index!12596 (_ BitVec 32))) (Found!2605 (index!12597 (_ BitVec 32))) (Intermediate!2605 (undefined!3417 Bool) (index!12598 (_ BitVec 32)) (x!30796 (_ BitVec 32))) (Undefined!2605) (MissingVacant!2605 (index!12599 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15745 (_ BitVec 32)) SeekEntryResult!2605)

(assert (=> b!308836 (= res!165614 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2605 i!1240)))))

(declare-fun b!308837 () Bool)

(declare-fun e!193026 () Bool)

(declare-fun e!193025 () Bool)

(assert (=> b!308837 (= e!193026 e!193025)))

(declare-fun res!165607 () Bool)

(assert (=> b!308837 (=> (not res!165607) (not e!193025))))

(declare-fun lt!151459 () SeekEntryResult!2605)

(declare-fun lt!151460 () SeekEntryResult!2605)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308837 (= res!165607 (and (= lt!151459 lt!151460) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7454 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15745 (_ BitVec 32)) SeekEntryResult!2605)

(assert (=> b!308837 (= lt!151459 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!308838 () Bool)

(declare-fun res!165612 () Bool)

(assert (=> b!308838 (=> (not res!165612) (not e!193027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308838 (= res!165612 (validKeyInArray!0 k0!2441))))

(declare-fun b!308839 () Bool)

(declare-fun res!165611 () Bool)

(assert (=> b!308839 (=> (not res!165611) (not e!193027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15745 (_ BitVec 32)) Bool)

(assert (=> b!308839 (= res!165611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!165608 () Bool)

(assert (=> start!30794 (=> (not res!165608) (not e!193027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30794 (= res!165608 (validMask!0 mask!3709))))

(assert (=> start!30794 e!193027))

(declare-fun array_inv!5408 (array!15745) Bool)

(assert (=> start!30794 (array_inv!5408 a!3293)))

(assert (=> start!30794 true))

(declare-fun b!308840 () Bool)

(assert (=> b!308840 (= e!193027 e!193026)))

(declare-fun res!165610 () Bool)

(assert (=> b!308840 (=> (not res!165610) (not e!193026))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308840 (= res!165610 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151460))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308840 (= lt!151460 (Intermediate!2605 false resIndex!52 resX!52))))

(declare-fun b!308841 () Bool)

(declare-fun res!165615 () Bool)

(assert (=> b!308841 (=> (not res!165615) (not e!193027))))

(declare-fun arrayContainsKey!0 (array!15745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308841 (= res!165615 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308842 () Bool)

(declare-fun res!165613 () Bool)

(assert (=> b!308842 (=> (not res!165613) (not e!193026))))

(assert (=> b!308842 (= res!165613 (and (= (select (arr!7454 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7806 a!3293))))))

(declare-fun b!308843 () Bool)

(declare-fun res!165609 () Bool)

(assert (=> b!308843 (=> (not res!165609) (not e!193027))))

(assert (=> b!308843 (= res!165609 (and (= (size!7806 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7806 a!3293))))))

(declare-fun b!308844 () Bool)

(assert (=> b!308844 (= e!193025 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308844 (= lt!151459 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (= (and start!30794 res!165608) b!308843))

(assert (= (and b!308843 res!165609) b!308838))

(assert (= (and b!308838 res!165612) b!308841))

(assert (= (and b!308841 res!165615) b!308836))

(assert (= (and b!308836 res!165614) b!308839))

(assert (= (and b!308839 res!165611) b!308840))

(assert (= (and b!308840 res!165610) b!308842))

(assert (= (and b!308842 res!165613) b!308837))

(assert (= (and b!308837 res!165607) b!308844))

(declare-fun m!318897 () Bool)

(assert (=> b!308839 m!318897))

(declare-fun m!318899 () Bool)

(assert (=> b!308842 m!318899))

(declare-fun m!318901 () Bool)

(assert (=> b!308836 m!318901))

(declare-fun m!318903 () Bool)

(assert (=> start!30794 m!318903))

(declare-fun m!318905 () Bool)

(assert (=> start!30794 m!318905))

(declare-fun m!318907 () Bool)

(assert (=> b!308844 m!318907))

(assert (=> b!308844 m!318907))

(declare-fun m!318909 () Bool)

(assert (=> b!308844 m!318909))

(declare-fun m!318911 () Bool)

(assert (=> b!308838 m!318911))

(declare-fun m!318913 () Bool)

(assert (=> b!308840 m!318913))

(assert (=> b!308840 m!318913))

(declare-fun m!318915 () Bool)

(assert (=> b!308840 m!318915))

(declare-fun m!318917 () Bool)

(assert (=> b!308841 m!318917))

(declare-fun m!318919 () Bool)

(assert (=> b!308837 m!318919))

(declare-fun m!318921 () Bool)

(assert (=> b!308837 m!318921))

(check-sat (not b!308838) (not b!308840) (not start!30794) (not b!308841) (not b!308836) (not b!308844) (not b!308837) (not b!308839))
(check-sat)
