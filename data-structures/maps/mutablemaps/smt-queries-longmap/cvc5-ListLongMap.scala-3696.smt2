; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50810 () Bool)

(assert start!50810)

(declare-fun b!555489 () Bool)

(declare-fun e!320140 () Bool)

(declare-fun e!320138 () Bool)

(assert (=> b!555489 (= e!320140 e!320138)))

(declare-fun res!348053 () Bool)

(assert (=> b!555489 (=> (not res!348053) (not e!320138))))

(declare-datatypes ((SeekEntryResult!5256 0))(
  ( (MissingZero!5256 (index!23251 (_ BitVec 32))) (Found!5256 (index!23252 (_ BitVec 32))) (Intermediate!5256 (undefined!6068 Bool) (index!23253 (_ BitVec 32)) (x!52181 (_ BitVec 32))) (Undefined!5256) (MissingVacant!5256 (index!23254 (_ BitVec 32))) )
))
(declare-fun lt!252543 () SeekEntryResult!5256)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555489 (= res!348053 (or (= lt!252543 (MissingZero!5256 i!1132)) (= lt!252543 (MissingVacant!5256 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34989 0))(
  ( (array!34990 (arr!16800 (Array (_ BitVec 32) (_ BitVec 64))) (size!17164 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34989)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34989 (_ BitVec 32)) SeekEntryResult!5256)

(assert (=> b!555489 (= lt!252543 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555490 () Bool)

(declare-fun res!348055 () Bool)

(assert (=> b!555490 (=> (not res!348055) (not e!320138))))

(declare-datatypes ((List!10933 0))(
  ( (Nil!10930) (Cons!10929 (h!11914 (_ BitVec 64)) (t!17169 List!10933)) )
))
(declare-fun arrayNoDuplicates!0 (array!34989 (_ BitVec 32) List!10933) Bool)

(assert (=> b!555490 (= res!348055 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10930))))

(declare-fun b!555491 () Bool)

(declare-fun res!348057 () Bool)

(assert (=> b!555491 (=> (not res!348057) (not e!320140))))

(declare-fun arrayContainsKey!0 (array!34989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555491 (= res!348057 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!348056 () Bool)

(assert (=> start!50810 (=> (not res!348056) (not e!320140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50810 (= res!348056 (validMask!0 mask!3119))))

(assert (=> start!50810 e!320140))

(assert (=> start!50810 true))

(declare-fun array_inv!12574 (array!34989) Bool)

(assert (=> start!50810 (array_inv!12574 a!3118)))

(declare-fun b!555492 () Bool)

(declare-fun res!348059 () Bool)

(assert (=> b!555492 (=> (not res!348059) (not e!320138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34989 (_ BitVec 32)) Bool)

(assert (=> b!555492 (= res!348059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555493 () Bool)

(declare-fun res!348054 () Bool)

(assert (=> b!555493 (=> (not res!348054) (not e!320140))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555493 (= res!348054 (validKeyInArray!0 (select (arr!16800 a!3118) j!142)))))

(declare-fun b!555494 () Bool)

(declare-fun e!320139 () Bool)

(assert (=> b!555494 (= e!320138 e!320139)))

(declare-fun res!348058 () Bool)

(assert (=> b!555494 (=> (not res!348058) (not e!320139))))

(declare-fun lt!252544 () SeekEntryResult!5256)

(declare-fun lt!252545 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34989 (_ BitVec 32)) SeekEntryResult!5256)

(assert (=> b!555494 (= res!348058 (= lt!252544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252545 (select (store (arr!16800 a!3118) i!1132 k!1914) j!142) (array!34990 (store (arr!16800 a!3118) i!1132 k!1914) (size!17164 a!3118)) mask!3119)))))

(declare-fun lt!252540 () (_ BitVec 32))

(assert (=> b!555494 (= lt!252544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252540 (select (arr!16800 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555494 (= lt!252545 (toIndex!0 (select (store (arr!16800 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555494 (= lt!252540 (toIndex!0 (select (arr!16800 a!3118) j!142) mask!3119))))

(declare-fun b!555495 () Bool)

(declare-fun res!348051 () Bool)

(assert (=> b!555495 (=> (not res!348051) (not e!320140))))

(assert (=> b!555495 (= res!348051 (validKeyInArray!0 k!1914))))

(declare-fun b!555496 () Bool)

(assert (=> b!555496 (= e!320139 (not true))))

(declare-fun lt!252541 () SeekEntryResult!5256)

(assert (=> b!555496 (and (= lt!252541 (Found!5256 j!142)) (or (undefined!6068 lt!252544) (not (is-Intermediate!5256 lt!252544)) (= (select (arr!16800 a!3118) (index!23253 lt!252544)) (select (arr!16800 a!3118) j!142)) (not (= (select (arr!16800 a!3118) (index!23253 lt!252544)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252541 (MissingZero!5256 (index!23253 lt!252544)))))))

(assert (=> b!555496 (= lt!252541 (seekEntryOrOpen!0 (select (arr!16800 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555496 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17286 0))(
  ( (Unit!17287) )
))
(declare-fun lt!252542 () Unit!17286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34989 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17286)

(assert (=> b!555496 (= lt!252542 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555497 () Bool)

(declare-fun res!348052 () Bool)

(assert (=> b!555497 (=> (not res!348052) (not e!320140))))

(assert (=> b!555497 (= res!348052 (and (= (size!17164 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17164 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17164 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50810 res!348056) b!555497))

(assert (= (and b!555497 res!348052) b!555493))

(assert (= (and b!555493 res!348054) b!555495))

(assert (= (and b!555495 res!348051) b!555491))

(assert (= (and b!555491 res!348057) b!555489))

(assert (= (and b!555489 res!348053) b!555492))

(assert (= (and b!555492 res!348059) b!555490))

(assert (= (and b!555490 res!348055) b!555494))

(assert (= (and b!555494 res!348058) b!555496))

(declare-fun m!533311 () Bool)

(assert (=> start!50810 m!533311))

(declare-fun m!533313 () Bool)

(assert (=> start!50810 m!533313))

(declare-fun m!533315 () Bool)

(assert (=> b!555490 m!533315))

(declare-fun m!533317 () Bool)

(assert (=> b!555496 m!533317))

(declare-fun m!533319 () Bool)

(assert (=> b!555496 m!533319))

(declare-fun m!533321 () Bool)

(assert (=> b!555496 m!533321))

(declare-fun m!533323 () Bool)

(assert (=> b!555496 m!533323))

(assert (=> b!555496 m!533319))

(declare-fun m!533325 () Bool)

(assert (=> b!555496 m!533325))

(declare-fun m!533327 () Bool)

(assert (=> b!555489 m!533327))

(declare-fun m!533329 () Bool)

(assert (=> b!555491 m!533329))

(declare-fun m!533331 () Bool)

(assert (=> b!555492 m!533331))

(declare-fun m!533333 () Bool)

(assert (=> b!555495 m!533333))

(assert (=> b!555493 m!533319))

(assert (=> b!555493 m!533319))

(declare-fun m!533335 () Bool)

(assert (=> b!555493 m!533335))

(assert (=> b!555494 m!533319))

(declare-fun m!533337 () Bool)

(assert (=> b!555494 m!533337))

(declare-fun m!533339 () Bool)

(assert (=> b!555494 m!533339))

(declare-fun m!533341 () Bool)

(assert (=> b!555494 m!533341))

(assert (=> b!555494 m!533319))

(declare-fun m!533343 () Bool)

(assert (=> b!555494 m!533343))

(assert (=> b!555494 m!533319))

(assert (=> b!555494 m!533339))

(declare-fun m!533345 () Bool)

(assert (=> b!555494 m!533345))

(assert (=> b!555494 m!533339))

(declare-fun m!533347 () Bool)

(assert (=> b!555494 m!533347))

(push 1)

