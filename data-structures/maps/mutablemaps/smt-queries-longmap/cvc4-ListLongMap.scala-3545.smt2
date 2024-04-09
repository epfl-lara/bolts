; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48860 () Bool)

(assert start!48860)

(declare-fun b!537743 () Bool)

(declare-fun e!311885 () Bool)

(declare-fun e!311887 () Bool)

(assert (=> b!537743 (= e!311885 e!311887)))

(declare-fun res!333107 () Bool)

(assert (=> b!537743 (=> (not res!333107) (not e!311887))))

(declare-fun lt!246521 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((array!34028 0))(
  ( (array!34029 (arr!16349 (Array (_ BitVec 32) (_ BitVec 64))) (size!16713 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34028)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537743 (= res!333107 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246521 #b00000000000000000000000000000000) (bvslt lt!246521 (size!16713 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537743 (= lt!246521 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537744 () Bool)

(assert (=> b!537744 (= e!311887 false)))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4814 0))(
  ( (MissingZero!4814 (index!21480 (_ BitVec 32))) (Found!4814 (index!21481 (_ BitVec 32))) (Intermediate!4814 (undefined!5626 Bool) (index!21482 (_ BitVec 32)) (x!50432 (_ BitVec 32))) (Undefined!4814) (MissingVacant!4814 (index!21483 (_ BitVec 32))) )
))
(declare-fun lt!246518 () SeekEntryResult!4814)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34028 (_ BitVec 32)) SeekEntryResult!4814)

(assert (=> b!537744 (= lt!246518 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246521 (select (arr!16349 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537745 () Bool)

(declare-fun res!333109 () Bool)

(assert (=> b!537745 (=> (not res!333109) (not e!311885))))

(declare-fun lt!246520 () SeekEntryResult!4814)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537745 (= res!333109 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16349 a!3154) j!147) mask!3216) (select (arr!16349 a!3154) j!147) a!3154 mask!3216) lt!246520))))

(declare-fun b!537746 () Bool)

(declare-fun res!333099 () Bool)

(declare-fun e!311883 () Bool)

