; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50808 () Bool)

(assert start!50808)

(declare-fun b!555463 () Bool)

(declare-fun e!320127 () Bool)

(declare-fun e!320125 () Bool)

(assert (=> b!555463 (= e!320127 e!320125)))

(declare-fun res!348025 () Bool)

(assert (=> b!555463 (=> (not res!348025) (not e!320125))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!252525 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5255 0))(
  ( (MissingZero!5255 (index!23247 (_ BitVec 32))) (Found!5255 (index!23248 (_ BitVec 32))) (Intermediate!5255 (undefined!6067 Bool) (index!23249 (_ BitVec 32)) (x!52172 (_ BitVec 32))) (Undefined!5255) (MissingVacant!5255 (index!23250 (_ BitVec 32))) )
))
(declare-fun lt!252524 () SeekEntryResult!5255)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34987 0))(
  ( (array!34988 (arr!16799 (Array (_ BitVec 32) (_ BitVec 64))) (size!17163 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34987)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34987 (_ BitVec 32)) SeekEntryResult!5255)

(assert (=> b!555463 (= res!348025 (= lt!252524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252525 (select (store (arr!16799 a!3118) i!1132 k!1914) j!142) (array!34988 (store (arr!16799 a!3118) i!1132 k!1914) (size!17163 a!3118)) mask!3119)))))

(declare-fun lt!252522 () (_ BitVec 32))

