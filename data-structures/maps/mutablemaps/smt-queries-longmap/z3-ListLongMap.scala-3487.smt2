; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48408 () Bool)

(assert start!48408)

(declare-fun b!531545 () Bool)

(declare-fun e!309600 () Bool)

(declare-fun e!309599 () Bool)

(assert (=> b!531545 (= e!309600 e!309599)))

(declare-fun res!327185 () Bool)

(assert (=> b!531545 (=> (not res!327185) (not e!309599))))

(declare-datatypes ((SeekEntryResult!4639 0))(
  ( (MissingZero!4639 (index!20780 (_ BitVec 32))) (Found!4639 (index!20781 (_ BitVec 32))) (Intermediate!4639 (undefined!5451 Bool) (index!20782 (_ BitVec 32)) (x!49784 (_ BitVec 32))) (Undefined!4639) (MissingVacant!4639 (index!20783 (_ BitVec 32))) )
))
(declare-fun lt!245029 () SeekEntryResult!4639)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531545 (= res!327185 (or (= lt!245029 (MissingZero!4639 i!1153)) (= lt!245029 (MissingVacant!4639 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((array!33672 0))(
  ( (array!33673 (arr!16174 (Array (_ BitVec 32) (_ BitVec 64))) (size!16538 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33672)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33672 (_ BitVec 32)) SeekEntryResult!4639)

(assert (=> b!531545 (= lt!245029 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!531546 () Bool)

(declare-fun res!327190 () Bool)

(assert (=> b!531546 (=> (not res!327190) (not e!309600))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531546 (= res!327190 (validKeyInArray!0 k0!1998))))

(declare-fun b!531547 () Bool)

(declare-fun res!327186 () Bool)

(assert (=> b!531547 (=> (not res!327186) (not e!309600))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!531547 (= res!327186 (validKeyInArray!0 (select (arr!16174 a!3154) j!147)))))

(declare-fun b!531548 () Bool)

(assert (=> b!531548 (= e!309599 false)))

(declare-fun lt!245030 () Bool)

(declare-datatypes ((List!10346 0))(
  ( (Nil!10343) (Cons!10342 (h!11282 (_ BitVec 64)) (t!16582 List!10346)) )
))
(declare-fun arrayNoDuplicates!0 (array!33672 (_ BitVec 32) List!10346) Bool)

(assert (=> b!531548 (= lt!245030 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10343))))

(declare-fun b!531549 () Bool)

(declare-fun res!327189 () Bool)

(assert (=> b!531549 (=> (not res!327189) (not e!309600))))

(declare-fun arrayContainsKey!0 (array!33672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531549 (= res!327189 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!327188 () Bool)

(assert (=> start!48408 (=> (not res!327188) (not e!309600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48408 (= res!327188 (validMask!0 mask!3216))))

(assert (=> start!48408 e!309600))

(assert (=> start!48408 true))

(declare-fun array_inv!11948 (array!33672) Bool)

(assert (=> start!48408 (array_inv!11948 a!3154)))

(declare-fun b!531550 () Bool)

(declare-fun res!327191 () Bool)

(assert (=> b!531550 (=> (not res!327191) (not e!309600))))

(assert (=> b!531550 (= res!327191 (and (= (size!16538 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16538 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16538 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531551 () Bool)

(declare-fun res!327187 () Bool)

(assert (=> b!531551 (=> (not res!327187) (not e!309599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33672 (_ BitVec 32)) Bool)

(assert (=> b!531551 (= res!327187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48408 res!327188) b!531550))

(assert (= (and b!531550 res!327191) b!531547))

(assert (= (and b!531547 res!327186) b!531546))

(assert (= (and b!531546 res!327190) b!531549))

(assert (= (and b!531549 res!327189) b!531545))

(assert (= (and b!531545 res!327185) b!531551))

(assert (= (and b!531551 res!327187) b!531548))

(declare-fun m!511945 () Bool)

(assert (=> b!531549 m!511945))

(declare-fun m!511947 () Bool)

(assert (=> b!531551 m!511947))

(declare-fun m!511949 () Bool)

(assert (=> b!531547 m!511949))

(assert (=> b!531547 m!511949))

(declare-fun m!511951 () Bool)

(assert (=> b!531547 m!511951))

(declare-fun m!511953 () Bool)

(assert (=> start!48408 m!511953))

(declare-fun m!511955 () Bool)

(assert (=> start!48408 m!511955))

(declare-fun m!511957 () Bool)

(assert (=> b!531545 m!511957))

(declare-fun m!511959 () Bool)

(assert (=> b!531546 m!511959))

(declare-fun m!511961 () Bool)

(assert (=> b!531548 m!511961))

(check-sat (not start!48408) (not b!531548) (not b!531545) (not b!531547) (not b!531551) (not b!531546) (not b!531549))
(check-sat)
