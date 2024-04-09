; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31724 () Bool)

(assert start!31724)

(declare-fun res!171701 () Bool)

(declare-fun e!196998 () Bool)

(assert (=> start!31724 (=> (not res!171701) (not e!196998))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31724 (= res!171701 (validMask!0 mask!3709))))

(assert (=> start!31724 e!196998))

(declare-datatypes ((array!16144 0))(
  ( (array!16145 (arr!7637 (Array (_ BitVec 32) (_ BitVec 64))) (size!7989 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16144)

(declare-fun array_inv!5591 (array!16144) Bool)

(assert (=> start!31724 (array_inv!5591 a!3293)))

(assert (=> start!31724 true))

(declare-fun b!316765 () Bool)

(declare-fun res!171702 () Bool)

(assert (=> b!316765 (=> (not res!171702) (not e!196998))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!316765 (= res!171702 (and (= (size!7989 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7989 a!3293))))))

(declare-fun b!316766 () Bool)

(declare-fun e!196996 () Bool)

(assert (=> b!316766 (= e!196996 (not true))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2788 0))(
  ( (MissingZero!2788 (index!13328 (_ BitVec 32))) (Found!2788 (index!13329 (_ BitVec 32))) (Intermediate!2788 (undefined!3600 Bool) (index!13330 (_ BitVec 32)) (x!31551 (_ BitVec 32))) (Undefined!2788) (MissingVacant!2788 (index!13331 (_ BitVec 32))) )
))
(declare-fun lt!154721 () SeekEntryResult!2788)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16144 (_ BitVec 32)) SeekEntryResult!2788)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316766 (= lt!154721 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!316767 () Bool)

(declare-fun e!196999 () Bool)

(assert (=> b!316767 (= e!196999 e!196996)))

(declare-fun res!171700 () Bool)

(assert (=> b!316767 (=> (not res!171700) (not e!196996))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!154720 () SeekEntryResult!2788)

(assert (=> b!316767 (= res!171700 (and (= lt!154721 lt!154720) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7637 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316767 (= lt!154721 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!316768 () Bool)

(declare-fun res!171704 () Bool)

(assert (=> b!316768 (=> (not res!171704) (not e!196999))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!316768 (= res!171704 (and (= (select (arr!7637 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7989 a!3293))))))

(declare-fun b!316769 () Bool)

(declare-fun res!171703 () Bool)

(assert (=> b!316769 (=> (not res!171703) (not e!196998))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16144 (_ BitVec 32)) SeekEntryResult!2788)

(assert (=> b!316769 (= res!171703 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2788 i!1240)))))

(declare-fun b!316770 () Bool)

(declare-fun res!171699 () Bool)

(assert (=> b!316770 (=> (not res!171699) (not e!196998))))

(declare-fun arrayContainsKey!0 (array!16144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316770 (= res!171699 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316771 () Bool)

(assert (=> b!316771 (= e!196998 e!196999)))

(declare-fun res!171705 () Bool)

(assert (=> b!316771 (=> (not res!171705) (not e!196999))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316771 (= res!171705 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154720))))

(assert (=> b!316771 (= lt!154720 (Intermediate!2788 false resIndex!52 resX!52))))

(declare-fun b!316772 () Bool)

(declare-fun res!171697 () Bool)

(assert (=> b!316772 (=> (not res!171697) (not e!196998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16144 (_ BitVec 32)) Bool)

(assert (=> b!316772 (= res!171697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316773 () Bool)

(declare-fun res!171698 () Bool)

(assert (=> b!316773 (=> (not res!171698) (not e!196998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316773 (= res!171698 (validKeyInArray!0 k0!2441))))

(assert (= (and start!31724 res!171701) b!316765))

(assert (= (and b!316765 res!171702) b!316773))

(assert (= (and b!316773 res!171698) b!316770))

(assert (= (and b!316770 res!171699) b!316769))

(assert (= (and b!316769 res!171703) b!316772))

(assert (= (and b!316772 res!171697) b!316771))

(assert (= (and b!316771 res!171705) b!316768))

(assert (= (and b!316768 res!171704) b!316767))

(assert (= (and b!316767 res!171700) b!316766))

(declare-fun m!325551 () Bool)

(assert (=> b!316768 m!325551))

(declare-fun m!325553 () Bool)

(assert (=> b!316766 m!325553))

(assert (=> b!316766 m!325553))

(declare-fun m!325555 () Bool)

(assert (=> b!316766 m!325555))

(declare-fun m!325557 () Bool)

(assert (=> b!316771 m!325557))

(assert (=> b!316771 m!325557))

(declare-fun m!325559 () Bool)

(assert (=> b!316771 m!325559))

(declare-fun m!325561 () Bool)

(assert (=> b!316772 m!325561))

(declare-fun m!325563 () Bool)

(assert (=> b!316769 m!325563))

(declare-fun m!325565 () Bool)

(assert (=> b!316773 m!325565))

(declare-fun m!325567 () Bool)

(assert (=> b!316770 m!325567))

(declare-fun m!325569 () Bool)

(assert (=> start!31724 m!325569))

(declare-fun m!325571 () Bool)

(assert (=> start!31724 m!325571))

(declare-fun m!325573 () Bool)

(assert (=> b!316767 m!325573))

(declare-fun m!325575 () Bool)

(assert (=> b!316767 m!325575))

(check-sat (not b!316770) (not start!31724) (not b!316773) (not b!316771) (not b!316767) (not b!316766) (not b!316772) (not b!316769))
(check-sat)
