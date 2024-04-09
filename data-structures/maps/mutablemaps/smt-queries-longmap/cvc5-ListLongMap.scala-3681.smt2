; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50720 () Bool)

(assert start!50720)

(declare-fun b!554267 () Bool)

(declare-fun res!346830 () Bool)

(declare-fun e!319597 () Bool)

(assert (=> b!554267 (=> (not res!346830) (not e!319597))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34899 0))(
  ( (array!34900 (arr!16755 (Array (_ BitVec 32) (_ BitVec 64))) (size!17119 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34899)

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5211 0))(
  ( (MissingZero!5211 (index!23071 (_ BitVec 32))) (Found!5211 (index!23072 (_ BitVec 32))) (Intermediate!5211 (undefined!6023 Bool) (index!23073 (_ BitVec 32)) (x!52016 (_ BitVec 32))) (Undefined!5211) (MissingVacant!5211 (index!23074 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34899 (_ BitVec 32)) SeekEntryResult!5211)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554267 (= res!346830 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16755 a!3118) j!142) mask!3119) (select (arr!16755 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16755 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16755 a!3118) i!1132 k!1914) j!142) (array!34900 (store (arr!16755 a!3118) i!1132 k!1914) (size!17119 a!3118)) mask!3119)))))

(declare-fun b!554268 () Bool)

(declare-fun res!346831 () Bool)

(declare-fun e!319599 () Bool)

(assert (=> b!554268 (=> (not res!346831) (not e!319599))))

(assert (=> b!554268 (= res!346831 (and (= (size!17119 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17119 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17119 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554269 () Bool)

(declare-fun res!346835 () Bool)

(assert (=> b!554269 (=> (not res!346835) (not e!319597))))

(declare-datatypes ((List!10888 0))(
  ( (Nil!10885) (Cons!10884 (h!11869 (_ BitVec 64)) (t!17124 List!10888)) )
))
(declare-fun arrayNoDuplicates!0 (array!34899 (_ BitVec 32) List!10888) Bool)

(assert (=> b!554269 (= res!346835 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10885))))

(declare-fun b!554270 () Bool)

(declare-fun e!319600 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34899 (_ BitVec 32)) SeekEntryResult!5211)

(assert (=> b!554270 (= e!319600 (= (seekEntryOrOpen!0 (select (arr!16755 a!3118) j!142) a!3118 mask!3119) (Found!5211 j!142)))))

(declare-fun b!554271 () Bool)

(declare-fun res!346836 () Bool)

(assert (=> b!554271 (=> (not res!346836) (not e!319599))))

(declare-fun arrayContainsKey!0 (array!34899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554271 (= res!346836 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!346834 () Bool)

(assert (=> start!50720 (=> (not res!346834) (not e!319599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50720 (= res!346834 (validMask!0 mask!3119))))

(assert (=> start!50720 e!319599))

(assert (=> start!50720 true))

(declare-fun array_inv!12529 (array!34899) Bool)

(assert (=> start!50720 (array_inv!12529 a!3118)))

(declare-fun b!554272 () Bool)

(assert (=> b!554272 (= e!319599 e!319597)))

(declare-fun res!346838 () Bool)

(assert (=> b!554272 (=> (not res!346838) (not e!319597))))

(declare-fun lt!251758 () SeekEntryResult!5211)

(assert (=> b!554272 (= res!346838 (or (= lt!251758 (MissingZero!5211 i!1132)) (= lt!251758 (MissingVacant!5211 i!1132))))))

(assert (=> b!554272 (= lt!251758 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554273 () Bool)

(declare-fun res!346829 () Bool)

(assert (=> b!554273 (=> (not res!346829) (not e!319599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554273 (= res!346829 (validKeyInArray!0 (select (arr!16755 a!3118) j!142)))))

(declare-fun b!554274 () Bool)

(declare-fun res!346833 () Bool)

(assert (=> b!554274 (=> (not res!346833) (not e!319597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34899 (_ BitVec 32)) Bool)

(assert (=> b!554274 (= res!346833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554275 () Bool)

(assert (=> b!554275 (= e!319597 (not true))))

(assert (=> b!554275 e!319600))

(declare-fun res!346832 () Bool)

(assert (=> b!554275 (=> (not res!346832) (not e!319600))))

(assert (=> b!554275 (= res!346832 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17196 0))(
  ( (Unit!17197) )
))
(declare-fun lt!251759 () Unit!17196)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34899 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17196)

(assert (=> b!554275 (= lt!251759 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554276 () Bool)

(declare-fun res!346837 () Bool)

(assert (=> b!554276 (=> (not res!346837) (not e!319599))))

(assert (=> b!554276 (= res!346837 (validKeyInArray!0 k!1914))))

(assert (= (and start!50720 res!346834) b!554268))

(assert (= (and b!554268 res!346831) b!554273))

(assert (= (and b!554273 res!346829) b!554276))

(assert (= (and b!554276 res!346837) b!554271))

(assert (= (and b!554271 res!346836) b!554272))

(assert (= (and b!554272 res!346838) b!554274))

(assert (= (and b!554274 res!346833) b!554269))

(assert (= (and b!554269 res!346835) b!554267))

(assert (= (and b!554267 res!346830) b!554275))

(assert (= (and b!554275 res!346832) b!554270))

(declare-fun m!531607 () Bool)

(assert (=> b!554273 m!531607))

(assert (=> b!554273 m!531607))

(declare-fun m!531609 () Bool)

(assert (=> b!554273 m!531609))

(assert (=> b!554267 m!531607))

(declare-fun m!531611 () Bool)

(assert (=> b!554267 m!531611))

(assert (=> b!554267 m!531607))

(declare-fun m!531613 () Bool)

(assert (=> b!554267 m!531613))

(declare-fun m!531615 () Bool)

(assert (=> b!554267 m!531615))

(assert (=> b!554267 m!531613))

(declare-fun m!531617 () Bool)

(assert (=> b!554267 m!531617))

(assert (=> b!554267 m!531611))

(assert (=> b!554267 m!531607))

(declare-fun m!531619 () Bool)

(assert (=> b!554267 m!531619))

(declare-fun m!531621 () Bool)

(assert (=> b!554267 m!531621))

(assert (=> b!554267 m!531613))

(assert (=> b!554267 m!531615))

(declare-fun m!531623 () Bool)

(assert (=> b!554274 m!531623))

(declare-fun m!531625 () Bool)

(assert (=> b!554272 m!531625))

(declare-fun m!531627 () Bool)

(assert (=> start!50720 m!531627))

(declare-fun m!531629 () Bool)

(assert (=> start!50720 m!531629))

(declare-fun m!531631 () Bool)

(assert (=> b!554271 m!531631))

(declare-fun m!531633 () Bool)

(assert (=> b!554275 m!531633))

(declare-fun m!531635 () Bool)

(assert (=> b!554275 m!531635))

(assert (=> b!554270 m!531607))

(assert (=> b!554270 m!531607))

(declare-fun m!531637 () Bool)

(assert (=> b!554270 m!531637))

(declare-fun m!531639 () Bool)

(assert (=> b!554276 m!531639))

(declare-fun m!531641 () Bool)

(assert (=> b!554269 m!531641))

(push 1)

(assert (not b!554270))

