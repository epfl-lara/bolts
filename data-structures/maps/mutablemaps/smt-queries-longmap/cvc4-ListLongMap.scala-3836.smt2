; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52788 () Bool)

(assert start!52788)

(declare-fun b!575142 () Bool)

(declare-fun e!330936 () Bool)

(declare-fun e!330935 () Bool)

(assert (=> b!575142 (= e!330936 e!330935)))

(declare-fun res!363715 () Bool)

(assert (=> b!575142 (=> res!363715 e!330935)))

(declare-fun lt!262872 () (_ BitVec 64))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!35887 0))(
  ( (array!35888 (arr!17222 (Array (_ BitVec 32) (_ BitVec 64))) (size!17586 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35887)

(assert (=> b!575142 (= res!363715 (or (= lt!262872 (select (arr!17222 a!3118) j!142)) (= lt!262872 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5678 0))(
  ( (MissingZero!5678 (index!24939 (_ BitVec 32))) (Found!5678 (index!24940 (_ BitVec 32))) (Intermediate!5678 (undefined!6490 Bool) (index!24941 (_ BitVec 32)) (x!53858 (_ BitVec 32))) (Undefined!5678) (MissingVacant!5678 (index!24942 (_ BitVec 32))) )
))
(declare-fun lt!262880 () SeekEntryResult!5678)

(assert (=> b!575142 (= lt!262872 (select (arr!17222 a!3118) (index!24941 lt!262880)))))

(declare-fun b!575143 () Bool)

(declare-fun res!363711 () Bool)

(declare-fun e!330933 () Bool)

(assert (=> b!575143 (=> (not res!363711) (not e!330933))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575143 (= res!363711 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575144 () Bool)

(declare-fun res!363710 () Bool)

(declare-fun e!330937 () Bool)

(assert (=> b!575144 (=> (not res!363710) (not e!330937))))

(declare-datatypes ((List!11355 0))(
  ( (Nil!11352) (Cons!11351 (h!12390 (_ BitVec 64)) (t!17591 List!11355)) )
))
(declare-fun arrayNoDuplicates!0 (array!35887 (_ BitVec 32) List!11355) Bool)

(assert (=> b!575144 (= res!363710 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11352))))

(declare-fun res!363719 () Bool)

(assert (=> start!52788 (=> (not res!363719) (not e!330933))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52788 (= res!363719 (validMask!0 mask!3119))))

(assert (=> start!52788 e!330933))

(assert (=> start!52788 true))

(declare-fun array_inv!12996 (array!35887) Bool)

(assert (=> start!52788 (array_inv!12996 a!3118)))

(declare-fun b!575145 () Bool)

(declare-fun e!330932 () Bool)

(assert (=> b!575145 (= e!330932 true)))

(declare-fun lt!262873 () SeekEntryResult!5678)

(declare-fun lt!262875 () SeekEntryResult!5678)

(assert (=> b!575145 (= lt!262873 lt!262875)))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((Unit!18058 0))(
  ( (Unit!18059) )
))
(declare-fun lt!262879 () Unit!18058)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35887 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18058)

(assert (=> b!575145 (= lt!262879 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53858 lt!262880) (index!24941 lt!262880) (index!24941 lt!262880) mask!3119))))

(declare-fun b!575146 () Bool)

(assert (=> b!575146 (= e!330935 e!330932)))

(declare-fun res!363714 () Bool)

(assert (=> b!575146 (=> res!363714 e!330932)))

(declare-fun lt!262876 () SeekEntryResult!5678)

(assert (=> b!575146 (= res!363714 (or (bvslt (index!24941 lt!262880) #b00000000000000000000000000000000) (bvsge (index!24941 lt!262880) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53858 lt!262880) #b01111111111111111111111111111110) (bvslt (x!53858 lt!262880) #b00000000000000000000000000000000) (not (= lt!262872 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17222 a!3118) i!1132 k!1914) (index!24941 lt!262880)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!262873 lt!262876))))))

(declare-fun lt!262874 () SeekEntryResult!5678)

(assert (=> b!575146 (= lt!262874 lt!262875)))

(declare-fun lt!262869 () array!35887)

(declare-fun lt!262878 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35887 (_ BitVec 32)) SeekEntryResult!5678)

(assert (=> b!575146 (= lt!262875 (seekKeyOrZeroReturnVacant!0 (x!53858 lt!262880) (index!24941 lt!262880) (index!24941 lt!262880) lt!262878 lt!262869 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35887 (_ BitVec 32)) SeekEntryResult!5678)

(assert (=> b!575146 (= lt!262874 (seekEntryOrOpen!0 lt!262878 lt!262869 mask!3119))))

(declare-fun lt!262867 () SeekEntryResult!5678)

(assert (=> b!575146 (= lt!262867 lt!262873)))

(assert (=> b!575146 (= lt!262873 (seekKeyOrZeroReturnVacant!0 (x!53858 lt!262880) (index!24941 lt!262880) (index!24941 lt!262880) (select (arr!17222 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575147 () Bool)

(declare-fun e!330934 () Bool)

(assert (=> b!575147 (= e!330937 e!330934)))

(declare-fun res!363708 () Bool)

(assert (=> b!575147 (=> (not res!363708) (not e!330934))))

(declare-fun lt!262877 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35887 (_ BitVec 32)) SeekEntryResult!5678)

(assert (=> b!575147 (= res!363708 (= lt!262880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262877 lt!262878 lt!262869 mask!3119)))))

(declare-fun lt!262871 () (_ BitVec 32))

(assert (=> b!575147 (= lt!262880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262871 (select (arr!17222 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575147 (= lt!262877 (toIndex!0 lt!262878 mask!3119))))

(assert (=> b!575147 (= lt!262878 (select (store (arr!17222 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575147 (= lt!262871 (toIndex!0 (select (arr!17222 a!3118) j!142) mask!3119))))

(assert (=> b!575147 (= lt!262869 (array!35888 (store (arr!17222 a!3118) i!1132 k!1914) (size!17586 a!3118)))))

(declare-fun b!575148 () Bool)

(assert (=> b!575148 (= e!330934 (not e!330936))))

(declare-fun res!363709 () Bool)

(assert (=> b!575148 (=> res!363709 e!330936)))

(assert (=> b!575148 (= res!363709 (or (undefined!6490 lt!262880) (not (is-Intermediate!5678 lt!262880))))))

(assert (=> b!575148 (= lt!262867 lt!262876)))

(assert (=> b!575148 (= lt!262876 (Found!5678 j!142))))

(assert (=> b!575148 (= lt!262867 (seekEntryOrOpen!0 (select (arr!17222 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35887 (_ BitVec 32)) Bool)

(assert (=> b!575148 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262870 () Unit!18058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35887 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18058)

(assert (=> b!575148 (= lt!262870 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575149 () Bool)

(declare-fun res!363716 () Bool)

(assert (=> b!575149 (=> (not res!363716) (not e!330933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575149 (= res!363716 (validKeyInArray!0 (select (arr!17222 a!3118) j!142)))))

(declare-fun b!575150 () Bool)

(declare-fun res!363713 () Bool)

(assert (=> b!575150 (=> (not res!363713) (not e!330937))))

(assert (=> b!575150 (= res!363713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575151 () Bool)

(assert (=> b!575151 (= e!330933 e!330937)))

(declare-fun res!363718 () Bool)

(assert (=> b!575151 (=> (not res!363718) (not e!330937))))

(declare-fun lt!262868 () SeekEntryResult!5678)

(assert (=> b!575151 (= res!363718 (or (= lt!262868 (MissingZero!5678 i!1132)) (= lt!262868 (MissingVacant!5678 i!1132))))))

(assert (=> b!575151 (= lt!262868 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575152 () Bool)

(declare-fun res!363712 () Bool)

(assert (=> b!575152 (=> (not res!363712) (not e!330933))))

(assert (=> b!575152 (= res!363712 (and (= (size!17586 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17586 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17586 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575153 () Bool)

(declare-fun res!363717 () Bool)

(assert (=> b!575153 (=> (not res!363717) (not e!330933))))

(assert (=> b!575153 (= res!363717 (validKeyInArray!0 k!1914))))

(assert (= (and start!52788 res!363719) b!575152))

(assert (= (and b!575152 res!363712) b!575149))

(assert (= (and b!575149 res!363716) b!575153))

(assert (= (and b!575153 res!363717) b!575143))

(assert (= (and b!575143 res!363711) b!575151))

(assert (= (and b!575151 res!363718) b!575150))

(assert (= (and b!575150 res!363713) b!575144))

(assert (= (and b!575144 res!363710) b!575147))

(assert (= (and b!575147 res!363708) b!575148))

(assert (= (and b!575148 (not res!363709)) b!575142))

(assert (= (and b!575142 (not res!363715)) b!575146))

(assert (= (and b!575146 (not res!363714)) b!575145))

(declare-fun m!553999 () Bool)

(assert (=> b!575150 m!553999))

(declare-fun m!554001 () Bool)

(assert (=> b!575144 m!554001))

(declare-fun m!554003 () Bool)

(assert (=> b!575151 m!554003))

(declare-fun m!554005 () Bool)

(assert (=> b!575142 m!554005))

(declare-fun m!554007 () Bool)

(assert (=> b!575142 m!554007))

(declare-fun m!554009 () Bool)

(assert (=> start!52788 m!554009))

(declare-fun m!554011 () Bool)

(assert (=> start!52788 m!554011))

(declare-fun m!554013 () Bool)

(assert (=> b!575143 m!554013))

(declare-fun m!554015 () Bool)

(assert (=> b!575145 m!554015))

(declare-fun m!554017 () Bool)

(assert (=> b!575146 m!554017))

(assert (=> b!575146 m!554005))

(assert (=> b!575146 m!554005))

(declare-fun m!554019 () Bool)

(assert (=> b!575146 m!554019))

(declare-fun m!554021 () Bool)

(assert (=> b!575146 m!554021))

(declare-fun m!554023 () Bool)

(assert (=> b!575146 m!554023))

(declare-fun m!554025 () Bool)

(assert (=> b!575146 m!554025))

(assert (=> b!575148 m!554005))

(assert (=> b!575148 m!554005))

(declare-fun m!554027 () Bool)

(assert (=> b!575148 m!554027))

(declare-fun m!554029 () Bool)

(assert (=> b!575148 m!554029))

(declare-fun m!554031 () Bool)

(assert (=> b!575148 m!554031))

(declare-fun m!554033 () Bool)

(assert (=> b!575153 m!554033))

(assert (=> b!575149 m!554005))

(assert (=> b!575149 m!554005))

(declare-fun m!554035 () Bool)

(assert (=> b!575149 m!554035))

(assert (=> b!575147 m!554005))

(declare-fun m!554037 () Bool)

(assert (=> b!575147 m!554037))

(declare-fun m!554039 () Bool)

(assert (=> b!575147 m!554039))

(assert (=> b!575147 m!554005))

(declare-fun m!554041 () Bool)

(assert (=> b!575147 m!554041))

(assert (=> b!575147 m!554005))

(declare-fun m!554043 () Bool)

(assert (=> b!575147 m!554043))

(declare-fun m!554045 () Bool)

(assert (=> b!575147 m!554045))

(assert (=> b!575147 m!554023))

(push 1)

(assert (not b!575151))

(assert (not b!575148))

(assert (not b!575143))

(assert (not b!575144))

(assert (not b!575146))

(assert (not b!575153))

(assert (not b!575145))

(assert (not b!575149))

(assert (not b!575147))

