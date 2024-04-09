; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30806 () Bool)

(assert start!30806)

(declare-fun b!308998 () Bool)

(declare-fun res!165774 () Bool)

(declare-fun e!193096 () Bool)

(assert (=> b!308998 (=> (not res!165774) (not e!193096))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308998 (= res!165774 (validKeyInArray!0 k0!2441))))

(declare-fun res!165775 () Bool)

(assert (=> start!30806 (=> (not res!165775) (not e!193096))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30806 (= res!165775 (validMask!0 mask!3709))))

(assert (=> start!30806 e!193096))

(declare-datatypes ((array!15757 0))(
  ( (array!15758 (arr!7460 (Array (_ BitVec 32) (_ BitVec 64))) (size!7812 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15757)

(declare-fun array_inv!5414 (array!15757) Bool)

(assert (=> start!30806 (array_inv!5414 a!3293)))

(assert (=> start!30806 true))

(declare-fun b!308999 () Bool)

(declare-fun res!165772 () Bool)

(assert (=> b!308999 (=> (not res!165772) (not e!193096))))

(declare-fun arrayContainsKey!0 (array!15757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308999 (= res!165772 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309000 () Bool)

(declare-fun res!165769 () Bool)

(assert (=> b!309000 (=> (not res!165769) (not e!193096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15757 (_ BitVec 32)) Bool)

(assert (=> b!309000 (= res!165769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309001 () Bool)

(declare-fun e!193099 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309001 (= e!193099 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-datatypes ((SeekEntryResult!2611 0))(
  ( (MissingZero!2611 (index!12620 (_ BitVec 32))) (Found!2611 (index!12621 (_ BitVec 32))) (Intermediate!2611 (undefined!3423 Bool) (index!12622 (_ BitVec 32)) (x!30818 (_ BitVec 32))) (Undefined!2611) (MissingVacant!2611 (index!12623 (_ BitVec 32))) )
))
(declare-fun lt!151495 () SeekEntryResult!2611)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15757 (_ BitVec 32)) SeekEntryResult!2611)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309001 (= lt!151495 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309002 () Bool)

(declare-fun res!165771 () Bool)

(declare-fun e!193098 () Bool)

(assert (=> b!309002 (=> (not res!165771) (not e!193098))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309002 (= res!165771 (and (= (select (arr!7460 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7812 a!3293))))))

(declare-fun b!309003 () Bool)

(declare-fun res!165770 () Bool)

(assert (=> b!309003 (=> (not res!165770) (not e!193096))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15757 (_ BitVec 32)) SeekEntryResult!2611)

(assert (=> b!309003 (= res!165770 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2611 i!1240)))))

(declare-fun b!309004 () Bool)

(assert (=> b!309004 (= e!193096 e!193098)))

(declare-fun res!165777 () Bool)

(assert (=> b!309004 (=> (not res!165777) (not e!193098))))

(declare-fun lt!151496 () SeekEntryResult!2611)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309004 (= res!165777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151496))))

(assert (=> b!309004 (= lt!151496 (Intermediate!2611 false resIndex!52 resX!52))))

(declare-fun b!309005 () Bool)

(assert (=> b!309005 (= e!193098 e!193099)))

(declare-fun res!165776 () Bool)

(assert (=> b!309005 (=> (not res!165776) (not e!193099))))

(assert (=> b!309005 (= res!165776 (and (= lt!151495 lt!151496) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7460 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309005 (= lt!151495 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!309006 () Bool)

(declare-fun res!165773 () Bool)

(assert (=> b!309006 (=> (not res!165773) (not e!193096))))

(assert (=> b!309006 (= res!165773 (and (= (size!7812 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7812 a!3293))))))

(assert (= (and start!30806 res!165775) b!309006))

(assert (= (and b!309006 res!165773) b!308998))

(assert (= (and b!308998 res!165774) b!308999))

(assert (= (and b!308999 res!165772) b!309003))

(assert (= (and b!309003 res!165770) b!309000))

(assert (= (and b!309000 res!165769) b!309004))

(assert (= (and b!309004 res!165777) b!309002))

(assert (= (and b!309002 res!165771) b!309005))

(assert (= (and b!309005 res!165776) b!309001))

(declare-fun m!319053 () Bool)

(assert (=> b!309000 m!319053))

(declare-fun m!319055 () Bool)

(assert (=> b!309003 m!319055))

(declare-fun m!319057 () Bool)

(assert (=> start!30806 m!319057))

(declare-fun m!319059 () Bool)

(assert (=> start!30806 m!319059))

(declare-fun m!319061 () Bool)

(assert (=> b!309002 m!319061))

(declare-fun m!319063 () Bool)

(assert (=> b!309005 m!319063))

(declare-fun m!319065 () Bool)

(assert (=> b!309005 m!319065))

(declare-fun m!319067 () Bool)

(assert (=> b!308998 m!319067))

(declare-fun m!319069 () Bool)

(assert (=> b!309001 m!319069))

(assert (=> b!309001 m!319069))

(declare-fun m!319071 () Bool)

(assert (=> b!309001 m!319071))

(declare-fun m!319073 () Bool)

(assert (=> b!309004 m!319073))

(assert (=> b!309004 m!319073))

(declare-fun m!319075 () Bool)

(assert (=> b!309004 m!319075))

(declare-fun m!319077 () Bool)

(assert (=> b!308999 m!319077))

(check-sat (not b!308998) (not start!30806) (not b!309000) (not b!309005) (not b!309004) (not b!308999) (not b!309003) (not b!309001))
(check-sat)
