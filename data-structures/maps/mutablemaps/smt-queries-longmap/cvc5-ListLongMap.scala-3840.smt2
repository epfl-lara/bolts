; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52808 () Bool)

(assert start!52808)

(declare-fun b!575502 () Bool)

(declare-fun e!331144 () Bool)

(declare-datatypes ((SeekEntryResult!5688 0))(
  ( (MissingZero!5688 (index!24979 (_ BitVec 32))) (Found!5688 (index!24980 (_ BitVec 32))) (Intermediate!5688 (undefined!6500 Bool) (index!24981 (_ BitVec 32)) (x!53900 (_ BitVec 32))) (Undefined!5688) (MissingVacant!5688 (index!24982 (_ BitVec 32))) )
))
(declare-fun lt!263289 () SeekEntryResult!5688)

(declare-fun lt!263297 () SeekEntryResult!5688)

(assert (=> b!575502 (= e!331144 (= lt!263289 lt!263297))))

(declare-fun lt!263296 () SeekEntryResult!5688)

(declare-fun lt!263290 () SeekEntryResult!5688)

(assert (=> b!575502 (= lt!263296 lt!263290)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!263291 () SeekEntryResult!5688)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35907 0))(
  ( (array!35908 (arr!17232 (Array (_ BitVec 32) (_ BitVec 64))) (size!17596 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35907)

(declare-datatypes ((Unit!18078 0))(
  ( (Unit!18079) )
))
(declare-fun lt!263295 () Unit!18078)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35907 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18078)

(assert (=> b!575502 (= lt!263295 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53900 lt!263291) (index!24981 lt!263291) (index!24981 lt!263291) mask!3119))))

(declare-fun b!575503 () Bool)

(declare-fun res!364072 () Bool)

(declare-fun e!331142 () Bool)

(assert (=> b!575503 (=> (not res!364072) (not e!331142))))