(assert (=> b!537746 (=> (not res!333099) (not e!311883))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537746 (= res!333099 (and (= (size!16713 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16713 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16713 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537747 () Bool)

(declare-fun res!333105 () Bool)

(assert (=> b!537747 (=> (not res!333105) (not e!311883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537747 (= res!333105 (validKeyInArray!0 (select (arr!16349 a!3154) j!147)))))

(declare-fun b!537748 () Bool)

(declare-fun res!333102 () Bool)

(assert (=> b!537748 (=> (not res!333102) (not e!311883))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537748 (= res!333102 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537749 () Bool)

(declare-fun e!311886 () Bool)

(assert (=> b!537749 (= e!311883 e!311886)))

(declare-fun res!333100 () Bool)

(assert (=> b!537749 (=> (not res!333100) (not e!311886))))

(declare-fun lt!246519 () SeekEntryResult!4814)

(assert (=> b!537749 (= res!333100 (or (= lt!246519 (MissingZero!4814 i!1153)) (= lt!246519 (MissingVacant!4814 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34028 (_ BitVec 32)) SeekEntryResult!4814)

(assert (=> b!537749 (= lt!246519 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!333108 () Bool)

(assert (=> start!48860 (=> (not res!333108) (not e!311883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48860 (= res!333108 (validMask!0 mask!3216))))

(assert (=> start!48860 e!311883))

(assert (=> start!48860 true))

(declare-fun array_inv!12123 (array!34028) Bool)

(assert (=> start!48860 (array_inv!12123 a!3154)))

(declare-fun b!537750 () Bool)

(declare-fun res!333104 () Bool)

(assert (=> b!537750 (=> (not res!333104) (not e!311886))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537750 (= res!333104 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16713 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16713 a!3154)) (= (select (arr!16349 a!3154) resIndex!32) (select (arr!16349 a!3154) j!147))))))

(declare-fun b!537751 () Bool)

(declare-fun res!333101 () Bool)

(assert (=> b!537751 (=> (not res!333101) (not e!311885))))

(assert (=> b!537751 (= res!333101 (and (not (= (select (arr!16349 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16349 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16349 a!3154) index!1177) (select (arr!16349 a!3154) j!147)))))))

(declare-fun b!537752 () Bool)

(declare-fun res!333098 () Bool)

(assert (=> b!537752 (=> (not res!333098) (not e!311883))))

(assert (=> b!537752 (= res!333098 (validKeyInArray!0 k!1998))))

(declare-fun b!537753 () Bool)

(assert (=> b!537753 (= e!311886 e!311885)))

(declare-fun res!333103 () Bool)

(assert (=> b!537753 (=> (not res!333103) (not e!311885))))

(assert (=> b!537753 (= res!333103 (= lt!246520 (Intermediate!4814 false resIndex!32 resX!32)))))

(assert (=> b!537753 (= lt!246520 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16349 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537754 () Bool)

(declare-fun res!333106 () Bool)

(assert (=> b!537754 (=> (not res!333106) (not e!311886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34028 (_ BitVec 32)) Bool)

(assert (=> b!537754 (= res!333106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537755 () Bool)

(declare-fun res!333110 () Bool)

(assert (=> b!537755 (=> (not res!333110) (not e!311886))))

(declare-datatypes ((List!10521 0))(
  ( (Nil!10518) (Cons!10517 (h!11460 (_ BitVec 64)) (t!16757 List!10521)) )
))
(declare-fun arrayNoDuplicates!0 (array!34028 (_ BitVec 32) List!10521) Bool)

(assert (=> b!537755 (= res!333110 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10518))))

(assert (= (and start!48860 res!333108) b!537746))

(assert (= (and b!537746 res!333099) b!537747))

(assert (= (and b!537747 res!333105) b!537752))

(assert (= (and b!537752 res!333098) b!537748))

(assert (= (and b!537748 res!333102) b!537749))

(assert (= (and b!537749 res!333100) b!537754))

(assert (= (and b!537754 res!333106) b!537755))

(assert (= (and b!537755 res!333110) b!537750))

(assert (= (and b!537750 res!333104) b!537753))

(assert (= (and b!537753 res!333103) b!537745))

(assert (= (and b!537745 res!333109) b!537751))

(assert (= (and b!537751 res!333101) b!537743))

(assert (= (and b!537743 res!333107) b!537744))

(declare-fun m!516923 () Bool)

(assert (=> b!537753 m!516923))

(assert (=> b!537753 m!516923))

(declare-fun m!516925 () Bool)

(assert (=> b!537753 m!516925))

(declare-fun m!516927 () Bool)

(assert (=> b!537750 m!516927))

(assert (=> b!537750 m!516923))

(declare-fun m!516929 () Bool)

(assert (=> b!537752 m!516929))

(declare-fun m!516931 () Bool)

(assert (=> b!537743 m!516931))

(assert (=> b!537745 m!516923))

(assert (=> b!537745 m!516923))

(declare-fun m!516933 () Bool)

(assert (=> b!537745 m!516933))

(assert (=> b!537745 m!516933))

(assert (=> b!537745 m!516923))

(declare-fun m!516935 () Bool)

(assert (=> b!537745 m!516935))

(assert (=> b!537747 m!516923))

(assert (=> b!537747 m!516923))

(declare-fun m!516937 () Bool)

(assert (=> b!537747 m!516937))

(declare-fun m!516939 () Bool)

(assert (=> b!537751 m!516939))

(assert (=> b!537751 m!516923))

(declare-fun m!516941 () Bool)

(assert (=> b!537748 m!516941))

(declare-fun m!516943 () Bool)

(assert (=> b!537755 m!516943))

(declare-fun m!516945 () Bool)

(assert (=> b!537749 m!516945))

(declare-fun m!516947 () Bool)

(assert (=> b!537754 m!516947))

(assert (=> b!537744 m!516923))

(assert (=> b!537744 m!516923))

(declare-fun m!516949 () Bool)

(assert (=> b!537744 m!516949))

(declare-fun m!516951 () Bool)

(assert (=> start!48860 m!516951))

(declare-fun m!516953 () Bool)

(assert (=> start!48860 m!516953))

(push 1)

(assert (not b!537754))

(assert (not b!537749))

(assert (not b!537748))

(assert (not b!537747))

