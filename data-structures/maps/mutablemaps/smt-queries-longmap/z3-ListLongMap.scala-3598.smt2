; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49536 () Bool)

(assert start!49536)

(declare-fun b!544803 () Bool)

(declare-fun res!339064 () Bool)

(declare-fun e!314938 () Bool)

(assert (=> b!544803 (=> (not res!339064) (not e!314938))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34362 0))(
  ( (array!34363 (arr!16507 (Array (_ BitVec 32) (_ BitVec 64))) (size!16871 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34362)

(assert (=> b!544803 (= res!339064 (and (not (= (select (arr!16507 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16507 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16507 a!3154) index!1177) (select (arr!16507 a!3154) j!147)))))))

(declare-fun b!544804 () Bool)

(assert (=> b!544804 (= e!314938 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!248632 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544804 (= lt!248632 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544805 () Bool)

(declare-fun res!339068 () Bool)

(declare-fun e!314936 () Bool)

(assert (=> b!544805 (=> (not res!339068) (not e!314936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544805 (= res!339068 (validKeyInArray!0 (select (arr!16507 a!3154) j!147)))))

(declare-fun res!339063 () Bool)

(assert (=> start!49536 (=> (not res!339063) (not e!314936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49536 (= res!339063 (validMask!0 mask!3216))))

(assert (=> start!49536 e!314936))

(assert (=> start!49536 true))

(declare-fun array_inv!12281 (array!34362) Bool)

(assert (=> start!49536 (array_inv!12281 a!3154)))

(declare-fun b!544806 () Bool)

(declare-fun e!314937 () Bool)

(assert (=> b!544806 (= e!314936 e!314937)))

(declare-fun res!339057 () Bool)

(assert (=> b!544806 (=> (not res!339057) (not e!314937))))

(declare-datatypes ((SeekEntryResult!4972 0))(
  ( (MissingZero!4972 (index!22112 (_ BitVec 32))) (Found!4972 (index!22113 (_ BitVec 32))) (Intermediate!4972 (undefined!5784 Bool) (index!22114 (_ BitVec 32)) (x!51062 (_ BitVec 32))) (Undefined!4972) (MissingVacant!4972 (index!22115 (_ BitVec 32))) )
))
(declare-fun lt!248631 () SeekEntryResult!4972)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544806 (= res!339057 (or (= lt!248631 (MissingZero!4972 i!1153)) (= lt!248631 (MissingVacant!4972 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34362 (_ BitVec 32)) SeekEntryResult!4972)

(assert (=> b!544806 (= lt!248631 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!544807 () Bool)

(declare-fun res!339060 () Bool)

(assert (=> b!544807 (=> (not res!339060) (not e!314937))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544807 (= res!339060 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16871 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16871 a!3154)) (= (select (arr!16507 a!3154) resIndex!32) (select (arr!16507 a!3154) j!147))))))

(declare-fun b!544808 () Bool)

(declare-fun res!339061 () Bool)

(assert (=> b!544808 (=> (not res!339061) (not e!314936))))

(assert (=> b!544808 (= res!339061 (validKeyInArray!0 k0!1998))))

(declare-fun b!544809 () Bool)

(declare-fun res!339062 () Bool)

(assert (=> b!544809 (=> (not res!339062) (not e!314938))))

(declare-fun lt!248633 () SeekEntryResult!4972)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34362 (_ BitVec 32)) SeekEntryResult!4972)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544809 (= res!339062 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16507 a!3154) j!147) mask!3216) (select (arr!16507 a!3154) j!147) a!3154 mask!3216) lt!248633))))

(declare-fun b!544810 () Bool)

(declare-fun res!339058 () Bool)

(assert (=> b!544810 (=> (not res!339058) (not e!314936))))

(assert (=> b!544810 (= res!339058 (and (= (size!16871 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16871 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16871 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544811 () Bool)

(declare-fun res!339065 () Bool)

(assert (=> b!544811 (=> (not res!339065) (not e!314937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34362 (_ BitVec 32)) Bool)

(assert (=> b!544811 (= res!339065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544812 () Bool)

(declare-fun res!339059 () Bool)

(assert (=> b!544812 (=> (not res!339059) (not e!314937))))

(declare-datatypes ((List!10679 0))(
  ( (Nil!10676) (Cons!10675 (h!11636 (_ BitVec 64)) (t!16915 List!10679)) )
))
(declare-fun arrayNoDuplicates!0 (array!34362 (_ BitVec 32) List!10679) Bool)

(assert (=> b!544812 (= res!339059 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10676))))

(declare-fun b!544813 () Bool)

(assert (=> b!544813 (= e!314937 e!314938)))

(declare-fun res!339066 () Bool)

(assert (=> b!544813 (=> (not res!339066) (not e!314938))))

(assert (=> b!544813 (= res!339066 (= lt!248633 (Intermediate!4972 false resIndex!32 resX!32)))))

(assert (=> b!544813 (= lt!248633 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16507 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544814 () Bool)

(declare-fun res!339067 () Bool)

(assert (=> b!544814 (=> (not res!339067) (not e!314936))))

(declare-fun arrayContainsKey!0 (array!34362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544814 (= res!339067 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49536 res!339063) b!544810))

(assert (= (and b!544810 res!339058) b!544805))

(assert (= (and b!544805 res!339068) b!544808))

(assert (= (and b!544808 res!339061) b!544814))

(assert (= (and b!544814 res!339067) b!544806))

(assert (= (and b!544806 res!339057) b!544811))

(assert (= (and b!544811 res!339065) b!544812))

(assert (= (and b!544812 res!339059) b!544807))

(assert (= (and b!544807 res!339060) b!544813))

(assert (= (and b!544813 res!339066) b!544809))

(assert (= (and b!544809 res!339062) b!544803))

(assert (= (and b!544803 res!339064) b!544804))

(declare-fun m!522565 () Bool)

(assert (=> b!544811 m!522565))

(declare-fun m!522567 () Bool)

(assert (=> b!544804 m!522567))

(declare-fun m!522569 () Bool)

(assert (=> b!544813 m!522569))

(assert (=> b!544813 m!522569))

(declare-fun m!522571 () Bool)

(assert (=> b!544813 m!522571))

(declare-fun m!522573 () Bool)

(assert (=> b!544812 m!522573))

(declare-fun m!522575 () Bool)

(assert (=> b!544808 m!522575))

(declare-fun m!522577 () Bool)

(assert (=> b!544806 m!522577))

(declare-fun m!522579 () Bool)

(assert (=> b!544814 m!522579))

(declare-fun m!522581 () Bool)

(assert (=> b!544803 m!522581))

(assert (=> b!544803 m!522569))

(assert (=> b!544805 m!522569))

(assert (=> b!544805 m!522569))

(declare-fun m!522583 () Bool)

(assert (=> b!544805 m!522583))

(assert (=> b!544809 m!522569))

(assert (=> b!544809 m!522569))

(declare-fun m!522585 () Bool)

(assert (=> b!544809 m!522585))

(assert (=> b!544809 m!522585))

(assert (=> b!544809 m!522569))

(declare-fun m!522587 () Bool)

(assert (=> b!544809 m!522587))

(declare-fun m!522589 () Bool)

(assert (=> b!544807 m!522589))

(assert (=> b!544807 m!522569))

(declare-fun m!522591 () Bool)

(assert (=> start!49536 m!522591))

(declare-fun m!522593 () Bool)

(assert (=> start!49536 m!522593))

(check-sat (not b!544809) (not b!544804) (not b!544811) (not b!544805) (not b!544808) (not b!544806) (not start!49536) (not b!544814) (not b!544812) (not b!544813))
(check-sat)
