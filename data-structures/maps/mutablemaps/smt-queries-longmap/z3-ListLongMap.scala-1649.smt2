; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30680 () Bool)

(assert start!30680)

(declare-fun b!307779 () Bool)

(declare-fun res!164699 () Bool)

(declare-fun e!192564 () Bool)

(assert (=> b!307779 (=> (not res!164699) (not e!192564))))

(declare-datatypes ((array!15682 0))(
  ( (array!15683 (arr!7424 (Array (_ BitVec 32) (_ BitVec 64))) (size!7776 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15682)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307779 (= res!164699 (and (= (size!7776 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7776 a!3293))))))

(declare-fun b!307780 () Bool)

(declare-fun res!164700 () Bool)

(assert (=> b!307780 (=> (not res!164700) (not e!192564))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307780 (= res!164700 (validKeyInArray!0 k0!2441))))

(declare-fun b!307781 () Bool)

(declare-fun e!192563 () Bool)

(assert (=> b!307781 (= e!192563 false)))

(declare-fun lt!151174 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307781 (= lt!151174 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307782 () Bool)

(declare-fun res!164695 () Bool)

(assert (=> b!307782 (=> (not res!164695) (not e!192564))))

(declare-fun arrayContainsKey!0 (array!15682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307782 (= res!164695 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307783 () Bool)

(declare-fun res!164692 () Bool)

(assert (=> b!307783 (=> (not res!164692) (not e!192563))))

(declare-datatypes ((SeekEntryResult!2575 0))(
  ( (MissingZero!2575 (index!12476 (_ BitVec 32))) (Found!2575 (index!12477 (_ BitVec 32))) (Intermediate!2575 (undefined!3387 Bool) (index!12478 (_ BitVec 32)) (x!30677 (_ BitVec 32))) (Undefined!2575) (MissingVacant!2575 (index!12479 (_ BitVec 32))) )
))
(declare-fun lt!151175 () SeekEntryResult!2575)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15682 (_ BitVec 32)) SeekEntryResult!2575)

(assert (=> b!307783 (= res!164692 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151175))))

(declare-fun res!164696 () Bool)

(assert (=> start!30680 (=> (not res!164696) (not e!192564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30680 (= res!164696 (validMask!0 mask!3709))))

(assert (=> start!30680 e!192564))

(declare-fun array_inv!5378 (array!15682) Bool)

(assert (=> start!30680 (array_inv!5378 a!3293)))

(assert (=> start!30680 true))

(declare-fun b!307784 () Bool)

(declare-fun res!164691 () Bool)

(assert (=> b!307784 (=> (not res!164691) (not e!192563))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307784 (= res!164691 (and (= (select (arr!7424 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7776 a!3293))))))

(declare-fun b!307785 () Bool)

(declare-fun res!164697 () Bool)

(assert (=> b!307785 (=> (not res!164697) (not e!192563))))

(assert (=> b!307785 (= res!164697 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7424 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307786 () Bool)

(assert (=> b!307786 (= e!192564 e!192563)))

(declare-fun res!164693 () Bool)

(assert (=> b!307786 (=> (not res!164693) (not e!192563))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307786 (= res!164693 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151175))))

(assert (=> b!307786 (= lt!151175 (Intermediate!2575 false resIndex!52 resX!52))))

(declare-fun b!307787 () Bool)

(declare-fun res!164698 () Bool)

(assert (=> b!307787 (=> (not res!164698) (not e!192564))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15682 (_ BitVec 32)) SeekEntryResult!2575)

(assert (=> b!307787 (= res!164698 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2575 i!1240)))))

(declare-fun b!307788 () Bool)

(declare-fun res!164694 () Bool)

(assert (=> b!307788 (=> (not res!164694) (not e!192564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15682 (_ BitVec 32)) Bool)

(assert (=> b!307788 (= res!164694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30680 res!164696) b!307779))

(assert (= (and b!307779 res!164699) b!307780))

(assert (= (and b!307780 res!164700) b!307782))

(assert (= (and b!307782 res!164695) b!307787))

(assert (= (and b!307787 res!164698) b!307788))

(assert (= (and b!307788 res!164694) b!307786))

(assert (= (and b!307786 res!164693) b!307784))

(assert (= (and b!307784 res!164691) b!307783))

(assert (= (and b!307783 res!164692) b!307785))

(assert (= (and b!307785 res!164697) b!307781))

(declare-fun m!318025 () Bool)

(assert (=> b!307784 m!318025))

(declare-fun m!318027 () Bool)

(assert (=> b!307786 m!318027))

(assert (=> b!307786 m!318027))

(declare-fun m!318029 () Bool)

(assert (=> b!307786 m!318029))

(declare-fun m!318031 () Bool)

(assert (=> start!30680 m!318031))

(declare-fun m!318033 () Bool)

(assert (=> start!30680 m!318033))

(declare-fun m!318035 () Bool)

(assert (=> b!307780 m!318035))

(declare-fun m!318037 () Bool)

(assert (=> b!307781 m!318037))

(declare-fun m!318039 () Bool)

(assert (=> b!307788 m!318039))

(declare-fun m!318041 () Bool)

(assert (=> b!307783 m!318041))

(declare-fun m!318043 () Bool)

(assert (=> b!307787 m!318043))

(declare-fun m!318045 () Bool)

(assert (=> b!307785 m!318045))

(declare-fun m!318047 () Bool)

(assert (=> b!307782 m!318047))

(check-sat (not b!307786) (not b!307783) (not b!307780) (not b!307787) (not b!307782) (not b!307781) (not start!30680) (not b!307788))
(check-sat)
