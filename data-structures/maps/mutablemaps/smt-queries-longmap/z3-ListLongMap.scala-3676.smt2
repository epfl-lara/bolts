; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50692 () Bool)

(assert start!50692)

(declare-fun b!553838 () Bool)

(declare-fun e!319404 () Bool)

(declare-fun e!319405 () Bool)

(assert (=> b!553838 (= e!319404 e!319405)))

(declare-fun res!346403 () Bool)

(assert (=> b!553838 (=> (not res!346403) (not e!319405))))

(declare-datatypes ((SeekEntryResult!5197 0))(
  ( (MissingZero!5197 (index!23015 (_ BitVec 32))) (Found!5197 (index!23016 (_ BitVec 32))) (Intermediate!5197 (undefined!6009 Bool) (index!23017 (_ BitVec 32)) (x!51962 (_ BitVec 32))) (Undefined!5197) (MissingVacant!5197 (index!23018 (_ BitVec 32))) )
))
(declare-fun lt!251621 () SeekEntryResult!5197)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553838 (= res!346403 (or (= lt!251621 (MissingZero!5197 i!1132)) (= lt!251621 (MissingVacant!5197 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!34871 0))(
  ( (array!34872 (arr!16741 (Array (_ BitVec 32) (_ BitVec 64))) (size!17105 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34871)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34871 (_ BitVec 32)) SeekEntryResult!5197)

(assert (=> b!553838 (= lt!251621 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553839 () Bool)

(declare-fun res!346406 () Bool)

(assert (=> b!553839 (=> (not res!346406) (not e!319405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34871 (_ BitVec 32)) Bool)

(assert (=> b!553839 (= res!346406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553840 () Bool)

(declare-fun res!346400 () Bool)

(assert (=> b!553840 (=> (not res!346400) (not e!319404))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553840 (= res!346400 (validKeyInArray!0 (select (arr!16741 a!3118) j!142)))))

(declare-fun b!553842 () Bool)

(declare-fun res!346405 () Bool)

(assert (=> b!553842 (=> (not res!346405) (not e!319404))))

(declare-fun arrayContainsKey!0 (array!34871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553842 (= res!346405 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun e!319402 () Bool)

(declare-fun b!553843 () Bool)

(assert (=> b!553843 (= e!319402 (= (seekEntryOrOpen!0 (select (arr!16741 a!3118) j!142) a!3118 mask!3119) (Found!5197 j!142)))))

(declare-fun b!553844 () Bool)

(declare-fun res!346401 () Bool)

(assert (=> b!553844 (=> (not res!346401) (not e!319405))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34871 (_ BitVec 32)) SeekEntryResult!5197)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553844 (= res!346401 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16741 a!3118) j!142) mask!3119) (select (arr!16741 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16741 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16741 a!3118) i!1132 k0!1914) j!142) (array!34872 (store (arr!16741 a!3118) i!1132 k0!1914) (size!17105 a!3118)) mask!3119)))))

(declare-fun b!553845 () Bool)

(declare-fun res!346407 () Bool)

(assert (=> b!553845 (=> (not res!346407) (not e!319404))))

(assert (=> b!553845 (= res!346407 (and (= (size!17105 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17105 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17105 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553846 () Bool)

(assert (=> b!553846 (= e!319405 (not true))))

(assert (=> b!553846 e!319402))

(declare-fun res!346402 () Bool)

(assert (=> b!553846 (=> (not res!346402) (not e!319402))))

(assert (=> b!553846 (= res!346402 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17168 0))(
  ( (Unit!17169) )
))
(declare-fun lt!251620 () Unit!17168)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34871 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17168)

(assert (=> b!553846 (= lt!251620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553847 () Bool)

(declare-fun res!346409 () Bool)

(assert (=> b!553847 (=> (not res!346409) (not e!319405))))

(declare-datatypes ((List!10874 0))(
  ( (Nil!10871) (Cons!10870 (h!11855 (_ BitVec 64)) (t!17110 List!10874)) )
))
(declare-fun arrayNoDuplicates!0 (array!34871 (_ BitVec 32) List!10874) Bool)

(assert (=> b!553847 (= res!346409 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10871))))

(declare-fun b!553841 () Bool)

(declare-fun res!346404 () Bool)

(assert (=> b!553841 (=> (not res!346404) (not e!319404))))

(assert (=> b!553841 (= res!346404 (validKeyInArray!0 k0!1914))))

(declare-fun res!346408 () Bool)

(assert (=> start!50692 (=> (not res!346408) (not e!319404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50692 (= res!346408 (validMask!0 mask!3119))))

(assert (=> start!50692 e!319404))

(assert (=> start!50692 true))

(declare-fun array_inv!12515 (array!34871) Bool)

(assert (=> start!50692 (array_inv!12515 a!3118)))

(assert (= (and start!50692 res!346408) b!553845))

(assert (= (and b!553845 res!346407) b!553840))

(assert (= (and b!553840 res!346400) b!553841))

(assert (= (and b!553841 res!346404) b!553842))

(assert (= (and b!553842 res!346405) b!553838))

(assert (= (and b!553838 res!346403) b!553839))

(assert (= (and b!553839 res!346406) b!553847))

(assert (= (and b!553847 res!346409) b!553844))

(assert (= (and b!553844 res!346401) b!553846))

(assert (= (and b!553846 res!346402) b!553843))

(declare-fun m!531085 () Bool)

(assert (=> start!50692 m!531085))

(declare-fun m!531087 () Bool)

(assert (=> start!50692 m!531087))

(declare-fun m!531089 () Bool)

(assert (=> b!553841 m!531089))

(declare-fun m!531091 () Bool)

(assert (=> b!553843 m!531091))

(assert (=> b!553843 m!531091))

(declare-fun m!531093 () Bool)

(assert (=> b!553843 m!531093))

(declare-fun m!531095 () Bool)

(assert (=> b!553846 m!531095))

(declare-fun m!531097 () Bool)

(assert (=> b!553846 m!531097))

(declare-fun m!531099 () Bool)

(assert (=> b!553839 m!531099))

(declare-fun m!531101 () Bool)

(assert (=> b!553838 m!531101))

(declare-fun m!531103 () Bool)

(assert (=> b!553847 m!531103))

(assert (=> b!553840 m!531091))

(assert (=> b!553840 m!531091))

(declare-fun m!531105 () Bool)

(assert (=> b!553840 m!531105))

(declare-fun m!531107 () Bool)

(assert (=> b!553842 m!531107))

(assert (=> b!553844 m!531091))

(declare-fun m!531109 () Bool)

(assert (=> b!553844 m!531109))

(assert (=> b!553844 m!531091))

(declare-fun m!531111 () Bool)

(assert (=> b!553844 m!531111))

(declare-fun m!531113 () Bool)

(assert (=> b!553844 m!531113))

(assert (=> b!553844 m!531111))

(declare-fun m!531115 () Bool)

(assert (=> b!553844 m!531115))

(assert (=> b!553844 m!531109))

(assert (=> b!553844 m!531091))

(declare-fun m!531117 () Bool)

(assert (=> b!553844 m!531117))

(declare-fun m!531119 () Bool)

(assert (=> b!553844 m!531119))

(assert (=> b!553844 m!531111))

(assert (=> b!553844 m!531113))

(check-sat (not b!553843) (not b!553846) (not b!553844) (not b!553842) (not b!553840) (not b!553839) (not b!553847) (not start!50692) (not b!553838) (not b!553841))
(check-sat)
