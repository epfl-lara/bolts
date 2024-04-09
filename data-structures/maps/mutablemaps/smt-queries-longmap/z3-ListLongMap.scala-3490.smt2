; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48426 () Bool)

(assert start!48426)

(declare-fun b!531752 () Bool)

(declare-fun res!327398 () Bool)

(declare-fun e!309681 () Bool)

(assert (=> b!531752 (=> (not res!327398) (not e!309681))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531752 (= res!327398 (validKeyInArray!0 k0!1998))))

(declare-fun b!531753 () Bool)

(declare-fun res!327397 () Bool)

(assert (=> b!531753 (=> (not res!327397) (not e!309681))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33690 0))(
  ( (array!33691 (arr!16183 (Array (_ BitVec 32) (_ BitVec 64))) (size!16547 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33690)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531753 (= res!327397 (and (= (size!16547 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16547 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16547 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531754 () Bool)

(declare-fun res!327394 () Bool)

(declare-fun e!309680 () Bool)

(assert (=> b!531754 (=> (not res!327394) (not e!309680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33690 (_ BitVec 32)) Bool)

(assert (=> b!531754 (= res!327394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531756 () Bool)

(assert (=> b!531756 (= e!309680 false)))

(declare-fun lt!245065 () Bool)

(declare-datatypes ((List!10355 0))(
  ( (Nil!10352) (Cons!10351 (h!11291 (_ BitVec 64)) (t!16591 List!10355)) )
))
(declare-fun arrayNoDuplicates!0 (array!33690 (_ BitVec 32) List!10355) Bool)

(assert (=> b!531756 (= lt!245065 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10352))))

(declare-fun b!531757 () Bool)

(declare-fun res!327392 () Bool)

(assert (=> b!531757 (=> (not res!327392) (not e!309681))))

(declare-fun arrayContainsKey!0 (array!33690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531757 (= res!327392 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531758 () Bool)

(assert (=> b!531758 (= e!309681 e!309680)))

(declare-fun res!327393 () Bool)

(assert (=> b!531758 (=> (not res!327393) (not e!309680))))

(declare-datatypes ((SeekEntryResult!4648 0))(
  ( (MissingZero!4648 (index!20816 (_ BitVec 32))) (Found!4648 (index!20817 (_ BitVec 32))) (Intermediate!4648 (undefined!5460 Bool) (index!20818 (_ BitVec 32)) (x!49817 (_ BitVec 32))) (Undefined!4648) (MissingVacant!4648 (index!20819 (_ BitVec 32))) )
))
(declare-fun lt!245066 () SeekEntryResult!4648)

(assert (=> b!531758 (= res!327393 (or (= lt!245066 (MissingZero!4648 i!1153)) (= lt!245066 (MissingVacant!4648 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33690 (_ BitVec 32)) SeekEntryResult!4648)

(assert (=> b!531758 (= lt!245066 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun res!327396 () Bool)

(assert (=> start!48426 (=> (not res!327396) (not e!309681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48426 (= res!327396 (validMask!0 mask!3216))))

(assert (=> start!48426 e!309681))

(assert (=> start!48426 true))

(declare-fun array_inv!11957 (array!33690) Bool)

(assert (=> start!48426 (array_inv!11957 a!3154)))

(declare-fun b!531755 () Bool)

(declare-fun res!327395 () Bool)

(assert (=> b!531755 (=> (not res!327395) (not e!309681))))

(assert (=> b!531755 (= res!327395 (validKeyInArray!0 (select (arr!16183 a!3154) j!147)))))

(assert (= (and start!48426 res!327396) b!531753))

(assert (= (and b!531753 res!327397) b!531755))

(assert (= (and b!531755 res!327395) b!531752))

(assert (= (and b!531752 res!327398) b!531757))

(assert (= (and b!531757 res!327392) b!531758))

(assert (= (and b!531758 res!327393) b!531754))

(assert (= (and b!531754 res!327394) b!531756))

(declare-fun m!512119 () Bool)

(assert (=> b!531756 m!512119))

(declare-fun m!512121 () Bool)

(assert (=> b!531755 m!512121))

(assert (=> b!531755 m!512121))

(declare-fun m!512123 () Bool)

(assert (=> b!531755 m!512123))

(declare-fun m!512125 () Bool)

(assert (=> start!48426 m!512125))

(declare-fun m!512127 () Bool)

(assert (=> start!48426 m!512127))

(declare-fun m!512129 () Bool)

(assert (=> b!531757 m!512129))

(declare-fun m!512131 () Bool)

(assert (=> b!531752 m!512131))

(declare-fun m!512133 () Bool)

(assert (=> b!531758 m!512133))

(declare-fun m!512135 () Bool)

(assert (=> b!531754 m!512135))

(check-sat (not b!531754) (not b!531757) (not start!48426) (not b!531755) (not b!531758) (not b!531756) (not b!531752))
(check-sat)
