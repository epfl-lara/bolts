; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51936 () Bool)

(assert start!51936)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!567368 () Bool)

(declare-datatypes ((array!35584 0))(
  ( (array!35585 (arr!17084 (Array (_ BitVec 32) (_ BitVec 64))) (size!17448 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35584)

(declare-fun e!326461 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5540 0))(
  ( (MissingZero!5540 (index!24387 (_ BitVec 32))) (Found!5540 (index!24388 (_ BitVec 32))) (Intermediate!5540 (undefined!6352 Bool) (index!24389 (_ BitVec 32)) (x!53280 (_ BitVec 32))) (Undefined!5540) (MissingVacant!5540 (index!24390 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35584 (_ BitVec 32)) SeekEntryResult!5540)

(assert (=> b!567368 (= e!326461 (= (seekEntryOrOpen!0 (select (arr!17084 a!3118) j!142) a!3118 mask!3119) (Found!5540 j!142)))))

(declare-fun b!567369 () Bool)

(declare-fun res!358106 () Bool)

(declare-fun e!326464 () Bool)

(assert (=> b!567369 (=> (not res!358106) (not e!326464))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567369 (= res!358106 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567370 () Bool)

(declare-fun e!326463 () Bool)

(assert (=> b!567370 (= e!326463 (not true))))

(assert (=> b!567370 e!326461))

(declare-fun res!358107 () Bool)

(assert (=> b!567370 (=> (not res!358107) (not e!326461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35584 (_ BitVec 32)) Bool)

(assert (=> b!567370 (= res!358107 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17782 0))(
  ( (Unit!17783) )
))
(declare-fun lt!258503 () Unit!17782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17782)

(assert (=> b!567370 (= lt!258503 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567371 () Bool)

(assert (=> b!567371 (= e!326464 e!326463)))

(declare-fun res!358108 () Bool)

(assert (=> b!567371 (=> (not res!358108) (not e!326463))))

(declare-fun lt!258502 () SeekEntryResult!5540)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567371 (= res!358108 (or (= lt!258502 (MissingZero!5540 i!1132)) (= lt!258502 (MissingVacant!5540 i!1132))))))

(assert (=> b!567371 (= lt!258502 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567372 () Bool)

(declare-fun res!358112 () Bool)

(assert (=> b!567372 (=> (not res!358112) (not e!326464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567372 (= res!358112 (validKeyInArray!0 k!1914))))

(declare-fun b!567373 () Bool)

(declare-fun res!358105 () Bool)

(assert (=> b!567373 (=> (not res!358105) (not e!326464))))

(assert (=> b!567373 (= res!358105 (validKeyInArray!0 (select (arr!17084 a!3118) j!142)))))

(declare-fun b!567374 () Bool)

(declare-fun res!358110 () Bool)

(assert (=> b!567374 (=> (not res!358110) (not e!326463))))

(assert (=> b!567374 (= res!358110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567375 () Bool)

(declare-fun res!358104 () Bool)

(assert (=> b!567375 (=> (not res!358104) (not e!326463))))

(declare-datatypes ((List!11217 0))(
  ( (Nil!11214) (Cons!11213 (h!12225 (_ BitVec 64)) (t!17453 List!11217)) )
))
(declare-fun arrayNoDuplicates!0 (array!35584 (_ BitVec 32) List!11217) Bool)

(assert (=> b!567375 (= res!358104 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11214))))

(declare-fun res!358109 () Bool)

(assert (=> start!51936 (=> (not res!358109) (not e!326464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51936 (= res!358109 (validMask!0 mask!3119))))

(assert (=> start!51936 e!326464))

(assert (=> start!51936 true))

(declare-fun array_inv!12858 (array!35584) Bool)

(assert (=> start!51936 (array_inv!12858 a!3118)))

(declare-fun b!567376 () Bool)

(declare-fun res!358111 () Bool)

(assert (=> b!567376 (=> (not res!358111) (not e!326464))))

(assert (=> b!567376 (= res!358111 (and (= (size!17448 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17448 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17448 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567377 () Bool)

(declare-fun res!358103 () Bool)

(assert (=> b!567377 (=> (not res!358103) (not e!326463))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35584 (_ BitVec 32)) SeekEntryResult!5540)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567377 (= res!358103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17084 a!3118) j!142) mask!3119) (select (arr!17084 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17084 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17084 a!3118) i!1132 k!1914) j!142) (array!35585 (store (arr!17084 a!3118) i!1132 k!1914) (size!17448 a!3118)) mask!3119)))))

(assert (= (and start!51936 res!358109) b!567376))

(assert (= (and b!567376 res!358111) b!567373))

(assert (= (and b!567373 res!358105) b!567372))

(assert (= (and b!567372 res!358112) b!567369))

(assert (= (and b!567369 res!358106) b!567371))

(assert (= (and b!567371 res!358108) b!567374))

(assert (= (and b!567374 res!358110) b!567375))

(assert (= (and b!567375 res!358104) b!567377))

(assert (= (and b!567377 res!358103) b!567370))

(assert (= (and b!567370 res!358107) b!567368))

(declare-fun m!546019 () Bool)

(assert (=> b!567377 m!546019))

(declare-fun m!546021 () Bool)

(assert (=> b!567377 m!546021))

(assert (=> b!567377 m!546019))

(declare-fun m!546023 () Bool)

(assert (=> b!567377 m!546023))

(declare-fun m!546025 () Bool)

(assert (=> b!567377 m!546025))

(assert (=> b!567377 m!546023))

(declare-fun m!546027 () Bool)

(assert (=> b!567377 m!546027))

(assert (=> b!567377 m!546021))

(assert (=> b!567377 m!546019))

(declare-fun m!546029 () Bool)

(assert (=> b!567377 m!546029))

(declare-fun m!546031 () Bool)

(assert (=> b!567377 m!546031))

(assert (=> b!567377 m!546023))

(assert (=> b!567377 m!546025))

(declare-fun m!546033 () Bool)

(assert (=> start!51936 m!546033))

(declare-fun m!546035 () Bool)

(assert (=> start!51936 m!546035))

(declare-fun m!546037 () Bool)

(assert (=> b!567369 m!546037))

(declare-fun m!546039 () Bool)

(assert (=> b!567370 m!546039))

(declare-fun m!546041 () Bool)

(assert (=> b!567370 m!546041))

(assert (=> b!567368 m!546019))

(assert (=> b!567368 m!546019))

(declare-fun m!546043 () Bool)

(assert (=> b!567368 m!546043))

(declare-fun m!546045 () Bool)

(assert (=> b!567375 m!546045))

(declare-fun m!546047 () Bool)

(assert (=> b!567372 m!546047))

(assert (=> b!567373 m!546019))

(assert (=> b!567373 m!546019))

(declare-fun m!546049 () Bool)

(assert (=> b!567373 m!546049))

(declare-fun m!546051 () Bool)

(assert (=> b!567371 m!546051))

(declare-fun m!546053 () Bool)

(assert (=> b!567374 m!546053))

(push 1)

