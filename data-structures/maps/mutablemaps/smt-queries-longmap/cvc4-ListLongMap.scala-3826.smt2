; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52464 () Bool)

(assert start!52464)

(declare-fun b!572465 () Bool)

(declare-fun e!329304 () Bool)

(declare-fun e!329309 () Bool)

(assert (=> b!572465 (= e!329304 e!329309)))

(declare-fun res!362130 () Bool)

(assert (=> b!572465 (=> (not res!362130) (not e!329309))))

(declare-datatypes ((SeekEntryResult!5648 0))(
  ( (MissingZero!5648 (index!24819 (_ BitVec 32))) (Found!5648 (index!24820 (_ BitVec 32))) (Intermediate!5648 (undefined!6460 Bool) (index!24821 (_ BitVec 32)) (x!53712 (_ BitVec 32))) (Undefined!5648) (MissingVacant!5648 (index!24822 (_ BitVec 32))) )
))
(declare-fun lt!261355 () SeekEntryResult!5648)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572465 (= res!362130 (or (= lt!261355 (MissingZero!5648 i!1132)) (= lt!261355 (MissingVacant!5648 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35815 0))(
  ( (array!35816 (arr!17192 (Array (_ BitVec 32) (_ BitVec 64))) (size!17556 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35815)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35815 (_ BitVec 32)) SeekEntryResult!5648)

(assert (=> b!572465 (= lt!261355 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572466 () Bool)

(declare-fun res!362132 () Bool)

(assert (=> b!572466 (=> (not res!362132) (not e!329309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35815 (_ BitVec 32)) Bool)

(assert (=> b!572466 (= res!362132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!329308 () Bool)

(declare-fun b!572467 () Bool)

(declare-fun lt!261359 () (_ BitVec 64))

(declare-fun lt!261354 () array!35815)

(declare-fun lt!261356 () SeekEntryResult!5648)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35815 (_ BitVec 32)) SeekEntryResult!5648)

(assert (=> b!572467 (= e!329308 (= (seekEntryOrOpen!0 lt!261359 lt!261354 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53712 lt!261356) (index!24821 lt!261356) (index!24821 lt!261356) lt!261359 lt!261354 mask!3119)))))

(declare-fun b!572468 () Bool)

(declare-fun e!329305 () Bool)

(assert (=> b!572468 (= e!329309 e!329305)))

(declare-fun res!362131 () Bool)

(assert (=> b!572468 (=> (not res!362131) (not e!329305))))

(declare-fun lt!261352 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35815 (_ BitVec 32)) SeekEntryResult!5648)

(assert (=> b!572468 (= res!362131 (= lt!261356 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261352 lt!261359 lt!261354 mask!3119)))))

(declare-fun lt!261358 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!572468 (= lt!261356 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261358 (select (arr!17192 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572468 (= lt!261352 (toIndex!0 lt!261359 mask!3119))))

(assert (=> b!572468 (= lt!261359 (select (store (arr!17192 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572468 (= lt!261358 (toIndex!0 (select (arr!17192 a!3118) j!142) mask!3119))))

(assert (=> b!572468 (= lt!261354 (array!35816 (store (arr!17192 a!3118) i!1132 k!1914) (size!17556 a!3118)))))

(declare-fun b!572469 () Bool)

(declare-fun res!362129 () Bool)

(assert (=> b!572469 (=> (not res!362129) (not e!329304))))

(assert (=> b!572469 (= res!362129 (and (= (size!17556 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17556 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17556 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572470 () Bool)

(declare-fun e!329307 () Bool)

(assert (=> b!572470 (= e!329307 e!329308)))

(declare-fun res!362126 () Bool)

(assert (=> b!572470 (=> (not res!362126) (not e!329308))))

(declare-fun lt!261353 () SeekEntryResult!5648)

(assert (=> b!572470 (= res!362126 (= lt!261353 (seekKeyOrZeroReturnVacant!0 (x!53712 lt!261356) (index!24821 lt!261356) (index!24821 lt!261356) (select (arr!17192 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572471 () Bool)

(declare-fun e!329310 () Bool)

(declare-fun e!329306 () Bool)

(assert (=> b!572471 (= e!329310 e!329306)))

(declare-fun res!362127 () Bool)

(assert (=> b!572471 (=> res!362127 e!329306)))

(assert (=> b!572471 (= res!362127 (or (undefined!6460 lt!261356) (not (is-Intermediate!5648 lt!261356))))))

(declare-fun b!572473 () Bool)

(declare-fun res!362124 () Bool)

(assert (=> b!572473 (=> (not res!362124) (not e!329304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572473 (= res!362124 (validKeyInArray!0 k!1914))))

(declare-fun b!572474 () Bool)

(assert (=> b!572474 (= e!329306 e!329307)))

(declare-fun res!362135 () Bool)

(assert (=> b!572474 (=> res!362135 e!329307)))

(declare-fun lt!261351 () (_ BitVec 64))

(assert (=> b!572474 (= res!362135 (or (= lt!261351 (select (arr!17192 a!3118) j!142)) (= lt!261351 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572474 (= lt!261351 (select (arr!17192 a!3118) (index!24821 lt!261356)))))

(declare-fun b!572475 () Bool)

(declare-fun res!362133 () Bool)

(assert (=> b!572475 (=> (not res!362133) (not e!329309))))

(declare-datatypes ((List!11325 0))(
  ( (Nil!11322) (Cons!11321 (h!12348 (_ BitVec 64)) (t!17561 List!11325)) )
))
(declare-fun arrayNoDuplicates!0 (array!35815 (_ BitVec 32) List!11325) Bool)

(assert (=> b!572475 (= res!362133 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11322))))

(declare-fun b!572472 () Bool)

(assert (=> b!572472 (= e!329305 (not true))))

(assert (=> b!572472 e!329310))

(declare-fun res!362123 () Bool)

(assert (=> b!572472 (=> (not res!362123) (not e!329310))))

(assert (=> b!572472 (= res!362123 (= lt!261353 (Found!5648 j!142)))))

(assert (=> b!572472 (= lt!261353 (seekEntryOrOpen!0 (select (arr!17192 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!572472 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17998 0))(
  ( (Unit!17999) )
))
(declare-fun lt!261357 () Unit!17998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17998)

(assert (=> b!572472 (= lt!261357 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!362134 () Bool)

(assert (=> start!52464 (=> (not res!362134) (not e!329304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52464 (= res!362134 (validMask!0 mask!3119))))

(assert (=> start!52464 e!329304))

(assert (=> start!52464 true))

(declare-fun array_inv!12966 (array!35815) Bool)

(assert (=> start!52464 (array_inv!12966 a!3118)))

(declare-fun b!572476 () Bool)

(declare-fun res!362125 () Bool)

(assert (=> b!572476 (=> (not res!362125) (not e!329304))))

(declare-fun arrayContainsKey!0 (array!35815 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572476 (= res!362125 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572477 () Bool)

(declare-fun res!362128 () Bool)

(assert (=> b!572477 (=> (not res!362128) (not e!329304))))

(assert (=> b!572477 (= res!362128 (validKeyInArray!0 (select (arr!17192 a!3118) j!142)))))

(assert (= (and start!52464 res!362134) b!572469))

(assert (= (and b!572469 res!362129) b!572477))

(assert (= (and b!572477 res!362128) b!572473))

(assert (= (and b!572473 res!362124) b!572476))

(assert (= (and b!572476 res!362125) b!572465))

(assert (= (and b!572465 res!362130) b!572466))

(assert (= (and b!572466 res!362132) b!572475))

(assert (= (and b!572475 res!362133) b!572468))

(assert (= (and b!572468 res!362131) b!572472))

(assert (= (and b!572472 res!362123) b!572471))

(assert (= (and b!572471 (not res!362127)) b!572474))

(assert (= (and b!572474 (not res!362135)) b!572470))

(assert (= (and b!572470 res!362126) b!572467))

(declare-fun m!551507 () Bool)

(assert (=> b!572475 m!551507))

(declare-fun m!551509 () Bool)

(assert (=> start!52464 m!551509))

(declare-fun m!551511 () Bool)

(assert (=> start!52464 m!551511))

(declare-fun m!551513 () Bool)

(assert (=> b!572466 m!551513))

(declare-fun m!551515 () Bool)

(assert (=> b!572476 m!551515))

(declare-fun m!551517 () Bool)

(assert (=> b!572473 m!551517))

(declare-fun m!551519 () Bool)

(assert (=> b!572468 m!551519))

(declare-fun m!551521 () Bool)

(assert (=> b!572468 m!551521))

(declare-fun m!551523 () Bool)

(assert (=> b!572468 m!551523))

(assert (=> b!572468 m!551519))

(declare-fun m!551525 () Bool)

(assert (=> b!572468 m!551525))

(assert (=> b!572468 m!551519))

(declare-fun m!551527 () Bool)

(assert (=> b!572468 m!551527))

(declare-fun m!551529 () Bool)

(assert (=> b!572468 m!551529))

(declare-fun m!551531 () Bool)

(assert (=> b!572468 m!551531))

(assert (=> b!572472 m!551519))

(assert (=> b!572472 m!551519))

(declare-fun m!551533 () Bool)

(assert (=> b!572472 m!551533))

(declare-fun m!551535 () Bool)

(assert (=> b!572472 m!551535))

(declare-fun m!551537 () Bool)

(assert (=> b!572472 m!551537))

(declare-fun m!551539 () Bool)

(assert (=> b!572467 m!551539))

(declare-fun m!551541 () Bool)

(assert (=> b!572467 m!551541))

(declare-fun m!551543 () Bool)

(assert (=> b!572465 m!551543))

(assert (=> b!572470 m!551519))

(assert (=> b!572470 m!551519))

(declare-fun m!551545 () Bool)

(assert (=> b!572470 m!551545))

(assert (=> b!572477 m!551519))

(assert (=> b!572477 m!551519))

(declare-fun m!551547 () Bool)

(assert (=> b!572477 m!551547))

(assert (=> b!572474 m!551519))

(declare-fun m!551549 () Bool)

(assert (=> b!572474 m!551549))

(push 1)

