; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50688 () Bool)

(assert start!50688)

(declare-fun res!346343 () Bool)

(declare-fun e!319377 () Bool)

(assert (=> start!50688 (=> (not res!346343) (not e!319377))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50688 (= res!346343 (validMask!0 mask!3119))))

(assert (=> start!50688 e!319377))

(assert (=> start!50688 true))

(declare-datatypes ((array!34867 0))(
  ( (array!34868 (arr!16739 (Array (_ BitVec 32) (_ BitVec 64))) (size!17103 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34867)

(declare-fun array_inv!12513 (array!34867) Bool)

(assert (=> start!50688 (array_inv!12513 a!3118)))

(declare-fun b!553778 () Bool)

(declare-fun res!346346 () Bool)

(assert (=> b!553778 (=> (not res!346346) (not e!319377))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553778 (= res!346346 (validKeyInArray!0 (select (arr!16739 a!3118) j!142)))))

(declare-fun b!553779 () Bool)

(declare-fun res!346348 () Bool)

(assert (=> b!553779 (=> (not res!346348) (not e!319377))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!553779 (= res!346348 (validKeyInArray!0 k!1914))))

(declare-fun b!553780 () Bool)

(declare-fun res!346349 () Bool)

(declare-fun e!319381 () Bool)

(assert (=> b!553780 (=> (not res!346349) (not e!319381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34867 (_ BitVec 32)) Bool)

(assert (=> b!553780 (= res!346349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!319378 () Bool)

(declare-fun b!553781 () Bool)

(declare-datatypes ((SeekEntryResult!5195 0))(
  ( (MissingZero!5195 (index!23007 (_ BitVec 32))) (Found!5195 (index!23008 (_ BitVec 32))) (Intermediate!5195 (undefined!6007 Bool) (index!23009 (_ BitVec 32)) (x!51952 (_ BitVec 32))) (Undefined!5195) (MissingVacant!5195 (index!23010 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34867 (_ BitVec 32)) SeekEntryResult!5195)

(assert (=> b!553781 (= e!319378 (= (seekEntryOrOpen!0 (select (arr!16739 a!3118) j!142) a!3118 mask!3119) (Found!5195 j!142)))))

(declare-fun b!553782 () Bool)

(declare-fun e!319379 () Bool)

(assert (=> b!553782 (= e!319381 e!319379)))

(declare-fun res!346342 () Bool)

(assert (=> b!553782 (=> (not res!346342) (not e!319379))))

(declare-fun lt!251607 () SeekEntryResult!5195)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!251609 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34867 (_ BitVec 32)) SeekEntryResult!5195)

(assert (=> b!553782 (= res!346342 (= lt!251607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251609 (select (store (arr!16739 a!3118) i!1132 k!1914) j!142) (array!34868 (store (arr!16739 a!3118) i!1132 k!1914) (size!17103 a!3118)) mask!3119)))))

(declare-fun lt!251605 () (_ BitVec 32))

(assert (=> b!553782 (= lt!251607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251605 (select (arr!16739 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553782 (= lt!251609 (toIndex!0 (select (store (arr!16739 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553782 (= lt!251605 (toIndex!0 (select (arr!16739 a!3118) j!142) mask!3119))))

(declare-fun b!553783 () Bool)

(assert (=> b!553783 (= e!319379 (not (or (not (is-Intermediate!5195 lt!251607)) (undefined!6007 lt!251607) (not (= (select (arr!16739 a!3118) (index!23009 lt!251607)) (select (arr!16739 a!3118) j!142))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!553783 e!319378))

(declare-fun res!346341 () Bool)

(assert (=> b!553783 (=> (not res!346341) (not e!319378))))

(assert (=> b!553783 (= res!346341 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17164 0))(
  ( (Unit!17165) )
))
(declare-fun lt!251606 () Unit!17164)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34867 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17164)

(assert (=> b!553783 (= lt!251606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553784 () Bool)

(declare-fun res!346345 () Bool)

(assert (=> b!553784 (=> (not res!346345) (not e!319381))))

(declare-datatypes ((List!10872 0))(
  ( (Nil!10869) (Cons!10868 (h!11853 (_ BitVec 64)) (t!17108 List!10872)) )
))
(declare-fun arrayNoDuplicates!0 (array!34867 (_ BitVec 32) List!10872) Bool)

(assert (=> b!553784 (= res!346345 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10869))))

(declare-fun b!553785 () Bool)

(declare-fun res!346340 () Bool)

(assert (=> b!553785 (=> (not res!346340) (not e!319377))))

(assert (=> b!553785 (= res!346340 (and (= (size!17103 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17103 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17103 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553786 () Bool)

(declare-fun res!346347 () Bool)

(assert (=> b!553786 (=> (not res!346347) (not e!319377))))

(declare-fun arrayContainsKey!0 (array!34867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553786 (= res!346347 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553787 () Bool)

(assert (=> b!553787 (= e!319377 e!319381)))

(declare-fun res!346344 () Bool)

(assert (=> b!553787 (=> (not res!346344) (not e!319381))))

(declare-fun lt!251608 () SeekEntryResult!5195)

(assert (=> b!553787 (= res!346344 (or (= lt!251608 (MissingZero!5195 i!1132)) (= lt!251608 (MissingVacant!5195 i!1132))))))

(assert (=> b!553787 (= lt!251608 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50688 res!346343) b!553785))

(assert (= (and b!553785 res!346340) b!553778))

(assert (= (and b!553778 res!346346) b!553779))

(assert (= (and b!553779 res!346348) b!553786))

(assert (= (and b!553786 res!346347) b!553787))

(assert (= (and b!553787 res!346344) b!553780))

(assert (= (and b!553780 res!346349) b!553784))

(assert (= (and b!553784 res!346345) b!553782))

(assert (= (and b!553782 res!346342) b!553783))

(assert (= (and b!553783 res!346341) b!553781))

(declare-fun m!531011 () Bool)

(assert (=> b!553779 m!531011))

(declare-fun m!531013 () Bool)

(assert (=> b!553783 m!531013))

(declare-fun m!531015 () Bool)

(assert (=> b!553783 m!531015))

(declare-fun m!531017 () Bool)

(assert (=> b!553783 m!531017))

(declare-fun m!531019 () Bool)

(assert (=> b!553783 m!531019))

(declare-fun m!531021 () Bool)

(assert (=> b!553787 m!531021))

(declare-fun m!531023 () Bool)

(assert (=> b!553780 m!531023))

(assert (=> b!553778 m!531015))

(assert (=> b!553778 m!531015))

(declare-fun m!531025 () Bool)

(assert (=> b!553778 m!531025))

(declare-fun m!531027 () Bool)

(assert (=> start!50688 m!531027))

(declare-fun m!531029 () Bool)

(assert (=> start!50688 m!531029))

(declare-fun m!531031 () Bool)

(assert (=> b!553784 m!531031))

(declare-fun m!531033 () Bool)

(assert (=> b!553786 m!531033))

(assert (=> b!553782 m!531015))

(declare-fun m!531035 () Bool)

(assert (=> b!553782 m!531035))

(assert (=> b!553782 m!531015))

(declare-fun m!531037 () Bool)

(assert (=> b!553782 m!531037))

(declare-fun m!531039 () Bool)

(assert (=> b!553782 m!531039))

(assert (=> b!553782 m!531037))

(declare-fun m!531041 () Bool)

(assert (=> b!553782 m!531041))

(assert (=> b!553782 m!531015))

(declare-fun m!531043 () Bool)

(assert (=> b!553782 m!531043))

(assert (=> b!553782 m!531037))

(declare-fun m!531045 () Bool)

(assert (=> b!553782 m!531045))

(assert (=> b!553781 m!531015))

(assert (=> b!553781 m!531015))

(declare-fun m!531047 () Bool)

(assert (=> b!553781 m!531047))

(push 1)

