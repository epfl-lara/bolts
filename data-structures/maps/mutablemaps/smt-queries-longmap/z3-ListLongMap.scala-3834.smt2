; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52708 () Bool)

(assert start!52708)

(declare-fun b!574505 () Bool)

(declare-fun e!330553 () Bool)

(declare-fun e!330552 () Bool)

(assert (=> b!574505 (= e!330553 e!330552)))

(declare-fun res!363351 () Bool)

(assert (=> b!574505 (=> res!363351 e!330552)))

(declare-datatypes ((SeekEntryResult!5671 0))(
  ( (MissingZero!5671 (index!24911 (_ BitVec 32))) (Found!5671 (index!24912 (_ BitVec 32))) (Intermediate!5671 (undefined!6483 Bool) (index!24913 (_ BitVec 32)) (x!53826 (_ BitVec 32))) (Undefined!5671) (MissingVacant!5671 (index!24914 (_ BitVec 32))) )
))
(declare-fun lt!262462 () SeekEntryResult!5671)

(get-info :version)

(assert (=> b!574505 (= res!363351 (or (undefined!6483 lt!262462) (not ((_ is Intermediate!5671) lt!262462))))))

(declare-fun b!574506 () Bool)

(declare-fun res!363349 () Bool)

(declare-fun e!330556 () Bool)

