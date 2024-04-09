; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31726 () Bool)

(assert start!31726)

(declare-fun b!316792 () Bool)

(declare-fun res!171730 () Bool)

(declare-fun e!197009 () Bool)

(assert (=> b!316792 (=> (not res!171730) (not e!197009))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316792 (= res!171730 (validKeyInArray!0 k!2441))))

(declare-fun res!171726 () Bool)

(assert (=> start!31726 (=> (not res!171726) (not e!197009))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31726 (= res!171726 (validMask!0 mask!3709))))

(assert (=> start!31726 e!197009))

(declare-datatypes ((array!16146 0))(
  ( (array!16147 (arr!7638 (Array (_ BitVec 32) (_ BitVec 64))) (size!7990 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16146)

(declare-fun array_inv!5592 (array!16146) Bool)

(assert (=> start!31726 (array_inv!5592 a!3293)))

(assert (=> start!31726 true))

(declare-fun b!316793 () Bool)

(declare-fun e!197010 () Bool)

(declare-fun e!197011 () Bool)

(assert (=> b!316793 (= e!197010 e!197011)))

(declare-fun res!171725 () Bool)

(assert (=> b!316793 (=> (not res!171725) (not e!197011))))

(declare-datatypes ((SeekEntryResult!2789 0))(
  ( (MissingZero!2789 (index!13332 (_ BitVec 32))) (Found!2789 (index!13333 (_ BitVec 32))) (Intermediate!2789 (undefined!3601 Bool) (index!13334 (_ BitVec 32)) (x!31552 (_ BitVec 32))) (Undefined!2789) (MissingVacant!2789 (index!13335 (_ BitVec 32))) )
))
(declare-fun lt!154727 () SeekEntryResult!2789)

(declare-fun lt!154726 () SeekEntryResult!2789)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!316793 (= res!171725 (and (= lt!154726 lt!154727) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7638 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16146 (_ BitVec 32)) SeekEntryResult!2789)

(assert (=> b!316793 (= lt!154726 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!316794 () Bool)

(declare-fun res!171724 () Bool)

(assert (=> b!316794 (=> (not res!171724) (not e!197010))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!316794 (= res!171724 (and (= (select (arr!7638 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7990 a!3293))))))

(declare-fun b!316795 () Bool)

(assert (=> b!316795 (= e!197011 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316795 (= lt!154726 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316796 () Bool)

(declare-fun res!171729 () Bool)

(assert (=> b!316796 (=> (not res!171729) (not e!197009))))

(declare-fun arrayContainsKey!0 (array!16146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316796 (= res!171729 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316797 () Bool)

(assert (=> b!316797 (= e!197009 e!197010)))

(declare-fun res!171727 () Bool)

(assert (=> b!316797 (=> (not res!171727) (not e!197010))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316797 (= res!171727 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154727))))

(assert (=> b!316797 (= lt!154727 (Intermediate!2789 false resIndex!52 resX!52))))

(declare-fun b!316798 () Bool)

(declare-fun res!171731 () Bool)

(assert (=> b!316798 (=> (not res!171731) (not e!197009))))

(assert (=> b!316798 (= res!171731 (and (= (size!7990 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7990 a!3293))))))

(declare-fun b!316799 () Bool)

(declare-fun res!171732 () Bool)

(assert (=> b!316799 (=> (not res!171732) (not e!197009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16146 (_ BitVec 32)) Bool)

(assert (=> b!316799 (= res!171732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316800 () Bool)

(declare-fun res!171728 () Bool)

(assert (=> b!316800 (=> (not res!171728) (not e!197009))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16146 (_ BitVec 32)) SeekEntryResult!2789)

(assert (=> b!316800 (= res!171728 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2789 i!1240)))))

(assert (= (and start!31726 res!171726) b!316798))

(assert (= (and b!316798 res!171731) b!316792))

(assert (= (and b!316792 res!171730) b!316796))

(assert (= (and b!316796 res!171729) b!316800))

(assert (= (and b!316800 res!171728) b!316799))

(assert (= (and b!316799 res!171732) b!316797))

(assert (= (and b!316797 res!171727) b!316794))

(assert (= (and b!316794 res!171724) b!316793))

(assert (= (and b!316793 res!171725) b!316795))

(declare-fun m!325577 () Bool)

(assert (=> b!316793 m!325577))

(declare-fun m!325579 () Bool)

(assert (=> b!316793 m!325579))

(declare-fun m!325581 () Bool)

(assert (=> b!316796 m!325581))

(declare-fun m!325583 () Bool)

(assert (=> b!316797 m!325583))

(assert (=> b!316797 m!325583))

(declare-fun m!325585 () Bool)

(assert (=> b!316797 m!325585))

(declare-fun m!325587 () Bool)

(assert (=> b!316794 m!325587))

(declare-fun m!325589 () Bool)

(assert (=> b!316799 m!325589))

(declare-fun m!325591 () Bool)

(assert (=> start!31726 m!325591))

(declare-fun m!325593 () Bool)

(assert (=> start!31726 m!325593))

(declare-fun m!325595 () Bool)

(assert (=> b!316800 m!325595))

(declare-fun m!325597 () Bool)

(assert (=> b!316795 m!325597))

(assert (=> b!316795 m!325597))

(declare-fun m!325599 () Bool)

(assert (=> b!316795 m!325599))

(declare-fun m!325601 () Bool)

(assert (=> b!316792 m!325601))

(push 1)

(assert (not b!316795))

(assert (not b!316792))

(assert (not b!316796))

(assert (not b!316800))

(assert (not b!316799))

(assert (not start!31726))

