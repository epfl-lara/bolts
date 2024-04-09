; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52896 () Bool)

(assert start!52896)

(declare-fun b!576227 () Bool)

(declare-fun res!364615 () Bool)

(declare-fun e!331527 () Bool)

(assert (=> b!576227 (=> (not res!364615) (not e!331527))))

(declare-datatypes ((array!35938 0))(
  ( (array!35939 (arr!17246 (Array (_ BitVec 32) (_ BitVec 64))) (size!17610 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35938)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35938 (_ BitVec 32)) Bool)

(assert (=> b!576227 (= res!364615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576228 () Bool)

(assert (=> b!576228 (= e!331527 (not true))))

(declare-fun e!331528 () Bool)

(assert (=> b!576228 e!331528))

(declare-fun res!364617 () Bool)

(assert (=> b!576228 (=> (not res!364617) (not e!331528))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!576228 (= res!364617 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18106 0))(
  ( (Unit!18107) )
))
(declare-fun lt!263621 () Unit!18106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18106)

(assert (=> b!576228 (= lt!263621 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576229 () Bool)

(declare-fun res!364614 () Bool)

(declare-fun e!331526 () Bool)

(assert (=> b!576229 (=> (not res!364614) (not e!331526))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576229 (= res!364614 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!576230 () Bool)

(assert (=> b!576230 (= e!331526 e!331527)))

(declare-fun res!364611 () Bool)

(assert (=> b!576230 (=> (not res!364611) (not e!331527))))

(declare-datatypes ((SeekEntryResult!5702 0))(
  ( (MissingZero!5702 (index!25035 (_ BitVec 32))) (Found!5702 (index!25036 (_ BitVec 32))) (Intermediate!5702 (undefined!6514 Bool) (index!25037 (_ BitVec 32)) (x!53952 (_ BitVec 32))) (Undefined!5702) (MissingVacant!5702 (index!25038 (_ BitVec 32))) )
))
(declare-fun lt!263620 () SeekEntryResult!5702)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576230 (= res!364611 (or (= lt!263620 (MissingZero!5702 i!1132)) (= lt!263620 (MissingVacant!5702 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35938 (_ BitVec 32)) SeekEntryResult!5702)

(assert (=> b!576230 (= lt!263620 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!576231 () Bool)

(assert (=> b!576231 (= e!331528 (= (seekEntryOrOpen!0 (select (arr!17246 a!3118) j!142) a!3118 mask!3119) (Found!5702 j!142)))))

(declare-fun b!576232 () Bool)

(declare-fun res!364619 () Bool)

(assert (=> b!576232 (=> (not res!364619) (not e!331526))))

(assert (=> b!576232 (= res!364619 (and (= (size!17610 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17610 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17610 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!364613 () Bool)

(assert (=> start!52896 (=> (not res!364613) (not e!331526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52896 (= res!364613 (validMask!0 mask!3119))))

(assert (=> start!52896 e!331526))

(assert (=> start!52896 true))

(declare-fun array_inv!13020 (array!35938) Bool)

(assert (=> start!52896 (array_inv!13020 a!3118)))

(declare-fun b!576233 () Bool)

(declare-fun res!364616 () Bool)

(assert (=> b!576233 (=> (not res!364616) (not e!331526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576233 (= res!364616 (validKeyInArray!0 k!1914))))

(declare-fun b!576234 () Bool)

(declare-fun res!364618 () Bool)

(assert (=> b!576234 (=> (not res!364618) (not e!331527))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35938 (_ BitVec 32)) SeekEntryResult!5702)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576234 (= res!364618 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17246 a!3118) j!142) mask!3119) (select (arr!17246 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17246 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17246 a!3118) i!1132 k!1914) j!142) (array!35939 (store (arr!17246 a!3118) i!1132 k!1914) (size!17610 a!3118)) mask!3119)))))

(declare-fun b!576235 () Bool)

(declare-fun res!364610 () Bool)

(assert (=> b!576235 (=> (not res!364610) (not e!331526))))

(assert (=> b!576235 (= res!364610 (validKeyInArray!0 (select (arr!17246 a!3118) j!142)))))

(declare-fun b!576236 () Bool)

(declare-fun res!364612 () Bool)

(assert (=> b!576236 (=> (not res!364612) (not e!331527))))

(declare-datatypes ((List!11379 0))(
  ( (Nil!11376) (Cons!11375 (h!12417 (_ BitVec 64)) (t!17615 List!11379)) )
))
(declare-fun arrayNoDuplicates!0 (array!35938 (_ BitVec 32) List!11379) Bool)

(assert (=> b!576236 (= res!364612 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11376))))

(assert (= (and start!52896 res!364613) b!576232))

(assert (= (and b!576232 res!364619) b!576235))

(assert (= (and b!576235 res!364610) b!576233))

(assert (= (and b!576233 res!364616) b!576229))

(assert (= (and b!576229 res!364614) b!576230))

(assert (= (and b!576230 res!364611) b!576227))

(assert (= (and b!576227 res!364615) b!576236))

(assert (= (and b!576236 res!364612) b!576234))

(assert (= (and b!576234 res!364618) b!576228))

(assert (= (and b!576228 res!364617) b!576231))

(declare-fun m!555223 () Bool)

(assert (=> b!576230 m!555223))

(declare-fun m!555225 () Bool)

(assert (=> b!576229 m!555225))

(declare-fun m!555227 () Bool)

(assert (=> b!576234 m!555227))

(declare-fun m!555229 () Bool)

(assert (=> b!576234 m!555229))

(assert (=> b!576234 m!555227))

(declare-fun m!555231 () Bool)

(assert (=> b!576234 m!555231))

(declare-fun m!555233 () Bool)

(assert (=> b!576234 m!555233))

(assert (=> b!576234 m!555231))

(declare-fun m!555235 () Bool)

(assert (=> b!576234 m!555235))

(assert (=> b!576234 m!555229))

(assert (=> b!576234 m!555227))

(declare-fun m!555237 () Bool)

(assert (=> b!576234 m!555237))

(declare-fun m!555239 () Bool)

(assert (=> b!576234 m!555239))

(assert (=> b!576234 m!555231))

(assert (=> b!576234 m!555233))

(declare-fun m!555241 () Bool)

(assert (=> b!576228 m!555241))

(declare-fun m!555243 () Bool)

(assert (=> b!576228 m!555243))

(assert (=> b!576235 m!555227))

(assert (=> b!576235 m!555227))

(declare-fun m!555245 () Bool)

(assert (=> b!576235 m!555245))

(declare-fun m!555247 () Bool)

(assert (=> start!52896 m!555247))

(declare-fun m!555249 () Bool)

(assert (=> start!52896 m!555249))

(declare-fun m!555251 () Bool)

(assert (=> b!576227 m!555251))

(declare-fun m!555253 () Bool)

(assert (=> b!576233 m!555253))

(declare-fun m!555255 () Bool)

(assert (=> b!576236 m!555255))

(assert (=> b!576231 m!555227))

(assert (=> b!576231 m!555227))

(declare-fun m!555257 () Bool)

(assert (=> b!576231 m!555257))

(push 1)

(assert (not b!576235))

(assert (not b!576227))

(assert (not b!576231))

(assert (not b!576230))

(assert (not b!576233))

(assert (not start!52896))

(assert (not b!576229))

(assert (not b!576234))

(assert (not b!576228))

(assert (not b!576236))

(check-sat)

(pop 1)

