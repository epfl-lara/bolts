; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50740 () Bool)

(assert start!50740)

(declare-fun b!554544 () Bool)

(declare-fun e!319718 () Bool)

(declare-fun e!319717 () Bool)

(assert (=> b!554544 (= e!319718 e!319717)))

(declare-fun res!347114 () Bool)

(assert (=> b!554544 (=> (not res!347114) (not e!319717))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5221 0))(
  ( (MissingZero!5221 (index!23111 (_ BitVec 32))) (Found!5221 (index!23112 (_ BitVec 32))) (Intermediate!5221 (undefined!6033 Bool) (index!23113 (_ BitVec 32)) (x!52050 (_ BitVec 32))) (Undefined!5221) (MissingVacant!5221 (index!23114 (_ BitVec 32))) )
))
(declare-fun lt!251910 () SeekEntryResult!5221)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34919 0))(
  ( (array!34920 (arr!16765 (Array (_ BitVec 32) (_ BitVec 64))) (size!17129 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34919)

(declare-fun lt!251913 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34919 (_ BitVec 32)) SeekEntryResult!5221)

(assert (=> b!554544 (= res!347114 (= lt!251910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251913 (select (store (arr!16765 a!3118) i!1132 k0!1914) j!142) (array!34920 (store (arr!16765 a!3118) i!1132 k0!1914) (size!17129 a!3118)) mask!3119)))))

(declare-fun lt!251915 () (_ BitVec 32))

(assert (=> b!554544 (= lt!251910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251915 (select (arr!16765 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554544 (= lt!251913 (toIndex!0 (select (store (arr!16765 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554544 (= lt!251915 (toIndex!0 (select (arr!16765 a!3118) j!142) mask!3119))))

(declare-fun b!554545 () Bool)

(declare-fun res!347108 () Bool)

(assert (=> b!554545 (=> (not res!347108) (not e!319718))))

(declare-datatypes ((List!10898 0))(
  ( (Nil!10895) (Cons!10894 (h!11879 (_ BitVec 64)) (t!17134 List!10898)) )
))
(declare-fun arrayNoDuplicates!0 (array!34919 (_ BitVec 32) List!10898) Bool)

(assert (=> b!554545 (= res!347108 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10895))))

(declare-fun b!554546 () Bool)

(declare-fun res!347106 () Bool)

(declare-fun e!319720 () Bool)

(assert (=> b!554546 (=> (not res!347106) (not e!319720))))

(declare-fun arrayContainsKey!0 (array!34919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554546 (= res!347106 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554547 () Bool)

(assert (=> b!554547 (= e!319717 (not true))))

(declare-fun lt!251914 () SeekEntryResult!5221)

(get-info :version)

(assert (=> b!554547 (and (= lt!251914 (Found!5221 j!142)) (or (undefined!6033 lt!251910) (not ((_ is Intermediate!5221) lt!251910)) (= (select (arr!16765 a!3118) (index!23113 lt!251910)) (select (arr!16765 a!3118) j!142)) (not (= (select (arr!16765 a!3118) (index!23113 lt!251910)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251914 (MissingZero!5221 (index!23113 lt!251910)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34919 (_ BitVec 32)) SeekEntryResult!5221)

(assert (=> b!554547 (= lt!251914 (seekEntryOrOpen!0 (select (arr!16765 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34919 (_ BitVec 32)) Bool)

(assert (=> b!554547 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17216 0))(
  ( (Unit!17217) )
))
(declare-fun lt!251911 () Unit!17216)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34919 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17216)

(assert (=> b!554547 (= lt!251911 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554548 () Bool)

(declare-fun res!347112 () Bool)

(assert (=> b!554548 (=> (not res!347112) (not e!319720))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554548 (= res!347112 (validKeyInArray!0 (select (arr!16765 a!3118) j!142)))))

(declare-fun res!347107 () Bool)

(assert (=> start!50740 (=> (not res!347107) (not e!319720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50740 (= res!347107 (validMask!0 mask!3119))))

(assert (=> start!50740 e!319720))

(assert (=> start!50740 true))

(declare-fun array_inv!12539 (array!34919) Bool)

(assert (=> start!50740 (array_inv!12539 a!3118)))

(declare-fun b!554549 () Bool)

(declare-fun res!347109 () Bool)

(assert (=> b!554549 (=> (not res!347109) (not e!319720))))

(assert (=> b!554549 (= res!347109 (validKeyInArray!0 k0!1914))))

(declare-fun b!554550 () Bool)

(assert (=> b!554550 (= e!319720 e!319718)))

(declare-fun res!347110 () Bool)

(assert (=> b!554550 (=> (not res!347110) (not e!319718))))

(declare-fun lt!251912 () SeekEntryResult!5221)

(assert (=> b!554550 (= res!347110 (or (= lt!251912 (MissingZero!5221 i!1132)) (= lt!251912 (MissingVacant!5221 i!1132))))))

(assert (=> b!554550 (= lt!251912 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554551 () Bool)

(declare-fun res!347111 () Bool)

(assert (=> b!554551 (=> (not res!347111) (not e!319718))))

(assert (=> b!554551 (= res!347111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554552 () Bool)

(declare-fun res!347113 () Bool)

(assert (=> b!554552 (=> (not res!347113) (not e!319720))))

(assert (=> b!554552 (= res!347113 (and (= (size!17129 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17129 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17129 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50740 res!347107) b!554552))

(assert (= (and b!554552 res!347113) b!554548))

(assert (= (and b!554548 res!347112) b!554549))

(assert (= (and b!554549 res!347109) b!554546))

(assert (= (and b!554546 res!347106) b!554550))

(assert (= (and b!554550 res!347110) b!554551))

(assert (= (and b!554551 res!347111) b!554545))

(assert (= (and b!554545 res!347108) b!554544))

(assert (= (and b!554544 res!347114) b!554547))

(declare-fun m!531981 () Bool)

(assert (=> b!554544 m!531981))

(declare-fun m!531983 () Bool)

(assert (=> b!554544 m!531983))

(assert (=> b!554544 m!531981))

(assert (=> b!554544 m!531981))

(declare-fun m!531985 () Bool)

(assert (=> b!554544 m!531985))

(declare-fun m!531987 () Bool)

(assert (=> b!554544 m!531987))

(declare-fun m!531989 () Bool)

(assert (=> b!554544 m!531989))

(assert (=> b!554544 m!531987))

(declare-fun m!531991 () Bool)

(assert (=> b!554544 m!531991))

(assert (=> b!554544 m!531987))

(declare-fun m!531993 () Bool)

(assert (=> b!554544 m!531993))

(assert (=> b!554548 m!531981))

(assert (=> b!554548 m!531981))

(declare-fun m!531995 () Bool)

(assert (=> b!554548 m!531995))

(declare-fun m!531997 () Bool)

(assert (=> b!554545 m!531997))

(declare-fun m!531999 () Bool)

(assert (=> start!50740 m!531999))

(declare-fun m!532001 () Bool)

(assert (=> start!50740 m!532001))

(assert (=> b!554547 m!531981))

(declare-fun m!532003 () Bool)

(assert (=> b!554547 m!532003))

(declare-fun m!532005 () Bool)

(assert (=> b!554547 m!532005))

(declare-fun m!532007 () Bool)

(assert (=> b!554547 m!532007))

(assert (=> b!554547 m!531981))

(declare-fun m!532009 () Bool)

(assert (=> b!554547 m!532009))

(declare-fun m!532011 () Bool)

(assert (=> b!554549 m!532011))

(declare-fun m!532013 () Bool)

(assert (=> b!554550 m!532013))

(declare-fun m!532015 () Bool)

(assert (=> b!554551 m!532015))

(declare-fun m!532017 () Bool)

(assert (=> b!554546 m!532017))

(check-sat (not b!554549) (not b!554551) (not b!554550) (not b!554545) (not start!50740) (not b!554544) (not b!554548) (not b!554546) (not b!554547))
(check-sat)
