; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30170 () Bool)

(assert start!30170)

(declare-fun b!301887 () Bool)

(declare-fun res!159657 () Bool)

(declare-fun e!190390 () Bool)

(assert (=> b!301887 (=> (not res!159657) (not e!190390))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301887 (= res!159657 (validKeyInArray!0 k0!2441))))

(declare-datatypes ((array!15319 0))(
  ( (array!15320 (arr!7247 (Array (_ BitVec 32) (_ BitVec 64))) (size!7599 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15319)

(declare-fun b!301888 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!301888 (= e!190390 (and (= (select (arr!7247 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7599 a!3293)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!301889 () Bool)

(declare-fun res!159659 () Bool)

(assert (=> b!301889 (=> (not res!159659) (not e!190390))))

(declare-fun arrayContainsKey!0 (array!15319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301889 (= res!159659 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301890 () Bool)

(declare-fun res!159660 () Bool)

(assert (=> b!301890 (=> (not res!159660) (not e!190390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15319 (_ BitVec 32)) Bool)

(assert (=> b!301890 (= res!159660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301892 () Bool)

(declare-fun res!159655 () Bool)

(assert (=> b!301892 (=> (not res!159655) (not e!190390))))

(assert (=> b!301892 (= res!159655 (and (= (size!7599 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7599 a!3293))))))

(declare-fun b!301893 () Bool)

(declare-fun res!159656 () Bool)

(assert (=> b!301893 (=> (not res!159656) (not e!190390))))

(declare-datatypes ((SeekEntryResult!2398 0))(
  ( (MissingZero!2398 (index!11768 (_ BitVec 32))) (Found!2398 (index!11769 (_ BitVec 32))) (Intermediate!2398 (undefined!3210 Bool) (index!11770 (_ BitVec 32)) (x!30004 (_ BitVec 32))) (Undefined!2398) (MissingVacant!2398 (index!11771 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15319 (_ BitVec 32)) SeekEntryResult!2398)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301893 (= res!159656 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2398 false resIndex!52 resX!52)))))

(declare-fun b!301891 () Bool)

(declare-fun res!159654 () Bool)

(assert (=> b!301891 (=> (not res!159654) (not e!190390))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15319 (_ BitVec 32)) SeekEntryResult!2398)

(assert (=> b!301891 (= res!159654 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2398 i!1240)))))

(declare-fun res!159658 () Bool)

(assert (=> start!30170 (=> (not res!159658) (not e!190390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30170 (= res!159658 (validMask!0 mask!3709))))

(assert (=> start!30170 e!190390))

(declare-fun array_inv!5201 (array!15319) Bool)

(assert (=> start!30170 (array_inv!5201 a!3293)))

(assert (=> start!30170 true))

(assert (= (and start!30170 res!159658) b!301892))

(assert (= (and b!301892 res!159655) b!301887))

(assert (= (and b!301887 res!159657) b!301889))

(assert (= (and b!301889 res!159659) b!301891))

(assert (= (and b!301891 res!159654) b!301890))

(assert (= (and b!301890 res!159660) b!301893))

(assert (= (and b!301893 res!159656) b!301888))

(declare-fun m!313573 () Bool)

(assert (=> b!301893 m!313573))

(assert (=> b!301893 m!313573))

(declare-fun m!313575 () Bool)

(assert (=> b!301893 m!313575))

(declare-fun m!313577 () Bool)

(assert (=> b!301889 m!313577))

(declare-fun m!313579 () Bool)

(assert (=> start!30170 m!313579))

(declare-fun m!313581 () Bool)

(assert (=> start!30170 m!313581))

(declare-fun m!313583 () Bool)

(assert (=> b!301890 m!313583))

(declare-fun m!313585 () Bool)

(assert (=> b!301891 m!313585))

(declare-fun m!313587 () Bool)

(assert (=> b!301888 m!313587))

(declare-fun m!313589 () Bool)

(assert (=> b!301887 m!313589))

(check-sat (not b!301890) (not start!30170) (not b!301887) (not b!301893) (not b!301891) (not b!301889))
(check-sat)
