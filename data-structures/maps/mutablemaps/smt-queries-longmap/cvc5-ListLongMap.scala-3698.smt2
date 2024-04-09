; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50822 () Bool)

(assert start!50822)

(declare-fun res!348213 () Bool)

(declare-fun e!320211 () Bool)

(assert (=> start!50822 (=> (not res!348213) (not e!320211))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50822 (= res!348213 (validMask!0 mask!3119))))

(assert (=> start!50822 e!320211))

(assert (=> start!50822 true))

(declare-datatypes ((array!35001 0))(
  ( (array!35002 (arr!16806 (Array (_ BitVec 32) (_ BitVec 64))) (size!17170 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35001)

(declare-fun array_inv!12580 (array!35001) Bool)

(assert (=> start!50822 (array_inv!12580 a!3118)))

(declare-fun b!555651 () Bool)

(declare-fun res!348221 () Bool)

(assert (=> b!555651 (=> (not res!348221) (not e!320211))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555651 (= res!348221 (validKeyInArray!0 (select (arr!16806 a!3118) j!142)))))

(declare-fun b!555652 () Bool)

(declare-fun res!348220 () Bool)

(declare-fun e!320209 () Bool)

(assert (=> b!555652 (=> (not res!348220) (not e!320209))))

(declare-datatypes ((List!10939 0))(
  ( (Nil!10936) (Cons!10935 (h!11920 (_ BitVec 64)) (t!17175 List!10939)) )
))
(declare-fun arrayNoDuplicates!0 (array!35001 (_ BitVec 32) List!10939) Bool)

(assert (=> b!555652 (= res!348220 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10936))))

(declare-fun b!555653 () Bool)

(declare-fun e!320212 () Bool)

(assert (=> b!555653 (= e!320209 e!320212)))

(declare-fun res!348219 () Bool)

(assert (=> b!555653 (=> (not res!348219) (not e!320212))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!252649 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5262 0))(
  ( (MissingZero!5262 (index!23275 (_ BitVec 32))) (Found!5262 (index!23276 (_ BitVec 32))) (Intermediate!5262 (undefined!6074 Bool) (index!23277 (_ BitVec 32)) (x!52203 (_ BitVec 32))) (Undefined!5262) (MissingVacant!5262 (index!23278 (_ BitVec 32))) )
))
(declare-fun lt!252648 () SeekEntryResult!5262)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35001 (_ BitVec 32)) SeekEntryResult!5262)

(assert (=> b!555653 (= res!348219 (= lt!252648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252649 (select (store (arr!16806 a!3118) i!1132 k!1914) j!142) (array!35002 (store (arr!16806 a!3118) i!1132 k!1914) (size!17170 a!3118)) mask!3119)))))

(declare-fun lt!252653 () (_ BitVec 32))

