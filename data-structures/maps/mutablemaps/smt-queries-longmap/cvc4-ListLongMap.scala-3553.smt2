; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48908 () Bool)

(assert start!48908)

(declare-fun b!538687 () Bool)

(declare-fun res!334051 () Bool)

(declare-fun e!312357 () Bool)

(assert (=> b!538687 (=> (not res!334051) (not e!312357))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34076 0))(
  ( (array!34077 (arr!16373 (Array (_ BitVec 32) (_ BitVec 64))) (size!16737 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34076)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538687 (= res!334051 (and (= (size!16737 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16737 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16737 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538688 () Bool)

(declare-fun res!334045 () Bool)

(declare-fun e!312358 () Bool)

(assert (=> b!538688 (=> (not res!334045) (not e!312358))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!538688 (= res!334045 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16737 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16737 a!3154)) (= (select (arr!16373 a!3154) resIndex!32) (select (arr!16373 a!3154) j!147))))))

(declare-fun b!538689 () Bool)

(declare-fun e!312360 () Bool)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538689 (= e!312360 (validKeyInArray!0 (select (store (arr!16373 a!3154) i!1153 k!1998) j!147)))))

(declare-fun b!538690 () Bool)

(declare-fun res!334050 () Bool)

(assert (=> b!538690 (=> (not res!334050) (not e!312358))))

(declare-datatypes ((List!10545 0))(
  ( (Nil!10542) (Cons!10541 (h!11484 (_ BitVec 64)) (t!16781 List!10545)) )
))
(declare-fun arrayNoDuplicates!0 (array!34076 (_ BitVec 32) List!10545) Bool)

(assert (=> b!538690 (= res!334050 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10542))))

(declare-fun b!538691 () Bool)

(declare-fun e!312363 () Bool)

(assert (=> b!538691 (= e!312363 (not e!312360))))

(declare-fun res!334049 () Bool)

(assert (=> b!538691 (=> res!334049 e!312360)))

(assert (=> b!538691 (= res!334049 (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-datatypes ((SeekEntryResult!4838 0))(
  ( (MissingZero!4838 (index!21576 (_ BitVec 32))) (Found!4838 (index!21577 (_ BitVec 32))) (Intermediate!4838 (undefined!5650 Bool) (index!21578 (_ BitVec 32)) (x!50520 (_ BitVec 32))) (Undefined!4838) (MissingVacant!4838 (index!21579 (_ BitVec 32))) )
))
(declare-fun lt!246971 () SeekEntryResult!4838)

(declare-fun lt!246969 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34076 (_ BitVec 32)) SeekEntryResult!4838)

(assert (=> b!538691 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246969 (select (store (arr!16373 a!3154) i!1153 k!1998) j!147) (array!34077 (store (arr!16373 a!3154) i!1153 k!1998) (size!16737 a!3154)) mask!3216) lt!246971)))

(declare-datatypes ((Unit!16854 0))(
  ( (Unit!16855) )
))
(declare-fun lt!246965 () Unit!16854)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34076 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16854)

