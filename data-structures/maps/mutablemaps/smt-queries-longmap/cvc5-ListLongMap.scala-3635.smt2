; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50204 () Bool)

(assert start!50204)

(declare-fun b!549085 () Bool)

(declare-fun res!342382 () Bool)

(declare-fun e!317169 () Bool)

(assert (=> b!549085 (=> (not res!342382) (not e!317169))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34611 0))(
  ( (array!34612 (arr!16617 (Array (_ BitVec 32) (_ BitVec 64))) (size!16981 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34611)

(assert (=> b!549085 (= res!342382 (and (= (size!16981 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16981 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16981 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!342380 () Bool)

(assert (=> start!50204 (=> (not res!342380) (not e!317169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50204 (= res!342380 (validMask!0 mask!3119))))

(assert (=> start!50204 e!317169))

(assert (=> start!50204 true))

(declare-fun array_inv!12391 (array!34611) Bool)

(assert (=> start!50204 (array_inv!12391 a!3118)))

(declare-fun b!549086 () Bool)

(declare-fun e!317168 () Bool)

(assert (=> b!549086 (= e!317169 e!317168)))

(declare-fun res!342383 () Bool)

(assert (=> b!549086 (=> (not res!342383) (not e!317168))))

(declare-datatypes ((SeekEntryResult!5073 0))(
  ( (MissingZero!5073 (index!22519 (_ BitVec 32))) (Found!5073 (index!22520 (_ BitVec 32))) (Intermediate!5073 (undefined!5885 Bool) (index!22521 (_ BitVec 32)) (x!51486 (_ BitVec 32))) (Undefined!5073) (MissingVacant!5073 (index!22522 (_ BitVec 32))) )
))
(declare-fun lt!250046 () SeekEntryResult!5073)

(assert (=> b!549086 (= res!342383 (or (= lt!250046 (MissingZero!5073 i!1132)) (= lt!250046 (MissingVacant!5073 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34611 (_ BitVec 32)) SeekEntryResult!5073)

(assert (=> b!549086 (= lt!250046 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549087 () Bool)

(declare-fun res!342381 () Bool)

(assert (=> b!549087 (=> (not res!342381) (not e!317168))))

(declare-datatypes ((List!10750 0))(
  ( (Nil!10747) (Cons!10746 (h!11719 (_ BitVec 64)) (t!16986 List!10750)) )
))
(declare-fun arrayNoDuplicates!0 (array!34611 (_ BitVec 32) List!10750) Bool)

(assert (=> b!549087 (= res!342381 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10747))))

(declare-fun b!549088 () Bool)

(declare-fun res!342385 () Bool)

(assert (=> b!549088 (=> (not res!342385) (not e!317169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549088 (= res!342385 (validKeyInArray!0 k!1914))))

(declare-fun b!549089 () Bool)

(declare-fun res!342386 () Bool)

(assert (=> b!549089 (=> (not res!342386) (not e!317169))))

(assert (=> b!549089 (= res!342386 (validKeyInArray!0 (select (arr!16617 a!3118) j!142)))))

(declare-fun b!549090 () Bool)

(declare-fun res!342379 () Bool)

(assert (=> b!549090 (=> (not res!342379) (not e!317169))))

(declare-fun arrayContainsKey!0 (array!34611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549090 (= res!342379 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549091 () Bool)

(assert (=> b!549091 (= e!317168 false)))

(declare-fun lt!250045 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549091 (= lt!250045 (toIndex!0 (select (store (arr!16617 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!549092 () Bool)

(declare-fun res!342384 () Bool)

(assert (=> b!549092 (=> (not res!342384) (not e!317168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34611 (_ BitVec 32)) Bool)

(assert (=> b!549092 (= res!342384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50204 res!342380) b!549085))

(assert (= (and b!549085 res!342382) b!549089))

(assert (= (and b!549089 res!342386) b!549088))

(assert (= (and b!549088 res!342385) b!549090))

(assert (= (and b!549090 res!342379) b!549086))

(assert (= (and b!549086 res!342383) b!549092))

(assert (= (and b!549092 res!342384) b!549087))

(assert (= (and b!549087 res!342381) b!549091))

(declare-fun m!525973 () Bool)

(assert (=> b!549087 m!525973))

(declare-fun m!525975 () Bool)

(assert (=> b!549090 m!525975))

(declare-fun m!525977 () Bool)

(assert (=> start!50204 m!525977))

(declare-fun m!525979 () Bool)

(assert (=> start!50204 m!525979))

(declare-fun m!525981 () Bool)

(assert (=> b!549091 m!525981))

(declare-fun m!525983 () Bool)

(assert (=> b!549091 m!525983))

(assert (=> b!549091 m!525983))

(declare-fun m!525985 () Bool)

(assert (=> b!549091 m!525985))

(declare-fun m!525987 () Bool)

(assert (=> b!549088 m!525987))

(declare-fun m!525989 () Bool)

(assert (=> b!549086 m!525989))

(declare-fun m!525991 () Bool)

(assert (=> b!549092 m!525991))

(declare-fun m!525993 () Bool)

(assert (=> b!549089 m!525993))

(assert (=> b!549089 m!525993))

(declare-fun m!525995 () Bool)

(assert (=> b!549089 m!525995))

(push 1)

