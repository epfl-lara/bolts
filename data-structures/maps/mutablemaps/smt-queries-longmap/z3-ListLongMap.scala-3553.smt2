; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48906 () Bool)

(assert start!48906)

(declare-fun b!538645 () Bool)

(declare-fun res!334008 () Bool)

(declare-fun e!312338 () Bool)

(assert (=> b!538645 (=> (not res!334008) (not e!312338))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34074 0))(
  ( (array!34075 (arr!16372 (Array (_ BitVec 32) (_ BitVec 64))) (size!16736 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34074)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538645 (= res!334008 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16736 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16736 a!3154)) (= (select (arr!16372 a!3154) resIndex!32) (select (arr!16372 a!3154) j!147))))))

(declare-fun b!538647 () Bool)

(declare-fun e!312340 () Bool)

(declare-fun e!312335 () Bool)

(assert (=> b!538647 (= e!312340 (not e!312335))))

(declare-fun res!334011 () Bool)

(assert (=> b!538647 (=> res!334011 e!312335)))

(declare-fun mask!3216 () (_ BitVec 32))

(assert (=> b!538647 (= res!334011 (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-datatypes ((SeekEntryResult!4837 0))(
  ( (MissingZero!4837 (index!21572 (_ BitVec 32))) (Found!4837 (index!21573 (_ BitVec 32))) (Intermediate!4837 (undefined!5649 Bool) (index!21574 (_ BitVec 32)) (x!50519 (_ BitVec 32))) (Undefined!4837) (MissingVacant!4837 (index!21575 (_ BitVec 32))) )
))
(declare-fun lt!246944 () SeekEntryResult!4837)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun lt!246947 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34074 (_ BitVec 32)) SeekEntryResult!4837)

(assert (=> b!538647 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246947 (select (store (arr!16372 a!3154) i!1153 k0!1998) j!147) (array!34075 (store (arr!16372 a!3154) i!1153 k0!1998) (size!16736 a!3154)) mask!3216) lt!246944)))

(declare-datatypes ((Unit!16852 0))(
  ( (Unit!16853) )
))
(declare-fun lt!246946 () Unit!16852)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34074 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16852)

