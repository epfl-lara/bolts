; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50816 () Bool)

(assert start!50816)

(declare-fun b!555570 () Bool)

(declare-fun res!348132 () Bool)

(declare-fun e!320176 () Bool)

(assert (=> b!555570 (=> (not res!348132) (not e!320176))))

(declare-datatypes ((array!34995 0))(
  ( (array!34996 (arr!16803 (Array (_ BitVec 32) (_ BitVec 64))) (size!17167 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34995)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34995 (_ BitVec 32)) Bool)

(assert (=> b!555570 (= res!348132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!348133 () Bool)

(declare-fun e!320173 () Bool)

(assert (=> start!50816 (=> (not res!348133) (not e!320173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50816 (= res!348133 (validMask!0 mask!3119))))

(assert (=> start!50816 e!320173))

(assert (=> start!50816 true))

(declare-fun array_inv!12577 (array!34995) Bool)

(assert (=> start!50816 (array_inv!12577 a!3118)))

(declare-fun b!555571 () Bool)

(declare-fun e!320174 () Bool)

(assert (=> b!555571 (= e!320174 (not true))))

(declare-datatypes ((SeekEntryResult!5259 0))(
  ( (MissingZero!5259 (index!23263 (_ BitVec 32))) (Found!5259 (index!23264 (_ BitVec 32))) (Intermediate!5259 (undefined!6071 Bool) (index!23265 (_ BitVec 32)) (x!52192 (_ BitVec 32))) (Undefined!5259) (MissingVacant!5259 (index!23266 (_ BitVec 32))) )
))
(declare-fun lt!252597 () SeekEntryResult!5259)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!252596 () SeekEntryResult!5259)

(assert (=> b!555571 (and (= lt!252596 (Found!5259 j!142)) (or (undefined!6071 lt!252597) (not (is-Intermediate!5259 lt!252597)) (= (select (arr!16803 a!3118) (index!23265 lt!252597)) (select (arr!16803 a!3118) j!142)) (not (= (select (arr!16803 a!3118) (index!23265 lt!252597)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252596 (MissingZero!5259 (index!23265 lt!252597)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34995 (_ BitVec 32)) SeekEntryResult!5259)

(assert (=> b!555571 (= lt!252596 (seekEntryOrOpen!0 (select (arr!16803 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555571 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17292 0))(
  ( (Unit!17293) )
))
(declare-fun lt!252595 () Unit!17292)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34995 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17292)

(assert (=> b!555571 (= lt!252595 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555572 () Bool)

(declare-fun res!348140 () Bool)

(assert (=> b!555572 (=> (not res!348140) (not e!320173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555572 (= res!348140 (validKeyInArray!0 (select (arr!16803 a!3118) j!142)))))

(declare-fun b!555573 () Bool)

(declare-fun res!348138 () Bool)

(assert (=> b!555573 (=> (not res!348138) (not e!320173))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!555573 (= res!348138 (validKeyInArray!0 k!1914))))

(declare-fun b!555574 () Bool)

(assert (=> b!555574 (= e!320176 e!320174)))

(declare-fun res!348137 () Bool)

(assert (=> b!555574 (=> (not res!348137) (not e!320174))))

(declare-fun lt!252599 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34995 (_ BitVec 32)) SeekEntryResult!5259)

(assert (=> b!555574 (= res!348137 (= lt!252597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252599 (select (store (arr!16803 a!3118) i!1132 k!1914) j!142) (array!34996 (store (arr!16803 a!3118) i!1132 k!1914) (size!17167 a!3118)) mask!3119)))))

(declare-fun lt!252598 () (_ BitVec 32))

(assert (=> b!555574 (= lt!252597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252598 (select (arr!16803 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555574 (= lt!252599 (toIndex!0 (select (store (arr!16803 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555574 (= lt!252598 (toIndex!0 (select (arr!16803 a!3118) j!142) mask!3119))))

(declare-fun b!555575 () Bool)

(declare-fun res!348136 () Bool)

(assert (=> b!555575 (=> (not res!348136) (not e!320173))))

(declare-fun arrayContainsKey!0 (array!34995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555575 (= res!348136 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555576 () Bool)

(declare-fun res!348135 () Bool)

(assert (=> b!555576 (=> (not res!348135) (not e!320173))))

(assert (=> b!555576 (= res!348135 (and (= (size!17167 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17167 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17167 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555577 () Bool)

(assert (=> b!555577 (= e!320173 e!320176)))

(declare-fun res!348139 () Bool)

(assert (=> b!555577 (=> (not res!348139) (not e!320176))))

(declare-fun lt!252594 () SeekEntryResult!5259)

(assert (=> b!555577 (= res!348139 (or (= lt!252594 (MissingZero!5259 i!1132)) (= lt!252594 (MissingVacant!5259 i!1132))))))

(assert (=> b!555577 (= lt!252594 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555578 () Bool)

(declare-fun res!348134 () Bool)

(assert (=> b!555578 (=> (not res!348134) (not e!320176))))

(declare-datatypes ((List!10936 0))(
  ( (Nil!10933) (Cons!10932 (h!11917 (_ BitVec 64)) (t!17172 List!10936)) )
))
(declare-fun arrayNoDuplicates!0 (array!34995 (_ BitVec 32) List!10936) Bool)

(assert (=> b!555578 (= res!348134 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10933))))

(assert (= (and start!50816 res!348133) b!555576))

(assert (= (and b!555576 res!348135) b!555572))

(assert (= (and b!555572 res!348140) b!555573))

(assert (= (and b!555573 res!348138) b!555575))

(assert (= (and b!555575 res!348136) b!555577))

(assert (= (and b!555577 res!348139) b!555570))

(assert (= (and b!555570 res!348132) b!555578))

(assert (= (and b!555578 res!348134) b!555574))

(assert (= (and b!555574 res!348137) b!555571))

(declare-fun m!533425 () Bool)

(assert (=> b!555574 m!533425))

(declare-fun m!533427 () Bool)

(assert (=> b!555574 m!533427))

(assert (=> b!555574 m!533425))

(declare-fun m!533429 () Bool)

(assert (=> b!555574 m!533429))

(assert (=> b!555574 m!533429))

(declare-fun m!533431 () Bool)

(assert (=> b!555574 m!533431))

(assert (=> b!555574 m!533429))

(declare-fun m!533433 () Bool)

(assert (=> b!555574 m!533433))

(assert (=> b!555574 m!533425))

(declare-fun m!533435 () Bool)

(assert (=> b!555574 m!533435))

(declare-fun m!533437 () Bool)

(assert (=> b!555574 m!533437))

(declare-fun m!533439 () Bool)

(assert (=> b!555571 m!533439))

(assert (=> b!555571 m!533425))

(declare-fun m!533441 () Bool)

(assert (=> b!555571 m!533441))

(declare-fun m!533443 () Bool)

(assert (=> b!555571 m!533443))

(assert (=> b!555571 m!533425))

(declare-fun m!533445 () Bool)

(assert (=> b!555571 m!533445))

(declare-fun m!533447 () Bool)

(assert (=> b!555570 m!533447))

(declare-fun m!533449 () Bool)

(assert (=> b!555577 m!533449))

(declare-fun m!533451 () Bool)

(assert (=> b!555575 m!533451))

(declare-fun m!533453 () Bool)

(assert (=> b!555573 m!533453))

(declare-fun m!533455 () Bool)

(assert (=> b!555578 m!533455))

(declare-fun m!533457 () Bool)

(assert (=> start!50816 m!533457))

(declare-fun m!533459 () Bool)

(assert (=> start!50816 m!533459))

(assert (=> b!555572 m!533425))

(assert (=> b!555572 m!533425))

(declare-fun m!533461 () Bool)

(assert (=> b!555572 m!533461))

(push 1)

