; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52782 () Bool)

(assert start!52782)

(declare-fun b!575034 () Bool)

(declare-fun e!330871 () Bool)

(declare-fun e!330870 () Bool)

(assert (=> b!575034 (= e!330871 e!330870)))

(declare-fun res!363600 () Bool)

(assert (=> b!575034 (=> res!363600 e!330870)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!262753 () (_ BitVec 64))

(declare-datatypes ((array!35881 0))(
  ( (array!35882 (arr!17219 (Array (_ BitVec 32) (_ BitVec 64))) (size!17583 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35881)

(assert (=> b!575034 (= res!363600 (or (= lt!262753 (select (arr!17219 a!3118) j!142)) (= lt!262753 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5675 0))(
  ( (MissingZero!5675 (index!24927 (_ BitVec 32))) (Found!5675 (index!24928 (_ BitVec 32))) (Intermediate!5675 (undefined!6487 Bool) (index!24929 (_ BitVec 32)) (x!53847 (_ BitVec 32))) (Undefined!5675) (MissingVacant!5675 (index!24930 (_ BitVec 32))) )
))
(declare-fun lt!262749 () SeekEntryResult!5675)

(assert (=> b!575034 (= lt!262753 (select (arr!17219 a!3118) (index!24929 lt!262749)))))

(declare-fun b!575035 () Bool)

(declare-fun res!363603 () Bool)

(declare-fun e!330874 () Bool)

(assert (=> b!575035 (=> (not res!363603) (not e!330874))))

(declare-datatypes ((List!11352 0))(
  ( (Nil!11349) (Cons!11348 (h!12387 (_ BitVec 64)) (t!17588 List!11352)) )
))
(declare-fun arrayNoDuplicates!0 (array!35881 (_ BitVec 32) List!11352) Bool)

(assert (=> b!575035 (= res!363603 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11349))))

(declare-fun res!363610 () Bool)

(declare-fun e!330868 () Bool)

(assert (=> start!52782 (=> (not res!363610) (not e!330868))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52782 (= res!363610 (validMask!0 mask!3119))))

(assert (=> start!52782 e!330868))

(assert (=> start!52782 true))

(declare-fun array_inv!12993 (array!35881) Bool)

(assert (=> start!52782 (array_inv!12993 a!3118)))

(declare-fun lt!262750 () SeekEntryResult!5675)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun b!575036 () Bool)

(declare-fun lt!262752 () SeekEntryResult!5675)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575036 (= e!330870 (or (bvslt (index!24929 lt!262749) #b00000000000000000000000000000000) (bvsge (index!24929 lt!262749) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53847 lt!262749) #b01111111111111111111111111111110) (bvslt (x!53847 lt!262749) #b00000000000000000000000000000000) (not (= lt!262753 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17219 a!3118) i!1132 k!1914) (index!24929 lt!262749)) #b1000000000000000000000000000000000000000000000000000000000000000)) (= lt!262752 lt!262750)))))

(declare-fun e!330872 () Bool)

(assert (=> b!575036 e!330872))

(declare-fun res!363601 () Bool)

(assert (=> b!575036 (=> (not res!363601) (not e!330872))))

(declare-fun lt!262747 () SeekEntryResult!5675)

(assert (=> b!575036 (= res!363601 (= lt!262747 lt!262752))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35881 (_ BitVec 32)) SeekEntryResult!5675)

(assert (=> b!575036 (= lt!262752 (seekKeyOrZeroReturnVacant!0 (x!53847 lt!262749) (index!24929 lt!262749) (index!24929 lt!262749) (select (arr!17219 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575037 () Bool)

(declare-fun lt!262754 () (_ BitVec 64))

(declare-fun lt!262751 () array!35881)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35881 (_ BitVec 32)) SeekEntryResult!5675)

(assert (=> b!575037 (= e!330872 (= (seekEntryOrOpen!0 lt!262754 lt!262751 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53847 lt!262749) (index!24929 lt!262749) (index!24929 lt!262749) lt!262754 lt!262751 mask!3119)))))

(declare-fun b!575038 () Bool)

(declare-fun res!363602 () Bool)

(assert (=> b!575038 (=> (not res!363602) (not e!330868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575038 (= res!363602 (validKeyInArray!0 (select (arr!17219 a!3118) j!142)))))

(declare-fun b!575039 () Bool)

(declare-fun res!363609 () Bool)

(assert (=> b!575039 (=> (not res!363609) (not e!330868))))

(assert (=> b!575039 (= res!363609 (validKeyInArray!0 k!1914))))

(declare-fun b!575040 () Bool)

(declare-fun e!330869 () Bool)

(assert (=> b!575040 (= e!330869 (not e!330871))))

(declare-fun res!363606 () Bool)

(assert (=> b!575040 (=> res!363606 e!330871)))

(assert (=> b!575040 (= res!363606 (or (undefined!6487 lt!262749) (not (is-Intermediate!5675 lt!262749))))))

(assert (=> b!575040 (= lt!262747 lt!262750)))

(assert (=> b!575040 (= lt!262750 (Found!5675 j!142))))

(assert (=> b!575040 (= lt!262747 (seekEntryOrOpen!0 (select (arr!17219 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35881 (_ BitVec 32)) Bool)

(assert (=> b!575040 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18052 0))(
  ( (Unit!18053) )
))
(declare-fun lt!262745 () Unit!18052)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35881 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18052)

(assert (=> b!575040 (= lt!262745 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575041 () Bool)

(declare-fun res!363607 () Bool)

(assert (=> b!575041 (=> (not res!363607) (not e!330868))))

(assert (=> b!575041 (= res!363607 (and (= (size!17583 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17583 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17583 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575042 () Bool)

(declare-fun res!363604 () Bool)

(assert (=> b!575042 (=> (not res!363604) (not e!330874))))

(assert (=> b!575042 (= res!363604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575043 () Bool)

(assert (=> b!575043 (= e!330868 e!330874)))

(declare-fun res!363608 () Bool)

(assert (=> b!575043 (=> (not res!363608) (not e!330874))))

(declare-fun lt!262744 () SeekEntryResult!5675)

(assert (=> b!575043 (= res!363608 (or (= lt!262744 (MissingZero!5675 i!1132)) (= lt!262744 (MissingVacant!5675 i!1132))))))

(assert (=> b!575043 (= lt!262744 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575044 () Bool)

(assert (=> b!575044 (= e!330874 e!330869)))

(declare-fun res!363605 () Bool)

(assert (=> b!575044 (=> (not res!363605) (not e!330869))))

(declare-fun lt!262746 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35881 (_ BitVec 32)) SeekEntryResult!5675)

(assert (=> b!575044 (= res!363605 (= lt!262749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262746 lt!262754 lt!262751 mask!3119)))))

(declare-fun lt!262748 () (_ BitVec 32))

(assert (=> b!575044 (= lt!262749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262748 (select (arr!17219 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575044 (= lt!262746 (toIndex!0 lt!262754 mask!3119))))

(assert (=> b!575044 (= lt!262754 (select (store (arr!17219 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575044 (= lt!262748 (toIndex!0 (select (arr!17219 a!3118) j!142) mask!3119))))

(assert (=> b!575044 (= lt!262751 (array!35882 (store (arr!17219 a!3118) i!1132 k!1914) (size!17583 a!3118)))))

(declare-fun b!575045 () Bool)

(declare-fun res!363611 () Bool)

(assert (=> b!575045 (=> (not res!363611) (not e!330868))))

(declare-fun arrayContainsKey!0 (array!35881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575045 (= res!363611 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52782 res!363610) b!575041))

(assert (= (and b!575041 res!363607) b!575038))

(assert (= (and b!575038 res!363602) b!575039))

(assert (= (and b!575039 res!363609) b!575045))

(assert (= (and b!575045 res!363611) b!575043))

(assert (= (and b!575043 res!363608) b!575042))

(assert (= (and b!575042 res!363604) b!575035))

(assert (= (and b!575035 res!363603) b!575044))

(assert (= (and b!575044 res!363605) b!575040))

(assert (= (and b!575040 (not res!363606)) b!575034))

(assert (= (and b!575034 (not res!363600)) b!575036))

(assert (= (and b!575036 res!363601) b!575037))

(declare-fun m!553857 () Bool)

(assert (=> b!575039 m!553857))

(declare-fun m!553859 () Bool)

(assert (=> b!575042 m!553859))

(declare-fun m!553861 () Bool)

(assert (=> b!575037 m!553861))

(declare-fun m!553863 () Bool)

(assert (=> b!575037 m!553863))

(declare-fun m!553865 () Bool)

(assert (=> b!575044 m!553865))

(declare-fun m!553867 () Bool)

(assert (=> b!575044 m!553867))

(assert (=> b!575044 m!553865))

(declare-fun m!553869 () Bool)

(assert (=> b!575044 m!553869))

(declare-fun m!553871 () Bool)

(assert (=> b!575044 m!553871))

(declare-fun m!553873 () Bool)

(assert (=> b!575044 m!553873))

(assert (=> b!575044 m!553865))

(declare-fun m!553875 () Bool)

(assert (=> b!575044 m!553875))

(declare-fun m!553877 () Bool)

(assert (=> b!575044 m!553877))

(declare-fun m!553879 () Bool)

(assert (=> start!52782 m!553879))

(declare-fun m!553881 () Bool)

(assert (=> start!52782 m!553881))

(declare-fun m!553883 () Bool)

(assert (=> b!575035 m!553883))

(declare-fun m!553885 () Bool)

(assert (=> b!575045 m!553885))

(assert (=> b!575038 m!553865))

(assert (=> b!575038 m!553865))

(declare-fun m!553887 () Bool)

(assert (=> b!575038 m!553887))

(assert (=> b!575040 m!553865))

(assert (=> b!575040 m!553865))

(declare-fun m!553889 () Bool)

(assert (=> b!575040 m!553889))

(declare-fun m!553891 () Bool)

(assert (=> b!575040 m!553891))

(declare-fun m!553893 () Bool)

(assert (=> b!575040 m!553893))

(assert (=> b!575036 m!553873))

(declare-fun m!553895 () Bool)

(assert (=> b!575036 m!553895))

(assert (=> b!575036 m!553865))

(assert (=> b!575036 m!553865))

(declare-fun m!553897 () Bool)

(assert (=> b!575036 m!553897))

(assert (=> b!575034 m!553865))

(declare-fun m!553899 () Bool)

(assert (=> b!575034 m!553899))

(declare-fun m!553901 () Bool)

(assert (=> b!575043 m!553901))

(push 1)

