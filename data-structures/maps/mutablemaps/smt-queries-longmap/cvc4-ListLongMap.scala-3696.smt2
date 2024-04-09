; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50814 () Bool)

(assert start!50814)

(declare-fun b!555543 () Bool)

(declare-fun res!348105 () Bool)

(declare-fun e!320163 () Bool)

(assert (=> b!555543 (=> (not res!348105) (not e!320163))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555543 (= res!348105 (validKeyInArray!0 k!1914))))

(declare-fun b!555544 () Bool)

(declare-fun res!348106 () Bool)

(declare-fun e!320162 () Bool)

(assert (=> b!555544 (=> (not res!348106) (not e!320162))))

(declare-datatypes ((array!34993 0))(
  ( (array!34994 (arr!16802 (Array (_ BitVec 32) (_ BitVec 64))) (size!17166 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34993)

(declare-datatypes ((List!10935 0))(
  ( (Nil!10932) (Cons!10931 (h!11916 (_ BitVec 64)) (t!17171 List!10935)) )
))
(declare-fun arrayNoDuplicates!0 (array!34993 (_ BitVec 32) List!10935) Bool)

(assert (=> b!555544 (= res!348106 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10932))))

(declare-fun b!555545 () Bool)

(declare-fun res!348111 () Bool)

(assert (=> b!555545 (=> (not res!348111) (not e!320163))))

(declare-fun arrayContainsKey!0 (array!34993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555545 (= res!348111 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555546 () Bool)

(declare-fun e!320164 () Bool)

(assert (=> b!555546 (= e!320164 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5258 0))(
  ( (MissingZero!5258 (index!23259 (_ BitVec 32))) (Found!5258 (index!23260 (_ BitVec 32))) (Intermediate!5258 (undefined!6070 Bool) (index!23261 (_ BitVec 32)) (x!52183 (_ BitVec 32))) (Undefined!5258) (MissingVacant!5258 (index!23262 (_ BitVec 32))) )
))
(declare-fun lt!252581 () SeekEntryResult!5258)

(declare-fun lt!252578 () SeekEntryResult!5258)

(assert (=> b!555546 (and (= lt!252581 (Found!5258 j!142)) (or (undefined!6070 lt!252578) (not (is-Intermediate!5258 lt!252578)) (= (select (arr!16802 a!3118) (index!23261 lt!252578)) (select (arr!16802 a!3118) j!142)) (not (= (select (arr!16802 a!3118) (index!23261 lt!252578)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252581 (MissingZero!5258 (index!23261 lt!252578)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34993 (_ BitVec 32)) SeekEntryResult!5258)

(assert (=> b!555546 (= lt!252581 (seekEntryOrOpen!0 (select (arr!16802 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34993 (_ BitVec 32)) Bool)

(assert (=> b!555546 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17290 0))(
  ( (Unit!17291) )
))
(declare-fun lt!252576 () Unit!17290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34993 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17290)

(assert (=> b!555546 (= lt!252576 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555547 () Bool)

(declare-fun res!348107 () Bool)

(assert (=> b!555547 (=> (not res!348107) (not e!320162))))

(assert (=> b!555547 (= res!348107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!348113 () Bool)

(assert (=> start!50814 (=> (not res!348113) (not e!320163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50814 (= res!348113 (validMask!0 mask!3119))))

(assert (=> start!50814 e!320163))

(assert (=> start!50814 true))

(declare-fun array_inv!12576 (array!34993) Bool)

(assert (=> start!50814 (array_inv!12576 a!3118)))

(declare-fun b!555548 () Bool)

(assert (=> b!555548 (= e!320163 e!320162)))

(declare-fun res!348110 () Bool)

(assert (=> b!555548 (=> (not res!348110) (not e!320162))))

(declare-fun lt!252579 () SeekEntryResult!5258)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555548 (= res!348110 (or (= lt!252579 (MissingZero!5258 i!1132)) (= lt!252579 (MissingVacant!5258 i!1132))))))

(assert (=> b!555548 (= lt!252579 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555549 () Bool)

(declare-fun res!348109 () Bool)

(assert (=> b!555549 (=> (not res!348109) (not e!320163))))

(assert (=> b!555549 (= res!348109 (validKeyInArray!0 (select (arr!16802 a!3118) j!142)))))

(declare-fun b!555550 () Bool)

(assert (=> b!555550 (= e!320162 e!320164)))

(declare-fun res!348108 () Bool)

(assert (=> b!555550 (=> (not res!348108) (not e!320164))))

(declare-fun lt!252580 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34993 (_ BitVec 32)) SeekEntryResult!5258)

(assert (=> b!555550 (= res!348108 (= lt!252578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252580 (select (store (arr!16802 a!3118) i!1132 k!1914) j!142) (array!34994 (store (arr!16802 a!3118) i!1132 k!1914) (size!17166 a!3118)) mask!3119)))))

(declare-fun lt!252577 () (_ BitVec 32))

(assert (=> b!555550 (= lt!252578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252577 (select (arr!16802 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555550 (= lt!252580 (toIndex!0 (select (store (arr!16802 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555550 (= lt!252577 (toIndex!0 (select (arr!16802 a!3118) j!142) mask!3119))))

(declare-fun b!555551 () Bool)

(declare-fun res!348112 () Bool)

(assert (=> b!555551 (=> (not res!348112) (not e!320163))))

(assert (=> b!555551 (= res!348112 (and (= (size!17166 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17166 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17166 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50814 res!348113) b!555551))

(assert (= (and b!555551 res!348112) b!555549))

(assert (= (and b!555549 res!348109) b!555543))

(assert (= (and b!555543 res!348105) b!555545))

(assert (= (and b!555545 res!348111) b!555548))

(assert (= (and b!555548 res!348110) b!555547))

(assert (= (and b!555547 res!348107) b!555544))

(assert (= (and b!555544 res!348106) b!555550))

(assert (= (and b!555550 res!348108) b!555546))

(declare-fun m!533387 () Bool)

(assert (=> b!555550 m!533387))

(declare-fun m!533389 () Bool)

(assert (=> b!555550 m!533389))

(declare-fun m!533391 () Bool)

(assert (=> b!555550 m!533391))

(declare-fun m!533393 () Bool)

(assert (=> b!555550 m!533393))

(assert (=> b!555550 m!533387))

(declare-fun m!533395 () Bool)

(assert (=> b!555550 m!533395))

(assert (=> b!555550 m!533391))

(declare-fun m!533397 () Bool)

(assert (=> b!555550 m!533397))

(assert (=> b!555550 m!533391))

(declare-fun m!533399 () Bool)

(assert (=> b!555550 m!533399))

(assert (=> b!555550 m!533387))

(declare-fun m!533401 () Bool)

(assert (=> b!555543 m!533401))

(declare-fun m!533403 () Bool)

(assert (=> b!555548 m!533403))

(declare-fun m!533405 () Bool)

(assert (=> start!50814 m!533405))

(declare-fun m!533407 () Bool)

(assert (=> start!50814 m!533407))

(assert (=> b!555546 m!533387))

(declare-fun m!533409 () Bool)

(assert (=> b!555546 m!533409))

(declare-fun m!533411 () Bool)

(assert (=> b!555546 m!533411))

(declare-fun m!533413 () Bool)

(assert (=> b!555546 m!533413))

(assert (=> b!555546 m!533387))

(declare-fun m!533415 () Bool)

(assert (=> b!555546 m!533415))

(declare-fun m!533417 () Bool)

(assert (=> b!555544 m!533417))

(assert (=> b!555549 m!533387))

(assert (=> b!555549 m!533387))

(declare-fun m!533419 () Bool)

(assert (=> b!555549 m!533419))

(declare-fun m!533421 () Bool)

(assert (=> b!555547 m!533421))

(declare-fun m!533423 () Bool)

(assert (=> b!555545 m!533423))

(push 1)