(assert (=> b!555653 (= lt!252648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252653 (select (arr!16806 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555653 (= lt!252649 (toIndex!0 (select (store (arr!16806 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555653 (= lt!252653 (toIndex!0 (select (arr!16806 a!3118) j!142) mask!3119))))

(declare-fun b!555654 () Bool)

(declare-fun res!348215 () Bool)

(assert (=> b!555654 (=> (not res!348215) (not e!320211))))

(assert (=> b!555654 (= res!348215 (and (= (size!17170 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17170 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17170 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555655 () Bool)

(assert (=> b!555655 (= e!320212 (not true))))

(declare-fun lt!252651 () SeekEntryResult!5262)

(assert (=> b!555655 (and (= lt!252651 (Found!5262 j!142)) (or (undefined!6074 lt!252648) (not (is-Intermediate!5262 lt!252648)) (= (select (arr!16806 a!3118) (index!23277 lt!252648)) (select (arr!16806 a!3118) j!142)) (not (= (select (arr!16806 a!3118) (index!23277 lt!252648)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252651 (MissingZero!5262 (index!23277 lt!252648)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35001 (_ BitVec 32)) SeekEntryResult!5262)

(assert (=> b!555655 (= lt!252651 (seekEntryOrOpen!0 (select (arr!16806 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35001 (_ BitVec 32)) Bool)

(assert (=> b!555655 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17298 0))(
  ( (Unit!17299) )
))
(declare-fun lt!252652 () Unit!17298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17298)

(assert (=> b!555655 (= lt!252652 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555656 () Bool)

(declare-fun res!348217 () Bool)

(assert (=> b!555656 (=> (not res!348217) (not e!320211))))

(assert (=> b!555656 (= res!348217 (validKeyInArray!0 k!1914))))

(declare-fun b!555657 () Bool)

(assert (=> b!555657 (= e!320211 e!320209)))

(declare-fun res!348214 () Bool)

(assert (=> b!555657 (=> (not res!348214) (not e!320209))))

(declare-fun lt!252650 () SeekEntryResult!5262)

(assert (=> b!555657 (= res!348214 (or (= lt!252650 (MissingZero!5262 i!1132)) (= lt!252650 (MissingVacant!5262 i!1132))))))

(assert (=> b!555657 (= lt!252650 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555658 () Bool)

(declare-fun res!348216 () Bool)

(assert (=> b!555658 (=> (not res!348216) (not e!320211))))

(declare-fun arrayContainsKey!0 (array!35001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555658 (= res!348216 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555659 () Bool)

(declare-fun res!348218 () Bool)

(assert (=> b!555659 (=> (not res!348218) (not e!320209))))

(assert (=> b!555659 (= res!348218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50822 res!348213) b!555654))

(assert (= (and b!555654 res!348215) b!555651))

(assert (= (and b!555651 res!348221) b!555656))

(assert (= (and b!555656 res!348217) b!555658))

(assert (= (and b!555658 res!348216) b!555657))

(assert (= (and b!555657 res!348214) b!555659))

(assert (= (and b!555659 res!348218) b!555652))

(assert (= (and b!555652 res!348220) b!555653))

(assert (= (and b!555653 res!348219) b!555655))

(declare-fun m!533539 () Bool)

(assert (=> b!555652 m!533539))

(declare-fun m!533541 () Bool)

(assert (=> b!555655 m!533541))

(declare-fun m!533543 () Bool)

(assert (=> b!555655 m!533543))

(assert (=> b!555655 m!533541))

(declare-fun m!533545 () Bool)

(assert (=> b!555655 m!533545))

(declare-fun m!533547 () Bool)

(assert (=> b!555655 m!533547))

(declare-fun m!533549 () Bool)

(assert (=> b!555655 m!533549))

(declare-fun m!533551 () Bool)

(assert (=> b!555656 m!533551))

(declare-fun m!533553 () Bool)

(assert (=> start!50822 m!533553))

(declare-fun m!533555 () Bool)

(assert (=> start!50822 m!533555))

(assert (=> b!555651 m!533541))

(assert (=> b!555651 m!533541))

(declare-fun m!533557 () Bool)

(assert (=> b!555651 m!533557))

(declare-fun m!533559 () Bool)

(assert (=> b!555658 m!533559))

(declare-fun m!533561 () Bool)

(assert (=> b!555659 m!533561))

(assert (=> b!555653 m!533541))

(declare-fun m!533563 () Bool)

(assert (=> b!555653 m!533563))

(declare-fun m!533565 () Bool)

(assert (=> b!555653 m!533565))

(declare-fun m!533567 () Bool)

(assert (=> b!555653 m!533567))

(assert (=> b!555653 m!533541))

(assert (=> b!555653 m!533541))

(declare-fun m!533569 () Bool)

(assert (=> b!555653 m!533569))

(assert (=> b!555653 m!533565))

(declare-fun m!533571 () Bool)

(assert (=> b!555653 m!533571))

(assert (=> b!555653 m!533565))

(declare-fun m!533573 () Bool)

(assert (=> b!555653 m!533573))

(declare-fun m!533575 () Bool)

(assert (=> b!555657 m!533575))

(push 1)

