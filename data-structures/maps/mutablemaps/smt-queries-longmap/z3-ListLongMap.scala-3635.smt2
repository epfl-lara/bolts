; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50206 () Bool)

(assert start!50206)

(declare-fun b!549109 () Bool)

(declare-fun e!317179 () Bool)

(declare-fun e!317178 () Bool)

(assert (=> b!549109 (= e!317179 e!317178)))

(declare-fun res!342405 () Bool)

(assert (=> b!549109 (=> (not res!342405) (not e!317178))))

(declare-datatypes ((SeekEntryResult!5074 0))(
  ( (MissingZero!5074 (index!22523 (_ BitVec 32))) (Found!5074 (index!22524 (_ BitVec 32))) (Intermediate!5074 (undefined!5886 Bool) (index!22525 (_ BitVec 32)) (x!51487 (_ BitVec 32))) (Undefined!5074) (MissingVacant!5074 (index!22526 (_ BitVec 32))) )
))
(declare-fun lt!250052 () SeekEntryResult!5074)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549109 (= res!342405 (or (= lt!250052 (MissingZero!5074 i!1132)) (= lt!250052 (MissingVacant!5074 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!34613 0))(
  ( (array!34614 (arr!16618 (Array (_ BitVec 32) (_ BitVec 64))) (size!16982 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34613)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34613 (_ BitVec 32)) SeekEntryResult!5074)

(assert (=> b!549109 (= lt!250052 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549110 () Bool)

(declare-fun res!342408 () Bool)

(assert (=> b!549110 (=> (not res!342408) (not e!317179))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549110 (= res!342408 (validKeyInArray!0 (select (arr!16618 a!3118) j!142)))))

(declare-fun b!549111 () Bool)

(assert (=> b!549111 (= e!317178 false)))

(declare-fun lt!250051 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549111 (= lt!250051 (toIndex!0 (select (store (arr!16618 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(declare-fun b!549112 () Bool)

(declare-fun res!342403 () Bool)

(assert (=> b!549112 (=> (not res!342403) (not e!317179))))

(assert (=> b!549112 (= res!342403 (and (= (size!16982 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16982 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16982 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549113 () Bool)

(declare-fun res!342410 () Bool)

(assert (=> b!549113 (=> (not res!342410) (not e!317178))))

(declare-datatypes ((List!10751 0))(
  ( (Nil!10748) (Cons!10747 (h!11720 (_ BitVec 64)) (t!16987 List!10751)) )
))
(declare-fun arrayNoDuplicates!0 (array!34613 (_ BitVec 32) List!10751) Bool)

(assert (=> b!549113 (= res!342410 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10748))))

(declare-fun b!549114 () Bool)

(declare-fun res!342406 () Bool)

(assert (=> b!549114 (=> (not res!342406) (not e!317179))))

(declare-fun arrayContainsKey!0 (array!34613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549114 (= res!342406 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342409 () Bool)

(assert (=> start!50206 (=> (not res!342409) (not e!317179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50206 (= res!342409 (validMask!0 mask!3119))))

(assert (=> start!50206 e!317179))

(assert (=> start!50206 true))

(declare-fun array_inv!12392 (array!34613) Bool)

(assert (=> start!50206 (array_inv!12392 a!3118)))

(declare-fun b!549115 () Bool)

(declare-fun res!342407 () Bool)

(assert (=> b!549115 (=> (not res!342407) (not e!317178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34613 (_ BitVec 32)) Bool)

(assert (=> b!549115 (= res!342407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549116 () Bool)

(declare-fun res!342404 () Bool)

(assert (=> b!549116 (=> (not res!342404) (not e!317179))))

(assert (=> b!549116 (= res!342404 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50206 res!342409) b!549112))

(assert (= (and b!549112 res!342403) b!549110))

(assert (= (and b!549110 res!342408) b!549116))

(assert (= (and b!549116 res!342404) b!549114))

(assert (= (and b!549114 res!342406) b!549109))

(assert (= (and b!549109 res!342405) b!549115))

(assert (= (and b!549115 res!342407) b!549113))

(assert (= (and b!549113 res!342410) b!549111))

(declare-fun m!525997 () Bool)

(assert (=> b!549116 m!525997))

(declare-fun m!525999 () Bool)

(assert (=> b!549114 m!525999))

(declare-fun m!526001 () Bool)

(assert (=> b!549110 m!526001))

(assert (=> b!549110 m!526001))

(declare-fun m!526003 () Bool)

(assert (=> b!549110 m!526003))

(declare-fun m!526005 () Bool)

(assert (=> start!50206 m!526005))

(declare-fun m!526007 () Bool)

(assert (=> start!50206 m!526007))

(declare-fun m!526009 () Bool)

(assert (=> b!549109 m!526009))

(declare-fun m!526011 () Bool)

(assert (=> b!549111 m!526011))

(declare-fun m!526013 () Bool)

(assert (=> b!549111 m!526013))

(assert (=> b!549111 m!526013))

(declare-fun m!526015 () Bool)

(assert (=> b!549111 m!526015))

(declare-fun m!526017 () Bool)

(assert (=> b!549113 m!526017))

(declare-fun m!526019 () Bool)

(assert (=> b!549115 m!526019))

(check-sat (not b!549110) (not start!50206) (not b!549111) (not b!549114) (not b!549109) (not b!549116) (not b!549113) (not b!549115))
(check-sat)
