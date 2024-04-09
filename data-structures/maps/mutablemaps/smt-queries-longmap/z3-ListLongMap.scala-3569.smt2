; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49110 () Bool)

(assert start!49110)

(declare-fun b!540551 () Bool)

(declare-fun res!335588 () Bool)

(declare-fun e!313148 () Bool)

(assert (=> b!540551 (=> (not res!335588) (not e!313148))))

(declare-datatypes ((array!34176 0))(
  ( (array!34177 (arr!16420 (Array (_ BitVec 32) (_ BitVec 64))) (size!16784 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34176)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540551 (= res!335588 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540552 () Bool)

(declare-fun e!313149 () Bool)

(assert (=> b!540552 (= e!313148 e!313149)))

(declare-fun res!335589 () Bool)

(assert (=> b!540552 (=> (not res!335589) (not e!313149))))

(declare-datatypes ((SeekEntryResult!4885 0))(
  ( (MissingZero!4885 (index!21764 (_ BitVec 32))) (Found!4885 (index!21765 (_ BitVec 32))) (Intermediate!4885 (undefined!5697 Bool) (index!21766 (_ BitVec 32)) (x!50707 (_ BitVec 32))) (Undefined!4885) (MissingVacant!4885 (index!21767 (_ BitVec 32))) )
))
(declare-fun lt!247444 () SeekEntryResult!4885)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540552 (= res!335589 (or (= lt!247444 (MissingZero!4885 i!1153)) (= lt!247444 (MissingVacant!4885 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34176 (_ BitVec 32)) SeekEntryResult!4885)

(assert (=> b!540552 (= lt!247444 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!540553 () Bool)

(declare-fun res!335594 () Bool)

(assert (=> b!540553 (=> (not res!335594) (not e!313148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540553 (= res!335594 (validKeyInArray!0 k0!1998))))

(declare-fun b!540554 () Bool)

(declare-fun res!335593 () Bool)

(assert (=> b!540554 (=> (not res!335593) (not e!313149))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540554 (= res!335593 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16784 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16784 a!3154)) (= (select (arr!16420 a!3154) resIndex!32) (select (arr!16420 a!3154) j!147))))))

(declare-fun b!540555 () Bool)

(declare-fun res!335597 () Bool)

(assert (=> b!540555 (=> (not res!335597) (not e!313149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34176 (_ BitVec 32)) Bool)

(assert (=> b!540555 (= res!335597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540556 () Bool)

(declare-fun res!335595 () Bool)

(assert (=> b!540556 (=> (not res!335595) (not e!313148))))

(assert (=> b!540556 (= res!335595 (and (= (size!16784 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16784 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16784 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!335592 () Bool)

(assert (=> start!49110 (=> (not res!335592) (not e!313148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49110 (= res!335592 (validMask!0 mask!3216))))

(assert (=> start!49110 e!313148))

(assert (=> start!49110 true))

(declare-fun array_inv!12194 (array!34176) Bool)

(assert (=> start!49110 (array_inv!12194 a!3154)))

(declare-fun b!540557 () Bool)

(declare-fun res!335591 () Bool)

(assert (=> b!540557 (=> (not res!335591) (not e!313148))))

(assert (=> b!540557 (= res!335591 (validKeyInArray!0 (select (arr!16420 a!3154) j!147)))))

(declare-fun b!540558 () Bool)

(declare-fun res!335596 () Bool)

(assert (=> b!540558 (=> (not res!335596) (not e!313149))))

(declare-datatypes ((List!10592 0))(
  ( (Nil!10589) (Cons!10588 (h!11537 (_ BitVec 64)) (t!16828 List!10592)) )
))
(declare-fun arrayNoDuplicates!0 (array!34176 (_ BitVec 32) List!10592) Bool)

(assert (=> b!540558 (= res!335596 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10589))))

(declare-fun b!540559 () Bool)

(declare-fun res!335590 () Bool)

(assert (=> b!540559 (=> (not res!335590) (not e!313149))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34176 (_ BitVec 32)) SeekEntryResult!4885)

(assert (=> b!540559 (= res!335590 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16420 a!3154) j!147) a!3154 mask!3216) (Intermediate!4885 false resIndex!32 resX!32)))))

(declare-fun b!540560 () Bool)

(assert (=> b!540560 (= e!313149 false)))

(declare-fun lt!247445 () SeekEntryResult!4885)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540560 (= lt!247445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16420 a!3154) j!147) mask!3216) (select (arr!16420 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49110 res!335592) b!540556))

(assert (= (and b!540556 res!335595) b!540557))

(assert (= (and b!540557 res!335591) b!540553))

(assert (= (and b!540553 res!335594) b!540551))

(assert (= (and b!540551 res!335588) b!540552))

(assert (= (and b!540552 res!335589) b!540555))

(assert (= (and b!540555 res!335597) b!540558))

(assert (= (and b!540558 res!335596) b!540554))

(assert (= (and b!540554 res!335593) b!540559))

(assert (= (and b!540559 res!335590) b!540560))

(declare-fun m!519255 () Bool)

(assert (=> start!49110 m!519255))

(declare-fun m!519257 () Bool)

(assert (=> start!49110 m!519257))

(declare-fun m!519259 () Bool)

(assert (=> b!540553 m!519259))

(declare-fun m!519261 () Bool)

(assert (=> b!540559 m!519261))

(assert (=> b!540559 m!519261))

(declare-fun m!519263 () Bool)

(assert (=> b!540559 m!519263))

(declare-fun m!519265 () Bool)

(assert (=> b!540551 m!519265))

(declare-fun m!519267 () Bool)

(assert (=> b!540558 m!519267))

(assert (=> b!540557 m!519261))

(assert (=> b!540557 m!519261))

(declare-fun m!519269 () Bool)

(assert (=> b!540557 m!519269))

(assert (=> b!540560 m!519261))

(assert (=> b!540560 m!519261))

(declare-fun m!519271 () Bool)

(assert (=> b!540560 m!519271))

(assert (=> b!540560 m!519271))

(assert (=> b!540560 m!519261))

(declare-fun m!519273 () Bool)

(assert (=> b!540560 m!519273))

(declare-fun m!519275 () Bool)

(assert (=> b!540552 m!519275))

(declare-fun m!519277 () Bool)

(assert (=> b!540555 m!519277))

(declare-fun m!519279 () Bool)

(assert (=> b!540554 m!519279))

(assert (=> b!540554 m!519261))

(check-sat (not b!540551) (not b!540560) (not b!540552) (not b!540555) (not b!540557) (not b!540559) (not b!540553) (not b!540558) (not start!49110))
(check-sat)
