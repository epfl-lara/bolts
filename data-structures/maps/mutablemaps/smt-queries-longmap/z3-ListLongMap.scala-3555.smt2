; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48918 () Bool)

(assert start!48918)

(declare-fun b!538799 () Bool)

(declare-fun res!334155 () Bool)

(declare-fun e!312408 () Bool)

(assert (=> b!538799 (=> (not res!334155) (not e!312408))))

(declare-datatypes ((array!34086 0))(
  ( (array!34087 (arr!16378 (Array (_ BitVec 32) (_ BitVec 64))) (size!16742 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34086)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538799 (= res!334155 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538800 () Bool)

(declare-fun e!312407 () Bool)

(assert (=> b!538800 (= e!312408 e!312407)))

(declare-fun res!334158 () Bool)

(assert (=> b!538800 (=> (not res!334158) (not e!312407))))

(declare-datatypes ((SeekEntryResult!4843 0))(
  ( (MissingZero!4843 (index!21596 (_ BitVec 32))) (Found!4843 (index!21597 (_ BitVec 32))) (Intermediate!4843 (undefined!5655 Bool) (index!21598 (_ BitVec 32)) (x!50541 (_ BitVec 32))) (Undefined!4843) (MissingVacant!4843 (index!21599 (_ BitVec 32))) )
))
(declare-fun lt!247000 () SeekEntryResult!4843)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538800 (= res!334158 (or (= lt!247000 (MissingZero!4843 i!1153)) (= lt!247000 (MissingVacant!4843 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34086 (_ BitVec 32)) SeekEntryResult!4843)

(assert (=> b!538800 (= lt!247000 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538801 () Bool)

(declare-fun res!334157 () Bool)

(assert (=> b!538801 (=> (not res!334157) (not e!312407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34086 (_ BitVec 32)) Bool)

(assert (=> b!538801 (= res!334157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538803 () Bool)

(declare-fun res!334156 () Bool)

(assert (=> b!538803 (=> (not res!334156) (not e!312408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538803 (= res!334156 (validKeyInArray!0 k0!1998))))

(declare-fun b!538804 () Bool)

(assert (=> b!538804 (= e!312407 false)))

(declare-fun lt!247001 () Bool)

(declare-datatypes ((List!10550 0))(
  ( (Nil!10547) (Cons!10546 (h!11489 (_ BitVec 64)) (t!16786 List!10550)) )
))
(declare-fun arrayNoDuplicates!0 (array!34086 (_ BitVec 32) List!10550) Bool)

(assert (=> b!538804 (= lt!247001 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10547))))

(declare-fun b!538805 () Bool)

(declare-fun res!334159 () Bool)

(assert (=> b!538805 (=> (not res!334159) (not e!312408))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!538805 (= res!334159 (and (= (size!16742 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16742 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16742 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538802 () Bool)

(declare-fun res!334160 () Bool)

(assert (=> b!538802 (=> (not res!334160) (not e!312408))))

(assert (=> b!538802 (= res!334160 (validKeyInArray!0 (select (arr!16378 a!3154) j!147)))))

(declare-fun res!334154 () Bool)

(assert (=> start!48918 (=> (not res!334154) (not e!312408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48918 (= res!334154 (validMask!0 mask!3216))))

(assert (=> start!48918 e!312408))

(assert (=> start!48918 true))

(declare-fun array_inv!12152 (array!34086) Bool)

(assert (=> start!48918 (array_inv!12152 a!3154)))

(assert (= (and start!48918 res!334154) b!538805))

(assert (= (and b!538805 res!334159) b!538802))

(assert (= (and b!538802 res!334160) b!538803))

(assert (= (and b!538803 res!334156) b!538799))

(assert (= (and b!538799 res!334155) b!538800))

(assert (= (and b!538800 res!334158) b!538801))

(assert (= (and b!538801 res!334157) b!538804))

(declare-fun m!517945 () Bool)

(assert (=> b!538804 m!517945))

(declare-fun m!517947 () Bool)

(assert (=> b!538803 m!517947))

(declare-fun m!517949 () Bool)

(assert (=> b!538800 m!517949))

(declare-fun m!517951 () Bool)

(assert (=> b!538799 m!517951))

(declare-fun m!517953 () Bool)

(assert (=> b!538802 m!517953))

(assert (=> b!538802 m!517953))

(declare-fun m!517955 () Bool)

(assert (=> b!538802 m!517955))

(declare-fun m!517957 () Bool)

(assert (=> b!538801 m!517957))

(declare-fun m!517959 () Bool)

(assert (=> start!48918 m!517959))

(declare-fun m!517961 () Bool)

(assert (=> start!48918 m!517961))

(check-sat (not b!538800) (not b!538799) (not b!538802) (not b!538804) (not b!538801) (not b!538803) (not start!48918))
(check-sat)
