; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50856 () Bool)

(assert start!50856)

(declare-fun b!556154 () Bool)

(declare-fun e!320424 () Bool)

(assert (=> b!556154 (= e!320424 (not true))))

(declare-fun e!320425 () Bool)

(assert (=> b!556154 e!320425))

(declare-fun res!348722 () Bool)

(assert (=> b!556154 (=> (not res!348722) (not e!320425))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35035 0))(
  ( (array!35036 (arr!16823 (Array (_ BitVec 32) (_ BitVec 64))) (size!17187 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35035)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35035 (_ BitVec 32)) Bool)

(assert (=> b!556154 (= res!348722 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17332 0))(
  ( (Unit!17333) )
))
(declare-fun lt!252806 () Unit!17332)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17332)

(assert (=> b!556154 (= lt!252806 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556155 () Bool)

(declare-fun res!348723 () Bool)

(assert (=> b!556155 (=> (not res!348723) (not e!320424))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5279 0))(
  ( (MissingZero!5279 (index!23343 (_ BitVec 32))) (Found!5279 (index!23344 (_ BitVec 32))) (Intermediate!5279 (undefined!6091 Bool) (index!23345 (_ BitVec 32)) (x!52260 (_ BitVec 32))) (Undefined!5279) (MissingVacant!5279 (index!23346 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35035 (_ BitVec 32)) SeekEntryResult!5279)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556155 (= res!348723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16823 a!3118) j!142) mask!3119) (select (arr!16823 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16823 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16823 a!3118) i!1132 k!1914) j!142) (array!35036 (store (arr!16823 a!3118) i!1132 k!1914) (size!17187 a!3118)) mask!3119)))))

(declare-fun b!556156 () Bool)

(declare-fun res!348724 () Bool)

(declare-fun e!320423 () Bool)

(assert (=> b!556156 (=> (not res!348724) (not e!320423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556156 (= res!348724 (validKeyInArray!0 k!1914))))

(declare-fun b!556157 () Bool)

(declare-fun res!348720 () Bool)

(assert (=> b!556157 (=> (not res!348720) (not e!320423))))

(assert (=> b!556157 (= res!348720 (and (= (size!17187 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17187 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17187 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556158 () Bool)

(assert (=> b!556158 (= e!320423 e!320424)))

(declare-fun res!348717 () Bool)

(assert (=> b!556158 (=> (not res!348717) (not e!320424))))

(declare-fun lt!252805 () SeekEntryResult!5279)

(assert (=> b!556158 (= res!348717 (or (= lt!252805 (MissingZero!5279 i!1132)) (= lt!252805 (MissingVacant!5279 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35035 (_ BitVec 32)) SeekEntryResult!5279)

(assert (=> b!556158 (= lt!252805 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556159 () Bool)

(declare-fun res!348716 () Bool)

(assert (=> b!556159 (=> (not res!348716) (not e!320424))))

(declare-datatypes ((List!10956 0))(
  ( (Nil!10953) (Cons!10952 (h!11937 (_ BitVec 64)) (t!17192 List!10956)) )
))
(declare-fun arrayNoDuplicates!0 (array!35035 (_ BitVec 32) List!10956) Bool)

(assert (=> b!556159 (= res!348716 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10953))))

(declare-fun b!556160 () Bool)

(assert (=> b!556160 (= e!320425 (= (seekEntryOrOpen!0 (select (arr!16823 a!3118) j!142) a!3118 mask!3119) (Found!5279 j!142)))))

(declare-fun b!556161 () Bool)

(declare-fun res!348721 () Bool)

(assert (=> b!556161 (=> (not res!348721) (not e!320424))))

(assert (=> b!556161 (= res!348721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556162 () Bool)

(declare-fun res!348719 () Bool)

(assert (=> b!556162 (=> (not res!348719) (not e!320423))))

(assert (=> b!556162 (= res!348719 (validKeyInArray!0 (select (arr!16823 a!3118) j!142)))))

(declare-fun b!556163 () Bool)

(declare-fun res!348725 () Bool)

(assert (=> b!556163 (=> (not res!348725) (not e!320423))))

(declare-fun arrayContainsKey!0 (array!35035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556163 (= res!348725 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!348718 () Bool)

(assert (=> start!50856 (=> (not res!348718) (not e!320423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50856 (= res!348718 (validMask!0 mask!3119))))

(assert (=> start!50856 e!320423))

(assert (=> start!50856 true))

(declare-fun array_inv!12597 (array!35035) Bool)

(assert (=> start!50856 (array_inv!12597 a!3118)))

(assert (= (and start!50856 res!348718) b!556157))

(assert (= (and b!556157 res!348720) b!556162))

(assert (= (and b!556162 res!348719) b!556156))

(assert (= (and b!556156 res!348724) b!556163))

(assert (= (and b!556163 res!348725) b!556158))

(assert (= (and b!556158 res!348717) b!556161))

(assert (= (and b!556161 res!348721) b!556159))

(assert (= (and b!556159 res!348716) b!556155))

(assert (= (and b!556155 res!348723) b!556154))

(assert (= (and b!556154 res!348722) b!556160))

(declare-fun m!534163 () Bool)

(assert (=> b!556162 m!534163))

(assert (=> b!556162 m!534163))

(declare-fun m!534165 () Bool)

(assert (=> b!556162 m!534165))

(declare-fun m!534167 () Bool)

(assert (=> b!556158 m!534167))

(declare-fun m!534169 () Bool)

(assert (=> start!50856 m!534169))

(declare-fun m!534171 () Bool)

(assert (=> start!50856 m!534171))

(declare-fun m!534173 () Bool)

(assert (=> b!556163 m!534173))

(declare-fun m!534175 () Bool)

(assert (=> b!556154 m!534175))

(declare-fun m!534177 () Bool)

(assert (=> b!556154 m!534177))

(declare-fun m!534179 () Bool)

(assert (=> b!556159 m!534179))

(assert (=> b!556160 m!534163))

(assert (=> b!556160 m!534163))

(declare-fun m!534181 () Bool)

(assert (=> b!556160 m!534181))

(declare-fun m!534183 () Bool)

(assert (=> b!556161 m!534183))

(declare-fun m!534185 () Bool)

(assert (=> b!556156 m!534185))

(assert (=> b!556155 m!534163))

(declare-fun m!534187 () Bool)

(assert (=> b!556155 m!534187))

(assert (=> b!556155 m!534163))

(declare-fun m!534189 () Bool)

(assert (=> b!556155 m!534189))

(declare-fun m!534191 () Bool)

(assert (=> b!556155 m!534191))

(assert (=> b!556155 m!534189))

(declare-fun m!534193 () Bool)

(assert (=> b!556155 m!534193))

(assert (=> b!556155 m!534187))

(assert (=> b!556155 m!534163))

(declare-fun m!534195 () Bool)

(assert (=> b!556155 m!534195))

(declare-fun m!534197 () Bool)

(assert (=> b!556155 m!534197))

(assert (=> b!556155 m!534189))

(assert (=> b!556155 m!534191))

(push 1)