(assert (=> b!538647 (= lt!246946 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!246947 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538648 () Bool)

(declare-fun e!312334 () Bool)

(assert (=> b!538648 (= e!312338 e!312334)))

(declare-fun res!334007 () Bool)

(assert (=> b!538648 (=> (not res!334007) (not e!312334))))

(declare-fun lt!246949 () SeekEntryResult!4837)

(assert (=> b!538648 (= res!334007 (= lt!246949 lt!246944))))

(assert (=> b!538648 (= lt!246944 (Intermediate!4837 false resIndex!32 resX!32))))

(assert (=> b!538648 (= lt!246949 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16372 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538649 () Bool)

(declare-fun res!334012 () Bool)

(declare-fun e!312339 () Bool)

(assert (=> b!538649 (=> (not res!334012) (not e!312339))))

(assert (=> b!538649 (= res!334012 (and (= (size!16736 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16736 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16736 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538650 () Bool)

(declare-fun res!334006 () Bool)

(assert (=> b!538650 (=> (not res!334006) (not e!312338))))

(declare-datatypes ((List!10544 0))(
  ( (Nil!10541) (Cons!10540 (h!11483 (_ BitVec 64)) (t!16780 List!10544)) )
))
(declare-fun arrayNoDuplicates!0 (array!34074 (_ BitVec 32) List!10544) Bool)

(assert (=> b!538650 (= res!334006 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10541))))

(declare-fun b!538651 () Bool)

(declare-fun res!334009 () Bool)

(assert (=> b!538651 (=> (not res!334009) (not e!312338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34074 (_ BitVec 32)) Bool)

(assert (=> b!538651 (= res!334009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538652 () Bool)

(declare-fun res!334004 () Bool)

(assert (=> b!538652 (=> (not res!334004) (not e!312339))))

(declare-fun arrayContainsKey!0 (array!34074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538652 (= res!334004 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538653 () Bool)

(declare-fun res!334010 () Bool)

(assert (=> b!538653 (=> (not res!334010) (not e!312339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538653 (= res!334010 (validKeyInArray!0 (select (arr!16372 a!3154) j!147)))))

(declare-fun b!538654 () Bool)

(declare-fun e!312333 () Bool)

(assert (=> b!538654 (= e!312333 e!312340)))

(declare-fun res!334000 () Bool)

(assert (=> b!538654 (=> (not res!334000) (not e!312340))))

(declare-fun lt!246950 () SeekEntryResult!4837)

(declare-fun lt!246945 () SeekEntryResult!4837)

(assert (=> b!538654 (= res!334000 (and (= lt!246950 lt!246944) (= lt!246945 lt!246950)))))

(assert (=> b!538654 (= lt!246950 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246947 (select (arr!16372 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538646 () Bool)

(assert (=> b!538646 (= e!312339 e!312338)))

(declare-fun res!334003 () Bool)

(assert (=> b!538646 (=> (not res!334003) (not e!312338))))

(declare-fun lt!246948 () SeekEntryResult!4837)

(assert (=> b!538646 (= res!334003 (or (= lt!246948 (MissingZero!4837 i!1153)) (= lt!246948 (MissingVacant!4837 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34074 (_ BitVec 32)) SeekEntryResult!4837)

(assert (=> b!538646 (= lt!246948 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun res!334001 () Bool)

(assert (=> start!48906 (=> (not res!334001) (not e!312339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48906 (= res!334001 (validMask!0 mask!3216))))

(assert (=> start!48906 e!312339))

(assert (=> start!48906 true))

(declare-fun array_inv!12146 (array!34074) Bool)

(assert (=> start!48906 (array_inv!12146 a!3154)))

(declare-fun b!538655 () Bool)

(declare-fun res!334013 () Bool)

(assert (=> b!538655 (=> (not res!334013) (not e!312339))))

(assert (=> b!538655 (= res!334013 (validKeyInArray!0 k0!1998))))

(declare-fun b!538656 () Bool)

(declare-fun e!312337 () Bool)

(assert (=> b!538656 (= e!312337 e!312333)))

(declare-fun res!334005 () Bool)

(assert (=> b!538656 (=> (not res!334005) (not e!312333))))

(assert (=> b!538656 (= res!334005 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246947 #b00000000000000000000000000000000) (bvslt lt!246947 (size!16736 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538656 (= lt!246947 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538657 () Bool)

(assert (=> b!538657 (= e!312335 (validKeyInArray!0 (select (store (arr!16372 a!3154) i!1153 k0!1998) j!147)))))

(declare-fun b!538658 () Bool)

(assert (=> b!538658 (= e!312334 e!312337)))

(declare-fun res!334002 () Bool)

(assert (=> b!538658 (=> (not res!334002) (not e!312337))))

(assert (=> b!538658 (= res!334002 (and (= lt!246945 lt!246949) (not (= (select (arr!16372 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16372 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16372 a!3154) index!1177) (select (arr!16372 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538658 (= lt!246945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16372 a!3154) j!147) mask!3216) (select (arr!16372 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48906 res!334001) b!538649))

(assert (= (and b!538649 res!334012) b!538653))

(assert (= (and b!538653 res!334010) b!538655))

(assert (= (and b!538655 res!334013) b!538652))

(assert (= (and b!538652 res!334004) b!538646))

(assert (= (and b!538646 res!334003) b!538651))

(assert (= (and b!538651 res!334009) b!538650))

(assert (= (and b!538650 res!334006) b!538645))

(assert (= (and b!538645 res!334008) b!538648))

(assert (= (and b!538648 res!334007) b!538658))

(assert (= (and b!538658 res!334002) b!538656))

(assert (= (and b!538656 res!334005) b!538654))

(assert (= (and b!538654 res!334000) b!538647))

(assert (= (and b!538647 (not res!334011)) b!538657))

(declare-fun m!517789 () Bool)

(assert (=> b!538652 m!517789))

(declare-fun m!517791 () Bool)

(assert (=> b!538650 m!517791))

(declare-fun m!517793 () Bool)

(assert (=> b!538647 m!517793))

(declare-fun m!517795 () Bool)

(assert (=> b!538647 m!517795))

(assert (=> b!538647 m!517795))

(declare-fun m!517797 () Bool)

(assert (=> b!538647 m!517797))

(declare-fun m!517799 () Bool)

(assert (=> b!538647 m!517799))

(assert (=> b!538657 m!517793))

(assert (=> b!538657 m!517795))

(assert (=> b!538657 m!517795))

(declare-fun m!517801 () Bool)

(assert (=> b!538657 m!517801))

(declare-fun m!517803 () Bool)

(assert (=> b!538654 m!517803))

(assert (=> b!538654 m!517803))

(declare-fun m!517805 () Bool)

(assert (=> b!538654 m!517805))

(declare-fun m!517807 () Bool)

(assert (=> b!538656 m!517807))

(assert (=> b!538653 m!517803))

(assert (=> b!538653 m!517803))

(declare-fun m!517809 () Bool)

(assert (=> b!538653 m!517809))

(declare-fun m!517811 () Bool)

(assert (=> start!48906 m!517811))

(declare-fun m!517813 () Bool)

(assert (=> start!48906 m!517813))

(assert (=> b!538648 m!517803))

(assert (=> b!538648 m!517803))

(declare-fun m!517815 () Bool)

(assert (=> b!538648 m!517815))

(declare-fun m!517817 () Bool)

(assert (=> b!538645 m!517817))

(assert (=> b!538645 m!517803))

(declare-fun m!517819 () Bool)

(assert (=> b!538658 m!517819))

(assert (=> b!538658 m!517803))

(assert (=> b!538658 m!517803))

(declare-fun m!517821 () Bool)

(assert (=> b!538658 m!517821))

(assert (=> b!538658 m!517821))

(assert (=> b!538658 m!517803))

(declare-fun m!517823 () Bool)

(assert (=> b!538658 m!517823))

(declare-fun m!517825 () Bool)

(assert (=> b!538651 m!517825))

(declare-fun m!517827 () Bool)

(assert (=> b!538655 m!517827))

(declare-fun m!517829 () Bool)

(assert (=> b!538646 m!517829))

(check-sat (not b!538648) (not b!538654) (not b!538651) (not b!538658) (not b!538646) (not b!538647) (not b!538653) (not b!538650) (not start!48906) (not b!538657) (not b!538655) (not b!538656) (not b!538652))
(check-sat)