(declare-fun arrayContainsKey!0 (array!35907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575503 (= res!364072 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575504 () Bool)

(declare-fun e!331141 () Bool)

(declare-fun e!331143 () Bool)

(assert (=> b!575504 (= e!331141 (not e!331143))))

(declare-fun res!364074 () Bool)

(assert (=> b!575504 (=> res!364074 e!331143)))

(assert (=> b!575504 (= res!364074 (or (undefined!6500 lt!263291) (not (is-Intermediate!5688 lt!263291))))))

(declare-fun lt!263287 () SeekEntryResult!5688)

(assert (=> b!575504 (= lt!263289 lt!263287)))

(assert (=> b!575504 (= lt!263287 (Found!5688 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35907 (_ BitVec 32)) SeekEntryResult!5688)

(assert (=> b!575504 (= lt!263289 (seekEntryOrOpen!0 (select (arr!17232 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35907 (_ BitVec 32)) Bool)

(assert (=> b!575504 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!263292 () Unit!18078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35907 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18078)

(assert (=> b!575504 (= lt!263292 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!364071 () Bool)

(assert (=> start!52808 (=> (not res!364071) (not e!331142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52808 (= res!364071 (validMask!0 mask!3119))))

(assert (=> start!52808 e!331142))

(assert (=> start!52808 true))

(declare-fun array_inv!13006 (array!35907) Bool)

(assert (=> start!52808 (array_inv!13006 a!3118)))

(declare-fun b!575505 () Bool)

(declare-fun res!364079 () Bool)

(assert (=> b!575505 (=> (not res!364079) (not e!331142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575505 (= res!364079 (validKeyInArray!0 k!1914))))

(declare-fun b!575506 () Bool)

(declare-fun res!364077 () Bool)

(assert (=> b!575506 (=> (not res!364077) (not e!331142))))

(assert (=> b!575506 (= res!364077 (validKeyInArray!0 (select (arr!17232 a!3118) j!142)))))

(declare-fun b!575507 () Bool)

(declare-fun res!364069 () Bool)

(declare-fun e!331146 () Bool)

(assert (=> b!575507 (=> (not res!364069) (not e!331146))))

(assert (=> b!575507 (= res!364069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575508 () Bool)

(assert (=> b!575508 (= e!331142 e!331146)))

(declare-fun res!364078 () Bool)

(assert (=> b!575508 (=> (not res!364078) (not e!331146))))

(declare-fun lt!263293 () SeekEntryResult!5688)

(assert (=> b!575508 (= res!364078 (or (= lt!263293 (MissingZero!5688 i!1132)) (= lt!263293 (MissingVacant!5688 i!1132))))))

(assert (=> b!575508 (= lt!263293 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575509 () Bool)

(declare-fun res!364068 () Bool)

(assert (=> b!575509 (=> (not res!364068) (not e!331142))))

(assert (=> b!575509 (= res!364068 (and (= (size!17596 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17596 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17596 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575510 () Bool)

(declare-fun e!331147 () Bool)

(assert (=> b!575510 (= e!331143 e!331147)))

(declare-fun res!364070 () Bool)

(assert (=> b!575510 (=> res!364070 e!331147)))

(declare-fun lt!263300 () (_ BitVec 64))

(assert (=> b!575510 (= res!364070 (or (= lt!263300 (select (arr!17232 a!3118) j!142)) (= lt!263300 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575510 (= lt!263300 (select (arr!17232 a!3118) (index!24981 lt!263291)))))

(declare-fun b!575511 () Bool)

(assert (=> b!575511 (= e!331146 e!331141)))

(declare-fun res!364075 () Bool)

(assert (=> b!575511 (=> (not res!364075) (not e!331141))))

(declare-fun lt!263299 () (_ BitVec 64))

(declare-fun lt!263288 () (_ BitVec 32))

(declare-fun lt!263294 () array!35907)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35907 (_ BitVec 32)) SeekEntryResult!5688)

(assert (=> b!575511 (= res!364075 (= lt!263291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263288 lt!263299 lt!263294 mask!3119)))))

(declare-fun lt!263298 () (_ BitVec 32))

(assert (=> b!575511 (= lt!263291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263298 (select (arr!17232 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575511 (= lt!263288 (toIndex!0 lt!263299 mask!3119))))

(assert (=> b!575511 (= lt!263299 (select (store (arr!17232 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575511 (= lt!263298 (toIndex!0 (select (arr!17232 a!3118) j!142) mask!3119))))

(assert (=> b!575511 (= lt!263294 (array!35908 (store (arr!17232 a!3118) i!1132 k!1914) (size!17596 a!3118)))))

(declare-fun b!575512 () Bool)

(assert (=> b!575512 (= e!331147 e!331144)))

(declare-fun res!364073 () Bool)

(assert (=> b!575512 (=> res!364073 e!331144)))

(assert (=> b!575512 (= res!364073 (or (bvslt (index!24981 lt!263291) #b00000000000000000000000000000000) (bvsge (index!24981 lt!263291) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53900 lt!263291) #b01111111111111111111111111111110) (bvslt (x!53900 lt!263291) #b00000000000000000000000000000000) (not (= lt!263300 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17232 a!3118) i!1132 k!1914) (index!24981 lt!263291)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263296 lt!263287))))))

(assert (=> b!575512 (= lt!263297 lt!263290)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35907 (_ BitVec 32)) SeekEntryResult!5688)

(assert (=> b!575512 (= lt!263290 (seekKeyOrZeroReturnVacant!0 (x!53900 lt!263291) (index!24981 lt!263291) (index!24981 lt!263291) lt!263299 lt!263294 mask!3119))))

(assert (=> b!575512 (= lt!263297 (seekEntryOrOpen!0 lt!263299 lt!263294 mask!3119))))

(assert (=> b!575512 (= lt!263289 lt!263296)))

(assert (=> b!575512 (= lt!263296 (seekKeyOrZeroReturnVacant!0 (x!53900 lt!263291) (index!24981 lt!263291) (index!24981 lt!263291) (select (arr!17232 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575513 () Bool)

(declare-fun res!364076 () Bool)

(assert (=> b!575513 (=> (not res!364076) (not e!331146))))

(declare-datatypes ((List!11365 0))(
  ( (Nil!11362) (Cons!11361 (h!12400 (_ BitVec 64)) (t!17601 List!11365)) )
))
(declare-fun arrayNoDuplicates!0 (array!35907 (_ BitVec 32) List!11365) Bool)

(assert (=> b!575513 (= res!364076 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11362))))

(assert (= (and start!52808 res!364071) b!575509))

(assert (= (and b!575509 res!364068) b!575506))

(assert (= (and b!575506 res!364077) b!575505))

(assert (= (and b!575505 res!364079) b!575503))

(assert (= (and b!575503 res!364072) b!575508))

(assert (= (and b!575508 res!364078) b!575507))

(assert (= (and b!575507 res!364069) b!575513))

(assert (= (and b!575513 res!364076) b!575511))

(assert (= (and b!575511 res!364075) b!575504))

(assert (= (and b!575504 (not res!364074)) b!575510))

(assert (= (and b!575510 (not res!364070)) b!575512))

(assert (= (and b!575512 (not res!364073)) b!575502))

(declare-fun m!554479 () Bool)

(assert (=> b!575503 m!554479))

(declare-fun m!554481 () Bool)

(assert (=> b!575512 m!554481))

(declare-fun m!554483 () Bool)

(assert (=> b!575512 m!554483))

(declare-fun m!554485 () Bool)

(assert (=> b!575512 m!554485))

(declare-fun m!554487 () Bool)

(assert (=> b!575512 m!554487))

(declare-fun m!554489 () Bool)

(assert (=> b!575512 m!554489))

(assert (=> b!575512 m!554483))

(declare-fun m!554491 () Bool)

(assert (=> b!575512 m!554491))

(declare-fun m!554493 () Bool)

(assert (=> start!52808 m!554493))

(declare-fun m!554495 () Bool)

(assert (=> start!52808 m!554495))

(declare-fun m!554497 () Bool)

(assert (=> b!575513 m!554497))

(assert (=> b!575510 m!554483))

(declare-fun m!554499 () Bool)

(assert (=> b!575510 m!554499))

(assert (=> b!575506 m!554483))

(assert (=> b!575506 m!554483))

(declare-fun m!554501 () Bool)

(assert (=> b!575506 m!554501))

(declare-fun m!554503 () Bool)

(assert (=> b!575508 m!554503))

(assert (=> b!575504 m!554483))

(assert (=> b!575504 m!554483))

(declare-fun m!554505 () Bool)

(assert (=> b!575504 m!554505))

(declare-fun m!554507 () Bool)

(assert (=> b!575504 m!554507))

(declare-fun m!554509 () Bool)

(assert (=> b!575504 m!554509))

(declare-fun m!554511 () Bool)

(assert (=> b!575502 m!554511))

(declare-fun m!554513 () Bool)

(assert (=> b!575505 m!554513))

(declare-fun m!554515 () Bool)

(assert (=> b!575507 m!554515))

(assert (=> b!575511 m!554483))

(declare-fun m!554517 () Bool)

(assert (=> b!575511 m!554517))

(declare-fun m!554519 () Bool)

(assert (=> b!575511 m!554519))

(assert (=> b!575511 m!554483))

(declare-fun m!554521 () Bool)

(assert (=> b!575511 m!554521))

(assert (=> b!575511 m!554483))

(declare-fun m!554523 () Bool)

(assert (=> b!575511 m!554523))

(assert (=> b!575511 m!554489))

(declare-fun m!554525 () Bool)

(assert (=> b!575511 m!554525))

(push 1)

