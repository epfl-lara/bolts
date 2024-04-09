; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51492 () Bool)

(assert start!51492)

(declare-fun b!562696 () Bool)

(declare-fun res!354003 () Bool)

(declare-fun e!324295 () Bool)

(assert (=> b!562696 (=> (not res!354003) (not e!324295))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35311 0))(
  ( (array!35312 (arr!16952 (Array (_ BitVec 32) (_ BitVec 64))) (size!17316 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35311)

(assert (=> b!562696 (= res!354003 (and (= (size!17316 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17316 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17316 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562697 () Bool)

(declare-fun e!324290 () Bool)

(declare-fun e!324294 () Bool)

(assert (=> b!562697 (= e!324290 e!324294)))

(declare-fun res!354004 () Bool)

(assert (=> b!562697 (=> res!354004 e!324294)))

(declare-datatypes ((SeekEntryResult!5408 0))(
  ( (MissingZero!5408 (index!23859 (_ BitVec 32))) (Found!5408 (index!23860 (_ BitVec 32))) (Intermediate!5408 (undefined!6220 Bool) (index!23861 (_ BitVec 32)) (x!52778 (_ BitVec 32))) (Undefined!5408) (MissingVacant!5408 (index!23862 (_ BitVec 32))) )
))
(declare-fun lt!256734 () SeekEntryResult!5408)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!256737 () SeekEntryResult!5408)

(declare-fun lt!256726 () (_ BitVec 64))

(declare-fun lt!256732 () SeekEntryResult!5408)

(assert (=> b!562697 (= res!354004 (or (bvslt (index!23861 lt!256734) #b00000000000000000000000000000000) (bvsge (index!23861 lt!256734) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52778 lt!256734) #b01111111111111111111111111111110) (bvslt (x!52778 lt!256734) #b00000000000000000000000000000000) (not (= lt!256726 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16952 a!3118) i!1132 k!1914) (index!23861 lt!256734)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256737 lt!256732))))))

(declare-fun lt!256736 () SeekEntryResult!5408)

(declare-fun lt!256733 () SeekEntryResult!5408)

(assert (=> b!562697 (= lt!256736 lt!256733)))

(declare-fun lt!256735 () (_ BitVec 64))

(declare-fun lt!256739 () array!35311)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35311 (_ BitVec 32)) SeekEntryResult!5408)

(assert (=> b!562697 (= lt!256733 (seekKeyOrZeroReturnVacant!0 (x!52778 lt!256734) (index!23861 lt!256734) (index!23861 lt!256734) lt!256735 lt!256739 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35311 (_ BitVec 32)) SeekEntryResult!5408)

(assert (=> b!562697 (= lt!256736 (seekEntryOrOpen!0 lt!256735 lt!256739 mask!3119))))

(declare-fun lt!256729 () SeekEntryResult!5408)

(assert (=> b!562697 (= lt!256729 lt!256737)))

(assert (=> b!562697 (= lt!256737 (seekKeyOrZeroReturnVacant!0 (x!52778 lt!256734) (index!23861 lt!256734) (index!23861 lt!256734) (select (arr!16952 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562698 () Bool)

(declare-fun res!353999 () Bool)

(declare-fun e!324292 () Bool)

(assert (=> b!562698 (=> (not res!353999) (not e!324292))))

(declare-datatypes ((List!11085 0))(
  ( (Nil!11082) (Cons!11081 (h!12084 (_ BitVec 64)) (t!17321 List!11085)) )
))
(declare-fun arrayNoDuplicates!0 (array!35311 (_ BitVec 32) List!11085) Bool)

(assert (=> b!562698 (= res!353999 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11082))))

(declare-fun b!562699 () Bool)

(declare-fun e!324289 () Bool)

(assert (=> b!562699 (= e!324292 e!324289)))

(declare-fun res!354008 () Bool)

(assert (=> b!562699 (=> (not res!354008) (not e!324289))))

(declare-fun lt!256728 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35311 (_ BitVec 32)) SeekEntryResult!5408)

(assert (=> b!562699 (= res!354008 (= lt!256734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256728 lt!256735 lt!256739 mask!3119)))))

(declare-fun lt!256727 () (_ BitVec 32))

(assert (=> b!562699 (= lt!256734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256727 (select (arr!16952 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562699 (= lt!256728 (toIndex!0 lt!256735 mask!3119))))

(assert (=> b!562699 (= lt!256735 (select (store (arr!16952 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562699 (= lt!256727 (toIndex!0 (select (arr!16952 a!3118) j!142) mask!3119))))

(assert (=> b!562699 (= lt!256739 (array!35312 (store (arr!16952 a!3118) i!1132 k!1914) (size!17316 a!3118)))))

(declare-fun b!562700 () Bool)

(assert (=> b!562700 (= e!324294 true)))

(assert (=> b!562700 (= lt!256737 lt!256733)))

(declare-datatypes ((Unit!17590 0))(
  ( (Unit!17591) )
))
(declare-fun lt!256738 () Unit!17590)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35311 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17590)

(assert (=> b!562700 (= lt!256738 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52778 lt!256734) (index!23861 lt!256734) (index!23861 lt!256734) mask!3119))))

(declare-fun b!562701 () Bool)

(declare-fun e!324291 () Bool)

(assert (=> b!562701 (= e!324289 (not e!324291))))

(declare-fun res!354006 () Bool)

(assert (=> b!562701 (=> res!354006 e!324291)))

(assert (=> b!562701 (= res!354006 (or (undefined!6220 lt!256734) (not (is-Intermediate!5408 lt!256734))))))

(assert (=> b!562701 (= lt!256729 lt!256732)))

(assert (=> b!562701 (= lt!256732 (Found!5408 j!142))))

(assert (=> b!562701 (= lt!256729 (seekEntryOrOpen!0 (select (arr!16952 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35311 (_ BitVec 32)) Bool)

(assert (=> b!562701 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256730 () Unit!17590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17590)

(assert (=> b!562701 (= lt!256730 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562695 () Bool)

(assert (=> b!562695 (= e!324295 e!324292)))

(declare-fun res!354002 () Bool)

(assert (=> b!562695 (=> (not res!354002) (not e!324292))))

(declare-fun lt!256731 () SeekEntryResult!5408)

(assert (=> b!562695 (= res!354002 (or (= lt!256731 (MissingZero!5408 i!1132)) (= lt!256731 (MissingVacant!5408 i!1132))))))

(assert (=> b!562695 (= lt!256731 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!353998 () Bool)

(assert (=> start!51492 (=> (not res!353998) (not e!324295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51492 (= res!353998 (validMask!0 mask!3119))))

(assert (=> start!51492 e!324295))

(assert (=> start!51492 true))

(declare-fun array_inv!12726 (array!35311) Bool)

(assert (=> start!51492 (array_inv!12726 a!3118)))

(declare-fun b!562702 () Bool)

(declare-fun res!354001 () Bool)

(assert (=> b!562702 (=> (not res!354001) (not e!324292))))

(assert (=> b!562702 (= res!354001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562703 () Bool)

(declare-fun res!354005 () Bool)

(assert (=> b!562703 (=> (not res!354005) (not e!324295))))

(declare-fun arrayContainsKey!0 (array!35311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562703 (= res!354005 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562704 () Bool)

(assert (=> b!562704 (= e!324291 e!324290)))

(declare-fun res!354000 () Bool)

(assert (=> b!562704 (=> res!354000 e!324290)))

(assert (=> b!562704 (= res!354000 (or (= lt!256726 (select (arr!16952 a!3118) j!142)) (= lt!256726 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562704 (= lt!256726 (select (arr!16952 a!3118) (index!23861 lt!256734)))))

(declare-fun b!562705 () Bool)

(declare-fun res!354007 () Bool)

(assert (=> b!562705 (=> (not res!354007) (not e!324295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562705 (= res!354007 (validKeyInArray!0 (select (arr!16952 a!3118) j!142)))))

(declare-fun b!562706 () Bool)

(declare-fun res!353997 () Bool)

(assert (=> b!562706 (=> (not res!353997) (not e!324295))))

(assert (=> b!562706 (= res!353997 (validKeyInArray!0 k!1914))))

(assert (= (and start!51492 res!353998) b!562696))

(assert (= (and b!562696 res!354003) b!562705))

(assert (= (and b!562705 res!354007) b!562706))

(assert (= (and b!562706 res!353997) b!562703))

(assert (= (and b!562703 res!354005) b!562695))

(assert (= (and b!562695 res!354002) b!562702))

(assert (= (and b!562702 res!354001) b!562698))

(assert (= (and b!562698 res!353999) b!562699))

(assert (= (and b!562699 res!354008) b!562701))

(assert (= (and b!562701 (not res!354006)) b!562704))

(assert (= (and b!562704 (not res!354000)) b!562697))

(assert (= (and b!562697 (not res!354004)) b!562700))

(declare-fun m!540919 () Bool)

(assert (=> start!51492 m!540919))

(declare-fun m!540921 () Bool)

(assert (=> start!51492 m!540921))

(declare-fun m!540923 () Bool)

(assert (=> b!562705 m!540923))

(assert (=> b!562705 m!540923))

(declare-fun m!540925 () Bool)

(assert (=> b!562705 m!540925))

(declare-fun m!540927 () Bool)

(assert (=> b!562698 m!540927))

(assert (=> b!562701 m!540923))

(assert (=> b!562701 m!540923))

(declare-fun m!540929 () Bool)

(assert (=> b!562701 m!540929))

(declare-fun m!540931 () Bool)

(assert (=> b!562701 m!540931))

(declare-fun m!540933 () Bool)

(assert (=> b!562701 m!540933))

(declare-fun m!540935 () Bool)

(assert (=> b!562702 m!540935))

(declare-fun m!540937 () Bool)

(assert (=> b!562695 m!540937))

(declare-fun m!540939 () Bool)

(assert (=> b!562700 m!540939))

(assert (=> b!562697 m!540923))

(declare-fun m!540941 () Bool)

(assert (=> b!562697 m!540941))

(assert (=> b!562697 m!540923))

(declare-fun m!540943 () Bool)

(assert (=> b!562697 m!540943))

(declare-fun m!540945 () Bool)

(assert (=> b!562697 m!540945))

(declare-fun m!540947 () Bool)

(assert (=> b!562697 m!540947))

(declare-fun m!540949 () Bool)

(assert (=> b!562697 m!540949))

(declare-fun m!540951 () Bool)

(assert (=> b!562703 m!540951))

(assert (=> b!562704 m!540923))

(declare-fun m!540953 () Bool)

(assert (=> b!562704 m!540953))

(declare-fun m!540955 () Bool)

(assert (=> b!562706 m!540955))

(assert (=> b!562699 m!540923))

(declare-fun m!540957 () Bool)

(assert (=> b!562699 m!540957))

(assert (=> b!562699 m!540923))

(declare-fun m!540959 () Bool)

(assert (=> b!562699 m!540959))

(declare-fun m!540961 () Bool)

(assert (=> b!562699 m!540961))

(assert (=> b!562699 m!540923))

(declare-fun m!540963 () Bool)

(assert (=> b!562699 m!540963))

(declare-fun m!540965 () Bool)

(assert (=> b!562699 m!540965))

(assert (=> b!562699 m!540947))

(push 1)

