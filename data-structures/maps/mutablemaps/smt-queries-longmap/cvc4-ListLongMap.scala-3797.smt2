; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52158 () Bool)

(assert start!52158)

(declare-fun res!359022 () Bool)

(declare-fun e!327301 () Bool)

(assert (=> start!52158 (=> (not res!359022) (not e!327301))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52158 (= res!359022 (validMask!0 mask!3119))))

(assert (=> start!52158 e!327301))

(assert (=> start!52158 true))

(declare-datatypes ((array!35635 0))(
  ( (array!35636 (arr!17105 (Array (_ BitVec 32) (_ BitVec 64))) (size!17469 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35635)

(declare-fun array_inv!12879 (array!35635) Bool)

(assert (=> start!52158 (array_inv!12879 a!3118)))

(declare-fun b!568854 () Bool)

(declare-fun res!359023 () Bool)

(assert (=> b!568854 (=> (not res!359023) (not e!327301))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!568854 (= res!359023 (and (= (size!17469 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17469 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17469 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568855 () Bool)

(declare-fun e!327300 () Bool)

(declare-fun e!327299 () Bool)

(assert (=> b!568855 (= e!327300 e!327299)))

(declare-fun res!359024 () Bool)

(assert (=> b!568855 (=> (not res!359024) (not e!327299))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!259250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5561 0))(
  ( (MissingZero!5561 (index!24471 (_ BitVec 32))) (Found!5561 (index!24472 (_ BitVec 32))) (Intermediate!5561 (undefined!6373 Bool) (index!24473 (_ BitVec 32)) (x!53375 (_ BitVec 32))) (Undefined!5561) (MissingVacant!5561 (index!24474 (_ BitVec 32))) )
))
(declare-fun lt!259248 () SeekEntryResult!5561)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35635 (_ BitVec 32)) SeekEntryResult!5561)

(assert (=> b!568855 (= res!359024 (= lt!259248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259250 (select (store (arr!17105 a!3118) i!1132 k!1914) j!142) (array!35636 (store (arr!17105 a!3118) i!1132 k!1914) (size!17469 a!3118)) mask!3119)))))

(declare-fun lt!259249 () (_ BitVec 32))

(assert (=> b!568855 (= lt!259248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259249 (select (arr!17105 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568855 (= lt!259250 (toIndex!0 (select (store (arr!17105 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568855 (= lt!259249 (toIndex!0 (select (arr!17105 a!3118) j!142) mask!3119))))

(declare-fun b!568856 () Bool)

(declare-fun res!359028 () Bool)

(assert (=> b!568856 (=> (not res!359028) (not e!327301))))

(declare-fun arrayContainsKey!0 (array!35635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568856 (= res!359028 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568857 () Bool)

(assert (=> b!568857 (= e!327301 e!327300)))

(declare-fun res!359029 () Bool)

(assert (=> b!568857 (=> (not res!359029) (not e!327300))))

(declare-fun lt!259247 () SeekEntryResult!5561)

(assert (=> b!568857 (= res!359029 (or (= lt!259247 (MissingZero!5561 i!1132)) (= lt!259247 (MissingVacant!5561 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35635 (_ BitVec 32)) SeekEntryResult!5561)

(assert (=> b!568857 (= lt!259247 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568858 () Bool)

(assert (=> b!568858 (= e!327299 (not true))))

(declare-fun lt!259245 () SeekEntryResult!5561)

(assert (=> b!568858 (and (= lt!259245 (Found!5561 j!142)) (or (undefined!6373 lt!259248) (not (is-Intermediate!5561 lt!259248)) (= (select (arr!17105 a!3118) (index!24473 lt!259248)) (select (arr!17105 a!3118) j!142)) (not (= (select (arr!17105 a!3118) (index!24473 lt!259248)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259245 (MissingZero!5561 (index!24473 lt!259248)))))))

(assert (=> b!568858 (= lt!259245 (seekEntryOrOpen!0 (select (arr!17105 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35635 (_ BitVec 32)) Bool)

(assert (=> b!568858 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17824 0))(
  ( (Unit!17825) )
))
(declare-fun lt!259246 () Unit!17824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17824)

(assert (=> b!568858 (= lt!259246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568859 () Bool)

(declare-fun res!359030 () Bool)

(assert (=> b!568859 (=> (not res!359030) (not e!327300))))

(assert (=> b!568859 (= res!359030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568860 () Bool)

(declare-fun res!359025 () Bool)

(assert (=> b!568860 (=> (not res!359025) (not e!327300))))

(declare-datatypes ((List!11238 0))(
  ( (Nil!11235) (Cons!11234 (h!12255 (_ BitVec 64)) (t!17474 List!11238)) )
))
(declare-fun arrayNoDuplicates!0 (array!35635 (_ BitVec 32) List!11238) Bool)

(assert (=> b!568860 (= res!359025 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11235))))

(declare-fun b!568861 () Bool)

(declare-fun res!359027 () Bool)

(assert (=> b!568861 (=> (not res!359027) (not e!327301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568861 (= res!359027 (validKeyInArray!0 k!1914))))

(declare-fun b!568862 () Bool)

(declare-fun res!359026 () Bool)

(assert (=> b!568862 (=> (not res!359026) (not e!327301))))

(assert (=> b!568862 (= res!359026 (validKeyInArray!0 (select (arr!17105 a!3118) j!142)))))

(assert (= (and start!52158 res!359022) b!568854))

(assert (= (and b!568854 res!359023) b!568862))

(assert (= (and b!568862 res!359026) b!568861))

(assert (= (and b!568861 res!359027) b!568856))

(assert (= (and b!568856 res!359028) b!568857))

(assert (= (and b!568857 res!359029) b!568859))

(assert (= (and b!568859 res!359030) b!568860))

(assert (= (and b!568860 res!359025) b!568855))

(assert (= (and b!568855 res!359024) b!568858))

(declare-fun m!547463 () Bool)

(assert (=> b!568857 m!547463))

(declare-fun m!547465 () Bool)

(assert (=> start!52158 m!547465))

(declare-fun m!547467 () Bool)

(assert (=> start!52158 m!547467))

(declare-fun m!547469 () Bool)

(assert (=> b!568858 m!547469))

(declare-fun m!547471 () Bool)

(assert (=> b!568858 m!547471))

(declare-fun m!547473 () Bool)

(assert (=> b!568858 m!547473))

(declare-fun m!547475 () Bool)

(assert (=> b!568858 m!547475))

(assert (=> b!568858 m!547469))

(declare-fun m!547477 () Bool)

(assert (=> b!568858 m!547477))

(declare-fun m!547479 () Bool)

(assert (=> b!568860 m!547479))

(declare-fun m!547481 () Bool)

(assert (=> b!568856 m!547481))

(assert (=> b!568862 m!547469))

(assert (=> b!568862 m!547469))

(declare-fun m!547483 () Bool)

(assert (=> b!568862 m!547483))

(assert (=> b!568855 m!547469))

(declare-fun m!547485 () Bool)

(assert (=> b!568855 m!547485))

(assert (=> b!568855 m!547469))

(declare-fun m!547487 () Bool)

(assert (=> b!568855 m!547487))

(assert (=> b!568855 m!547469))

(declare-fun m!547489 () Bool)

(assert (=> b!568855 m!547489))

(assert (=> b!568855 m!547489))

(declare-fun m!547491 () Bool)

(assert (=> b!568855 m!547491))

(declare-fun m!547493 () Bool)

(assert (=> b!568855 m!547493))

(assert (=> b!568855 m!547489))

(declare-fun m!547495 () Bool)

(assert (=> b!568855 m!547495))

(declare-fun m!547497 () Bool)

(assert (=> b!568861 m!547497))

(declare-fun m!547499 () Bool)

(assert (=> b!568859 m!547499))

(push 1)

