; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50268 () Bool)

(assert start!50268)

(declare-fun b!549897 () Bool)

(declare-fun e!317465 () Bool)

(declare-fun e!317467 () Bool)

(assert (=> b!549897 (= e!317465 e!317467)))

(declare-fun res!343191 () Bool)

(assert (=> b!549897 (=> (not res!343191) (not e!317467))))

(declare-datatypes ((SeekEntryResult!5105 0))(
  ( (MissingZero!5105 (index!22647 (_ BitVec 32))) (Found!5105 (index!22648 (_ BitVec 32))) (Intermediate!5105 (undefined!5917 Bool) (index!22649 (_ BitVec 32)) (x!51598 (_ BitVec 32))) (Undefined!5105) (MissingVacant!5105 (index!22650 (_ BitVec 32))) )
))
(declare-fun lt!250373 () SeekEntryResult!5105)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549897 (= res!343191 (or (= lt!250373 (MissingZero!5105 i!1132)) (= lt!250373 (MissingVacant!5105 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34675 0))(
  ( (array!34676 (arr!16649 (Array (_ BitVec 32) (_ BitVec 64))) (size!17013 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34675)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34675 (_ BitVec 32)) SeekEntryResult!5105)

(assert (=> b!549897 (= lt!250373 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549898 () Bool)

(declare-fun res!343193 () Bool)

(assert (=> b!549898 (=> (not res!343193) (not e!317467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34675 (_ BitVec 32)) Bool)

(assert (=> b!549898 (= res!343193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549899 () Bool)

(declare-fun res!343192 () Bool)

(assert (=> b!549899 (=> (not res!343192) (not e!317465))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549899 (= res!343192 (and (= (size!17013 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17013 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17013 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549900 () Bool)

(declare-fun res!343199 () Bool)

(assert (=> b!549900 (=> (not res!343199) (not e!317467))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34675 (_ BitVec 32)) SeekEntryResult!5105)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549900 (= res!343199 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16649 a!3118) j!142) mask!3119) (select (arr!16649 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16649 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16649 a!3118) i!1132 k!1914) j!142) (array!34676 (store (arr!16649 a!3118) i!1132 k!1914) (size!17013 a!3118)) mask!3119)))))

(declare-fun b!549901 () Bool)

(declare-fun res!343196 () Bool)

(assert (=> b!549901 (=> (not res!343196) (not e!317465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549901 (= res!343196 (validKeyInArray!0 (select (arr!16649 a!3118) j!142)))))

(declare-fun b!549902 () Bool)

(assert (=> b!549902 (= e!317467 (not true))))

(assert (=> b!549902 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16984 0))(
  ( (Unit!16985) )
))
(declare-fun lt!250372 () Unit!16984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16984)

(assert (=> b!549902 (= lt!250372 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549903 () Bool)

(declare-fun res!343194 () Bool)

(assert (=> b!549903 (=> (not res!343194) (not e!317467))))

(declare-datatypes ((List!10782 0))(
  ( (Nil!10779) (Cons!10778 (h!11751 (_ BitVec 64)) (t!17018 List!10782)) )
))
(declare-fun arrayNoDuplicates!0 (array!34675 (_ BitVec 32) List!10782) Bool)

(assert (=> b!549903 (= res!343194 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10779))))

(declare-fun res!343198 () Bool)

(assert (=> start!50268 (=> (not res!343198) (not e!317465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50268 (= res!343198 (validMask!0 mask!3119))))

(assert (=> start!50268 e!317465))

(assert (=> start!50268 true))

(declare-fun array_inv!12423 (array!34675) Bool)

(assert (=> start!50268 (array_inv!12423 a!3118)))

(declare-fun b!549904 () Bool)

(declare-fun res!343195 () Bool)

(assert (=> b!549904 (=> (not res!343195) (not e!317465))))

(declare-fun arrayContainsKey!0 (array!34675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549904 (= res!343195 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549905 () Bool)

(declare-fun res!343197 () Bool)

(assert (=> b!549905 (=> (not res!343197) (not e!317465))))

(assert (=> b!549905 (= res!343197 (validKeyInArray!0 k!1914))))

(assert (= (and start!50268 res!343198) b!549899))

(assert (= (and b!549899 res!343192) b!549901))

(assert (= (and b!549901 res!343196) b!549905))

(assert (= (and b!549905 res!343197) b!549904))

(assert (= (and b!549904 res!343195) b!549897))

(assert (= (and b!549897 res!343191) b!549898))

(assert (= (and b!549898 res!343193) b!549903))

(assert (= (and b!549903 res!343194) b!549900))

(assert (= (and b!549900 res!343199) b!549902))

(declare-fun m!526947 () Bool)

(assert (=> b!549901 m!526947))

(assert (=> b!549901 m!526947))

(declare-fun m!526949 () Bool)

(assert (=> b!549901 m!526949))

(declare-fun m!526951 () Bool)

(assert (=> start!50268 m!526951))

(declare-fun m!526953 () Bool)

(assert (=> start!50268 m!526953))

(declare-fun m!526955 () Bool)

(assert (=> b!549903 m!526955))

(declare-fun m!526957 () Bool)

(assert (=> b!549902 m!526957))

(declare-fun m!526959 () Bool)

(assert (=> b!549902 m!526959))

(assert (=> b!549900 m!526947))

(declare-fun m!526961 () Bool)

(assert (=> b!549900 m!526961))

(assert (=> b!549900 m!526947))

(declare-fun m!526963 () Bool)

(assert (=> b!549900 m!526963))

(declare-fun m!526965 () Bool)

(assert (=> b!549900 m!526965))

(assert (=> b!549900 m!526963))

(declare-fun m!526967 () Bool)

(assert (=> b!549900 m!526967))

(assert (=> b!549900 m!526961))

(assert (=> b!549900 m!526947))

(declare-fun m!526969 () Bool)

(assert (=> b!549900 m!526969))

(declare-fun m!526971 () Bool)

(assert (=> b!549900 m!526971))

(assert (=> b!549900 m!526963))

(assert (=> b!549900 m!526965))

(declare-fun m!526973 () Bool)

(assert (=> b!549897 m!526973))

(declare-fun m!526975 () Bool)

(assert (=> b!549905 m!526975))

(declare-fun m!526977 () Bool)

(assert (=> b!549898 m!526977))

(declare-fun m!526979 () Bool)

(assert (=> b!549904 m!526979))

(push 1)

