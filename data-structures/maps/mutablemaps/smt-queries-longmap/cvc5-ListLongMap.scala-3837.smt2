; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52790 () Bool)

(assert start!52790)

(declare-fun b!575178 () Bool)

(declare-fun res!363752 () Bool)

(declare-fun e!330955 () Bool)

(assert (=> b!575178 (=> (not res!363752) (not e!330955))))

(declare-datatypes ((array!35889 0))(
  ( (array!35890 (arr!17223 (Array (_ BitVec 32) (_ BitVec 64))) (size!17587 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35889)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575178 (= res!363752 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575179 () Bool)

(declare-fun res!363751 () Bool)

(assert (=> b!575179 (=> (not res!363751) (not e!330955))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575179 (= res!363751 (validKeyInArray!0 (select (arr!17223 a!3118) j!142)))))

(declare-fun b!575180 () Bool)

(declare-fun e!330956 () Bool)

(assert (=> b!575180 (= e!330955 e!330956)))

(declare-fun res!363753 () Bool)

(assert (=> b!575180 (=> (not res!363753) (not e!330956))))

(declare-datatypes ((SeekEntryResult!5679 0))(
  ( (MissingZero!5679 (index!24943 (_ BitVec 32))) (Found!5679 (index!24944 (_ BitVec 32))) (Intermediate!5679 (undefined!6491 Bool) (index!24945 (_ BitVec 32)) (x!53867 (_ BitVec 32))) (Undefined!5679) (MissingVacant!5679 (index!24946 (_ BitVec 32))) )
))
(declare-fun lt!262914 () SeekEntryResult!5679)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575180 (= res!363753 (or (= lt!262914 (MissingZero!5679 i!1132)) (= lt!262914 (MissingVacant!5679 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35889 (_ BitVec 32)) SeekEntryResult!5679)

(assert (=> b!575180 (= lt!262914 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575181 () Bool)

(declare-fun res!363744 () Bool)

(assert (=> b!575181 (=> (not res!363744) (not e!330955))))

(assert (=> b!575181 (= res!363744 (and (= (size!17587 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17587 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17587 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575182 () Bool)

(declare-fun res!363749 () Bool)

(assert (=> b!575182 (=> (not res!363749) (not e!330955))))

(assert (=> b!575182 (= res!363749 (validKeyInArray!0 k!1914))))

(declare-fun b!575183 () Bool)

(declare-fun e!330954 () Bool)

(assert (=> b!575183 (= e!330956 e!330954)))

(declare-fun res!363755 () Bool)

(assert (=> b!575183 (=> (not res!363755) (not e!330954))))

(declare-fun lt!262915 () SeekEntryResult!5679)

(declare-fun lt!262918 () array!35889)

(declare-fun lt!262916 () (_ BitVec 32))

(declare-fun lt!262912 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35889 (_ BitVec 32)) SeekEntryResult!5679)

(assert (=> b!575183 (= res!363755 (= lt!262915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262916 lt!262912 lt!262918 mask!3119)))))

(declare-fun lt!262910 () (_ BitVec 32))

(assert (=> b!575183 (= lt!262915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262910 (select (arr!17223 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575183 (= lt!262916 (toIndex!0 lt!262912 mask!3119))))

(assert (=> b!575183 (= lt!262912 (select (store (arr!17223 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575183 (= lt!262910 (toIndex!0 (select (arr!17223 a!3118) j!142) mask!3119))))

(assert (=> b!575183 (= lt!262918 (array!35890 (store (arr!17223 a!3118) i!1132 k!1914) (size!17587 a!3118)))))

(declare-fun b!575184 () Bool)

(declare-fun e!330952 () Bool)

(assert (=> b!575184 (= e!330954 (not e!330952))))

(declare-fun res!363750 () Bool)

(assert (=> b!575184 (=> res!363750 e!330952)))

(assert (=> b!575184 (= res!363750 (or (undefined!6491 lt!262915) (not (is-Intermediate!5679 lt!262915))))))

(declare-fun lt!262911 () SeekEntryResult!5679)

(declare-fun lt!262909 () SeekEntryResult!5679)

(assert (=> b!575184 (= lt!262911 lt!262909)))

(assert (=> b!575184 (= lt!262909 (Found!5679 j!142))))

(assert (=> b!575184 (= lt!262911 (seekEntryOrOpen!0 (select (arr!17223 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35889 (_ BitVec 32)) Bool)

(assert (=> b!575184 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18060 0))(
  ( (Unit!18061) )
))
(declare-fun lt!262913 () Unit!18060)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18060)

(assert (=> b!575184 (= lt!262913 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!363748 () Bool)

(assert (=> start!52790 (=> (not res!363748) (not e!330955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52790 (= res!363748 (validMask!0 mask!3119))))

(assert (=> start!52790 e!330955))

(assert (=> start!52790 true))

(declare-fun array_inv!12997 (array!35889) Bool)

(assert (=> start!52790 (array_inv!12997 a!3118)))

(declare-fun b!575185 () Bool)

(declare-fun e!330953 () Bool)

(assert (=> b!575185 (= e!330953 true)))

(declare-fun lt!262921 () SeekEntryResult!5679)

(declare-fun lt!262922 () SeekEntryResult!5679)

(assert (=> b!575185 (= lt!262921 lt!262922)))

(declare-fun lt!262920 () Unit!18060)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35889 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18060)

(assert (=> b!575185 (= lt!262920 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53867 lt!262915) (index!24945 lt!262915) (index!24945 lt!262915) mask!3119))))

(declare-fun b!575186 () Bool)

(declare-fun e!330958 () Bool)

(assert (=> b!575186 (= e!330952 e!330958)))

(declare-fun res!363745 () Bool)

(assert (=> b!575186 (=> res!363745 e!330958)))

(declare-fun lt!262917 () (_ BitVec 64))

(assert (=> b!575186 (= res!363745 (or (= lt!262917 (select (arr!17223 a!3118) j!142)) (= lt!262917 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575186 (= lt!262917 (select (arr!17223 a!3118) (index!24945 lt!262915)))))

(declare-fun b!575187 () Bool)

(assert (=> b!575187 (= e!330958 e!330953)))

(declare-fun res!363746 () Bool)

(assert (=> b!575187 (=> res!363746 e!330953)))

(assert (=> b!575187 (= res!363746 (or (bvslt (index!24945 lt!262915) #b00000000000000000000000000000000) (bvsge (index!24945 lt!262915) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53867 lt!262915) #b01111111111111111111111111111110) (bvslt (x!53867 lt!262915) #b00000000000000000000000000000000) (not (= lt!262917 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17223 a!3118) i!1132 k!1914) (index!24945 lt!262915)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!262921 lt!262909))))))

(declare-fun lt!262919 () SeekEntryResult!5679)

(assert (=> b!575187 (= lt!262919 lt!262922)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35889 (_ BitVec 32)) SeekEntryResult!5679)

(assert (=> b!575187 (= lt!262922 (seekKeyOrZeroReturnVacant!0 (x!53867 lt!262915) (index!24945 lt!262915) (index!24945 lt!262915) lt!262912 lt!262918 mask!3119))))

(assert (=> b!575187 (= lt!262919 (seekEntryOrOpen!0 lt!262912 lt!262918 mask!3119))))

(assert (=> b!575187 (= lt!262911 lt!262921)))

(assert (=> b!575187 (= lt!262921 (seekKeyOrZeroReturnVacant!0 (x!53867 lt!262915) (index!24945 lt!262915) (index!24945 lt!262915) (select (arr!17223 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575188 () Bool)

(declare-fun res!363747 () Bool)

(assert (=> b!575188 (=> (not res!363747) (not e!330956))))

(assert (=> b!575188 (= res!363747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575189 () Bool)

(declare-fun res!363754 () Bool)

(assert (=> b!575189 (=> (not res!363754) (not e!330956))))

(declare-datatypes ((List!11356 0))(
  ( (Nil!11353) (Cons!11352 (h!12391 (_ BitVec 64)) (t!17592 List!11356)) )
))
(declare-fun arrayNoDuplicates!0 (array!35889 (_ BitVec 32) List!11356) Bool)

(assert (=> b!575189 (= res!363754 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11353))))

(assert (= (and start!52790 res!363748) b!575181))

(assert (= (and b!575181 res!363744) b!575179))

(assert (= (and b!575179 res!363751) b!575182))

(assert (= (and b!575182 res!363749) b!575178))

(assert (= (and b!575178 res!363752) b!575180))

(assert (= (and b!575180 res!363753) b!575188))

(assert (= (and b!575188 res!363747) b!575189))

(assert (= (and b!575189 res!363754) b!575183))

(assert (= (and b!575183 res!363755) b!575184))

(assert (= (and b!575184 (not res!363750)) b!575186))

(assert (= (and b!575186 (not res!363745)) b!575187))

(assert (= (and b!575187 (not res!363746)) b!575185))

(declare-fun m!554047 () Bool)

(assert (=> b!575186 m!554047))

(declare-fun m!554049 () Bool)

(assert (=> b!575186 m!554049))

(declare-fun m!554051 () Bool)

(assert (=> b!575182 m!554051))

(assert (=> b!575184 m!554047))

(assert (=> b!575184 m!554047))

(declare-fun m!554053 () Bool)

(assert (=> b!575184 m!554053))

(declare-fun m!554055 () Bool)

(assert (=> b!575184 m!554055))

(declare-fun m!554057 () Bool)

(assert (=> b!575184 m!554057))

(declare-fun m!554059 () Bool)

(assert (=> b!575188 m!554059))

(declare-fun m!554061 () Bool)

(assert (=> b!575180 m!554061))

(assert (=> b!575187 m!554047))

(declare-fun m!554063 () Bool)

(assert (=> b!575187 m!554063))

(declare-fun m!554065 () Bool)

(assert (=> b!575187 m!554065))

(assert (=> b!575187 m!554047))

(declare-fun m!554067 () Bool)

(assert (=> b!575187 m!554067))

(declare-fun m!554069 () Bool)

(assert (=> b!575187 m!554069))

(declare-fun m!554071 () Bool)

(assert (=> b!575187 m!554071))

(declare-fun m!554073 () Bool)

(assert (=> b!575178 m!554073))

(declare-fun m!554075 () Bool)

(assert (=> start!52790 m!554075))

(declare-fun m!554077 () Bool)

(assert (=> start!52790 m!554077))

(declare-fun m!554079 () Bool)

(assert (=> b!575189 m!554079))

(assert (=> b!575179 m!554047))

(assert (=> b!575179 m!554047))

(declare-fun m!554081 () Bool)

(assert (=> b!575179 m!554081))

(assert (=> b!575183 m!554047))

(declare-fun m!554083 () Bool)

(assert (=> b!575183 m!554083))

(assert (=> b!575183 m!554047))

(declare-fun m!554085 () Bool)

(assert (=> b!575183 m!554085))

(declare-fun m!554087 () Bool)

(assert (=> b!575183 m!554087))

(declare-fun m!554089 () Bool)

(assert (=> b!575183 m!554089))

(assert (=> b!575183 m!554071))

(assert (=> b!575183 m!554047))

(declare-fun m!554091 () Bool)

(assert (=> b!575183 m!554091))

(declare-fun m!554093 () Bool)

(assert (=> b!575185 m!554093))

(push 1)

