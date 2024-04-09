; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50784 () Bool)

(assert start!50784)

(declare-fun b!555138 () Bool)

(declare-fun res!347707 () Bool)

(declare-fun e!319983 () Bool)

(assert (=> b!555138 (=> (not res!347707) (not e!319983))))

(declare-datatypes ((array!34963 0))(
  ( (array!34964 (arr!16787 (Array (_ BitVec 32) (_ BitVec 64))) (size!17151 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34963)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555138 (= res!347707 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555139 () Bool)

(declare-fun e!319984 () Bool)

(assert (=> b!555139 (= e!319984 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5243 0))(
  ( (MissingZero!5243 (index!23199 (_ BitVec 32))) (Found!5243 (index!23200 (_ BitVec 32))) (Intermediate!5243 (undefined!6055 Bool) (index!23201 (_ BitVec 32)) (x!52128 (_ BitVec 32))) (Undefined!5243) (MissingVacant!5243 (index!23202 (_ BitVec 32))) )
))
(declare-fun lt!252307 () SeekEntryResult!5243)

(declare-fun lt!252310 () SeekEntryResult!5243)

(assert (=> b!555139 (and (= lt!252310 (Found!5243 j!142)) (or (undefined!6055 lt!252307) (not (is-Intermediate!5243 lt!252307)) (= (select (arr!16787 a!3118) (index!23201 lt!252307)) (select (arr!16787 a!3118) j!142)) (not (= (select (arr!16787 a!3118) (index!23201 lt!252307)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252310 (MissingZero!5243 (index!23201 lt!252307)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34963 (_ BitVec 32)) SeekEntryResult!5243)

(assert (=> b!555139 (= lt!252310 (seekEntryOrOpen!0 (select (arr!16787 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34963 (_ BitVec 32)) Bool)

(assert (=> b!555139 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17260 0))(
  ( (Unit!17261) )
))
(declare-fun lt!252311 () Unit!17260)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17260)

(assert (=> b!555139 (= lt!252311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555140 () Bool)

(declare-fun res!347700 () Bool)

(assert (=> b!555140 (=> (not res!347700) (not e!319983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555140 (= res!347700 (validKeyInArray!0 k!1914))))

(declare-fun b!555141 () Bool)

(declare-fun e!319982 () Bool)

(assert (=> b!555141 (= e!319983 e!319982)))

(declare-fun res!347708 () Bool)

(assert (=> b!555141 (=> (not res!347708) (not e!319982))))

(declare-fun lt!252308 () SeekEntryResult!5243)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555141 (= res!347708 (or (= lt!252308 (MissingZero!5243 i!1132)) (= lt!252308 (MissingVacant!5243 i!1132))))))

(assert (=> b!555141 (= lt!252308 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555142 () Bool)

(declare-fun res!347706 () Bool)

(assert (=> b!555142 (=> (not res!347706) (not e!319983))))

(assert (=> b!555142 (= res!347706 (and (= (size!17151 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17151 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17151 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555143 () Bool)

(assert (=> b!555143 (= e!319982 e!319984)))

(declare-fun res!347704 () Bool)

(assert (=> b!555143 (=> (not res!347704) (not e!319984))))

(declare-fun lt!252309 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34963 (_ BitVec 32)) SeekEntryResult!5243)

(assert (=> b!555143 (= res!347704 (= lt!252307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252309 (select (store (arr!16787 a!3118) i!1132 k!1914) j!142) (array!34964 (store (arr!16787 a!3118) i!1132 k!1914) (size!17151 a!3118)) mask!3119)))))

(declare-fun lt!252306 () (_ BitVec 32))

(assert (=> b!555143 (= lt!252307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252306 (select (arr!16787 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555143 (= lt!252309 (toIndex!0 (select (store (arr!16787 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555143 (= lt!252306 (toIndex!0 (select (arr!16787 a!3118) j!142) mask!3119))))

(declare-fun b!555144 () Bool)

(declare-fun res!347705 () Bool)

(assert (=> b!555144 (=> (not res!347705) (not e!319982))))

(declare-datatypes ((List!10920 0))(
  ( (Nil!10917) (Cons!10916 (h!11901 (_ BitVec 64)) (t!17156 List!10920)) )
))
(declare-fun arrayNoDuplicates!0 (array!34963 (_ BitVec 32) List!10920) Bool)

(assert (=> b!555144 (= res!347705 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10917))))

(declare-fun b!555145 () Bool)

(declare-fun res!347701 () Bool)

(assert (=> b!555145 (=> (not res!347701) (not e!319982))))

(assert (=> b!555145 (= res!347701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!347702 () Bool)

(assert (=> start!50784 (=> (not res!347702) (not e!319983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50784 (= res!347702 (validMask!0 mask!3119))))

(assert (=> start!50784 e!319983))

(assert (=> start!50784 true))

(declare-fun array_inv!12561 (array!34963) Bool)

(assert (=> start!50784 (array_inv!12561 a!3118)))

(declare-fun b!555146 () Bool)

(declare-fun res!347703 () Bool)

(assert (=> b!555146 (=> (not res!347703) (not e!319983))))

(assert (=> b!555146 (= res!347703 (validKeyInArray!0 (select (arr!16787 a!3118) j!142)))))

(assert (= (and start!50784 res!347702) b!555142))

(assert (= (and b!555142 res!347706) b!555146))

(assert (= (and b!555146 res!347703) b!555140))

(assert (= (and b!555140 res!347700) b!555138))

(assert (= (and b!555138 res!347707) b!555141))

(assert (= (and b!555141 res!347708) b!555145))

(assert (= (and b!555145 res!347701) b!555144))

(assert (= (and b!555144 res!347705) b!555143))

(assert (= (and b!555143 res!347704) b!555139))

(declare-fun m!532817 () Bool)

(assert (=> start!50784 m!532817))

(declare-fun m!532819 () Bool)

(assert (=> start!50784 m!532819))

(declare-fun m!532821 () Bool)

(assert (=> b!555140 m!532821))

(declare-fun m!532823 () Bool)

(assert (=> b!555143 m!532823))

(declare-fun m!532825 () Bool)

(assert (=> b!555143 m!532825))

(declare-fun m!532827 () Bool)

(assert (=> b!555143 m!532827))

(declare-fun m!532829 () Bool)

(assert (=> b!555143 m!532829))

(assert (=> b!555143 m!532827))

(declare-fun m!532831 () Bool)

(assert (=> b!555143 m!532831))

(assert (=> b!555143 m!532827))

(assert (=> b!555143 m!532823))

(declare-fun m!532833 () Bool)

(assert (=> b!555143 m!532833))

(assert (=> b!555143 m!532823))

(declare-fun m!532835 () Bool)

(assert (=> b!555143 m!532835))

(assert (=> b!555139 m!532827))

(declare-fun m!532837 () Bool)

(assert (=> b!555139 m!532837))

(declare-fun m!532839 () Bool)

(assert (=> b!555139 m!532839))

(declare-fun m!532841 () Bool)

(assert (=> b!555139 m!532841))

(assert (=> b!555139 m!532827))

(declare-fun m!532843 () Bool)

(assert (=> b!555139 m!532843))

(declare-fun m!532845 () Bool)

(assert (=> b!555138 m!532845))

(declare-fun m!532847 () Bool)

(assert (=> b!555141 m!532847))

(assert (=> b!555146 m!532827))

(assert (=> b!555146 m!532827))

(declare-fun m!532849 () Bool)

(assert (=> b!555146 m!532849))

(declare-fun m!532851 () Bool)

(assert (=> b!555145 m!532851))

(declare-fun m!532853 () Bool)

(assert (=> b!555144 m!532853))

(push 1)

