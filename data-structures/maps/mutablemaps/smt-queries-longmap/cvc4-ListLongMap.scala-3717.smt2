; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51120 () Bool)

(assert start!51120)

(declare-fun b!558358 () Bool)

(declare-fun res!350373 () Bool)

(declare-fun e!321658 () Bool)

(assert (=> b!558358 (=> (not res!350373) (not e!321658))))

(declare-datatypes ((array!35128 0))(
  ( (array!35129 (arr!16865 (Array (_ BitVec 32) (_ BitVec 64))) (size!17229 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35128)

(declare-datatypes ((List!10998 0))(
  ( (Nil!10995) (Cons!10994 (h!11988 (_ BitVec 64)) (t!17234 List!10998)) )
))
(declare-fun arrayNoDuplicates!0 (array!35128 (_ BitVec 32) List!10998) Bool)

(assert (=> b!558358 (= res!350373 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10995))))

(declare-fun b!558359 () Bool)

(declare-fun e!321653 () Bool)

(assert (=> b!558359 (= e!321658 e!321653)))

(declare-fun res!350376 () Bool)

(assert (=> b!558359 (=> (not res!350376) (not e!321653))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5321 0))(
  ( (MissingZero!5321 (index!23511 (_ BitVec 32))) (Found!5321 (index!23512 (_ BitVec 32))) (Intermediate!5321 (undefined!6133 Bool) (index!23513 (_ BitVec 32)) (x!52432 (_ BitVec 32))) (Undefined!5321) (MissingVacant!5321 (index!23514 (_ BitVec 32))) )
))
(declare-fun lt!253800 () SeekEntryResult!5321)

(declare-fun lt!253803 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35128 (_ BitVec 32)) SeekEntryResult!5321)

(assert (=> b!558359 (= res!350376 (= lt!253800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253803 (select (store (arr!16865 a!3118) i!1132 k!1914) j!142) (array!35129 (store (arr!16865 a!3118) i!1132 k!1914) (size!17229 a!3118)) mask!3119)))))

(declare-fun lt!253801 () (_ BitVec 32))

