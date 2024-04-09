; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52784 () Bool)

(assert start!52784)

(declare-fun b!575070 () Bool)

(declare-fun res!363644 () Bool)

(declare-fun e!330890 () Bool)

(assert (=> b!575070 (=> (not res!363644) (not e!330890))))

(declare-datatypes ((array!35883 0))(
  ( (array!35884 (arr!17220 (Array (_ BitVec 32) (_ BitVec 64))) (size!17584 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35883)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35883 (_ BitVec 32)) Bool)

(assert (=> b!575070 (= res!363644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575071 () Bool)

(declare-fun e!330889 () Bool)

(declare-fun e!330892 () Bool)

(assert (=> b!575071 (= e!330889 e!330892)))

(declare-fun res!363640 () Bool)

(assert (=> b!575071 (=> res!363640 e!330892)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!262790 () (_ BitVec 64))

(assert (=> b!575071 (= res!363640 (or (= lt!262790 (select (arr!17220 a!3118) j!142)) (= lt!262790 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5676 0))(
  ( (MissingZero!5676 (index!24931 (_ BitVec 32))) (Found!5676 (index!24932 (_ BitVec 32))) (Intermediate!5676 (undefined!6488 Bool) (index!24933 (_ BitVec 32)) (x!53856 (_ BitVec 32))) (Undefined!5676) (MissingVacant!5676 (index!24934 (_ BitVec 32))) )
))
(declare-fun lt!262788 () SeekEntryResult!5676)

(assert (=> b!575071 (= lt!262790 (select (arr!17220 a!3118) (index!24933 lt!262788)))))

(declare-fun b!575072 () Bool)

(declare-fun e!330893 () Bool)

(assert (=> b!575072 (= e!330892 e!330893)))

(declare-fun res!363637 () Bool)

(assert (=> b!575072 (=> res!363637 e!330893)))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!262794 () SeekEntryResult!5676)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!262795 () SeekEntryResult!5676)

(assert (=> b!575072 (= res!363637 (or (bvslt (index!24933 lt!262788) #b00000000000000000000000000000000) (bvsge (index!24933 lt!262788) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53856 lt!262788) #b01111111111111111111111111111110) (bvslt (x!53856 lt!262788) #b00000000000000000000000000000000) (not (= lt!262790 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17220 a!3118) i!1132 k!1914) (index!24933 lt!262788)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!262795 lt!262794))))))

(declare-fun lt!262792 () SeekEntryResult!5676)

(declare-fun lt!262785 () SeekEntryResult!5676)

(assert (=> b!575072 (= lt!262792 lt!262785)))

(declare-fun lt!262787 () array!35883)

(declare-fun lt!262796 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35883 (_ BitVec 32)) SeekEntryResult!5676)

(assert (=> b!575072 (= lt!262785 (seekKeyOrZeroReturnVacant!0 (x!53856 lt!262788) (index!24933 lt!262788) (index!24933 lt!262788) lt!262796 lt!262787 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35883 (_ BitVec 32)) SeekEntryResult!5676)

(assert (=> b!575072 (= lt!262792 (seekEntryOrOpen!0 lt!262796 lt!262787 mask!3119))))

(declare-fun lt!262791 () SeekEntryResult!5676)

(assert (=> b!575072 (= lt!262791 lt!262795)))

(assert (=> b!575072 (= lt!262795 (seekKeyOrZeroReturnVacant!0 (x!53856 lt!262788) (index!24933 lt!262788) (index!24933 lt!262788) (select (arr!17220 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575073 () Bool)

(declare-fun e!330891 () Bool)

(assert (=> b!575073 (= e!330891 (not e!330889))))

(declare-fun res!363646 () Bool)

(assert (=> b!575073 (=> res!363646 e!330889)))

(assert (=> b!575073 (= res!363646 (or (undefined!6488 lt!262788) (not (is-Intermediate!5676 lt!262788))))))

(assert (=> b!575073 (= lt!262791 lt!262794)))

(assert (=> b!575073 (= lt!262794 (Found!5676 j!142))))

(assert (=> b!575073 (= lt!262791 (seekEntryOrOpen!0 (select (arr!17220 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!575073 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18054 0))(
  ( (Unit!18055) )
))
(declare-fun lt!262786 () Unit!18054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18054)

(assert (=> b!575073 (= lt!262786 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575074 () Bool)

(declare-fun e!330894 () Bool)

(assert (=> b!575074 (= e!330894 e!330890)))

(declare-fun res!363647 () Bool)

(assert (=> b!575074 (=> (not res!363647) (not e!330890))))

(declare-fun lt!262793 () SeekEntryResult!5676)

(assert (=> b!575074 (= res!363647 (or (= lt!262793 (MissingZero!5676 i!1132)) (= lt!262793 (MissingVacant!5676 i!1132))))))

(assert (=> b!575074 (= lt!262793 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575075 () Bool)

(declare-fun res!363636 () Bool)

(assert (=> b!575075 (=> (not res!363636) (not e!330894))))

(declare-fun arrayContainsKey!0 (array!35883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575075 (= res!363636 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575076 () Bool)

(declare-fun res!363638 () Bool)

(assert (=> b!575076 (=> (not res!363638) (not e!330894))))

(assert (=> b!575076 (= res!363638 (and (= (size!17584 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17584 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17584 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575077 () Bool)

(declare-fun res!363641 () Bool)

(assert (=> b!575077 (=> (not res!363641) (not e!330894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575077 (= res!363641 (validKeyInArray!0 (select (arr!17220 a!3118) j!142)))))

(declare-fun b!575078 () Bool)

(assert (=> b!575078 (= e!330893 true)))

(assert (=> b!575078 (= lt!262795 lt!262785)))

(declare-fun lt!262783 () Unit!18054)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35883 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18054)

(assert (=> b!575078 (= lt!262783 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53856 lt!262788) (index!24933 lt!262788) (index!24933 lt!262788) mask!3119))))

(declare-fun b!575079 () Bool)

(declare-fun res!363645 () Bool)

(assert (=> b!575079 (=> (not res!363645) (not e!330890))))

(declare-datatypes ((List!11353 0))(
  ( (Nil!11350) (Cons!11349 (h!12388 (_ BitVec 64)) (t!17589 List!11353)) )
))
(declare-fun arrayNoDuplicates!0 (array!35883 (_ BitVec 32) List!11353) Bool)

(assert (=> b!575079 (= res!363645 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11350))))

(declare-fun res!363639 () Bool)

(assert (=> start!52784 (=> (not res!363639) (not e!330894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52784 (= res!363639 (validMask!0 mask!3119))))

(assert (=> start!52784 e!330894))

(assert (=> start!52784 true))

(declare-fun array_inv!12994 (array!35883) Bool)

(assert (=> start!52784 (array_inv!12994 a!3118)))

(declare-fun b!575080 () Bool)

(declare-fun res!363643 () Bool)

(assert (=> b!575080 (=> (not res!363643) (not e!330894))))

(assert (=> b!575080 (= res!363643 (validKeyInArray!0 k!1914))))

(declare-fun b!575081 () Bool)

(assert (=> b!575081 (= e!330890 e!330891)))

(declare-fun res!363642 () Bool)

(assert (=> b!575081 (=> (not res!363642) (not e!330891))))

(declare-fun lt!262789 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35883 (_ BitVec 32)) SeekEntryResult!5676)

(assert (=> b!575081 (= res!363642 (= lt!262788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262789 lt!262796 lt!262787 mask!3119)))))

(declare-fun lt!262784 () (_ BitVec 32))

(assert (=> b!575081 (= lt!262788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262784 (select (arr!17220 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575081 (= lt!262789 (toIndex!0 lt!262796 mask!3119))))

(assert (=> b!575081 (= lt!262796 (select (store (arr!17220 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575081 (= lt!262784 (toIndex!0 (select (arr!17220 a!3118) j!142) mask!3119))))

(assert (=> b!575081 (= lt!262787 (array!35884 (store (arr!17220 a!3118) i!1132 k!1914) (size!17584 a!3118)))))

(assert (= (and start!52784 res!363639) b!575076))

(assert (= (and b!575076 res!363638) b!575077))

(assert (= (and b!575077 res!363641) b!575080))

(assert (= (and b!575080 res!363643) b!575075))

(assert (= (and b!575075 res!363636) b!575074))

(assert (= (and b!575074 res!363647) b!575070))

(assert (= (and b!575070 res!363644) b!575079))

(assert (= (and b!575079 res!363645) b!575081))

(assert (= (and b!575081 res!363642) b!575073))

(assert (= (and b!575073 (not res!363646)) b!575071))

(assert (= (and b!575071 (not res!363640)) b!575072))

(assert (= (and b!575072 (not res!363637)) b!575078))

(declare-fun m!553903 () Bool)

(assert (=> b!575072 m!553903))

(declare-fun m!553905 () Bool)

(assert (=> b!575072 m!553905))

(declare-fun m!553907 () Bool)

(assert (=> b!575072 m!553907))

(assert (=> b!575072 m!553905))

(declare-fun m!553909 () Bool)

(assert (=> b!575072 m!553909))

(declare-fun m!553911 () Bool)

(assert (=> b!575072 m!553911))

(declare-fun m!553913 () Bool)

(assert (=> b!575072 m!553913))

(declare-fun m!553915 () Bool)

(assert (=> b!575070 m!553915))

(declare-fun m!553917 () Bool)

(assert (=> b!575075 m!553917))

(declare-fun m!553919 () Bool)

(assert (=> b!575080 m!553919))

(declare-fun m!553921 () Bool)

(assert (=> b!575074 m!553921))

(declare-fun m!553923 () Bool)

(assert (=> start!52784 m!553923))

(declare-fun m!553925 () Bool)

(assert (=> start!52784 m!553925))

(assert (=> b!575077 m!553905))

(assert (=> b!575077 m!553905))

(declare-fun m!553927 () Bool)

(assert (=> b!575077 m!553927))

(declare-fun m!553929 () Bool)

(assert (=> b!575078 m!553929))

(assert (=> b!575081 m!553905))

(declare-fun m!553931 () Bool)

(assert (=> b!575081 m!553931))

(declare-fun m!553933 () Bool)

(assert (=> b!575081 m!553933))

(assert (=> b!575081 m!553905))

(declare-fun m!553935 () Bool)

(assert (=> b!575081 m!553935))

(assert (=> b!575081 m!553913))

(declare-fun m!553937 () Bool)

(assert (=> b!575081 m!553937))

(assert (=> b!575081 m!553905))

(declare-fun m!553939 () Bool)

(assert (=> b!575081 m!553939))

(assert (=> b!575073 m!553905))

(assert (=> b!575073 m!553905))

(declare-fun m!553941 () Bool)

(assert (=> b!575073 m!553941))

(declare-fun m!553943 () Bool)

(assert (=> b!575073 m!553943))

(declare-fun m!553945 () Bool)

(assert (=> b!575073 m!553945))

(declare-fun m!553947 () Bool)

(assert (=> b!575079 m!553947))

(assert (=> b!575071 m!553905))

(declare-fun m!553949 () Bool)

(assert (=> b!575071 m!553949))

(push 1)