(assert (=> b!555463 (= lt!252524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252522 (select (arr!16799 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555463 (= lt!252525 (toIndex!0 (select (store (arr!16799 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555463 (= lt!252522 (toIndex!0 (select (arr!16799 a!3118) j!142) mask!3119))))

(declare-fun b!555464 () Bool)

(declare-fun res!348032 () Bool)

(declare-fun e!320126 () Bool)

(assert (=> b!555464 (=> (not res!348032) (not e!320126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555464 (= res!348032 (validKeyInArray!0 k!1914))))

(declare-fun b!555465 () Bool)

(assert (=> b!555465 (= e!320125 (not true))))

(declare-fun lt!252526 () SeekEntryResult!5255)

(assert (=> b!555465 (and (= lt!252526 (Found!5255 j!142)) (or (undefined!6067 lt!252524) (not (is-Intermediate!5255 lt!252524)) (= (select (arr!16799 a!3118) (index!23249 lt!252524)) (select (arr!16799 a!3118) j!142)) (not (= (select (arr!16799 a!3118) (index!23249 lt!252524)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252526 (MissingZero!5255 (index!23249 lt!252524)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34987 (_ BitVec 32)) SeekEntryResult!5255)

(assert (=> b!555465 (= lt!252526 (seekEntryOrOpen!0 (select (arr!16799 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34987 (_ BitVec 32)) Bool)

(assert (=> b!555465 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17284 0))(
  ( (Unit!17285) )
))
(declare-fun lt!252527 () Unit!17284)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34987 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17284)

(assert (=> b!555465 (= lt!252527 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555466 () Bool)

(declare-fun res!348026 () Bool)

(assert (=> b!555466 (=> (not res!348026) (not e!320127))))

(declare-datatypes ((List!10932 0))(
  ( (Nil!10929) (Cons!10928 (h!11913 (_ BitVec 64)) (t!17168 List!10932)) )
))
(declare-fun arrayNoDuplicates!0 (array!34987 (_ BitVec 32) List!10932) Bool)

(assert (=> b!555466 (= res!348026 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10929))))

(declare-fun b!555467 () Bool)

(declare-fun res!348024 () Bool)

(assert (=> b!555467 (=> (not res!348024) (not e!320126))))

(assert (=> b!555467 (= res!348024 (and (= (size!17163 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17163 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17163 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555468 () Bool)

(declare-fun res!348027 () Bool)

(assert (=> b!555468 (=> (not res!348027) (not e!320127))))

(assert (=> b!555468 (= res!348027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555469 () Bool)

(declare-fun res!348031 () Bool)

(assert (=> b!555469 (=> (not res!348031) (not e!320126))))

(assert (=> b!555469 (= res!348031 (validKeyInArray!0 (select (arr!16799 a!3118) j!142)))))

(declare-fun b!555470 () Bool)

(declare-fun res!348028 () Bool)

(assert (=> b!555470 (=> (not res!348028) (not e!320126))))

(declare-fun arrayContainsKey!0 (array!34987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555470 (= res!348028 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555462 () Bool)

(assert (=> b!555462 (= e!320126 e!320127)))

(declare-fun res!348030 () Bool)

(assert (=> b!555462 (=> (not res!348030) (not e!320127))))

(declare-fun lt!252523 () SeekEntryResult!5255)

(assert (=> b!555462 (= res!348030 (or (= lt!252523 (MissingZero!5255 i!1132)) (= lt!252523 (MissingVacant!5255 i!1132))))))

(assert (=> b!555462 (= lt!252523 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!348029 () Bool)

(assert (=> start!50808 (=> (not res!348029) (not e!320126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50808 (= res!348029 (validMask!0 mask!3119))))

(assert (=> start!50808 e!320126))

(assert (=> start!50808 true))

(declare-fun array_inv!12573 (array!34987) Bool)

(assert (=> start!50808 (array_inv!12573 a!3118)))

(assert (= (and start!50808 res!348029) b!555467))

(assert (= (and b!555467 res!348024) b!555469))

(assert (= (and b!555469 res!348031) b!555464))

(assert (= (and b!555464 res!348032) b!555470))

(assert (= (and b!555470 res!348028) b!555462))

(assert (= (and b!555462 res!348030) b!555468))

(assert (= (and b!555468 res!348027) b!555466))

(assert (= (and b!555466 res!348026) b!555463))

(assert (= (and b!555463 res!348025) b!555465))

(declare-fun m!533273 () Bool)

(assert (=> b!555469 m!533273))

(assert (=> b!555469 m!533273))

(declare-fun m!533275 () Bool)

(assert (=> b!555469 m!533275))

(declare-fun m!533277 () Bool)

(assert (=> b!555468 m!533277))

(assert (=> b!555465 m!533273))

(declare-fun m!533279 () Bool)

(assert (=> b!555465 m!533279))

(declare-fun m!533281 () Bool)

(assert (=> b!555465 m!533281))

(declare-fun m!533283 () Bool)

(assert (=> b!555465 m!533283))

(assert (=> b!555465 m!533273))

(declare-fun m!533285 () Bool)

(assert (=> b!555465 m!533285))

(declare-fun m!533287 () Bool)

(assert (=> b!555464 m!533287))

(declare-fun m!533289 () Bool)

(assert (=> start!50808 m!533289))

(declare-fun m!533291 () Bool)

(assert (=> start!50808 m!533291))

(declare-fun m!533293 () Bool)

(assert (=> b!555462 m!533293))

(declare-fun m!533295 () Bool)

(assert (=> b!555470 m!533295))

(declare-fun m!533297 () Bool)

(assert (=> b!555466 m!533297))

(assert (=> b!555463 m!533273))

(declare-fun m!533299 () Bool)

(assert (=> b!555463 m!533299))

(declare-fun m!533301 () Bool)

(assert (=> b!555463 m!533301))

(assert (=> b!555463 m!533273))

(declare-fun m!533303 () Bool)

(assert (=> b!555463 m!533303))

(assert (=> b!555463 m!533299))

(declare-fun m!533305 () Bool)

(assert (=> b!555463 m!533305))

(assert (=> b!555463 m!533299))

(declare-fun m!533307 () Bool)

(assert (=> b!555463 m!533307))

(assert (=> b!555463 m!533273))

(declare-fun m!533309 () Bool)

(assert (=> b!555463 m!533309))

(push 1)