(assert (=> b!574506 (=> (not res!363349) (not e!330556))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!574506 (= res!363349 (validKeyInArray!0 k0!1914))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!330555 () Bool)

(declare-fun b!574507 () Bool)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35870 0))(
  ( (array!35871 (arr!17215 (Array (_ BitVec 32) (_ BitVec 64))) (size!17579 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35870)

(assert (=> b!574507 (= e!330555 (not (or (undefined!6483 lt!262462) (not ((_ is Intermediate!5671) lt!262462)) (let ((bdg!18025 (select (arr!17215 a!3118) (index!24913 lt!262462)))) (or (= bdg!18025 (select (arr!17215 a!3118) j!142)) (= bdg!18025 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24913 lt!262462) #b00000000000000000000000000000000) (bvsge (index!24913 lt!262462) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53826 lt!262462) #b01111111111111111111111111111110) (bvslt (x!53826 lt!262462) #b00000000000000000000000000000000) (not (= bdg!18025 #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (store (arr!17215 a!3118) i!1132 k0!1914) (index!24913 lt!262462)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!574507 e!330553))

(declare-fun res!363345 () Bool)

(assert (=> b!574507 (=> (not res!363345) (not e!330553))))

(declare-fun lt!262465 () SeekEntryResult!5671)

(assert (=> b!574507 (= res!363345 (= lt!262465 (Found!5671 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35870 (_ BitVec 32)) SeekEntryResult!5671)

(assert (=> b!574507 (= lt!262465 (seekEntryOrOpen!0 (select (arr!17215 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35870 (_ BitVec 32)) Bool)

(assert (=> b!574507 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18044 0))(
  ( (Unit!18045) )
))
(declare-fun lt!262461 () Unit!18044)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35870 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18044)

(assert (=> b!574507 (= lt!262461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!574508 () Bool)

(declare-fun res!363346 () Bool)

(assert (=> b!574508 (=> (not res!363346) (not e!330556))))

(assert (=> b!574508 (= res!363346 (validKeyInArray!0 (select (arr!17215 a!3118) j!142)))))

(declare-fun b!574509 () Bool)

(declare-fun res!363347 () Bool)

(assert (=> b!574509 (=> (not res!363347) (not e!330556))))

(assert (=> b!574509 (= res!363347 (and (= (size!17579 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17579 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17579 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!574510 () Bool)

(declare-fun e!330554 () Bool)

(assert (=> b!574510 (= e!330552 e!330554)))

(declare-fun res!363354 () Bool)

(assert (=> b!574510 (=> res!363354 e!330554)))

(declare-fun lt!262459 () (_ BitVec 64))

(assert (=> b!574510 (= res!363354 (or (= lt!262459 (select (arr!17215 a!3118) j!142)) (= lt!262459 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!574510 (= lt!262459 (select (arr!17215 a!3118) (index!24913 lt!262462)))))

(declare-fun b!574512 () Bool)

(declare-fun res!363344 () Bool)

(declare-fun e!330550 () Bool)

(assert (=> b!574512 (=> (not res!363344) (not e!330550))))

(declare-datatypes ((List!11348 0))(
  ( (Nil!11345) (Cons!11344 (h!12380 (_ BitVec 64)) (t!17584 List!11348)) )
))
(declare-fun arrayNoDuplicates!0 (array!35870 (_ BitVec 32) List!11348) Bool)

(assert (=> b!574512 (= res!363344 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11345))))

(declare-fun lt!262464 () array!35870)

(declare-fun lt!262466 () (_ BitVec 64))

(declare-fun b!574513 () Bool)

(declare-fun e!330551 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35870 (_ BitVec 32)) SeekEntryResult!5671)

(assert (=> b!574513 (= e!330551 (= (seekEntryOrOpen!0 lt!262466 lt!262464 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53826 lt!262462) (index!24913 lt!262462) (index!24913 lt!262462) lt!262466 lt!262464 mask!3119)))))

(declare-fun b!574514 () Bool)

(assert (=> b!574514 (= e!330554 e!330551)))

(declare-fun res!363355 () Bool)

(assert (=> b!574514 (=> (not res!363355) (not e!330551))))

(assert (=> b!574514 (= res!363355 (= lt!262465 (seekKeyOrZeroReturnVacant!0 (x!53826 lt!262462) (index!24913 lt!262462) (index!24913 lt!262462) (select (arr!17215 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!574515 () Bool)

(assert (=> b!574515 (= e!330550 e!330555)))

(declare-fun res!363348 () Bool)

(assert (=> b!574515 (=> (not res!363348) (not e!330555))))

(declare-fun lt!262460 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35870 (_ BitVec 32)) SeekEntryResult!5671)

(assert (=> b!574515 (= res!363348 (= lt!262462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262460 lt!262466 lt!262464 mask!3119)))))

(declare-fun lt!262463 () (_ BitVec 32))

(assert (=> b!574515 (= lt!262462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262463 (select (arr!17215 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574515 (= lt!262460 (toIndex!0 lt!262466 mask!3119))))

(assert (=> b!574515 (= lt!262466 (select (store (arr!17215 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!574515 (= lt!262463 (toIndex!0 (select (arr!17215 a!3118) j!142) mask!3119))))

(assert (=> b!574515 (= lt!262464 (array!35871 (store (arr!17215 a!3118) i!1132 k0!1914) (size!17579 a!3118)))))

(declare-fun b!574516 () Bool)

(assert (=> b!574516 (= e!330556 e!330550)))

(declare-fun res!363356 () Bool)

(assert (=> b!574516 (=> (not res!363356) (not e!330550))))

(declare-fun lt!262458 () SeekEntryResult!5671)

(assert (=> b!574516 (= res!363356 (or (= lt!262458 (MissingZero!5671 i!1132)) (= lt!262458 (MissingVacant!5671 i!1132))))))

(assert (=> b!574516 (= lt!262458 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!574517 () Bool)

(declare-fun res!363350 () Bool)

(assert (=> b!574517 (=> (not res!363350) (not e!330556))))

(declare-fun arrayContainsKey!0 (array!35870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!574517 (= res!363350 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!363353 () Bool)

(assert (=> start!52708 (=> (not res!363353) (not e!330556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52708 (= res!363353 (validMask!0 mask!3119))))

(assert (=> start!52708 e!330556))

(assert (=> start!52708 true))

(declare-fun array_inv!12989 (array!35870) Bool)

(assert (=> start!52708 (array_inv!12989 a!3118)))

(declare-fun b!574511 () Bool)

(declare-fun res!363352 () Bool)

(assert (=> b!574511 (=> (not res!363352) (not e!330550))))

(assert (=> b!574511 (= res!363352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52708 res!363353) b!574509))

(assert (= (and b!574509 res!363347) b!574508))

(assert (= (and b!574508 res!363346) b!574506))

(assert (= (and b!574506 res!363349) b!574517))

(assert (= (and b!574517 res!363350) b!574516))

(assert (= (and b!574516 res!363356) b!574511))

(assert (= (and b!574511 res!363352) b!574512))

(assert (= (and b!574512 res!363344) b!574515))

(assert (= (and b!574515 res!363348) b!574507))

(assert (= (and b!574507 res!363345) b!574505))

(assert (= (and b!574505 (not res!363351)) b!574510))

(assert (= (and b!574510 (not res!363354)) b!574514))

(assert (= (and b!574514 res!363355) b!574513))

(declare-fun m!553385 () Bool)

(assert (=> b!574512 m!553385))

(declare-fun m!553387 () Bool)

(assert (=> b!574513 m!553387))

(declare-fun m!553389 () Bool)

(assert (=> b!574513 m!553389))

(declare-fun m!553391 () Bool)

(assert (=> b!574508 m!553391))

(assert (=> b!574508 m!553391))

(declare-fun m!553393 () Bool)

(assert (=> b!574508 m!553393))

(declare-fun m!553395 () Bool)

(assert (=> b!574507 m!553395))

(assert (=> b!574507 m!553391))

(declare-fun m!553397 () Bool)

(assert (=> b!574507 m!553397))

(declare-fun m!553399 () Bool)

(assert (=> b!574507 m!553399))

(declare-fun m!553401 () Bool)

(assert (=> b!574507 m!553401))

(declare-fun m!553403 () Bool)

(assert (=> b!574507 m!553403))

(assert (=> b!574507 m!553391))

(declare-fun m!553405 () Bool)

(assert (=> b!574507 m!553405))

(declare-fun m!553407 () Bool)

(assert (=> b!574511 m!553407))

(assert (=> b!574514 m!553391))

(assert (=> b!574514 m!553391))

(declare-fun m!553409 () Bool)

(assert (=> b!574514 m!553409))

(declare-fun m!553411 () Bool)

(assert (=> b!574517 m!553411))

(assert (=> b!574510 m!553391))

(assert (=> b!574510 m!553395))

(assert (=> b!574515 m!553391))

(declare-fun m!553413 () Bool)

(assert (=> b!574515 m!553413))

(declare-fun m!553415 () Bool)

(assert (=> b!574515 m!553415))

(assert (=> b!574515 m!553391))

(declare-fun m!553417 () Bool)

(assert (=> b!574515 m!553417))

(assert (=> b!574515 m!553401))

(assert (=> b!574515 m!553391))

(declare-fun m!553419 () Bool)

(assert (=> b!574515 m!553419))

(declare-fun m!553421 () Bool)

(assert (=> b!574515 m!553421))

(declare-fun m!553423 () Bool)

(assert (=> b!574506 m!553423))

(declare-fun m!553425 () Bool)

(assert (=> start!52708 m!553425))

(declare-fun m!553427 () Bool)

(assert (=> start!52708 m!553427))

(declare-fun m!553429 () Bool)

(assert (=> b!574516 m!553429))

(check-sat (not b!574506) (not start!52708) (not b!574517) (not b!574512) (not b!574516) (not b!574508) (not b!574514) (not b!574507) (not b!574513) (not b!574511) (not b!574515))
(check-sat)
(get-model)

(declare-fun b!574575 () Bool)

(declare-fun lt!262499 () SeekEntryResult!5671)

(assert (=> b!574575 (and (bvsge (index!24913 lt!262499) #b00000000000000000000000000000000) (bvslt (index!24913 lt!262499) (size!17579 lt!262464)))))

(declare-fun res!363402 () Bool)

(assert (=> b!574575 (= res!363402 (= (select (arr!17215 lt!262464) (index!24913 lt!262499)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330591 () Bool)

(assert (=> b!574575 (=> res!363402 e!330591)))

(declare-fun b!574576 () Bool)

(assert (=> b!574576 (and (bvsge (index!24913 lt!262499) #b00000000000000000000000000000000) (bvslt (index!24913 lt!262499) (size!17579 lt!262464)))))

(declare-fun res!363403 () Bool)

(assert (=> b!574576 (= res!363403 (= (select (arr!17215 lt!262464) (index!24913 lt!262499)) lt!262466))))

(assert (=> b!574576 (=> res!363403 e!330591)))

(declare-fun e!330595 () Bool)

(assert (=> b!574576 (= e!330595 e!330591)))

(declare-fun b!574578 () Bool)

(declare-fun e!330593 () SeekEntryResult!5671)

(declare-fun e!330594 () SeekEntryResult!5671)

(assert (=> b!574578 (= e!330593 e!330594)))

(declare-fun c!65950 () Bool)

(declare-fun lt!262498 () (_ BitVec 64))

(assert (=> b!574578 (= c!65950 (or (= lt!262498 lt!262466) (= (bvadd lt!262498 lt!262498) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574579 () Bool)

(declare-fun e!330592 () Bool)

(assert (=> b!574579 (= e!330592 (bvsge (x!53826 lt!262499) #b01111111111111111111111111111110))))

(declare-fun b!574580 () Bool)

(assert (=> b!574580 (and (bvsge (index!24913 lt!262499) #b00000000000000000000000000000000) (bvslt (index!24913 lt!262499) (size!17579 lt!262464)))))

(assert (=> b!574580 (= e!330591 (= (select (arr!17215 lt!262464) (index!24913 lt!262499)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574581 () Bool)

(assert (=> b!574581 (= e!330594 (Intermediate!5671 false lt!262460 #b00000000000000000000000000000000))))

(declare-fun b!574582 () Bool)

(assert (=> b!574582 (= e!330592 e!330595)))

(declare-fun res!363404 () Bool)

(assert (=> b!574582 (= res!363404 (and ((_ is Intermediate!5671) lt!262499) (not (undefined!6483 lt!262499)) (bvslt (x!53826 lt!262499) #b01111111111111111111111111111110) (bvsge (x!53826 lt!262499) #b00000000000000000000000000000000) (bvsge (x!53826 lt!262499) #b00000000000000000000000000000000)))))

(assert (=> b!574582 (=> (not res!363404) (not e!330595))))

(declare-fun b!574583 () Bool)

(assert (=> b!574583 (= e!330593 (Intermediate!5671 true lt!262460 #b00000000000000000000000000000000))))

(declare-fun b!574577 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574577 (= e!330594 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262460 #b00000000000000000000000000000000 mask!3119) lt!262466 lt!262464 mask!3119))))

(declare-fun d!85069 () Bool)

(assert (=> d!85069 e!330592))

(declare-fun c!65951 () Bool)

(assert (=> d!85069 (= c!65951 (and ((_ is Intermediate!5671) lt!262499) (undefined!6483 lt!262499)))))

(assert (=> d!85069 (= lt!262499 e!330593)))

(declare-fun c!65949 () Bool)

(assert (=> d!85069 (= c!65949 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85069 (= lt!262498 (select (arr!17215 lt!262464) lt!262460))))

(assert (=> d!85069 (validMask!0 mask!3119)))

(assert (=> d!85069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262460 lt!262466 lt!262464 mask!3119) lt!262499)))

(assert (= (and d!85069 c!65949) b!574583))

(assert (= (and d!85069 (not c!65949)) b!574578))

(assert (= (and b!574578 c!65950) b!574581))

(assert (= (and b!574578 (not c!65950)) b!574577))

(assert (= (and d!85069 c!65951) b!574579))

(assert (= (and d!85069 (not c!65951)) b!574582))

(assert (= (and b!574582 res!363404) b!574576))

(assert (= (and b!574576 (not res!363403)) b!574575))

(assert (= (and b!574575 (not res!363402)) b!574580))

(declare-fun m!553477 () Bool)

(assert (=> b!574576 m!553477))

(assert (=> b!574575 m!553477))

(declare-fun m!553479 () Bool)

(assert (=> b!574577 m!553479))

(assert (=> b!574577 m!553479))

(declare-fun m!553481 () Bool)

(assert (=> b!574577 m!553481))

(declare-fun m!553483 () Bool)

(assert (=> d!85069 m!553483))

(assert (=> d!85069 m!553425))

(assert (=> b!574580 m!553477))

(assert (=> b!574515 d!85069))

(declare-fun b!574584 () Bool)

(declare-fun lt!262501 () SeekEntryResult!5671)

(assert (=> b!574584 (and (bvsge (index!24913 lt!262501) #b00000000000000000000000000000000) (bvslt (index!24913 lt!262501) (size!17579 a!3118)))))

(declare-fun res!363405 () Bool)

(assert (=> b!574584 (= res!363405 (= (select (arr!17215 a!3118) (index!24913 lt!262501)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330596 () Bool)

(assert (=> b!574584 (=> res!363405 e!330596)))

(declare-fun b!574585 () Bool)

(assert (=> b!574585 (and (bvsge (index!24913 lt!262501) #b00000000000000000000000000000000) (bvslt (index!24913 lt!262501) (size!17579 a!3118)))))

(declare-fun res!363406 () Bool)

(assert (=> b!574585 (= res!363406 (= (select (arr!17215 a!3118) (index!24913 lt!262501)) (select (arr!17215 a!3118) j!142)))))

(assert (=> b!574585 (=> res!363406 e!330596)))

(declare-fun e!330600 () Bool)

(assert (=> b!574585 (= e!330600 e!330596)))

(declare-fun b!574587 () Bool)

(declare-fun e!330598 () SeekEntryResult!5671)

(declare-fun e!330599 () SeekEntryResult!5671)

(assert (=> b!574587 (= e!330598 e!330599)))

(declare-fun lt!262500 () (_ BitVec 64))

(declare-fun c!65953 () Bool)

(assert (=> b!574587 (= c!65953 (or (= lt!262500 (select (arr!17215 a!3118) j!142)) (= (bvadd lt!262500 lt!262500) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574588 () Bool)

(declare-fun e!330597 () Bool)

(assert (=> b!574588 (= e!330597 (bvsge (x!53826 lt!262501) #b01111111111111111111111111111110))))

(declare-fun b!574589 () Bool)

(assert (=> b!574589 (and (bvsge (index!24913 lt!262501) #b00000000000000000000000000000000) (bvslt (index!24913 lt!262501) (size!17579 a!3118)))))

(assert (=> b!574589 (= e!330596 (= (select (arr!17215 a!3118) (index!24913 lt!262501)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574590 () Bool)

(assert (=> b!574590 (= e!330599 (Intermediate!5671 false lt!262463 #b00000000000000000000000000000000))))

(declare-fun b!574591 () Bool)

(assert (=> b!574591 (= e!330597 e!330600)))

(declare-fun res!363407 () Bool)

(assert (=> b!574591 (= res!363407 (and ((_ is Intermediate!5671) lt!262501) (not (undefined!6483 lt!262501)) (bvslt (x!53826 lt!262501) #b01111111111111111111111111111110) (bvsge (x!53826 lt!262501) #b00000000000000000000000000000000) (bvsge (x!53826 lt!262501) #b00000000000000000000000000000000)))))

(assert (=> b!574591 (=> (not res!363407) (not e!330600))))

(declare-fun b!574592 () Bool)

(assert (=> b!574592 (= e!330598 (Intermediate!5671 true lt!262463 #b00000000000000000000000000000000))))

(declare-fun b!574586 () Bool)

(assert (=> b!574586 (= e!330599 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262463 #b00000000000000000000000000000000 mask!3119) (select (arr!17215 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!85071 () Bool)

(assert (=> d!85071 e!330597))

(declare-fun c!65954 () Bool)

(assert (=> d!85071 (= c!65954 (and ((_ is Intermediate!5671) lt!262501) (undefined!6483 lt!262501)))))

(assert (=> d!85071 (= lt!262501 e!330598)))

(declare-fun c!65952 () Bool)

(assert (=> d!85071 (= c!65952 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85071 (= lt!262500 (select (arr!17215 a!3118) lt!262463))))

(assert (=> d!85071 (validMask!0 mask!3119)))

(assert (=> d!85071 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262463 (select (arr!17215 a!3118) j!142) a!3118 mask!3119) lt!262501)))

(assert (= (and d!85071 c!65952) b!574592))

(assert (= (and d!85071 (not c!65952)) b!574587))

(assert (= (and b!574587 c!65953) b!574590))

(assert (= (and b!574587 (not c!65953)) b!574586))

(assert (= (and d!85071 c!65954) b!574588))

(assert (= (and d!85071 (not c!65954)) b!574591))

(assert (= (and b!574591 res!363407) b!574585))

(assert (= (and b!574585 (not res!363406)) b!574584))

(assert (= (and b!574584 (not res!363405)) b!574589))

(declare-fun m!553485 () Bool)

(assert (=> b!574585 m!553485))

(assert (=> b!574584 m!553485))

(declare-fun m!553487 () Bool)

(assert (=> b!574586 m!553487))

(assert (=> b!574586 m!553487))

(assert (=> b!574586 m!553391))

(declare-fun m!553489 () Bool)

(assert (=> b!574586 m!553489))

(declare-fun m!553491 () Bool)

(assert (=> d!85071 m!553491))

(assert (=> d!85071 m!553425))

(assert (=> b!574589 m!553485))

(assert (=> b!574515 d!85071))

(declare-fun d!85073 () Bool)

(declare-fun lt!262507 () (_ BitVec 32))

(declare-fun lt!262506 () (_ BitVec 32))

(assert (=> d!85073 (= lt!262507 (bvmul (bvxor lt!262506 (bvlshr lt!262506 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85073 (= lt!262506 ((_ extract 31 0) (bvand (bvxor lt!262466 (bvlshr lt!262466 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85073 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363408 (let ((h!12382 ((_ extract 31 0) (bvand (bvxor lt!262466 (bvlshr lt!262466 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53829 (bvmul (bvxor h!12382 (bvlshr h!12382 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53829 (bvlshr x!53829 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363408 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363408 #b00000000000000000000000000000000))))))

(assert (=> d!85073 (= (toIndex!0 lt!262466 mask!3119) (bvand (bvxor lt!262507 (bvlshr lt!262507 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574515 d!85073))

(declare-fun d!85077 () Bool)

(declare-fun lt!262509 () (_ BitVec 32))

(declare-fun lt!262508 () (_ BitVec 32))

(assert (=> d!85077 (= lt!262509 (bvmul (bvxor lt!262508 (bvlshr lt!262508 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85077 (= lt!262508 ((_ extract 31 0) (bvand (bvxor (select (arr!17215 a!3118) j!142) (bvlshr (select (arr!17215 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85077 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363408 (let ((h!12382 ((_ extract 31 0) (bvand (bvxor (select (arr!17215 a!3118) j!142) (bvlshr (select (arr!17215 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53829 (bvmul (bvxor h!12382 (bvlshr h!12382 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53829 (bvlshr x!53829 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363408 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363408 #b00000000000000000000000000000000))))))

(assert (=> d!85077 (= (toIndex!0 (select (arr!17215 a!3118) j!142) mask!3119) (bvand (bvxor lt!262509 (bvlshr lt!262509 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574515 d!85077))

(declare-fun e!330621 () SeekEntryResult!5671)

(declare-fun b!574620 () Bool)

(assert (=> b!574620 (= e!330621 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53826 lt!262462) #b00000000000000000000000000000001) (nextIndex!0 (index!24913 lt!262462) (x!53826 lt!262462) mask!3119) (index!24913 lt!262462) (select (arr!17215 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574621 () Bool)

(declare-fun e!330619 () SeekEntryResult!5671)

(assert (=> b!574621 (= e!330619 (Found!5671 (index!24913 lt!262462)))))

(declare-fun b!574622 () Bool)

(declare-fun c!65964 () Bool)

(declare-fun lt!262514 () (_ BitVec 64))

(assert (=> b!574622 (= c!65964 (= lt!262514 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574622 (= e!330619 e!330621)))

(declare-fun d!85079 () Bool)

(declare-fun lt!262515 () SeekEntryResult!5671)

(assert (=> d!85079 (and (or ((_ is Undefined!5671) lt!262515) (not ((_ is Found!5671) lt!262515)) (and (bvsge (index!24912 lt!262515) #b00000000000000000000000000000000) (bvslt (index!24912 lt!262515) (size!17579 a!3118)))) (or ((_ is Undefined!5671) lt!262515) ((_ is Found!5671) lt!262515) (not ((_ is MissingVacant!5671) lt!262515)) (not (= (index!24914 lt!262515) (index!24913 lt!262462))) (and (bvsge (index!24914 lt!262515) #b00000000000000000000000000000000) (bvslt (index!24914 lt!262515) (size!17579 a!3118)))) (or ((_ is Undefined!5671) lt!262515) (ite ((_ is Found!5671) lt!262515) (= (select (arr!17215 a!3118) (index!24912 lt!262515)) (select (arr!17215 a!3118) j!142)) (and ((_ is MissingVacant!5671) lt!262515) (= (index!24914 lt!262515) (index!24913 lt!262462)) (= (select (arr!17215 a!3118) (index!24914 lt!262515)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!330620 () SeekEntryResult!5671)

(assert (=> d!85079 (= lt!262515 e!330620)))

(declare-fun c!65965 () Bool)

(assert (=> d!85079 (= c!65965 (bvsge (x!53826 lt!262462) #b01111111111111111111111111111110))))

(assert (=> d!85079 (= lt!262514 (select (arr!17215 a!3118) (index!24913 lt!262462)))))

(assert (=> d!85079 (validMask!0 mask!3119)))

(assert (=> d!85079 (= (seekKeyOrZeroReturnVacant!0 (x!53826 lt!262462) (index!24913 lt!262462) (index!24913 lt!262462) (select (arr!17215 a!3118) j!142) a!3118 mask!3119) lt!262515)))

(declare-fun b!574623 () Bool)

(assert (=> b!574623 (= e!330620 e!330619)))

(declare-fun c!65966 () Bool)

(assert (=> b!574623 (= c!65966 (= lt!262514 (select (arr!17215 a!3118) j!142)))))

(declare-fun b!574624 () Bool)

(assert (=> b!574624 (= e!330620 Undefined!5671)))

(declare-fun b!574625 () Bool)

(assert (=> b!574625 (= e!330621 (MissingVacant!5671 (index!24913 lt!262462)))))

(assert (= (and d!85079 c!65965) b!574624))

(assert (= (and d!85079 (not c!65965)) b!574623))

(assert (= (and b!574623 c!65966) b!574621))

(assert (= (and b!574623 (not c!65966)) b!574622))

(assert (= (and b!574622 c!65964) b!574625))

(assert (= (and b!574622 (not c!65964)) b!574620))

(declare-fun m!553501 () Bool)

(assert (=> b!574620 m!553501))

(assert (=> b!574620 m!553501))

(assert (=> b!574620 m!553391))

(declare-fun m!553503 () Bool)

(assert (=> b!574620 m!553503))

(declare-fun m!553505 () Bool)

(assert (=> d!85079 m!553505))

(declare-fun m!553507 () Bool)

(assert (=> d!85079 m!553507))

(assert (=> d!85079 m!553395))

(assert (=> d!85079 m!553425))

(assert (=> b!574514 d!85079))

(declare-fun d!85089 () Bool)

(assert (=> d!85089 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52708 d!85089))

(declare-fun d!85091 () Bool)

(assert (=> d!85091 (= (array_inv!12989 a!3118) (bvsge (size!17579 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52708 d!85091))

(declare-fun d!85093 () Bool)

(declare-fun lt!262564 () SeekEntryResult!5671)

(assert (=> d!85093 (and (or ((_ is Undefined!5671) lt!262564) (not ((_ is Found!5671) lt!262564)) (and (bvsge (index!24912 lt!262564) #b00000000000000000000000000000000) (bvslt (index!24912 lt!262564) (size!17579 a!3118)))) (or ((_ is Undefined!5671) lt!262564) ((_ is Found!5671) lt!262564) (not ((_ is MissingZero!5671) lt!262564)) (and (bvsge (index!24911 lt!262564) #b00000000000000000000000000000000) (bvslt (index!24911 lt!262564) (size!17579 a!3118)))) (or ((_ is Undefined!5671) lt!262564) ((_ is Found!5671) lt!262564) ((_ is MissingZero!5671) lt!262564) (not ((_ is MissingVacant!5671) lt!262564)) (and (bvsge (index!24914 lt!262564) #b00000000000000000000000000000000) (bvslt (index!24914 lt!262564) (size!17579 a!3118)))) (or ((_ is Undefined!5671) lt!262564) (ite ((_ is Found!5671) lt!262564) (= (select (arr!17215 a!3118) (index!24912 lt!262564)) (select (arr!17215 a!3118) j!142)) (ite ((_ is MissingZero!5671) lt!262564) (= (select (arr!17215 a!3118) (index!24911 lt!262564)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5671) lt!262564) (= (select (arr!17215 a!3118) (index!24914 lt!262564)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330677 () SeekEntryResult!5671)

(assert (=> d!85093 (= lt!262564 e!330677)))

(declare-fun c!65998 () Bool)

(declare-fun lt!262563 () SeekEntryResult!5671)

(assert (=> d!85093 (= c!65998 (and ((_ is Intermediate!5671) lt!262563) (undefined!6483 lt!262563)))))

(assert (=> d!85093 (= lt!262563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17215 a!3118) j!142) mask!3119) (select (arr!17215 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!85093 (validMask!0 mask!3119)))

(assert (=> d!85093 (= (seekEntryOrOpen!0 (select (arr!17215 a!3118) j!142) a!3118 mask!3119) lt!262564)))

(declare-fun b!574714 () Bool)

(declare-fun e!330675 () SeekEntryResult!5671)

(assert (=> b!574714 (= e!330675 (MissingZero!5671 (index!24913 lt!262563)))))

(declare-fun b!574715 () Bool)

(assert (=> b!574715 (= e!330677 Undefined!5671)))

(declare-fun b!574716 () Bool)

(assert (=> b!574716 (= e!330675 (seekKeyOrZeroReturnVacant!0 (x!53826 lt!262563) (index!24913 lt!262563) (index!24913 lt!262563) (select (arr!17215 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574717 () Bool)

(declare-fun e!330676 () SeekEntryResult!5671)

(assert (=> b!574717 (= e!330676 (Found!5671 (index!24913 lt!262563)))))

(declare-fun b!574718 () Bool)

(declare-fun c!65999 () Bool)

(declare-fun lt!262562 () (_ BitVec 64))

(assert (=> b!574718 (= c!65999 (= lt!262562 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574718 (= e!330676 e!330675)))

(declare-fun b!574719 () Bool)

(assert (=> b!574719 (= e!330677 e!330676)))

(assert (=> b!574719 (= lt!262562 (select (arr!17215 a!3118) (index!24913 lt!262563)))))

(declare-fun c!66000 () Bool)

(assert (=> b!574719 (= c!66000 (= lt!262562 (select (arr!17215 a!3118) j!142)))))

(assert (= (and d!85093 c!65998) b!574715))

(assert (= (and d!85093 (not c!65998)) b!574719))

(assert (= (and b!574719 c!66000) b!574717))

(assert (= (and b!574719 (not c!66000)) b!574718))

(assert (= (and b!574718 c!65999) b!574714))

(assert (= (and b!574718 (not c!65999)) b!574716))

(declare-fun m!553555 () Bool)

(assert (=> d!85093 m!553555))

(assert (=> d!85093 m!553391))

(assert (=> d!85093 m!553413))

(assert (=> d!85093 m!553425))

(assert (=> d!85093 m!553413))

(assert (=> d!85093 m!553391))

(declare-fun m!553557 () Bool)

(assert (=> d!85093 m!553557))

(declare-fun m!553559 () Bool)

(assert (=> d!85093 m!553559))

(declare-fun m!553561 () Bool)

(assert (=> d!85093 m!553561))

(assert (=> b!574716 m!553391))

(declare-fun m!553563 () Bool)

(assert (=> b!574716 m!553563))

(declare-fun m!553565 () Bool)

(assert (=> b!574719 m!553565))

(assert (=> b!574507 d!85093))

(declare-fun call!32694 () Bool)

(declare-fun bm!32691 () Bool)

(assert (=> bm!32691 (= call!32694 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574740 () Bool)

(declare-fun e!330690 () Bool)

(assert (=> b!574740 (= e!330690 call!32694)))

(declare-fun b!574741 () Bool)

(declare-fun e!330692 () Bool)

(assert (=> b!574741 (= e!330692 call!32694)))

(declare-fun b!574742 () Bool)

(declare-fun e!330691 () Bool)

(assert (=> b!574742 (= e!330691 e!330692)))

(declare-fun c!66009 () Bool)

(assert (=> b!574742 (= c!66009 (validKeyInArray!0 (select (arr!17215 a!3118) j!142)))))

(declare-fun b!574743 () Bool)

(assert (=> b!574743 (= e!330692 e!330690)))

(declare-fun lt!262577 () (_ BitVec 64))

(assert (=> b!574743 (= lt!262577 (select (arr!17215 a!3118) j!142))))

(declare-fun lt!262578 () Unit!18044)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35870 (_ BitVec 64) (_ BitVec 32)) Unit!18044)

(assert (=> b!574743 (= lt!262578 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262577 j!142))))

(assert (=> b!574743 (arrayContainsKey!0 a!3118 lt!262577 #b00000000000000000000000000000000)))

(declare-fun lt!262579 () Unit!18044)

(assert (=> b!574743 (= lt!262579 lt!262578)))

(declare-fun res!363449 () Bool)

(assert (=> b!574743 (= res!363449 (= (seekEntryOrOpen!0 (select (arr!17215 a!3118) j!142) a!3118 mask!3119) (Found!5671 j!142)))))

(assert (=> b!574743 (=> (not res!363449) (not e!330690))))

(declare-fun d!85117 () Bool)

(declare-fun res!363450 () Bool)

(assert (=> d!85117 (=> res!363450 e!330691)))

(assert (=> d!85117 (= res!363450 (bvsge j!142 (size!17579 a!3118)))))

(assert (=> d!85117 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!330691)))

(assert (= (and d!85117 (not res!363450)) b!574742))

(assert (= (and b!574742 c!66009) b!574743))

(assert (= (and b!574742 (not c!66009)) b!574741))

(assert (= (and b!574743 res!363449) b!574740))

(assert (= (or b!574740 b!574741) bm!32691))

(declare-fun m!553567 () Bool)

(assert (=> bm!32691 m!553567))

(assert (=> b!574742 m!553391))

(assert (=> b!574742 m!553391))

(assert (=> b!574742 m!553393))

(assert (=> b!574743 m!553391))

(declare-fun m!553569 () Bool)

(assert (=> b!574743 m!553569))

(declare-fun m!553571 () Bool)

(assert (=> b!574743 m!553571))

(assert (=> b!574743 m!553391))

(assert (=> b!574743 m!553405))

(assert (=> b!574507 d!85117))

(declare-fun d!85119 () Bool)

(assert (=> d!85119 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262589 () Unit!18044)

(declare-fun choose!38 (array!35870 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18044)

(assert (=> d!85119 (= lt!262589 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!85119 (validMask!0 mask!3119)))

(assert (=> d!85119 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!262589)))

(declare-fun bs!17773 () Bool)

(assert (= bs!17773 d!85119))

(assert (=> bs!17773 m!553397))

(declare-fun m!553587 () Bool)

(assert (=> bs!17773 m!553587))

(assert (=> bs!17773 m!553425))

(assert (=> b!574507 d!85119))

(declare-fun d!85123 () Bool)

(assert (=> d!85123 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!574506 d!85123))

(declare-fun d!85127 () Bool)

(declare-fun res!363455 () Bool)

(declare-fun e!330718 () Bool)

(assert (=> d!85127 (=> res!363455 e!330718)))

(assert (=> d!85127 (= res!363455 (= (select (arr!17215 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!85127 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!330718)))

(declare-fun b!574790 () Bool)

(declare-fun e!330719 () Bool)

(assert (=> b!574790 (= e!330718 e!330719)))

(declare-fun res!363456 () Bool)

(assert (=> b!574790 (=> (not res!363456) (not e!330719))))

(assert (=> b!574790 (= res!363456 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17579 a!3118)))))

(declare-fun b!574791 () Bool)

(assert (=> b!574791 (= e!330719 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85127 (not res!363455)) b!574790))

(assert (= (and b!574790 res!363456) b!574791))

(declare-fun m!553635 () Bool)

(assert (=> d!85127 m!553635))

(declare-fun m!553637 () Bool)

(assert (=> b!574791 m!553637))

(assert (=> b!574517 d!85127))

(declare-fun d!85135 () Bool)

(declare-fun lt!262605 () SeekEntryResult!5671)

(assert (=> d!85135 (and (or ((_ is Undefined!5671) lt!262605) (not ((_ is Found!5671) lt!262605)) (and (bvsge (index!24912 lt!262605) #b00000000000000000000000000000000) (bvslt (index!24912 lt!262605) (size!17579 a!3118)))) (or ((_ is Undefined!5671) lt!262605) ((_ is Found!5671) lt!262605) (not ((_ is MissingZero!5671) lt!262605)) (and (bvsge (index!24911 lt!262605) #b00000000000000000000000000000000) (bvslt (index!24911 lt!262605) (size!17579 a!3118)))) (or ((_ is Undefined!5671) lt!262605) ((_ is Found!5671) lt!262605) ((_ is MissingZero!5671) lt!262605) (not ((_ is MissingVacant!5671) lt!262605)) (and (bvsge (index!24914 lt!262605) #b00000000000000000000000000000000) (bvslt (index!24914 lt!262605) (size!17579 a!3118)))) (or ((_ is Undefined!5671) lt!262605) (ite ((_ is Found!5671) lt!262605) (= (select (arr!17215 a!3118) (index!24912 lt!262605)) k0!1914) (ite ((_ is MissingZero!5671) lt!262605) (= (select (arr!17215 a!3118) (index!24911 lt!262605)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5671) lt!262605) (= (select (arr!17215 a!3118) (index!24914 lt!262605)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330725 () SeekEntryResult!5671)

(assert (=> d!85135 (= lt!262605 e!330725)))

(declare-fun c!66034 () Bool)

(declare-fun lt!262604 () SeekEntryResult!5671)

(assert (=> d!85135 (= c!66034 (and ((_ is Intermediate!5671) lt!262604) (undefined!6483 lt!262604)))))

(assert (=> d!85135 (= lt!262604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!85135 (validMask!0 mask!3119)))

(assert (=> d!85135 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!262605)))

(declare-fun b!574798 () Bool)

(declare-fun e!330723 () SeekEntryResult!5671)

(assert (=> b!574798 (= e!330723 (MissingZero!5671 (index!24913 lt!262604)))))

(declare-fun b!574799 () Bool)

(assert (=> b!574799 (= e!330725 Undefined!5671)))

(declare-fun b!574800 () Bool)

(assert (=> b!574800 (= e!330723 (seekKeyOrZeroReturnVacant!0 (x!53826 lt!262604) (index!24913 lt!262604) (index!24913 lt!262604) k0!1914 a!3118 mask!3119))))

(declare-fun b!574801 () Bool)

(declare-fun e!330724 () SeekEntryResult!5671)

(assert (=> b!574801 (= e!330724 (Found!5671 (index!24913 lt!262604)))))

(declare-fun b!574802 () Bool)

(declare-fun c!66035 () Bool)

(declare-fun lt!262603 () (_ BitVec 64))

(assert (=> b!574802 (= c!66035 (= lt!262603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574802 (= e!330724 e!330723)))

(declare-fun b!574803 () Bool)

(assert (=> b!574803 (= e!330725 e!330724)))

(assert (=> b!574803 (= lt!262603 (select (arr!17215 a!3118) (index!24913 lt!262604)))))

(declare-fun c!66036 () Bool)

(assert (=> b!574803 (= c!66036 (= lt!262603 k0!1914))))

(assert (= (and d!85135 c!66034) b!574799))

(assert (= (and d!85135 (not c!66034)) b!574803))

(assert (= (and b!574803 c!66036) b!574801))

(assert (= (and b!574803 (not c!66036)) b!574802))

(assert (= (and b!574802 c!66035) b!574798))

(assert (= (and b!574802 (not c!66035)) b!574800))

(declare-fun m!553647 () Bool)

(assert (=> d!85135 m!553647))

(declare-fun m!553649 () Bool)

(assert (=> d!85135 m!553649))

(assert (=> d!85135 m!553425))

(assert (=> d!85135 m!553649))

(declare-fun m!553651 () Bool)

(assert (=> d!85135 m!553651))

(declare-fun m!553653 () Bool)

(assert (=> d!85135 m!553653))

(declare-fun m!553655 () Bool)

(assert (=> d!85135 m!553655))

(declare-fun m!553657 () Bool)

(assert (=> b!574800 m!553657))

(declare-fun m!553659 () Bool)

(assert (=> b!574803 m!553659))

(assert (=> b!574516 d!85135))

(declare-fun d!85139 () Bool)

(assert (=> d!85139 (= (validKeyInArray!0 (select (arr!17215 a!3118) j!142)) (and (not (= (select (arr!17215 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17215 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!574508 d!85139))

(declare-fun d!85141 () Bool)

(declare-fun lt!262608 () SeekEntryResult!5671)

(assert (=> d!85141 (and (or ((_ is Undefined!5671) lt!262608) (not ((_ is Found!5671) lt!262608)) (and (bvsge (index!24912 lt!262608) #b00000000000000000000000000000000) (bvslt (index!24912 lt!262608) (size!17579 lt!262464)))) (or ((_ is Undefined!5671) lt!262608) ((_ is Found!5671) lt!262608) (not ((_ is MissingZero!5671) lt!262608)) (and (bvsge (index!24911 lt!262608) #b00000000000000000000000000000000) (bvslt (index!24911 lt!262608) (size!17579 lt!262464)))) (or ((_ is Undefined!5671) lt!262608) ((_ is Found!5671) lt!262608) ((_ is MissingZero!5671) lt!262608) (not ((_ is MissingVacant!5671) lt!262608)) (and (bvsge (index!24914 lt!262608) #b00000000000000000000000000000000) (bvslt (index!24914 lt!262608) (size!17579 lt!262464)))) (or ((_ is Undefined!5671) lt!262608) (ite ((_ is Found!5671) lt!262608) (= (select (arr!17215 lt!262464) (index!24912 lt!262608)) lt!262466) (ite ((_ is MissingZero!5671) lt!262608) (= (select (arr!17215 lt!262464) (index!24911 lt!262608)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5671) lt!262608) (= (select (arr!17215 lt!262464) (index!24914 lt!262608)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330728 () SeekEntryResult!5671)

(assert (=> d!85141 (= lt!262608 e!330728)))

(declare-fun c!66037 () Bool)

(declare-fun lt!262607 () SeekEntryResult!5671)

(assert (=> d!85141 (= c!66037 (and ((_ is Intermediate!5671) lt!262607) (undefined!6483 lt!262607)))))

(assert (=> d!85141 (= lt!262607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!262466 mask!3119) lt!262466 lt!262464 mask!3119))))

(assert (=> d!85141 (validMask!0 mask!3119)))

(assert (=> d!85141 (= (seekEntryOrOpen!0 lt!262466 lt!262464 mask!3119) lt!262608)))

(declare-fun b!574804 () Bool)

(declare-fun e!330726 () SeekEntryResult!5671)

(assert (=> b!574804 (= e!330726 (MissingZero!5671 (index!24913 lt!262607)))))

(declare-fun b!574805 () Bool)

(assert (=> b!574805 (= e!330728 Undefined!5671)))

(declare-fun b!574806 () Bool)

(assert (=> b!574806 (= e!330726 (seekKeyOrZeroReturnVacant!0 (x!53826 lt!262607) (index!24913 lt!262607) (index!24913 lt!262607) lt!262466 lt!262464 mask!3119))))

(declare-fun b!574807 () Bool)

(declare-fun e!330727 () SeekEntryResult!5671)

(assert (=> b!574807 (= e!330727 (Found!5671 (index!24913 lt!262607)))))

(declare-fun b!574808 () Bool)

(declare-fun c!66038 () Bool)

(declare-fun lt!262606 () (_ BitVec 64))

(assert (=> b!574808 (= c!66038 (= lt!262606 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574808 (= e!330727 e!330726)))

(declare-fun b!574809 () Bool)

(assert (=> b!574809 (= e!330728 e!330727)))

(assert (=> b!574809 (= lt!262606 (select (arr!17215 lt!262464) (index!24913 lt!262607)))))

(declare-fun c!66039 () Bool)

(assert (=> b!574809 (= c!66039 (= lt!262606 lt!262466))))

(assert (= (and d!85141 c!66037) b!574805))

(assert (= (and d!85141 (not c!66037)) b!574809))

(assert (= (and b!574809 c!66039) b!574807))

(assert (= (and b!574809 (not c!66039)) b!574808))

(assert (= (and b!574808 c!66038) b!574804))

(assert (= (and b!574808 (not c!66038)) b!574806))

(declare-fun m!553661 () Bool)

(assert (=> d!85141 m!553661))

(assert (=> d!85141 m!553415))

(assert (=> d!85141 m!553425))

(assert (=> d!85141 m!553415))

(declare-fun m!553663 () Bool)

(assert (=> d!85141 m!553663))

(declare-fun m!553665 () Bool)

(assert (=> d!85141 m!553665))

(declare-fun m!553667 () Bool)

(assert (=> d!85141 m!553667))

(declare-fun m!553669 () Bool)

(assert (=> b!574806 m!553669))

(declare-fun m!553671 () Bool)

(assert (=> b!574809 m!553671))

(assert (=> b!574513 d!85141))

(declare-fun e!330731 () SeekEntryResult!5671)

(declare-fun b!574810 () Bool)

(assert (=> b!574810 (= e!330731 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53826 lt!262462) #b00000000000000000000000000000001) (nextIndex!0 (index!24913 lt!262462) (x!53826 lt!262462) mask!3119) (index!24913 lt!262462) lt!262466 lt!262464 mask!3119))))

(declare-fun b!574811 () Bool)

(declare-fun e!330729 () SeekEntryResult!5671)

(assert (=> b!574811 (= e!330729 (Found!5671 (index!24913 lt!262462)))))

(declare-fun b!574812 () Bool)

(declare-fun c!66040 () Bool)

(declare-fun lt!262609 () (_ BitVec 64))

(assert (=> b!574812 (= c!66040 (= lt!262609 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574812 (= e!330729 e!330731)))

(declare-fun d!85143 () Bool)

(declare-fun lt!262610 () SeekEntryResult!5671)

(assert (=> d!85143 (and (or ((_ is Undefined!5671) lt!262610) (not ((_ is Found!5671) lt!262610)) (and (bvsge (index!24912 lt!262610) #b00000000000000000000000000000000) (bvslt (index!24912 lt!262610) (size!17579 lt!262464)))) (or ((_ is Undefined!5671) lt!262610) ((_ is Found!5671) lt!262610) (not ((_ is MissingVacant!5671) lt!262610)) (not (= (index!24914 lt!262610) (index!24913 lt!262462))) (and (bvsge (index!24914 lt!262610) #b00000000000000000000000000000000) (bvslt (index!24914 lt!262610) (size!17579 lt!262464)))) (or ((_ is Undefined!5671) lt!262610) (ite ((_ is Found!5671) lt!262610) (= (select (arr!17215 lt!262464) (index!24912 lt!262610)) lt!262466) (and ((_ is MissingVacant!5671) lt!262610) (= (index!24914 lt!262610) (index!24913 lt!262462)) (= (select (arr!17215 lt!262464) (index!24914 lt!262610)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!330730 () SeekEntryResult!5671)

(assert (=> d!85143 (= lt!262610 e!330730)))

(declare-fun c!66041 () Bool)

(assert (=> d!85143 (= c!66041 (bvsge (x!53826 lt!262462) #b01111111111111111111111111111110))))

(assert (=> d!85143 (= lt!262609 (select (arr!17215 lt!262464) (index!24913 lt!262462)))))

(assert (=> d!85143 (validMask!0 mask!3119)))

(assert (=> d!85143 (= (seekKeyOrZeroReturnVacant!0 (x!53826 lt!262462) (index!24913 lt!262462) (index!24913 lt!262462) lt!262466 lt!262464 mask!3119) lt!262610)))

(declare-fun b!574813 () Bool)

(assert (=> b!574813 (= e!330730 e!330729)))

(declare-fun c!66042 () Bool)

(assert (=> b!574813 (= c!66042 (= lt!262609 lt!262466))))

(declare-fun b!574814 () Bool)

(assert (=> b!574814 (= e!330730 Undefined!5671)))

(declare-fun b!574815 () Bool)

(assert (=> b!574815 (= e!330731 (MissingVacant!5671 (index!24913 lt!262462)))))

(assert (= (and d!85143 c!66041) b!574814))

(assert (= (and d!85143 (not c!66041)) b!574813))

(assert (= (and b!574813 c!66042) b!574811))

(assert (= (and b!574813 (not c!66042)) b!574812))

(assert (= (and b!574812 c!66040) b!574815))

(assert (= (and b!574812 (not c!66040)) b!574810))

(assert (=> b!574810 m!553501))

(assert (=> b!574810 m!553501))

(declare-fun m!553673 () Bool)

(assert (=> b!574810 m!553673))

(declare-fun m!553675 () Bool)

(assert (=> d!85143 m!553675))

(declare-fun m!553677 () Bool)

(assert (=> d!85143 m!553677))

(declare-fun m!553679 () Bool)

(assert (=> d!85143 m!553679))

(assert (=> d!85143 m!553425))

(assert (=> b!574513 d!85143))

(declare-fun bm!32697 () Bool)

(declare-fun call!32700 () Bool)

(declare-fun c!66048 () Bool)

(assert (=> bm!32697 (= call!32700 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66048 (Cons!11344 (select (arr!17215 a!3118) #b00000000000000000000000000000000) Nil!11345) Nil!11345)))))

(declare-fun b!574838 () Bool)

(declare-fun e!330750 () Bool)

(declare-fun e!330751 () Bool)

(assert (=> b!574838 (= e!330750 e!330751)))

(declare-fun res!363471 () Bool)

(assert (=> b!574838 (=> (not res!363471) (not e!330751))))

(declare-fun e!330752 () Bool)

(assert (=> b!574838 (= res!363471 (not e!330752))))

(declare-fun res!363470 () Bool)

(assert (=> b!574838 (=> (not res!363470) (not e!330752))))

(assert (=> b!574838 (= res!363470 (validKeyInArray!0 (select (arr!17215 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574839 () Bool)

(declare-fun e!330749 () Bool)

(assert (=> b!574839 (= e!330749 call!32700)))

(declare-fun d!85145 () Bool)

(declare-fun res!363469 () Bool)

(assert (=> d!85145 (=> res!363469 e!330750)))

(assert (=> d!85145 (= res!363469 (bvsge #b00000000000000000000000000000000 (size!17579 a!3118)))))

(assert (=> d!85145 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11345) e!330750)))

(declare-fun b!574840 () Bool)

(assert (=> b!574840 (= e!330751 e!330749)))

(assert (=> b!574840 (= c!66048 (validKeyInArray!0 (select (arr!17215 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574841 () Bool)

(assert (=> b!574841 (= e!330749 call!32700)))

(declare-fun b!574842 () Bool)

(declare-fun contains!2896 (List!11348 (_ BitVec 64)) Bool)

(assert (=> b!574842 (= e!330752 (contains!2896 Nil!11345 (select (arr!17215 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!85145 (not res!363469)) b!574838))

(assert (= (and b!574838 res!363470) b!574842))

(assert (= (and b!574838 res!363471) b!574840))

(assert (= (and b!574840 c!66048) b!574841))

(assert (= (and b!574840 (not c!66048)) b!574839))

(assert (= (or b!574841 b!574839) bm!32697))

(assert (=> bm!32697 m!553635))

(declare-fun m!553687 () Bool)

(assert (=> bm!32697 m!553687))

(assert (=> b!574838 m!553635))

(assert (=> b!574838 m!553635))

(declare-fun m!553689 () Bool)

(assert (=> b!574838 m!553689))

(assert (=> b!574840 m!553635))

(assert (=> b!574840 m!553635))

(assert (=> b!574840 m!553689))

(assert (=> b!574842 m!553635))

(assert (=> b!574842 m!553635))

(declare-fun m!553691 () Bool)

(assert (=> b!574842 m!553691))

(assert (=> b!574512 d!85145))

(declare-fun bm!32698 () Bool)

(declare-fun call!32701 () Bool)

(assert (=> bm!32698 (= call!32701 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574843 () Bool)

(declare-fun e!330753 () Bool)

(assert (=> b!574843 (= e!330753 call!32701)))

(declare-fun b!574844 () Bool)

(declare-fun e!330755 () Bool)

(assert (=> b!574844 (= e!330755 call!32701)))

(declare-fun b!574845 () Bool)

(declare-fun e!330754 () Bool)

(assert (=> b!574845 (= e!330754 e!330755)))

(declare-fun c!66049 () Bool)

(assert (=> b!574845 (= c!66049 (validKeyInArray!0 (select (arr!17215 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574846 () Bool)

(assert (=> b!574846 (= e!330755 e!330753)))

(declare-fun lt!262620 () (_ BitVec 64))

(assert (=> b!574846 (= lt!262620 (select (arr!17215 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!262621 () Unit!18044)

(assert (=> b!574846 (= lt!262621 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262620 #b00000000000000000000000000000000))))

(assert (=> b!574846 (arrayContainsKey!0 a!3118 lt!262620 #b00000000000000000000000000000000)))

(declare-fun lt!262622 () Unit!18044)

(assert (=> b!574846 (= lt!262622 lt!262621)))

(declare-fun res!363472 () Bool)

(assert (=> b!574846 (= res!363472 (= (seekEntryOrOpen!0 (select (arr!17215 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5671 #b00000000000000000000000000000000)))))

(assert (=> b!574846 (=> (not res!363472) (not e!330753))))

(declare-fun d!85149 () Bool)

(declare-fun res!363473 () Bool)

(assert (=> d!85149 (=> res!363473 e!330754)))

(assert (=> d!85149 (= res!363473 (bvsge #b00000000000000000000000000000000 (size!17579 a!3118)))))

(assert (=> d!85149 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!330754)))

(assert (= (and d!85149 (not res!363473)) b!574845))

(assert (= (and b!574845 c!66049) b!574846))

(assert (= (and b!574845 (not c!66049)) b!574844))

(assert (= (and b!574846 res!363472) b!574843))

(assert (= (or b!574843 b!574844) bm!32698))

(declare-fun m!553693 () Bool)

(assert (=> bm!32698 m!553693))

(assert (=> b!574845 m!553635))

(assert (=> b!574845 m!553635))

(assert (=> b!574845 m!553689))

(assert (=> b!574846 m!553635))

(declare-fun m!553695 () Bool)

(assert (=> b!574846 m!553695))

(declare-fun m!553697 () Bool)

(assert (=> b!574846 m!553697))

(assert (=> b!574846 m!553635))

(declare-fun m!553699 () Bool)

(assert (=> b!574846 m!553699))

(assert (=> b!574511 d!85149))

(check-sat (not b!574743) (not bm!32698) (not bm!32691) (not b!574838) (not b!574846) (not bm!32697) (not b!574586) (not b!574842) (not d!85079) (not d!85119) (not b!574806) (not d!85141) (not b!574620) (not d!85143) (not b!574716) (not b!574810) (not b!574845) (not b!574800) (not b!574742) (not b!574791) (not b!574840) (not b!574577) (not d!85135) (not d!85069) (not d!85071) (not d!85093))
(check-sat)
