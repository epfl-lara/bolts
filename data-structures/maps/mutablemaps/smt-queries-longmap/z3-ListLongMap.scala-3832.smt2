; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52630 () Bool)

(assert start!52630)

(declare-fun b!573890 () Bool)

(declare-fun res!363005 () Bool)

(declare-fun e!330175 () Bool)

(assert (=> b!573890 (=> (not res!363005) (not e!330175))))

(declare-datatypes ((array!35855 0))(
  ( (array!35856 (arr!17209 (Array (_ BitVec 32) (_ BitVec 64))) (size!17573 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35855)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!573890 (= res!363005 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!573891 () Bool)

(declare-fun e!330177 () Bool)

(assert (=> b!573891 (= e!330175 e!330177)))

(declare-fun res!363012 () Bool)

(assert (=> b!573891 (=> (not res!363012) (not e!330177))))

(declare-datatypes ((SeekEntryResult!5665 0))(
  ( (MissingZero!5665 (index!24887 (_ BitVec 32))) (Found!5665 (index!24888 (_ BitVec 32))) (Intermediate!5665 (undefined!6477 Bool) (index!24889 (_ BitVec 32)) (x!53795 (_ BitVec 32))) (Undefined!5665) (MissingVacant!5665 (index!24890 (_ BitVec 32))) )
))
(declare-fun lt!262136 () SeekEntryResult!5665)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!573891 (= res!363012 (or (= lt!262136 (MissingZero!5665 i!1132)) (= lt!262136 (MissingVacant!5665 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35855 (_ BitVec 32)) SeekEntryResult!5665)

(assert (=> b!573891 (= lt!262136 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun lt!262138 () SeekEntryResult!5665)

(declare-fun lt!262137 () (_ BitVec 64))

(declare-fun b!573892 () Bool)

(declare-fun e!330179 () Bool)

(declare-fun lt!262134 () array!35855)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35855 (_ BitVec 32)) SeekEntryResult!5665)

(assert (=> b!573892 (= e!330179 (= (seekEntryOrOpen!0 lt!262137 lt!262134 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53795 lt!262138) (index!24889 lt!262138) (index!24889 lt!262138) lt!262137 lt!262134 mask!3119)))))

(declare-fun b!573893 () Bool)

(declare-fun e!330180 () Bool)

(declare-fun e!330176 () Bool)

(assert (=> b!573893 (= e!330180 e!330176)))

(declare-fun res!363009 () Bool)

(assert (=> b!573893 (=> res!363009 e!330176)))

(get-info :version)

(assert (=> b!573893 (= res!363009 (or (undefined!6477 lt!262138) (not ((_ is Intermediate!5665) lt!262138))))))

(declare-fun b!573894 () Bool)

(declare-fun e!330178 () Bool)

(assert (=> b!573894 (= e!330178 e!330179)))

(declare-fun res!363013 () Bool)

(assert (=> b!573894 (=> (not res!363013) (not e!330179))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!262142 () SeekEntryResult!5665)

(assert (=> b!573894 (= res!363013 (= lt!262142 (seekKeyOrZeroReturnVacant!0 (x!53795 lt!262138) (index!24889 lt!262138) (index!24889 lt!262138) (select (arr!17209 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!573895 () Bool)

(declare-fun res!363010 () Bool)

(assert (=> b!573895 (=> (not res!363010) (not e!330175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!573895 (= res!363010 (validKeyInArray!0 (select (arr!17209 a!3118) j!142)))))

(declare-fun b!573896 () Bool)

(declare-fun e!330174 () Bool)

(assert (=> b!573896 (= e!330177 e!330174)))

(declare-fun res!363008 () Bool)

(assert (=> b!573896 (=> (not res!363008) (not e!330174))))

(declare-fun lt!262139 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35855 (_ BitVec 32)) SeekEntryResult!5665)

(assert (=> b!573896 (= res!363008 (= lt!262138 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262139 lt!262137 lt!262134 mask!3119)))))

(declare-fun lt!262141 () (_ BitVec 32))

(assert (=> b!573896 (= lt!262138 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262141 (select (arr!17209 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573896 (= lt!262139 (toIndex!0 lt!262137 mask!3119))))

(assert (=> b!573896 (= lt!262137 (select (store (arr!17209 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!573896 (= lt!262141 (toIndex!0 (select (arr!17209 a!3118) j!142) mask!3119))))

(assert (=> b!573896 (= lt!262134 (array!35856 (store (arr!17209 a!3118) i!1132 k0!1914) (size!17573 a!3118)))))

(declare-fun b!573897 () Bool)

(declare-fun res!363004 () Bool)

(assert (=> b!573897 (=> (not res!363004) (not e!330175))))

(assert (=> b!573897 (= res!363004 (validKeyInArray!0 k0!1914))))

(declare-fun b!573898 () Bool)

(declare-fun res!363014 () Bool)

(assert (=> b!573898 (=> (not res!363014) (not e!330177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35855 (_ BitVec 32)) Bool)

(assert (=> b!573898 (= res!363014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!363006 () Bool)

(assert (=> start!52630 (=> (not res!363006) (not e!330175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52630 (= res!363006 (validMask!0 mask!3119))))

(assert (=> start!52630 e!330175))

(assert (=> start!52630 true))

(declare-fun array_inv!12983 (array!35855) Bool)

(assert (=> start!52630 (array_inv!12983 a!3118)))

(declare-fun b!573899 () Bool)

(declare-fun res!363003 () Bool)

(assert (=> b!573899 (=> (not res!363003) (not e!330175))))

(assert (=> b!573899 (= res!363003 (and (= (size!17573 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17573 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17573 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!573900 () Bool)

(assert (=> b!573900 (= e!330174 (not true))))

(assert (=> b!573900 e!330180))

(declare-fun res!363002 () Bool)

(assert (=> b!573900 (=> (not res!363002) (not e!330180))))

(assert (=> b!573900 (= res!363002 (= lt!262142 (Found!5665 j!142)))))

(assert (=> b!573900 (= lt!262142 (seekEntryOrOpen!0 (select (arr!17209 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!573900 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18032 0))(
  ( (Unit!18033) )
))
(declare-fun lt!262135 () Unit!18032)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35855 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18032)

(assert (=> b!573900 (= lt!262135 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!573901 () Bool)

(declare-fun res!363011 () Bool)

(assert (=> b!573901 (=> (not res!363011) (not e!330177))))

(declare-datatypes ((List!11342 0))(
  ( (Nil!11339) (Cons!11338 (h!12371 (_ BitVec 64)) (t!17578 List!11342)) )
))
(declare-fun arrayNoDuplicates!0 (array!35855 (_ BitVec 32) List!11342) Bool)

(assert (=> b!573901 (= res!363011 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11339))))

(declare-fun b!573902 () Bool)

(assert (=> b!573902 (= e!330176 e!330178)))

(declare-fun res!363007 () Bool)

(assert (=> b!573902 (=> res!363007 e!330178)))

(declare-fun lt!262140 () (_ BitVec 64))

(assert (=> b!573902 (= res!363007 (or (= lt!262140 (select (arr!17209 a!3118) j!142)) (= lt!262140 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!573902 (= lt!262140 (select (arr!17209 a!3118) (index!24889 lt!262138)))))

(assert (= (and start!52630 res!363006) b!573899))

(assert (= (and b!573899 res!363003) b!573895))

(assert (= (and b!573895 res!363010) b!573897))

(assert (= (and b!573897 res!363004) b!573890))

(assert (= (and b!573890 res!363005) b!573891))

(assert (= (and b!573891 res!363012) b!573898))

(assert (= (and b!573898 res!363014) b!573901))

(assert (= (and b!573901 res!363011) b!573896))

(assert (= (and b!573896 res!363008) b!573900))

(assert (= (and b!573900 res!363002) b!573893))

(assert (= (and b!573893 (not res!363009)) b!573902))

(assert (= (and b!573902 (not res!363007)) b!573894))

(assert (= (and b!573894 res!363013) b!573892))

(declare-fun m!552831 () Bool)

(assert (=> b!573901 m!552831))

(declare-fun m!552833 () Bool)

(assert (=> b!573891 m!552833))

(declare-fun m!552835 () Bool)

(assert (=> b!573897 m!552835))

(declare-fun m!552837 () Bool)

(assert (=> b!573892 m!552837))

(declare-fun m!552839 () Bool)

(assert (=> b!573892 m!552839))

(declare-fun m!552841 () Bool)

(assert (=> b!573894 m!552841))

(assert (=> b!573894 m!552841))

(declare-fun m!552843 () Bool)

(assert (=> b!573894 m!552843))

(assert (=> b!573895 m!552841))

(assert (=> b!573895 m!552841))

(declare-fun m!552845 () Bool)

(assert (=> b!573895 m!552845))

(declare-fun m!552847 () Bool)

(assert (=> start!52630 m!552847))

(declare-fun m!552849 () Bool)

(assert (=> start!52630 m!552849))

(declare-fun m!552851 () Bool)

(assert (=> b!573890 m!552851))

(assert (=> b!573896 m!552841))

(declare-fun m!552853 () Bool)

(assert (=> b!573896 m!552853))

(assert (=> b!573896 m!552841))

(declare-fun m!552855 () Bool)

(assert (=> b!573896 m!552855))

(assert (=> b!573896 m!552841))

(declare-fun m!552857 () Bool)

(assert (=> b!573896 m!552857))

(declare-fun m!552859 () Bool)

(assert (=> b!573896 m!552859))

(declare-fun m!552861 () Bool)

(assert (=> b!573896 m!552861))

(declare-fun m!552863 () Bool)

(assert (=> b!573896 m!552863))

(declare-fun m!552865 () Bool)

(assert (=> b!573898 m!552865))

(assert (=> b!573900 m!552841))

(assert (=> b!573900 m!552841))

(declare-fun m!552867 () Bool)

(assert (=> b!573900 m!552867))

(declare-fun m!552869 () Bool)

(assert (=> b!573900 m!552869))

(declare-fun m!552871 () Bool)

(assert (=> b!573900 m!552871))

(assert (=> b!573902 m!552841))

(declare-fun m!552873 () Bool)

(assert (=> b!573902 m!552873))

(check-sat (not start!52630) (not b!573891) (not b!573894) (not b!573900) (not b!573895) (not b!573890) (not b!573896) (not b!573892) (not b!573898) (not b!573901) (not b!573897))
(check-sat)
