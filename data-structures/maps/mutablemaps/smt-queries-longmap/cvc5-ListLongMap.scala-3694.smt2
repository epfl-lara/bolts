; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50798 () Bool)

(assert start!50798)

(declare-fun b!555327 () Bool)

(declare-fun res!347896 () Bool)

(declare-fun e!320067 () Bool)

(assert (=> b!555327 (=> (not res!347896) (not e!320067))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34977 0))(
  ( (array!34978 (arr!16794 (Array (_ BitVec 32) (_ BitVec 64))) (size!17158 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34977)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!555327 (= res!347896 (and (= (size!17158 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17158 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17158 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555328 () Bool)

(declare-fun e!320068 () Bool)

(assert (=> b!555328 (= e!320068 (not true))))

(declare-datatypes ((SeekEntryResult!5250 0))(
  ( (MissingZero!5250 (index!23227 (_ BitVec 32))) (Found!5250 (index!23228 (_ BitVec 32))) (Intermediate!5250 (undefined!6062 Bool) (index!23229 (_ BitVec 32)) (x!52159 (_ BitVec 32))) (Undefined!5250) (MissingVacant!5250 (index!23230 (_ BitVec 32))) )
))
(declare-fun lt!252433 () SeekEntryResult!5250)

(declare-fun lt!252437 () SeekEntryResult!5250)

(assert (=> b!555328 (and (= lt!252433 (Found!5250 j!142)) (or (undefined!6062 lt!252437) (not (is-Intermediate!5250 lt!252437)) (= (select (arr!16794 a!3118) (index!23229 lt!252437)) (select (arr!16794 a!3118) j!142)) (not (= (select (arr!16794 a!3118) (index!23229 lt!252437)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252433 (MissingZero!5250 (index!23229 lt!252437)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34977 (_ BitVec 32)) SeekEntryResult!5250)

(assert (=> b!555328 (= lt!252433 (seekEntryOrOpen!0 (select (arr!16794 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34977 (_ BitVec 32)) Bool)

(assert (=> b!555328 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17274 0))(
  ( (Unit!17275) )
))
(declare-fun lt!252434 () Unit!17274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34977 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17274)

(assert (=> b!555328 (= lt!252434 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555329 () Bool)

(declare-fun res!347895 () Bool)

(assert (=> b!555329 (=> (not res!347895) (not e!320067))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555329 (= res!347895 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555330 () Bool)

(declare-fun e!320065 () Bool)

(assert (=> b!555330 (= e!320067 e!320065)))

(declare-fun res!347894 () Bool)

(assert (=> b!555330 (=> (not res!347894) (not e!320065))))

(declare-fun lt!252435 () SeekEntryResult!5250)

(assert (=> b!555330 (= res!347894 (or (= lt!252435 (MissingZero!5250 i!1132)) (= lt!252435 (MissingVacant!5250 i!1132))))))

(assert (=> b!555330 (= lt!252435 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555331 () Bool)

(declare-fun res!347891 () Bool)

(assert (=> b!555331 (=> (not res!347891) (not e!320065))))

(declare-datatypes ((List!10927 0))(
  ( (Nil!10924) (Cons!10923 (h!11908 (_ BitVec 64)) (t!17163 List!10927)) )
))
(declare-fun arrayNoDuplicates!0 (array!34977 (_ BitVec 32) List!10927) Bool)

(assert (=> b!555331 (= res!347891 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10924))))

(declare-fun b!555332 () Bool)

(declare-fun res!347893 () Bool)

(assert (=> b!555332 (=> (not res!347893) (not e!320067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555332 (= res!347893 (validKeyInArray!0 (select (arr!16794 a!3118) j!142)))))

(declare-fun b!555333 () Bool)

(assert (=> b!555333 (= e!320065 e!320068)))

(declare-fun res!347892 () Bool)

(assert (=> b!555333 (=> (not res!347892) (not e!320068))))

(declare-fun lt!252436 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34977 (_ BitVec 32)) SeekEntryResult!5250)

(assert (=> b!555333 (= res!347892 (= lt!252437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252436 (select (store (arr!16794 a!3118) i!1132 k!1914) j!142) (array!34978 (store (arr!16794 a!3118) i!1132 k!1914) (size!17158 a!3118)) mask!3119)))))

(declare-fun lt!252432 () (_ BitVec 32))

(assert (=> b!555333 (= lt!252437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252432 (select (arr!16794 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555333 (= lt!252436 (toIndex!0 (select (store (arr!16794 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555333 (= lt!252432 (toIndex!0 (select (arr!16794 a!3118) j!142) mask!3119))))

(declare-fun b!555334 () Bool)

(declare-fun res!347897 () Bool)

(assert (=> b!555334 (=> (not res!347897) (not e!320065))))

(assert (=> b!555334 (= res!347897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!347890 () Bool)

(assert (=> start!50798 (=> (not res!347890) (not e!320067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50798 (= res!347890 (validMask!0 mask!3119))))

(assert (=> start!50798 e!320067))

(assert (=> start!50798 true))

(declare-fun array_inv!12568 (array!34977) Bool)

(assert (=> start!50798 (array_inv!12568 a!3118)))

(declare-fun b!555335 () Bool)

(declare-fun res!347889 () Bool)

(assert (=> b!555335 (=> (not res!347889) (not e!320067))))

(assert (=> b!555335 (= res!347889 (validKeyInArray!0 k!1914))))

(assert (= (and start!50798 res!347890) b!555327))

(assert (= (and b!555327 res!347896) b!555332))

(assert (= (and b!555332 res!347893) b!555335))

(assert (= (and b!555335 res!347889) b!555329))

(assert (= (and b!555329 res!347895) b!555330))

(assert (= (and b!555330 res!347894) b!555334))

(assert (= (and b!555334 res!347897) b!555331))

(assert (= (and b!555331 res!347891) b!555333))

(assert (= (and b!555333 res!347892) b!555328))

(declare-fun m!533083 () Bool)

(assert (=> b!555328 m!533083))

(declare-fun m!533085 () Bool)

(assert (=> b!555328 m!533085))

(declare-fun m!533087 () Bool)

(assert (=> b!555328 m!533087))

(declare-fun m!533089 () Bool)

(assert (=> b!555328 m!533089))

(assert (=> b!555328 m!533085))

(declare-fun m!533091 () Bool)

(assert (=> b!555328 m!533091))

(declare-fun m!533093 () Bool)

(assert (=> b!555331 m!533093))

(declare-fun m!533095 () Bool)

(assert (=> b!555330 m!533095))

(declare-fun m!533097 () Bool)

(assert (=> b!555329 m!533097))

(declare-fun m!533099 () Bool)

(assert (=> start!50798 m!533099))

(declare-fun m!533101 () Bool)

(assert (=> start!50798 m!533101))

(declare-fun m!533103 () Bool)

(assert (=> b!555335 m!533103))

(assert (=> b!555332 m!533085))

(assert (=> b!555332 m!533085))

(declare-fun m!533105 () Bool)

(assert (=> b!555332 m!533105))

(declare-fun m!533107 () Bool)

(assert (=> b!555334 m!533107))

(assert (=> b!555333 m!533085))

(declare-fun m!533109 () Bool)

(assert (=> b!555333 m!533109))

(assert (=> b!555333 m!533085))

(declare-fun m!533111 () Bool)

(assert (=> b!555333 m!533111))

(declare-fun m!533113 () Bool)

(assert (=> b!555333 m!533113))

(declare-fun m!533115 () Bool)

(assert (=> b!555333 m!533115))

(assert (=> b!555333 m!533085))

(assert (=> b!555333 m!533113))

(declare-fun m!533117 () Bool)

(assert (=> b!555333 m!533117))

(assert (=> b!555333 m!533113))

(declare-fun m!533119 () Bool)

(assert (=> b!555333 m!533119))

(push 1)

