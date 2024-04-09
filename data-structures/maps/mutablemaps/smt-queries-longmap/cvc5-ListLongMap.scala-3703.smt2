; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50852 () Bool)

(assert start!50852)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!556094 () Bool)

(declare-fun e!320398 () Bool)

(declare-datatypes ((array!35031 0))(
  ( (array!35032 (arr!16821 (Array (_ BitVec 32) (_ BitVec 64))) (size!17185 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35031)

(declare-datatypes ((SeekEntryResult!5277 0))(
  ( (MissingZero!5277 (index!23335 (_ BitVec 32))) (Found!5277 (index!23336 (_ BitVec 32))) (Intermediate!5277 (undefined!6089 Bool) (index!23337 (_ BitVec 32)) (x!52258 (_ BitVec 32))) (Undefined!5277) (MissingVacant!5277 (index!23338 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35031 (_ BitVec 32)) SeekEntryResult!5277)

(assert (=> b!556094 (= e!320398 (= (seekEntryOrOpen!0 (select (arr!16821 a!3118) j!142) a!3118 mask!3119) (Found!5277 j!142)))))

(declare-fun b!556095 () Bool)

(declare-fun res!348658 () Bool)

(declare-fun e!320399 () Bool)

(assert (=> b!556095 (=> (not res!348658) (not e!320399))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556095 (= res!348658 (and (= (size!17185 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17185 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17185 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556096 () Bool)

(declare-fun res!348661 () Bool)

(assert (=> b!556096 (=> (not res!348661) (not e!320399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556096 (= res!348661 (validKeyInArray!0 (select (arr!16821 a!3118) j!142)))))

(declare-fun b!556097 () Bool)

(declare-fun res!348660 () Bool)

(declare-fun e!320401 () Bool)

(assert (=> b!556097 (=> (not res!348660) (not e!320401))))

(declare-datatypes ((List!10954 0))(
  ( (Nil!10951) (Cons!10950 (h!11935 (_ BitVec 64)) (t!17190 List!10954)) )
))
(declare-fun arrayNoDuplicates!0 (array!35031 (_ BitVec 32) List!10954) Bool)

(assert (=> b!556097 (= res!348660 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10951))))

(declare-fun b!556098 () Bool)

(assert (=> b!556098 (= e!320399 e!320401)))

(declare-fun res!348665 () Bool)

(assert (=> b!556098 (=> (not res!348665) (not e!320401))))

(declare-fun lt!252793 () SeekEntryResult!5277)

(assert (=> b!556098 (= res!348665 (or (= lt!252793 (MissingZero!5277 i!1132)) (= lt!252793 (MissingVacant!5277 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!556098 (= lt!252793 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556099 () Bool)

(assert (=> b!556099 (= e!320401 (not true))))

(assert (=> b!556099 e!320398))

(declare-fun res!348663 () Bool)

(assert (=> b!556099 (=> (not res!348663) (not e!320398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35031 (_ BitVec 32)) Bool)

(assert (=> b!556099 (= res!348663 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17328 0))(
  ( (Unit!17329) )
))
(declare-fun lt!252794 () Unit!17328)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17328)

(assert (=> b!556099 (= lt!252794 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556100 () Bool)

(declare-fun res!348659 () Bool)

(assert (=> b!556100 (=> (not res!348659) (not e!320399))))

(assert (=> b!556100 (= res!348659 (validKeyInArray!0 k!1914))))

(declare-fun b!556101 () Bool)

(declare-fun res!348657 () Bool)

(assert (=> b!556101 (=> (not res!348657) (not e!320401))))

(assert (=> b!556101 (= res!348657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!348662 () Bool)

(assert (=> start!50852 (=> (not res!348662) (not e!320399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50852 (= res!348662 (validMask!0 mask!3119))))

(assert (=> start!50852 e!320399))

(assert (=> start!50852 true))

(declare-fun array_inv!12595 (array!35031) Bool)

(assert (=> start!50852 (array_inv!12595 a!3118)))

(declare-fun b!556102 () Bool)

(declare-fun res!348664 () Bool)

(assert (=> b!556102 (=> (not res!348664) (not e!320401))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35031 (_ BitVec 32)) SeekEntryResult!5277)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556102 (= res!348664 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16821 a!3118) j!142) mask!3119) (select (arr!16821 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16821 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16821 a!3118) i!1132 k!1914) j!142) (array!35032 (store (arr!16821 a!3118) i!1132 k!1914) (size!17185 a!3118)) mask!3119)))))

(declare-fun b!556103 () Bool)

(declare-fun res!348656 () Bool)

(assert (=> b!556103 (=> (not res!348656) (not e!320399))))

(declare-fun arrayContainsKey!0 (array!35031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556103 (= res!348656 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50852 res!348662) b!556095))

(assert (= (and b!556095 res!348658) b!556096))

(assert (= (and b!556096 res!348661) b!556100))

(assert (= (and b!556100 res!348659) b!556103))

(assert (= (and b!556103 res!348656) b!556098))

(assert (= (and b!556098 res!348665) b!556101))

(assert (= (and b!556101 res!348657) b!556097))

(assert (= (and b!556097 res!348660) b!556102))

(assert (= (and b!556102 res!348664) b!556099))

(assert (= (and b!556099 res!348663) b!556094))

(declare-fun m!534091 () Bool)

(assert (=> b!556099 m!534091))

(declare-fun m!534093 () Bool)

(assert (=> b!556099 m!534093))

(declare-fun m!534095 () Bool)

(assert (=> b!556100 m!534095))

(declare-fun m!534097 () Bool)

(assert (=> b!556097 m!534097))

(declare-fun m!534099 () Bool)

(assert (=> b!556094 m!534099))

(assert (=> b!556094 m!534099))

(declare-fun m!534101 () Bool)

(assert (=> b!556094 m!534101))

(declare-fun m!534103 () Bool)

(assert (=> b!556101 m!534103))

(declare-fun m!534105 () Bool)

(assert (=> b!556098 m!534105))

(assert (=> b!556102 m!534099))

(declare-fun m!534107 () Bool)

(assert (=> b!556102 m!534107))

(assert (=> b!556102 m!534099))

(declare-fun m!534109 () Bool)

(assert (=> b!556102 m!534109))

(declare-fun m!534111 () Bool)

(assert (=> b!556102 m!534111))

(assert (=> b!556102 m!534109))

(declare-fun m!534113 () Bool)

(assert (=> b!556102 m!534113))

(assert (=> b!556102 m!534107))

(assert (=> b!556102 m!534099))

(declare-fun m!534115 () Bool)

(assert (=> b!556102 m!534115))

(declare-fun m!534117 () Bool)

(assert (=> b!556102 m!534117))

(assert (=> b!556102 m!534109))

(assert (=> b!556102 m!534111))

(assert (=> b!556096 m!534099))

(assert (=> b!556096 m!534099))

(declare-fun m!534119 () Bool)

(assert (=> b!556096 m!534119))

(declare-fun m!534121 () Bool)

(assert (=> b!556103 m!534121))

(declare-fun m!534123 () Bool)

(assert (=> start!50852 m!534123))

(declare-fun m!534125 () Bool)

(assert (=> start!50852 m!534125))

(push 1)