(assert (=> b!558359 (= lt!253800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253801 (select (arr!16865 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558359 (= lt!253803 (toIndex!0 (select (store (arr!16865 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558359 (= lt!253801 (toIndex!0 (select (arr!16865 a!3118) j!142) mask!3119))))

(declare-fun res!350380 () Bool)

(declare-fun e!321654 () Bool)

(assert (=> start!51120 (=> (not res!350380) (not e!321654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51120 (= res!350380 (validMask!0 mask!3119))))

(assert (=> start!51120 e!321654))

(assert (=> start!51120 true))

(declare-fun array_inv!12639 (array!35128) Bool)

(assert (=> start!51120 (array_inv!12639 a!3118)))

(declare-fun b!558360 () Bool)

(declare-fun res!350374 () Bool)

(assert (=> b!558360 (=> (not res!350374) (not e!321654))))

(assert (=> b!558360 (= res!350374 (and (= (size!17229 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17229 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17229 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558361 () Bool)

(declare-fun res!350381 () Bool)

(assert (=> b!558361 (=> (not res!350381) (not e!321654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558361 (= res!350381 (validKeyInArray!0 k!1914))))

(declare-fun b!558362 () Bool)

(declare-fun res!350371 () Bool)

(assert (=> b!558362 (=> (not res!350371) (not e!321654))))

(assert (=> b!558362 (= res!350371 (validKeyInArray!0 (select (arr!16865 a!3118) j!142)))))

(declare-fun b!558363 () Bool)

(assert (=> b!558363 (= e!321654 e!321658)))

(declare-fun res!350378 () Bool)

(assert (=> b!558363 (=> (not res!350378) (not e!321658))))

(declare-fun lt!253805 () SeekEntryResult!5321)

(assert (=> b!558363 (= res!350378 (or (= lt!253805 (MissingZero!5321 i!1132)) (= lt!253805 (MissingVacant!5321 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35128 (_ BitVec 32)) SeekEntryResult!5321)

(assert (=> b!558363 (= lt!253805 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558364 () Bool)

(assert (=> b!558364 (= e!321653 (not true))))

(declare-fun e!321657 () Bool)

(assert (=> b!558364 e!321657))

(declare-fun res!350372 () Bool)

(assert (=> b!558364 (=> (not res!350372) (not e!321657))))

(declare-fun lt!253802 () SeekEntryResult!5321)

(assert (=> b!558364 (= res!350372 (= lt!253802 (Found!5321 j!142)))))

(assert (=> b!558364 (= lt!253802 (seekEntryOrOpen!0 (select (arr!16865 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35128 (_ BitVec 32)) Bool)

(assert (=> b!558364 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17416 0))(
  ( (Unit!17417) )
))
(declare-fun lt!253804 () Unit!17416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17416)

(assert (=> b!558364 (= lt!253804 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558365 () Bool)

(declare-fun res!350375 () Bool)

(assert (=> b!558365 (=> (not res!350375) (not e!321658))))

(assert (=> b!558365 (= res!350375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!321656 () Bool)

(declare-fun b!558366 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35128 (_ BitVec 32)) SeekEntryResult!5321)

(assert (=> b!558366 (= e!321656 (= lt!253802 (seekKeyOrZeroReturnVacant!0 (x!52432 lt!253800) (index!23513 lt!253800) (index!23513 lt!253800) (select (arr!16865 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558367 () Bool)

(declare-fun res!350377 () Bool)

(assert (=> b!558367 (=> (not res!350377) (not e!321654))))

(declare-fun arrayContainsKey!0 (array!35128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558367 (= res!350377 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558368 () Bool)

(assert (=> b!558368 (= e!321657 e!321656)))

(declare-fun res!350379 () Bool)

(assert (=> b!558368 (=> res!350379 e!321656)))

(assert (=> b!558368 (= res!350379 (or (undefined!6133 lt!253800) (not (is-Intermediate!5321 lt!253800)) (= (select (arr!16865 a!3118) (index!23513 lt!253800)) (select (arr!16865 a!3118) j!142)) (= (select (arr!16865 a!3118) (index!23513 lt!253800)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!51120 res!350380) b!558360))

(assert (= (and b!558360 res!350374) b!558362))

(assert (= (and b!558362 res!350371) b!558361))

(assert (= (and b!558361 res!350381) b!558367))

(assert (= (and b!558367 res!350377) b!558363))

(assert (= (and b!558363 res!350378) b!558365))

(assert (= (and b!558365 res!350375) b!558358))

(assert (= (and b!558358 res!350373) b!558359))

(assert (= (and b!558359 res!350376) b!558364))

(assert (= (and b!558364 res!350372) b!558368))

(assert (= (and b!558368 (not res!350379)) b!558366))

(declare-fun m!536397 () Bool)

(assert (=> b!558366 m!536397))

(assert (=> b!558366 m!536397))

(declare-fun m!536399 () Bool)

(assert (=> b!558366 m!536399))

(declare-fun m!536401 () Bool)

(assert (=> b!558361 m!536401))

(declare-fun m!536403 () Bool)

(assert (=> b!558368 m!536403))

(assert (=> b!558368 m!536397))

(declare-fun m!536405 () Bool)

(assert (=> b!558365 m!536405))

(declare-fun m!536407 () Bool)

(assert (=> b!558367 m!536407))

(declare-fun m!536409 () Bool)

(assert (=> b!558358 m!536409))

(assert (=> b!558359 m!536397))

(declare-fun m!536411 () Bool)

(assert (=> b!558359 m!536411))

(declare-fun m!536413 () Bool)

(assert (=> b!558359 m!536413))

(assert (=> b!558359 m!536413))

(declare-fun m!536415 () Bool)

(assert (=> b!558359 m!536415))

(declare-fun m!536417 () Bool)

(assert (=> b!558359 m!536417))

(assert (=> b!558359 m!536413))

(declare-fun m!536419 () Bool)

(assert (=> b!558359 m!536419))

(assert (=> b!558359 m!536397))

(declare-fun m!536421 () Bool)

(assert (=> b!558359 m!536421))

(assert (=> b!558359 m!536397))

(assert (=> b!558364 m!536397))

(assert (=> b!558364 m!536397))

(declare-fun m!536423 () Bool)

(assert (=> b!558364 m!536423))

(declare-fun m!536425 () Bool)

(assert (=> b!558364 m!536425))

(declare-fun m!536427 () Bool)

(assert (=> b!558364 m!536427))

(assert (=> b!558362 m!536397))

(assert (=> b!558362 m!536397))

(declare-fun m!536429 () Bool)

(assert (=> b!558362 m!536429))

(declare-fun m!536431 () Bool)

(assert (=> start!51120 m!536431))

(declare-fun m!536433 () Bool)

(assert (=> start!51120 m!536433))

(declare-fun m!536435 () Bool)

(assert (=> b!558363 m!536435))

(push 1)

