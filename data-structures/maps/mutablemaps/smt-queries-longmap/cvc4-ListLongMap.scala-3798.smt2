; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52164 () Bool)

(assert start!52164)

(declare-fun b!568935 () Bool)

(declare-fun res!359105 () Bool)

(declare-fun e!327337 () Bool)

(assert (=> b!568935 (=> (not res!359105) (not e!327337))))

(declare-datatypes ((array!35641 0))(
  ( (array!35642 (arr!17108 (Array (_ BitVec 32) (_ BitVec 64))) (size!17472 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35641)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568935 (= res!359105 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5564 0))(
  ( (MissingZero!5564 (index!24483 (_ BitVec 32))) (Found!5564 (index!24484 (_ BitVec 32))) (Intermediate!5564 (undefined!6376 Bool) (index!24485 (_ BitVec 32)) (x!53386 (_ BitVec 32))) (Undefined!5564) (MissingVacant!5564 (index!24486 (_ BitVec 32))) )
))
(declare-fun lt!259299 () SeekEntryResult!5564)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!327334 () Bool)

(declare-fun b!568936 () Bool)

(assert (=> b!568936 (= e!327334 (not (or (undefined!6376 lt!259299) (not (is-Intermediate!5564 lt!259299)) (= (select (arr!17108 a!3118) (index!24485 lt!259299)) (select (arr!17108 a!3118) j!142)) (not (= (select (arr!17108 a!3118) (index!24485 lt!259299)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!17472 a!3118)))))))

(declare-fun lt!259301 () SeekEntryResult!5564)

(assert (=> b!568936 (and (= lt!259301 (Found!5564 j!142)) (or (undefined!6376 lt!259299) (not (is-Intermediate!5564 lt!259299)) (= (select (arr!17108 a!3118) (index!24485 lt!259299)) (select (arr!17108 a!3118) j!142)) (not (= (select (arr!17108 a!3118) (index!24485 lt!259299)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259301 (MissingZero!5564 (index!24485 lt!259299)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35641 (_ BitVec 32)) SeekEntryResult!5564)

(assert (=> b!568936 (= lt!259301 (seekEntryOrOpen!0 (select (arr!17108 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35641 (_ BitVec 32)) Bool)

(assert (=> b!568936 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17830 0))(
  ( (Unit!17831) )
))
(declare-fun lt!259302 () Unit!17830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17830)

(assert (=> b!568936 (= lt!259302 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568937 () Bool)

(declare-fun e!327335 () Bool)

(assert (=> b!568937 (= e!327335 e!327334)))

(declare-fun res!359104 () Bool)

(assert (=> b!568937 (=> (not res!359104) (not e!327334))))

(declare-fun lt!259304 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35641 (_ BitVec 32)) SeekEntryResult!5564)

(assert (=> b!568937 (= res!359104 (= lt!259299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259304 (select (store (arr!17108 a!3118) i!1132 k!1914) j!142) (array!35642 (store (arr!17108 a!3118) i!1132 k!1914) (size!17472 a!3118)) mask!3119)))))

(declare-fun lt!259300 () (_ BitVec 32))

(assert (=> b!568937 (= lt!259299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259300 (select (arr!17108 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568937 (= lt!259304 (toIndex!0 (select (store (arr!17108 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568937 (= lt!259300 (toIndex!0 (select (arr!17108 a!3118) j!142) mask!3119))))

(declare-fun b!568938 () Bool)

(declare-fun res!359108 () Bool)

(assert (=> b!568938 (=> (not res!359108) (not e!327337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568938 (= res!359108 (validKeyInArray!0 (select (arr!17108 a!3118) j!142)))))

(declare-fun b!568939 () Bool)

(declare-fun res!359103 () Bool)

(assert (=> b!568939 (=> (not res!359103) (not e!327335))))

(assert (=> b!568939 (= res!359103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!359110 () Bool)

(assert (=> start!52164 (=> (not res!359110) (not e!327337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52164 (= res!359110 (validMask!0 mask!3119))))

(assert (=> start!52164 e!327337))

(assert (=> start!52164 true))

(declare-fun array_inv!12882 (array!35641) Bool)

(assert (=> start!52164 (array_inv!12882 a!3118)))

(declare-fun b!568940 () Bool)

(assert (=> b!568940 (= e!327337 e!327335)))

(declare-fun res!359111 () Bool)

(assert (=> b!568940 (=> (not res!359111) (not e!327335))))

(declare-fun lt!259303 () SeekEntryResult!5564)

(assert (=> b!568940 (= res!359111 (or (= lt!259303 (MissingZero!5564 i!1132)) (= lt!259303 (MissingVacant!5564 i!1132))))))

(assert (=> b!568940 (= lt!259303 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568941 () Bool)

(declare-fun res!359109 () Bool)

(assert (=> b!568941 (=> (not res!359109) (not e!327337))))

(assert (=> b!568941 (= res!359109 (validKeyInArray!0 k!1914))))

(declare-fun b!568942 () Bool)

(declare-fun res!359106 () Bool)

(assert (=> b!568942 (=> (not res!359106) (not e!327335))))

(declare-datatypes ((List!11241 0))(
  ( (Nil!11238) (Cons!11237 (h!12258 (_ BitVec 64)) (t!17477 List!11241)) )
))
(declare-fun arrayNoDuplicates!0 (array!35641 (_ BitVec 32) List!11241) Bool)

(assert (=> b!568942 (= res!359106 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11238))))

(declare-fun b!568943 () Bool)

(declare-fun res!359107 () Bool)

(assert (=> b!568943 (=> (not res!359107) (not e!327337))))

(assert (=> b!568943 (= res!359107 (and (= (size!17472 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17472 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17472 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52164 res!359110) b!568943))

(assert (= (and b!568943 res!359107) b!568938))

(assert (= (and b!568938 res!359108) b!568941))

(assert (= (and b!568941 res!359109) b!568935))

(assert (= (and b!568935 res!359105) b!568940))

(assert (= (and b!568940 res!359111) b!568939))

(assert (= (and b!568939 res!359103) b!568942))

(assert (= (and b!568942 res!359106) b!568937))

(assert (= (and b!568937 res!359104) b!568936))

(declare-fun m!547577 () Bool)

(assert (=> start!52164 m!547577))

(declare-fun m!547579 () Bool)

(assert (=> start!52164 m!547579))

(declare-fun m!547581 () Bool)

(assert (=> b!568937 m!547581))

(declare-fun m!547583 () Bool)

(assert (=> b!568937 m!547583))

(assert (=> b!568937 m!547581))

(declare-fun m!547585 () Bool)

(assert (=> b!568937 m!547585))

(assert (=> b!568937 m!547581))

(declare-fun m!547587 () Bool)

(assert (=> b!568937 m!547587))

(assert (=> b!568937 m!547587))

(declare-fun m!547589 () Bool)

(assert (=> b!568937 m!547589))

(declare-fun m!547591 () Bool)

(assert (=> b!568937 m!547591))

(assert (=> b!568937 m!547587))

(declare-fun m!547593 () Bool)

(assert (=> b!568937 m!547593))

(declare-fun m!547595 () Bool)

(assert (=> b!568939 m!547595))

(declare-fun m!547597 () Bool)

(assert (=> b!568942 m!547597))

(declare-fun m!547599 () Bool)

(assert (=> b!568941 m!547599))

(declare-fun m!547601 () Bool)

(assert (=> b!568940 m!547601))

(declare-fun m!547603 () Bool)

(assert (=> b!568935 m!547603))

(assert (=> b!568936 m!547581))

(declare-fun m!547605 () Bool)

(assert (=> b!568936 m!547605))

(declare-fun m!547607 () Bool)

(assert (=> b!568936 m!547607))

(declare-fun m!547609 () Bool)

(assert (=> b!568936 m!547609))

(assert (=> b!568936 m!547581))

(declare-fun m!547611 () Bool)

(assert (=> b!568936 m!547611))

(assert (=> b!568938 m!547581))

(assert (=> b!568938 m!547581))

(declare-fun m!547613 () Bool)

(assert (=> b!568938 m!547613))

(push 1)