(assert (=> b!538691 (= lt!246965 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246969 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538692 () Bool)

(declare-fun res!334052 () Bool)

(assert (=> b!538692 (=> (not res!334052) (not e!312357))))

(assert (=> b!538692 (= res!334052 (validKeyInArray!0 (select (arr!16373 a!3154) j!147)))))

(declare-fun res!334053 () Bool)

(assert (=> start!48908 (=> (not res!334053) (not e!312357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48908 (= res!334053 (validMask!0 mask!3216))))

(assert (=> start!48908 e!312357))

(assert (=> start!48908 true))

(declare-fun array_inv!12147 (array!34076) Bool)

(assert (=> start!48908 (array_inv!12147 a!3154)))

(declare-fun b!538693 () Bool)

(declare-fun e!312359 () Bool)

(assert (=> b!538693 (= e!312358 e!312359)))

(declare-fun res!334048 () Bool)

(assert (=> b!538693 (=> (not res!334048) (not e!312359))))

(declare-fun lt!246967 () SeekEntryResult!4838)

(assert (=> b!538693 (= res!334048 (= lt!246967 lt!246971))))

(assert (=> b!538693 (= lt!246971 (Intermediate!4838 false resIndex!32 resX!32))))

(assert (=> b!538693 (= lt!246967 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16373 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538694 () Bool)

(declare-fun res!334046 () Bool)

(assert (=> b!538694 (=> (not res!334046) (not e!312358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34076 (_ BitVec 32)) Bool)

(assert (=> b!538694 (= res!334046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538695 () Bool)

(declare-fun e!312361 () Bool)

(assert (=> b!538695 (= e!312359 e!312361)))

(declare-fun res!334047 () Bool)

(assert (=> b!538695 (=> (not res!334047) (not e!312361))))

(declare-fun lt!246966 () SeekEntryResult!4838)

(assert (=> b!538695 (= res!334047 (and (= lt!246966 lt!246967) (not (= (select (arr!16373 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16373 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16373 a!3154) index!1177) (select (arr!16373 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538695 (= lt!246966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16373 a!3154) j!147) mask!3216) (select (arr!16373 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538696 () Bool)

(declare-fun res!334042 () Bool)

(assert (=> b!538696 (=> (not res!334042) (not e!312357))))

(declare-fun arrayContainsKey!0 (array!34076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538696 (= res!334042 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538697 () Bool)

(assert (=> b!538697 (= e!312357 e!312358)))

(declare-fun res!334044 () Bool)

(assert (=> b!538697 (=> (not res!334044) (not e!312358))))

(declare-fun lt!246968 () SeekEntryResult!4838)

(assert (=> b!538697 (= res!334044 (or (= lt!246968 (MissingZero!4838 i!1153)) (= lt!246968 (MissingVacant!4838 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34076 (_ BitVec 32)) SeekEntryResult!4838)

(assert (=> b!538697 (= lt!246968 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538698 () Bool)

(declare-fun res!334043 () Bool)

(assert (=> b!538698 (=> (not res!334043) (not e!312357))))

(assert (=> b!538698 (= res!334043 (validKeyInArray!0 k!1998))))

(declare-fun b!538699 () Bool)

(declare-fun e!312362 () Bool)

(assert (=> b!538699 (= e!312361 e!312362)))

(declare-fun res!334055 () Bool)

(assert (=> b!538699 (=> (not res!334055) (not e!312362))))

(assert (=> b!538699 (= res!334055 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246969 #b00000000000000000000000000000000) (bvslt lt!246969 (size!16737 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538699 (= lt!246969 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538700 () Bool)

(assert (=> b!538700 (= e!312362 e!312363)))

(declare-fun res!334054 () Bool)

(assert (=> b!538700 (=> (not res!334054) (not e!312363))))

(declare-fun lt!246970 () SeekEntryResult!4838)

(assert (=> b!538700 (= res!334054 (and (= lt!246970 lt!246971) (= lt!246966 lt!246970)))))

(assert (=> b!538700 (= lt!246970 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246969 (select (arr!16373 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48908 res!334053) b!538687))

(assert (= (and b!538687 res!334051) b!538692))

(assert (= (and b!538692 res!334052) b!538698))

(assert (= (and b!538698 res!334043) b!538696))

(assert (= (and b!538696 res!334042) b!538697))

(assert (= (and b!538697 res!334044) b!538694))

(assert (= (and b!538694 res!334046) b!538690))

(assert (= (and b!538690 res!334050) b!538688))

(assert (= (and b!538688 res!334045) b!538693))

(assert (= (and b!538693 res!334048) b!538695))

(assert (= (and b!538695 res!334047) b!538699))

(assert (= (and b!538699 res!334055) b!538700))

(assert (= (and b!538700 res!334054) b!538691))

(assert (= (and b!538691 (not res!334049)) b!538689))

(declare-fun m!517831 () Bool)

(assert (=> b!538694 m!517831))

(declare-fun m!517833 () Bool)

(assert (=> b!538697 m!517833))

(declare-fun m!517835 () Bool)

(assert (=> b!538695 m!517835))

(declare-fun m!517837 () Bool)

(assert (=> b!538695 m!517837))

(assert (=> b!538695 m!517837))

(declare-fun m!517839 () Bool)

(assert (=> b!538695 m!517839))

(assert (=> b!538695 m!517839))

(assert (=> b!538695 m!517837))

(declare-fun m!517841 () Bool)

(assert (=> b!538695 m!517841))

(assert (=> b!538700 m!517837))

(assert (=> b!538700 m!517837))

(declare-fun m!517843 () Bool)

(assert (=> b!538700 m!517843))

(declare-fun m!517845 () Bool)

(assert (=> b!538699 m!517845))

(declare-fun m!517847 () Bool)

(assert (=> b!538696 m!517847))

(assert (=> b!538693 m!517837))

(assert (=> b!538693 m!517837))

(declare-fun m!517849 () Bool)

(assert (=> b!538693 m!517849))

(assert (=> b!538692 m!517837))

(assert (=> b!538692 m!517837))

(declare-fun m!517851 () Bool)

(assert (=> b!538692 m!517851))

(declare-fun m!517853 () Bool)

(assert (=> start!48908 m!517853))

(declare-fun m!517855 () Bool)

(assert (=> start!48908 m!517855))

(declare-fun m!517857 () Bool)

(assert (=> b!538698 m!517857))

(declare-fun m!517859 () Bool)

(assert (=> b!538691 m!517859))

(declare-fun m!517861 () Bool)

(assert (=> b!538691 m!517861))

(assert (=> b!538691 m!517861))

(declare-fun m!517863 () Bool)

(assert (=> b!538691 m!517863))

(declare-fun m!517865 () Bool)

(assert (=> b!538691 m!517865))

(assert (=> b!538689 m!517859))

(assert (=> b!538689 m!517861))

(assert (=> b!538689 m!517861))

(declare-fun m!517867 () Bool)

(assert (=> b!538689 m!517867))

(declare-fun m!517869 () Bool)

(assert (=> b!538688 m!517869))

(assert (=> b!538688 m!517837))

(declare-fun m!517871 () Bool)

(assert (=> b!538690 m!517871))

(push 1)

