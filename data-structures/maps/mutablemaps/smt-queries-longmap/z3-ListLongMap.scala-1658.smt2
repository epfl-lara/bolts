; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30788 () Bool)

(assert start!30788)

(declare-fun b!308755 () Bool)

(declare-fun res!165530 () Bool)

(declare-fun e!192990 () Bool)

(assert (=> b!308755 (=> (not res!165530) (not e!192990))))

(declare-datatypes ((array!15739 0))(
  ( (array!15740 (arr!7451 (Array (_ BitVec 32) (_ BitVec 64))) (size!7803 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15739)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2602 0))(
  ( (MissingZero!2602 (index!12584 (_ BitVec 32))) (Found!2602 (index!12585 (_ BitVec 32))) (Intermediate!2602 (undefined!3414 Bool) (index!12586 (_ BitVec 32)) (x!30785 (_ BitVec 32))) (Undefined!2602) (MissingVacant!2602 (index!12587 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15739 (_ BitVec 32)) SeekEntryResult!2602)

(assert (=> b!308755 (= res!165530 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2602 i!1240)))))

(declare-fun res!165534 () Bool)

(assert (=> start!30788 (=> (not res!165534) (not e!192990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30788 (= res!165534 (validMask!0 mask!3709))))

(assert (=> start!30788 e!192990))

(declare-fun array_inv!5405 (array!15739) Bool)

(assert (=> start!30788 (array_inv!5405 a!3293)))

(assert (=> start!30788 true))

(declare-fun b!308756 () Bool)

(declare-fun e!192989 () Bool)

(declare-fun e!192988 () Bool)

(assert (=> b!308756 (= e!192989 e!192988)))

(declare-fun res!165526 () Bool)

(assert (=> b!308756 (=> (not res!165526) (not e!192988))))

(declare-fun lt!151441 () SeekEntryResult!2602)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!151442 () SeekEntryResult!2602)

(assert (=> b!308756 (= res!165526 (and (= lt!151441 lt!151442) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7451 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15739 (_ BitVec 32)) SeekEntryResult!2602)

(assert (=> b!308756 (= lt!151441 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!308757 () Bool)

(assert (=> b!308757 (= e!192990 e!192989)))

(declare-fun res!165529 () Bool)

(assert (=> b!308757 (=> (not res!165529) (not e!192989))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308757 (= res!165529 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151442))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308757 (= lt!151442 (Intermediate!2602 false resIndex!52 resX!52))))

(declare-fun b!308758 () Bool)

(declare-fun res!165533 () Bool)

(assert (=> b!308758 (=> (not res!165533) (not e!192990))))

(assert (=> b!308758 (= res!165533 (and (= (size!7803 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7803 a!3293))))))

(declare-fun b!308759 () Bool)

(declare-fun res!165532 () Bool)

(assert (=> b!308759 (=> (not res!165532) (not e!192990))))

(declare-fun arrayContainsKey!0 (array!15739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308759 (= res!165532 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308760 () Bool)

(assert (=> b!308760 (= e!192988 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308760 (= lt!151441 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308761 () Bool)

(declare-fun res!165527 () Bool)

(assert (=> b!308761 (=> (not res!165527) (not e!192989))))

(assert (=> b!308761 (= res!165527 (and (= (select (arr!7451 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7803 a!3293))))))

(declare-fun b!308762 () Bool)

(declare-fun res!165528 () Bool)

(assert (=> b!308762 (=> (not res!165528) (not e!192990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308762 (= res!165528 (validKeyInArray!0 k0!2441))))

(declare-fun b!308763 () Bool)

(declare-fun res!165531 () Bool)

(assert (=> b!308763 (=> (not res!165531) (not e!192990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15739 (_ BitVec 32)) Bool)

(assert (=> b!308763 (= res!165531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30788 res!165534) b!308758))

(assert (= (and b!308758 res!165533) b!308762))

(assert (= (and b!308762 res!165528) b!308759))

(assert (= (and b!308759 res!165532) b!308755))

(assert (= (and b!308755 res!165530) b!308763))

(assert (= (and b!308763 res!165531) b!308757))

(assert (= (and b!308757 res!165529) b!308761))

(assert (= (and b!308761 res!165527) b!308756))

(assert (= (and b!308756 res!165526) b!308760))

(declare-fun m!318819 () Bool)

(assert (=> b!308755 m!318819))

(declare-fun m!318821 () Bool)

(assert (=> b!308757 m!318821))

(assert (=> b!308757 m!318821))

(declare-fun m!318823 () Bool)

(assert (=> b!308757 m!318823))

(declare-fun m!318825 () Bool)

(assert (=> b!308761 m!318825))

(declare-fun m!318827 () Bool)

(assert (=> start!30788 m!318827))

(declare-fun m!318829 () Bool)

(assert (=> start!30788 m!318829))

(declare-fun m!318831 () Bool)

(assert (=> b!308756 m!318831))

(declare-fun m!318833 () Bool)

(assert (=> b!308756 m!318833))

(declare-fun m!318835 () Bool)

(assert (=> b!308762 m!318835))

(declare-fun m!318837 () Bool)

(assert (=> b!308760 m!318837))

(assert (=> b!308760 m!318837))

(declare-fun m!318839 () Bool)

(assert (=> b!308760 m!318839))

(declare-fun m!318841 () Bool)

(assert (=> b!308759 m!318841))

(declare-fun m!318843 () Bool)

(assert (=> b!308763 m!318843))

(check-sat (not b!308755) (not b!308757) (not start!30788) (not b!308756) (not b!308760) (not b!308762) (not b!308759) (not b!308763))
(check-sat)
