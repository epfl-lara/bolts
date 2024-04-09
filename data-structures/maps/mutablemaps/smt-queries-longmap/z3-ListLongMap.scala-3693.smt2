; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50794 () Bool)

(assert start!50794)

(declare-fun b!555273 () Bool)

(declare-fun res!347843 () Bool)

(declare-fun e!320043 () Bool)

(assert (=> b!555273 (=> (not res!347843) (not e!320043))))

(declare-datatypes ((array!34973 0))(
  ( (array!34974 (arr!16792 (Array (_ BitVec 32) (_ BitVec 64))) (size!17156 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34973)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34973 (_ BitVec 32)) Bool)

(assert (=> b!555273 (= res!347843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555274 () Bool)

(declare-fun e!320042 () Bool)

(assert (=> b!555274 (= e!320042 e!320043)))

(declare-fun res!347838 () Bool)

(assert (=> b!555274 (=> (not res!347838) (not e!320043))))

(declare-datatypes ((SeekEntryResult!5248 0))(
  ( (MissingZero!5248 (index!23219 (_ BitVec 32))) (Found!5248 (index!23220 (_ BitVec 32))) (Intermediate!5248 (undefined!6060 Bool) (index!23221 (_ BitVec 32)) (x!52149 (_ BitVec 32))) (Undefined!5248) (MissingVacant!5248 (index!23222 (_ BitVec 32))) )
))
(declare-fun lt!252396 () SeekEntryResult!5248)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555274 (= res!347838 (or (= lt!252396 (MissingZero!5248 i!1132)) (= lt!252396 (MissingVacant!5248 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34973 (_ BitVec 32)) SeekEntryResult!5248)

(assert (=> b!555274 (= lt!252396 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555275 () Bool)

(declare-fun res!347842 () Bool)

(assert (=> b!555275 (=> (not res!347842) (not e!320042))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!555275 (= res!347842 (and (= (size!17156 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17156 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17156 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555276 () Bool)

(declare-fun res!347835 () Bool)

(assert (=> b!555276 (=> (not res!347835) (not e!320042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555276 (= res!347835 (validKeyInArray!0 k0!1914))))

(declare-fun res!347840 () Bool)

(assert (=> start!50794 (=> (not res!347840) (not e!320042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50794 (= res!347840 (validMask!0 mask!3119))))

(assert (=> start!50794 e!320042))

(assert (=> start!50794 true))

(declare-fun array_inv!12566 (array!34973) Bool)

(assert (=> start!50794 (array_inv!12566 a!3118)))

(declare-fun b!555277 () Bool)

(declare-fun e!320044 () Bool)

(assert (=> b!555277 (= e!320043 e!320044)))

(declare-fun res!347841 () Bool)

(assert (=> b!555277 (=> (not res!347841) (not e!320044))))

(declare-fun lt!252397 () (_ BitVec 32))

(declare-fun lt!252401 () SeekEntryResult!5248)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34973 (_ BitVec 32)) SeekEntryResult!5248)

(assert (=> b!555277 (= res!347841 (= lt!252401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252397 (select (store (arr!16792 a!3118) i!1132 k0!1914) j!142) (array!34974 (store (arr!16792 a!3118) i!1132 k0!1914) (size!17156 a!3118)) mask!3119)))))

(declare-fun lt!252400 () (_ BitVec 32))

(assert (=> b!555277 (= lt!252401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252400 (select (arr!16792 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555277 (= lt!252397 (toIndex!0 (select (store (arr!16792 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555277 (= lt!252400 (toIndex!0 (select (arr!16792 a!3118) j!142) mask!3119))))

(declare-fun b!555278 () Bool)

(declare-fun res!347836 () Bool)

(assert (=> b!555278 (=> (not res!347836) (not e!320042))))

(assert (=> b!555278 (= res!347836 (validKeyInArray!0 (select (arr!16792 a!3118) j!142)))))

(declare-fun b!555279 () Bool)

(declare-fun res!347837 () Bool)

(assert (=> b!555279 (=> (not res!347837) (not e!320042))))

(declare-fun arrayContainsKey!0 (array!34973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555279 (= res!347837 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555280 () Bool)

(assert (=> b!555280 (= e!320044 (not true))))

(declare-fun lt!252398 () SeekEntryResult!5248)

(get-info :version)

(assert (=> b!555280 (and (= lt!252398 (Found!5248 j!142)) (or (undefined!6060 lt!252401) (not ((_ is Intermediate!5248) lt!252401)) (= (select (arr!16792 a!3118) (index!23221 lt!252401)) (select (arr!16792 a!3118) j!142)) (not (= (select (arr!16792 a!3118) (index!23221 lt!252401)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252398 (MissingZero!5248 (index!23221 lt!252401)))))))

(assert (=> b!555280 (= lt!252398 (seekEntryOrOpen!0 (select (arr!16792 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555280 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17270 0))(
  ( (Unit!17271) )
))
(declare-fun lt!252399 () Unit!17270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34973 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17270)

(assert (=> b!555280 (= lt!252399 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555281 () Bool)

(declare-fun res!347839 () Bool)

(assert (=> b!555281 (=> (not res!347839) (not e!320043))))

(declare-datatypes ((List!10925 0))(
  ( (Nil!10922) (Cons!10921 (h!11906 (_ BitVec 64)) (t!17161 List!10925)) )
))
(declare-fun arrayNoDuplicates!0 (array!34973 (_ BitVec 32) List!10925) Bool)

(assert (=> b!555281 (= res!347839 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10922))))

(assert (= (and start!50794 res!347840) b!555275))

(assert (= (and b!555275 res!347842) b!555278))

(assert (= (and b!555278 res!347836) b!555276))

(assert (= (and b!555276 res!347835) b!555279))

(assert (= (and b!555279 res!347837) b!555274))

(assert (= (and b!555274 res!347838) b!555273))

(assert (= (and b!555273 res!347843) b!555281))

(assert (= (and b!555281 res!347839) b!555277))

(assert (= (and b!555277 res!347841) b!555280))

(declare-fun m!533007 () Bool)

(assert (=> b!555273 m!533007))

(declare-fun m!533009 () Bool)

(assert (=> b!555277 m!533009))

(declare-fun m!533011 () Bool)

(assert (=> b!555277 m!533011))

(assert (=> b!555277 m!533009))

(declare-fun m!533013 () Bool)

(assert (=> b!555277 m!533013))

(declare-fun m!533015 () Bool)

(assert (=> b!555277 m!533015))

(assert (=> b!555277 m!533013))

(declare-fun m!533017 () Bool)

(assert (=> b!555277 m!533017))

(assert (=> b!555277 m!533009))

(declare-fun m!533019 () Bool)

(assert (=> b!555277 m!533019))

(assert (=> b!555277 m!533013))

(declare-fun m!533021 () Bool)

(assert (=> b!555277 m!533021))

(declare-fun m!533023 () Bool)

(assert (=> start!50794 m!533023))

(declare-fun m!533025 () Bool)

(assert (=> start!50794 m!533025))

(assert (=> b!555280 m!533009))

(declare-fun m!533027 () Bool)

(assert (=> b!555280 m!533027))

(assert (=> b!555280 m!533009))

(declare-fun m!533029 () Bool)

(assert (=> b!555280 m!533029))

(declare-fun m!533031 () Bool)

(assert (=> b!555280 m!533031))

(declare-fun m!533033 () Bool)

(assert (=> b!555280 m!533033))

(declare-fun m!533035 () Bool)

(assert (=> b!555276 m!533035))

(declare-fun m!533037 () Bool)

(assert (=> b!555279 m!533037))

(declare-fun m!533039 () Bool)

(assert (=> b!555274 m!533039))

(declare-fun m!533041 () Bool)

(assert (=> b!555281 m!533041))

(assert (=> b!555278 m!533009))

(assert (=> b!555278 m!533009))

(declare-fun m!533043 () Bool)

(assert (=> b!555278 m!533043))

(check-sat (not b!555280) (not b!555281) (not b!555278) (not b!555279) (not start!50794) (not b!555273) (not b!555274) (not b!555277) (not b!555276))
(check-sat)
