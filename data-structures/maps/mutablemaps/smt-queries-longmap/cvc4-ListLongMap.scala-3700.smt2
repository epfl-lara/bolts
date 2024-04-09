; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50838 () Bool)

(assert start!50838)

(declare-datatypes ((SeekEntryResult!5270 0))(
  ( (MissingZero!5270 (index!23307 (_ BitVec 32))) (Found!5270 (index!23308 (_ BitVec 32))) (Intermediate!5270 (undefined!6082 Bool) (index!23309 (_ BitVec 32)) (x!52227 (_ BitVec 32))) (Undefined!5270) (MissingVacant!5270 (index!23310 (_ BitVec 32))) )
))
(declare-fun lt!252750 () SeekEntryResult!5270)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!555884 () Bool)

(declare-datatypes ((array!35017 0))(
  ( (array!35018 (arr!16814 (Array (_ BitVec 32) (_ BitVec 64))) (size!17178 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35017)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!320314 () Bool)

(assert (=> b!555884 (= e!320314 (not (or (not (is-Intermediate!5270 lt!252750)) (undefined!6082 lt!252750) (= (select (arr!16814 a!3118) (index!23309 lt!252750)) (select (arr!16814 a!3118) j!142)) (= (select (arr!16814 a!3118) (index!23309 lt!252750)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!320315 () Bool)

(assert (=> b!555884 e!320315))

(declare-fun res!348453 () Bool)

(assert (=> b!555884 (=> (not res!348453) (not e!320315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35017 (_ BitVec 32)) Bool)

(assert (=> b!555884 (= res!348453 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17314 0))(
  ( (Unit!17315) )
))
(declare-fun lt!252751 () Unit!17314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17314)

(assert (=> b!555884 (= lt!252751 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555885 () Bool)

(declare-fun res!348454 () Bool)

(declare-fun e!320316 () Bool)

(assert (=> b!555885 (=> (not res!348454) (not e!320316))))

(declare-datatypes ((List!10947 0))(
  ( (Nil!10944) (Cons!10943 (h!11928 (_ BitVec 64)) (t!17183 List!10947)) )
))
(declare-fun arrayNoDuplicates!0 (array!35017 (_ BitVec 32) List!10947) Bool)

(assert (=> b!555885 (= res!348454 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10944))))

(declare-fun res!348451 () Bool)

(declare-fun e!320313 () Bool)

(assert (=> start!50838 (=> (not res!348451) (not e!320313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50838 (= res!348451 (validMask!0 mask!3119))))

(assert (=> start!50838 e!320313))

(assert (=> start!50838 true))

(declare-fun array_inv!12588 (array!35017) Bool)

(assert (=> start!50838 (array_inv!12588 a!3118)))

(declare-fun b!555886 () Bool)

(declare-fun res!348452 () Bool)

(assert (=> b!555886 (=> (not res!348452) (not e!320313))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555886 (= res!348452 (validKeyInArray!0 k!1914))))

(declare-fun b!555887 () Bool)

(assert (=> b!555887 (= e!320313 e!320316)))

(declare-fun res!348446 () Bool)

(assert (=> b!555887 (=> (not res!348446) (not e!320316))))

(declare-fun lt!252749 () SeekEntryResult!5270)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555887 (= res!348446 (or (= lt!252749 (MissingZero!5270 i!1132)) (= lt!252749 (MissingVacant!5270 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35017 (_ BitVec 32)) SeekEntryResult!5270)

(assert (=> b!555887 (= lt!252749 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555888 () Bool)

(declare-fun res!348450 () Bool)

(assert (=> b!555888 (=> (not res!348450) (not e!320313))))

(assert (=> b!555888 (= res!348450 (and (= (size!17178 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17178 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17178 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555889 () Bool)

(assert (=> b!555889 (= e!320316 e!320314)))

(declare-fun res!348455 () Bool)

(assert (=> b!555889 (=> (not res!348455) (not e!320314))))

(declare-fun lt!252748 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35017 (_ BitVec 32)) SeekEntryResult!5270)

(assert (=> b!555889 (= res!348455 (= lt!252750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252748 (select (store (arr!16814 a!3118) i!1132 k!1914) j!142) (array!35018 (store (arr!16814 a!3118) i!1132 k!1914) (size!17178 a!3118)) mask!3119)))))

(declare-fun lt!252752 () (_ BitVec 32))

(assert (=> b!555889 (= lt!252750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252752 (select (arr!16814 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555889 (= lt!252748 (toIndex!0 (select (store (arr!16814 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555889 (= lt!252752 (toIndex!0 (select (arr!16814 a!3118) j!142) mask!3119))))

(declare-fun b!555890 () Bool)

(declare-fun res!348447 () Bool)

(assert (=> b!555890 (=> (not res!348447) (not e!320313))))

(assert (=> b!555890 (= res!348447 (validKeyInArray!0 (select (arr!16814 a!3118) j!142)))))

(declare-fun b!555891 () Bool)

(assert (=> b!555891 (= e!320315 (= (seekEntryOrOpen!0 (select (arr!16814 a!3118) j!142) a!3118 mask!3119) (Found!5270 j!142)))))

(declare-fun b!555892 () Bool)

(declare-fun res!348449 () Bool)

(assert (=> b!555892 (=> (not res!348449) (not e!320313))))

(declare-fun arrayContainsKey!0 (array!35017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555892 (= res!348449 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555893 () Bool)

(declare-fun res!348448 () Bool)

(assert (=> b!555893 (=> (not res!348448) (not e!320316))))

(assert (=> b!555893 (= res!348448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50838 res!348451) b!555888))

(assert (= (and b!555888 res!348450) b!555890))

(assert (= (and b!555890 res!348447) b!555886))

(assert (= (and b!555886 res!348452) b!555892))

(assert (= (and b!555892 res!348449) b!555887))

(assert (= (and b!555887 res!348446) b!555893))

(assert (= (and b!555893 res!348448) b!555885))

(assert (= (and b!555885 res!348454) b!555889))

(assert (= (and b!555889 res!348455) b!555884))

(assert (= (and b!555884 res!348453) b!555891))

(declare-fun m!533837 () Bool)

(assert (=> b!555884 m!533837))

(declare-fun m!533839 () Bool)

(assert (=> b!555884 m!533839))

(declare-fun m!533841 () Bool)

(assert (=> b!555884 m!533841))

(declare-fun m!533843 () Bool)

(assert (=> b!555884 m!533843))

(declare-fun m!533845 () Bool)

(assert (=> start!50838 m!533845))

(declare-fun m!533847 () Bool)

(assert (=> start!50838 m!533847))

(declare-fun m!533849 () Bool)

(assert (=> b!555892 m!533849))

(assert (=> b!555890 m!533839))

(assert (=> b!555890 m!533839))

(declare-fun m!533851 () Bool)

(assert (=> b!555890 m!533851))

(declare-fun m!533853 () Bool)

(assert (=> b!555893 m!533853))

(assert (=> b!555889 m!533839))

(declare-fun m!533855 () Bool)

(assert (=> b!555889 m!533855))

(assert (=> b!555889 m!533839))

(declare-fun m!533857 () Bool)

(assert (=> b!555889 m!533857))

(declare-fun m!533859 () Bool)

(assert (=> b!555889 m!533859))

(assert (=> b!555889 m!533857))

(declare-fun m!533861 () Bool)

(assert (=> b!555889 m!533861))

(assert (=> b!555889 m!533857))

(declare-fun m!533863 () Bool)

(assert (=> b!555889 m!533863))

(assert (=> b!555889 m!533839))

(declare-fun m!533865 () Bool)

(assert (=> b!555889 m!533865))

(declare-fun m!533867 () Bool)

(assert (=> b!555885 m!533867))

(assert (=> b!555891 m!533839))

(assert (=> b!555891 m!533839))

(declare-fun m!533869 () Bool)

(assert (=> b!555891 m!533869))

(declare-fun m!533871 () Bool)

(assert (=> b!555887 m!533871))

(declare-fun m!533873 () Bool)

(assert (=> b!555886 m!533873))

(push 1)

(assert (not b!555884))

