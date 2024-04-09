; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49024 () Bool)

(assert start!49024)

(declare-fun b!539801 () Bool)

(declare-fun res!335000 () Bool)

(declare-fun e!312829 () Bool)

(assert (=> b!539801 (=> (not res!335000) (not e!312829))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539801 (= res!335000 (validKeyInArray!0 k!1998))))

(declare-fun b!539802 () Bool)

(declare-fun res!335003 () Bool)

(assert (=> b!539802 (=> (not res!335003) (not e!312829))))

(declare-datatypes ((array!34141 0))(
  ( (array!34142 (arr!16404 (Array (_ BitVec 32) (_ BitVec 64))) (size!16768 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34141)

(declare-fun arrayContainsKey!0 (array!34141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539802 (= res!335003 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539803 () Bool)

(declare-fun res!334999 () Bool)

(declare-fun e!312828 () Bool)

(assert (=> b!539803 (=> (not res!334999) (not e!312828))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34141 (_ BitVec 32)) Bool)

(assert (=> b!539803 (= res!334999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539804 () Bool)

(declare-fun res!335001 () Bool)

(assert (=> b!539804 (=> (not res!335001) (not e!312829))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!539804 (= res!335001 (validKeyInArray!0 (select (arr!16404 a!3154) j!147)))))

(declare-fun b!539805 () Bool)

(declare-fun res!335005 () Bool)

(assert (=> b!539805 (=> (not res!335005) (not e!312828))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4869 0))(
  ( (MissingZero!4869 (index!21700 (_ BitVec 32))) (Found!4869 (index!21701 (_ BitVec 32))) (Intermediate!4869 (undefined!5681 Bool) (index!21702 (_ BitVec 32)) (x!50645 (_ BitVec 32))) (Undefined!4869) (MissingVacant!4869 (index!21703 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34141 (_ BitVec 32)) SeekEntryResult!4869)

(assert (=> b!539805 (= res!335005 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16404 a!3154) j!147) a!3154 mask!3216) (Intermediate!4869 false resIndex!32 resX!32)))))

(declare-fun b!539806 () Bool)

(assert (=> b!539806 (= e!312829 e!312828)))

(declare-fun res!335004 () Bool)

(assert (=> b!539806 (=> (not res!335004) (not e!312828))))

(declare-fun lt!247252 () SeekEntryResult!4869)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539806 (= res!335004 (or (= lt!247252 (MissingZero!4869 i!1153)) (= lt!247252 (MissingVacant!4869 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34141 (_ BitVec 32)) SeekEntryResult!4869)

(assert (=> b!539806 (= lt!247252 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539807 () Bool)

(declare-fun res!335006 () Bool)

(assert (=> b!539807 (=> (not res!335006) (not e!312828))))

(assert (=> b!539807 (= res!335006 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16768 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16768 a!3154)) (= (select (arr!16404 a!3154) resIndex!32) (select (arr!16404 a!3154) j!147))))))

(declare-fun res!334997 () Bool)

(assert (=> start!49024 (=> (not res!334997) (not e!312829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49024 (= res!334997 (validMask!0 mask!3216))))

(assert (=> start!49024 e!312829))

(assert (=> start!49024 true))

(declare-fun array_inv!12178 (array!34141) Bool)

(assert (=> start!49024 (array_inv!12178 a!3154)))

(declare-fun b!539808 () Bool)

(declare-fun res!335002 () Bool)

(assert (=> b!539808 (=> (not res!335002) (not e!312829))))

(assert (=> b!539808 (= res!335002 (and (= (size!16768 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16768 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16768 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539809 () Bool)

(declare-fun res!334998 () Bool)

(assert (=> b!539809 (=> (not res!334998) (not e!312828))))

(declare-datatypes ((List!10576 0))(
  ( (Nil!10573) (Cons!10572 (h!11518 (_ BitVec 64)) (t!16812 List!10576)) )
))
(declare-fun arrayNoDuplicates!0 (array!34141 (_ BitVec 32) List!10576) Bool)

(assert (=> b!539809 (= res!334998 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10573))))

(declare-fun b!539810 () Bool)

(assert (=> b!539810 (= e!312828 false)))

(declare-fun lt!247253 () SeekEntryResult!4869)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539810 (= lt!247253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16404 a!3154) j!147) mask!3216) (select (arr!16404 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49024 res!334997) b!539808))

(assert (= (and b!539808 res!335002) b!539804))

(assert (= (and b!539804 res!335001) b!539801))

(assert (= (and b!539801 res!335000) b!539802))

(assert (= (and b!539802 res!335003) b!539806))

(assert (= (and b!539806 res!335004) b!539803))

(assert (= (and b!539803 res!334999) b!539809))

(assert (= (and b!539809 res!334998) b!539807))

(assert (= (and b!539807 res!335006) b!539805))

(assert (= (and b!539805 res!335005) b!539810))

(declare-fun m!518695 () Bool)

(assert (=> b!539804 m!518695))

(assert (=> b!539804 m!518695))

(declare-fun m!518697 () Bool)

(assert (=> b!539804 m!518697))

(assert (=> b!539810 m!518695))

(assert (=> b!539810 m!518695))

(declare-fun m!518699 () Bool)

(assert (=> b!539810 m!518699))

(assert (=> b!539810 m!518699))

(assert (=> b!539810 m!518695))

(declare-fun m!518701 () Bool)

(assert (=> b!539810 m!518701))

(declare-fun m!518703 () Bool)

(assert (=> b!539802 m!518703))

(declare-fun m!518705 () Bool)

(assert (=> start!49024 m!518705))

(declare-fun m!518707 () Bool)

(assert (=> start!49024 m!518707))

(declare-fun m!518709 () Bool)

(assert (=> b!539809 m!518709))

(assert (=> b!539805 m!518695))

(assert (=> b!539805 m!518695))

(declare-fun m!518711 () Bool)

(assert (=> b!539805 m!518711))

(declare-fun m!518713 () Bool)

(assert (=> b!539803 m!518713))

(declare-fun m!518715 () Bool)

(assert (=> b!539807 m!518715))

(assert (=> b!539807 m!518695))

(declare-fun m!518717 () Bool)

(assert (=> b!539806 m!518717))

(declare-fun m!518719 () Bool)

(assert (=> b!539801 m!518719))

(push 1)

