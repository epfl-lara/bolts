; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51448 () Bool)

(assert start!51448)

(declare-fun res!353192 () Bool)

(declare-fun e!323810 () Bool)

(assert (=> start!51448 (=> (not res!353192) (not e!323810))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51448 (= res!353192 (validMask!0 mask!3119))))

(assert (=> start!51448 e!323810))

(assert (=> start!51448 true))

(declare-datatypes ((array!35267 0))(
  ( (array!35268 (arr!16930 (Array (_ BitVec 32) (_ BitVec 64))) (size!17294 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35267)

(declare-fun array_inv!12704 (array!35267) Bool)

(assert (=> start!51448 (array_inv!12704 a!3118)))

(declare-fun b!561881 () Bool)

(declare-fun e!323805 () Bool)

(declare-fun e!323808 () Bool)

(assert (=> b!561881 (= e!323805 e!323808)))

(declare-fun res!353188 () Bool)

(assert (=> b!561881 (=> res!353188 e!323808)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255913 () (_ BitVec 64))

(assert (=> b!561881 (= res!353188 (or (= lt!255913 (select (arr!16930 a!3118) j!142)) (= lt!255913 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5386 0))(
  ( (MissingZero!5386 (index!23771 (_ BitVec 32))) (Found!5386 (index!23772 (_ BitVec 32))) (Intermediate!5386 (undefined!6198 Bool) (index!23773 (_ BitVec 32)) (x!52700 (_ BitVec 32))) (Undefined!5386) (MissingVacant!5386 (index!23774 (_ BitVec 32))) )
))
(declare-fun lt!255919 () SeekEntryResult!5386)

(assert (=> b!561881 (= lt!255913 (select (arr!16930 a!3118) (index!23773 lt!255919)))))

(declare-fun b!561882 () Bool)

(declare-fun e!323807 () Bool)

(declare-fun e!323809 () Bool)

(assert (=> b!561882 (= e!323807 e!323809)))

(declare-fun res!353185 () Bool)

(assert (=> b!561882 (=> (not res!353185) (not e!323809))))

(declare-fun lt!255912 () (_ BitVec 32))

(declare-fun lt!255914 () array!35267)

(declare-fun lt!255917 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35267 (_ BitVec 32)) SeekEntryResult!5386)

(assert (=> b!561882 (= res!353185 (= lt!255919 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255912 lt!255917 lt!255914 mask!3119)))))

(declare-fun lt!255918 () (_ BitVec 32))

(assert (=> b!561882 (= lt!255919 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255918 (select (arr!16930 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561882 (= lt!255912 (toIndex!0 lt!255917 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!561882 (= lt!255917 (select (store (arr!16930 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!561882 (= lt!255918 (toIndex!0 (select (arr!16930 a!3118) j!142) mask!3119))))

(assert (=> b!561882 (= lt!255914 (array!35268 (store (arr!16930 a!3118) i!1132 k0!1914) (size!17294 a!3118)))))

(declare-fun b!561883 () Bool)

(assert (=> b!561883 (= e!323809 (not true))))

(declare-fun e!323806 () Bool)

(assert (=> b!561883 e!323806))

(declare-fun res!353194 () Bool)

(assert (=> b!561883 (=> (not res!353194) (not e!323806))))

(declare-fun lt!255916 () SeekEntryResult!5386)

(assert (=> b!561883 (= res!353194 (= lt!255916 (Found!5386 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35267 (_ BitVec 32)) SeekEntryResult!5386)

(assert (=> b!561883 (= lt!255916 (seekEntryOrOpen!0 (select (arr!16930 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35267 (_ BitVec 32)) Bool)

(assert (=> b!561883 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17546 0))(
  ( (Unit!17547) )
))
(declare-fun lt!255920 () Unit!17546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35267 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17546)

(assert (=> b!561883 (= lt!255920 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561884 () Bool)

(assert (=> b!561884 (= e!323810 e!323807)))

(declare-fun res!353184 () Bool)

(assert (=> b!561884 (=> (not res!353184) (not e!323807))))

(declare-fun lt!255915 () SeekEntryResult!5386)

(assert (=> b!561884 (= res!353184 (or (= lt!255915 (MissingZero!5386 i!1132)) (= lt!255915 (MissingVacant!5386 i!1132))))))

(assert (=> b!561884 (= lt!255915 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!561885 () Bool)

(declare-fun res!353187 () Bool)

(assert (=> b!561885 (=> (not res!353187) (not e!323807))))

(assert (=> b!561885 (= res!353187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561886 () Bool)

(declare-fun res!353195 () Bool)

(assert (=> b!561886 (=> (not res!353195) (not e!323810))))

(assert (=> b!561886 (= res!353195 (and (= (size!17294 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17294 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17294 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561887 () Bool)

(assert (=> b!561887 (= e!323806 e!323805)))

(declare-fun res!353183 () Bool)

(assert (=> b!561887 (=> res!353183 e!323805)))

(get-info :version)

(assert (=> b!561887 (= res!353183 (or (undefined!6198 lt!255919) (not ((_ is Intermediate!5386) lt!255919))))))

(declare-fun b!561888 () Bool)

(declare-fun res!353189 () Bool)

(assert (=> b!561888 (=> (not res!353189) (not e!323807))))

(declare-datatypes ((List!11063 0))(
  ( (Nil!11060) (Cons!11059 (h!12062 (_ BitVec 64)) (t!17299 List!11063)) )
))
(declare-fun arrayNoDuplicates!0 (array!35267 (_ BitVec 32) List!11063) Bool)

(assert (=> b!561888 (= res!353189 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11060))))

(declare-fun b!561889 () Bool)

(declare-fun res!353186 () Bool)

(assert (=> b!561889 (=> (not res!353186) (not e!323810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561889 (= res!353186 (validKeyInArray!0 k0!1914))))

(declare-fun b!561890 () Bool)

(declare-fun e!323812 () Bool)

(assert (=> b!561890 (= e!323808 e!323812)))

(declare-fun res!353190 () Bool)

(assert (=> b!561890 (=> (not res!353190) (not e!323812))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35267 (_ BitVec 32)) SeekEntryResult!5386)

(assert (=> b!561890 (= res!353190 (= lt!255916 (seekKeyOrZeroReturnVacant!0 (x!52700 lt!255919) (index!23773 lt!255919) (index!23773 lt!255919) (select (arr!16930 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561891 () Bool)

(declare-fun res!353191 () Bool)

(assert (=> b!561891 (=> (not res!353191) (not e!323810))))

(declare-fun arrayContainsKey!0 (array!35267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561891 (= res!353191 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561892 () Bool)

(assert (=> b!561892 (= e!323812 (= (seekEntryOrOpen!0 lt!255917 lt!255914 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52700 lt!255919) (index!23773 lt!255919) (index!23773 lt!255919) lt!255917 lt!255914 mask!3119)))))

(declare-fun b!561893 () Bool)

(declare-fun res!353193 () Bool)

(assert (=> b!561893 (=> (not res!353193) (not e!323810))))

(assert (=> b!561893 (= res!353193 (validKeyInArray!0 (select (arr!16930 a!3118) j!142)))))

(assert (= (and start!51448 res!353192) b!561886))

(assert (= (and b!561886 res!353195) b!561893))

(assert (= (and b!561893 res!353193) b!561889))

(assert (= (and b!561889 res!353186) b!561891))

(assert (= (and b!561891 res!353191) b!561884))

(assert (= (and b!561884 res!353184) b!561885))

(assert (= (and b!561885 res!353187) b!561888))

(assert (= (and b!561888 res!353189) b!561882))

(assert (= (and b!561882 res!353185) b!561883))

(assert (= (and b!561883 res!353194) b!561887))

(assert (= (and b!561887 (not res!353183)) b!561881))

(assert (= (and b!561881 (not res!353188)) b!561890))

(assert (= (and b!561890 res!353190) b!561892))

(declare-fun m!539895 () Bool)

(assert (=> b!561890 m!539895))

(assert (=> b!561890 m!539895))

(declare-fun m!539897 () Bool)

(assert (=> b!561890 m!539897))

(declare-fun m!539899 () Bool)

(assert (=> b!561891 m!539899))

(declare-fun m!539901 () Bool)

(assert (=> b!561889 m!539901))

(declare-fun m!539903 () Bool)

(assert (=> start!51448 m!539903))

(declare-fun m!539905 () Bool)

(assert (=> start!51448 m!539905))

(assert (=> b!561881 m!539895))

(declare-fun m!539907 () Bool)

(assert (=> b!561881 m!539907))

(declare-fun m!539909 () Bool)

(assert (=> b!561884 m!539909))

(assert (=> b!561883 m!539895))

(assert (=> b!561883 m!539895))

(declare-fun m!539911 () Bool)

(assert (=> b!561883 m!539911))

(declare-fun m!539913 () Bool)

(assert (=> b!561883 m!539913))

(declare-fun m!539915 () Bool)

(assert (=> b!561883 m!539915))

(declare-fun m!539917 () Bool)

(assert (=> b!561888 m!539917))

(assert (=> b!561893 m!539895))

(assert (=> b!561893 m!539895))

(declare-fun m!539919 () Bool)

(assert (=> b!561893 m!539919))

(declare-fun m!539921 () Bool)

(assert (=> b!561885 m!539921))

(declare-fun m!539923 () Bool)

(assert (=> b!561892 m!539923))

(declare-fun m!539925 () Bool)

(assert (=> b!561892 m!539925))

(assert (=> b!561882 m!539895))

(declare-fun m!539927 () Bool)

(assert (=> b!561882 m!539927))

(declare-fun m!539929 () Bool)

(assert (=> b!561882 m!539929))

(assert (=> b!561882 m!539895))

(assert (=> b!561882 m!539895))

(declare-fun m!539931 () Bool)

(assert (=> b!561882 m!539931))

(declare-fun m!539933 () Bool)

(assert (=> b!561882 m!539933))

(declare-fun m!539935 () Bool)

(assert (=> b!561882 m!539935))

(declare-fun m!539937 () Bool)

(assert (=> b!561882 m!539937))

(check-sat (not b!561884) (not b!561885) (not b!561892) (not start!51448) (not b!561891) (not b!561883) (not b!561893) (not b!561888) (not b!561889) (not b!561890) (not b!561882))
(check-sat)
