; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51074 () Bool)

(assert start!51074)

(declare-fun b!557597 () Bool)

(declare-fun res!349612 () Bool)

(declare-fun e!321246 () Bool)

(assert (=> b!557597 (=> (not res!349612) (not e!321246))))

(declare-datatypes ((array!35082 0))(
  ( (array!35083 (arr!16842 (Array (_ BitVec 32) (_ BitVec 64))) (size!17206 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35082)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557597 (= res!349612 (validKeyInArray!0 (select (arr!16842 a!3118) j!142)))))

(declare-fun b!557598 () Bool)

(declare-fun res!349617 () Bool)

(declare-fun e!321244 () Bool)

(assert (=> b!557598 (=> (not res!349617) (not e!321244))))

(declare-datatypes ((List!10975 0))(
  ( (Nil!10972) (Cons!10971 (h!11965 (_ BitVec 64)) (t!17211 List!10975)) )
))
(declare-fun arrayNoDuplicates!0 (array!35082 (_ BitVec 32) List!10975) Bool)

(assert (=> b!557598 (= res!349617 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10972))))

(declare-fun res!349615 () Bool)

(assert (=> start!51074 (=> (not res!349615) (not e!321246))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51074 (= res!349615 (validMask!0 mask!3119))))

(assert (=> start!51074 e!321246))

(assert (=> start!51074 true))

(declare-fun array_inv!12616 (array!35082) Bool)

(assert (=> start!51074 (array_inv!12616 a!3118)))

(declare-fun b!557599 () Bool)

(declare-fun res!349619 () Bool)

(assert (=> b!557599 (=> (not res!349619) (not e!321244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35082 (_ BitVec 32)) Bool)

(assert (=> b!557599 (= res!349619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557600 () Bool)

(assert (=> b!557600 (= e!321244 (not true))))

(declare-fun e!321247 () Bool)

(assert (=> b!557600 e!321247))

(declare-fun res!349610 () Bool)

(assert (=> b!557600 (=> (not res!349610) (not e!321247))))

(assert (=> b!557600 (= res!349610 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17370 0))(
  ( (Unit!17371) )
))
(declare-fun lt!253415 () Unit!17370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35082 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17370)

(assert (=> b!557600 (= lt!253415 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557601 () Bool)

(declare-fun res!349614 () Bool)

(assert (=> b!557601 (=> (not res!349614) (not e!321246))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557601 (= res!349614 (and (= (size!17206 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17206 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17206 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557602 () Bool)

(assert (=> b!557602 (= e!321246 e!321244)))

(declare-fun res!349613 () Bool)

(assert (=> b!557602 (=> (not res!349613) (not e!321244))))

(declare-datatypes ((SeekEntryResult!5298 0))(
  ( (MissingZero!5298 (index!23419 (_ BitVec 32))) (Found!5298 (index!23420 (_ BitVec 32))) (Intermediate!5298 (undefined!6110 Bool) (index!23421 (_ BitVec 32)) (x!52353 (_ BitVec 32))) (Undefined!5298) (MissingVacant!5298 (index!23422 (_ BitVec 32))) )
))
(declare-fun lt!253414 () SeekEntryResult!5298)

(assert (=> b!557602 (= res!349613 (or (= lt!253414 (MissingZero!5298 i!1132)) (= lt!253414 (MissingVacant!5298 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35082 (_ BitVec 32)) SeekEntryResult!5298)

(assert (=> b!557602 (= lt!253414 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557603 () Bool)

(declare-fun res!349618 () Bool)

(assert (=> b!557603 (=> (not res!349618) (not e!321246))))

(assert (=> b!557603 (= res!349618 (validKeyInArray!0 k!1914))))

(declare-fun b!557604 () Bool)

(assert (=> b!557604 (= e!321247 (= (seekEntryOrOpen!0 (select (arr!16842 a!3118) j!142) a!3118 mask!3119) (Found!5298 j!142)))))

(declare-fun b!557605 () Bool)

(declare-fun res!349611 () Bool)

(assert (=> b!557605 (=> (not res!349611) (not e!321244))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35082 (_ BitVec 32)) SeekEntryResult!5298)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557605 (= res!349611 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16842 a!3118) j!142) mask!3119) (select (arr!16842 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16842 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16842 a!3118) i!1132 k!1914) j!142) (array!35083 (store (arr!16842 a!3118) i!1132 k!1914) (size!17206 a!3118)) mask!3119)))))

(declare-fun b!557606 () Bool)

(declare-fun res!349616 () Bool)

(assert (=> b!557606 (=> (not res!349616) (not e!321246))))

(declare-fun arrayContainsKey!0 (array!35082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557606 (= res!349616 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51074 res!349615) b!557601))

(assert (= (and b!557601 res!349614) b!557597))

(assert (= (and b!557597 res!349612) b!557603))

(assert (= (and b!557603 res!349618) b!557606))

(assert (= (and b!557606 res!349616) b!557602))

(assert (= (and b!557602 res!349613) b!557599))

(assert (= (and b!557599 res!349619) b!557598))

(assert (= (and b!557598 res!349617) b!557605))

(assert (= (and b!557605 res!349611) b!557600))

(assert (= (and b!557600 res!349610) b!557604))

(declare-fun m!535483 () Bool)

(assert (=> b!557597 m!535483))

(assert (=> b!557597 m!535483))

(declare-fun m!535485 () Bool)

(assert (=> b!557597 m!535485))

(assert (=> b!557604 m!535483))

(assert (=> b!557604 m!535483))

(declare-fun m!535487 () Bool)

(assert (=> b!557604 m!535487))

(declare-fun m!535489 () Bool)

(assert (=> b!557602 m!535489))

(declare-fun m!535491 () Bool)

(assert (=> b!557600 m!535491))

(declare-fun m!535493 () Bool)

(assert (=> b!557600 m!535493))

(assert (=> b!557605 m!535483))

(declare-fun m!535495 () Bool)

(assert (=> b!557605 m!535495))

(assert (=> b!557605 m!535483))

(declare-fun m!535497 () Bool)

(assert (=> b!557605 m!535497))

(declare-fun m!535499 () Bool)

(assert (=> b!557605 m!535499))

(assert (=> b!557605 m!535497))

(declare-fun m!535501 () Bool)

(assert (=> b!557605 m!535501))

(assert (=> b!557605 m!535495))

(assert (=> b!557605 m!535483))

(declare-fun m!535503 () Bool)

(assert (=> b!557605 m!535503))

(declare-fun m!535505 () Bool)

(assert (=> b!557605 m!535505))

(assert (=> b!557605 m!535497))

(assert (=> b!557605 m!535499))

(declare-fun m!535507 () Bool)

(assert (=> start!51074 m!535507))

(declare-fun m!535509 () Bool)

(assert (=> start!51074 m!535509))

(declare-fun m!535511 () Bool)

(assert (=> b!557606 m!535511))

(declare-fun m!535513 () Bool)

(assert (=> b!557598 m!535513))

(declare-fun m!535515 () Bool)

(assert (=> b!557599 m!535515))

(declare-fun m!535517 () Bool)

(assert (=> b!557603 m!535517))

(push 1)

