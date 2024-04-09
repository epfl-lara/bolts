; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52178 () Bool)

(assert start!52178)

(declare-fun b!569124 () Bool)

(declare-fun res!359299 () Bool)

(declare-fun e!327421 () Bool)

(assert (=> b!569124 (=> (not res!359299) (not e!327421))))

(declare-datatypes ((array!35655 0))(
  ( (array!35656 (arr!17115 (Array (_ BitVec 32) (_ BitVec 64))) (size!17479 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35655)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569124 (= res!359299 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569125 () Bool)

(declare-fun e!327420 () Bool)

(assert (=> b!569125 (= e!327421 e!327420)))

(declare-fun res!359300 () Bool)

(assert (=> b!569125 (=> (not res!359300) (not e!327420))))

(declare-datatypes ((SeekEntryResult!5571 0))(
  ( (MissingZero!5571 (index!24511 (_ BitVec 32))) (Found!5571 (index!24512 (_ BitVec 32))) (Intermediate!5571 (undefined!6383 Bool) (index!24513 (_ BitVec 32)) (x!53417 (_ BitVec 32))) (Undefined!5571) (MissingVacant!5571 (index!24514 (_ BitVec 32))) )
))
(declare-fun lt!259425 () SeekEntryResult!5571)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569125 (= res!359300 (or (= lt!259425 (MissingZero!5571 i!1132)) (= lt!259425 (MissingVacant!5571 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35655 (_ BitVec 32)) SeekEntryResult!5571)

(assert (=> b!569125 (= lt!259425 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569126 () Bool)

(declare-fun res!359295 () Bool)

(assert (=> b!569126 (=> (not res!359295) (not e!327420))))

(declare-datatypes ((List!11248 0))(
  ( (Nil!11245) (Cons!11244 (h!12265 (_ BitVec 64)) (t!17484 List!11248)) )
))
(declare-fun arrayNoDuplicates!0 (array!35655 (_ BitVec 32) List!11248) Bool)

(assert (=> b!569126 (= res!359295 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11245))))

(declare-fun b!569127 () Bool)

(declare-fun res!359292 () Bool)

(assert (=> b!569127 (=> (not res!359292) (not e!327421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569127 (= res!359292 (validKeyInArray!0 k!1914))))

(declare-fun b!569128 () Bool)

(declare-fun res!359293 () Bool)

(assert (=> b!569128 (=> (not res!359293) (not e!327421))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!569128 (= res!359293 (validKeyInArray!0 (select (arr!17115 a!3118) j!142)))))

(declare-fun b!569129 () Bool)

(declare-fun res!359297 () Bool)

(assert (=> b!569129 (=> (not res!359297) (not e!327421))))

(assert (=> b!569129 (= res!359297 (and (= (size!17479 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17479 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17479 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569130 () Bool)

(declare-fun e!327418 () Bool)

(assert (=> b!569130 (= e!327420 e!327418)))

(declare-fun res!359298 () Bool)

(assert (=> b!569130 (=> (not res!359298) (not e!327418))))

(declare-fun lt!259428 () SeekEntryResult!5571)

(declare-fun lt!259430 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35655 (_ BitVec 32)) SeekEntryResult!5571)

(assert (=> b!569130 (= res!359298 (= lt!259428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259430 (select (store (arr!17115 a!3118) i!1132 k!1914) j!142) (array!35656 (store (arr!17115 a!3118) i!1132 k!1914) (size!17479 a!3118)) mask!3119)))))

(declare-fun lt!259426 () (_ BitVec 32))

(assert (=> b!569130 (= lt!259428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259426 (select (arr!17115 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569130 (= lt!259430 (toIndex!0 (select (store (arr!17115 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569130 (= lt!259426 (toIndex!0 (select (arr!17115 a!3118) j!142) mask!3119))))

(declare-fun res!359294 () Bool)

(assert (=> start!52178 (=> (not res!359294) (not e!327421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52178 (= res!359294 (validMask!0 mask!3119))))

(assert (=> start!52178 e!327421))

(assert (=> start!52178 true))

(declare-fun array_inv!12889 (array!35655) Bool)

(assert (=> start!52178 (array_inv!12889 a!3118)))

(declare-fun b!569131 () Bool)

(assert (=> b!569131 (= e!327418 (not (or (undefined!6383 lt!259428) (not (is-Intermediate!5571 lt!259428)) (= (select (arr!17115 a!3118) (index!24513 lt!259428)) (select (arr!17115 a!3118) j!142)) (not (= (select (arr!17115 a!3118) (index!24513 lt!259428)) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!259429 () SeekEntryResult!5571)

(assert (=> b!569131 (and (= lt!259429 (Found!5571 j!142)) (or (undefined!6383 lt!259428) (not (is-Intermediate!5571 lt!259428)) (= (select (arr!17115 a!3118) (index!24513 lt!259428)) (select (arr!17115 a!3118) j!142)) (not (= (select (arr!17115 a!3118) (index!24513 lt!259428)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259429 (MissingZero!5571 (index!24513 lt!259428)))))))

(assert (=> b!569131 (= lt!259429 (seekEntryOrOpen!0 (select (arr!17115 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35655 (_ BitVec 32)) Bool)

(assert (=> b!569131 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17844 0))(
  ( (Unit!17845) )
))
(declare-fun lt!259427 () Unit!17844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17844)

(assert (=> b!569131 (= lt!259427 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569132 () Bool)

(declare-fun res!359296 () Bool)

(assert (=> b!569132 (=> (not res!359296) (not e!327420))))

(assert (=> b!569132 (= res!359296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52178 res!359294) b!569129))

(assert (= (and b!569129 res!359297) b!569128))

(assert (= (and b!569128 res!359293) b!569127))

(assert (= (and b!569127 res!359292) b!569124))

(assert (= (and b!569124 res!359299) b!569125))

(assert (= (and b!569125 res!359300) b!569132))

(assert (= (and b!569132 res!359296) b!569126))

(assert (= (and b!569126 res!359295) b!569130))

(assert (= (and b!569130 res!359298) b!569131))

(declare-fun m!547843 () Bool)

(assert (=> b!569130 m!547843))

(declare-fun m!547845 () Bool)

(assert (=> b!569130 m!547845))

(declare-fun m!547847 () Bool)

(assert (=> b!569130 m!547847))

(declare-fun m!547849 () Bool)

(assert (=> b!569130 m!547849))

(assert (=> b!569130 m!547843))

(assert (=> b!569130 m!547847))

(declare-fun m!547851 () Bool)

(assert (=> b!569130 m!547851))

(assert (=> b!569130 m!547843))

(declare-fun m!547853 () Bool)

(assert (=> b!569130 m!547853))

(assert (=> b!569130 m!547847))

(declare-fun m!547855 () Bool)

(assert (=> b!569130 m!547855))

(assert (=> b!569128 m!547843))

(assert (=> b!569128 m!547843))

(declare-fun m!547857 () Bool)

(assert (=> b!569128 m!547857))

(declare-fun m!547859 () Bool)

(assert (=> start!52178 m!547859))

(declare-fun m!547861 () Bool)

(assert (=> start!52178 m!547861))

(declare-fun m!547863 () Bool)

(assert (=> b!569126 m!547863))

(declare-fun m!547865 () Bool)

(assert (=> b!569132 m!547865))

(declare-fun m!547867 () Bool)

(assert (=> b!569125 m!547867))

(declare-fun m!547869 () Bool)

(assert (=> b!569131 m!547869))

(assert (=> b!569131 m!547843))

(declare-fun m!547871 () Bool)

(assert (=> b!569131 m!547871))

(declare-fun m!547873 () Bool)

(assert (=> b!569131 m!547873))

(assert (=> b!569131 m!547843))

(declare-fun m!547875 () Bool)

(assert (=> b!569131 m!547875))

(declare-fun m!547877 () Bool)

(assert (=> b!569127 m!547877))

(declare-fun m!547879 () Bool)

(assert (=> b!569124 m!547879))

(push 1)

(assert (not b!569127))

(assert (not b!569126))

(assert (not b!569124))

(assert (not b!569125))

(assert (not b!569132))

(assert (not b!569131))

(assert (not b!569128))

(assert (not b!569130))

