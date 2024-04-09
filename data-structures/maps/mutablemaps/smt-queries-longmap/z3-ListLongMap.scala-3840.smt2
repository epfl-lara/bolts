; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52810 () Bool)

(assert start!52810)

(declare-fun b!575538 () Bool)

(declare-fun res!364106 () Bool)

(declare-fun e!331162 () Bool)

(assert (=> b!575538 (=> (not res!364106) (not e!331162))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575538 (= res!364106 (validKeyInArray!0 k0!1914))))

(declare-fun b!575539 () Bool)

(declare-fun res!364105 () Bool)

(assert (=> b!575539 (=> (not res!364105) (not e!331162))))

(declare-datatypes ((array!35909 0))(
  ( (array!35910 (arr!17233 (Array (_ BitVec 32) (_ BitVec 64))) (size!17597 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35909)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!575539 (= res!364105 (validKeyInArray!0 (select (arr!17233 a!3118) j!142)))))

(declare-fun b!575540 () Bool)

(declare-fun e!331165 () Bool)

(declare-fun e!331163 () Bool)

(assert (=> b!575540 (= e!331165 e!331163)))

(declare-fun res!364115 () Bool)

(assert (=> b!575540 (=> (not res!364115) (not e!331163))))

(declare-fun lt!263341 () (_ BitVec 64))

(declare-fun lt!263334 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!263333 () array!35909)

(declare-datatypes ((SeekEntryResult!5689 0))(
  ( (MissingZero!5689 (index!24983 (_ BitVec 32))) (Found!5689 (index!24984 (_ BitVec 32))) (Intermediate!5689 (undefined!6501 Bool) (index!24985 (_ BitVec 32)) (x!53901 (_ BitVec 32))) (Undefined!5689) (MissingVacant!5689 (index!24986 (_ BitVec 32))) )
))
(declare-fun lt!263331 () SeekEntryResult!5689)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35909 (_ BitVec 32)) SeekEntryResult!5689)

(assert (=> b!575540 (= res!364115 (= lt!263331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263334 lt!263341 lt!263333 mask!3119)))))

(declare-fun lt!263329 () (_ BitVec 32))

(assert (=> b!575540 (= lt!263331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263329 (select (arr!17233 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575540 (= lt!263334 (toIndex!0 lt!263341 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575540 (= lt!263341 (select (store (arr!17233 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!575540 (= lt!263329 (toIndex!0 (select (arr!17233 a!3118) j!142) mask!3119))))

(assert (=> b!575540 (= lt!263333 (array!35910 (store (arr!17233 a!3118) i!1132 k0!1914) (size!17597 a!3118)))))

(declare-fun b!575541 () Bool)

(declare-fun res!364110 () Bool)

(assert (=> b!575541 (=> (not res!364110) (not e!331165))))

(declare-datatypes ((List!11366 0))(
  ( (Nil!11363) (Cons!11362 (h!12401 (_ BitVec 64)) (t!17602 List!11366)) )
))
(declare-fun arrayNoDuplicates!0 (array!35909 (_ BitVec 32) List!11366) Bool)

(assert (=> b!575541 (= res!364110 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11363))))

(declare-fun b!575542 () Bool)

(assert (=> b!575542 (= e!331162 e!331165)))

(declare-fun res!364108 () Bool)

(assert (=> b!575542 (=> (not res!364108) (not e!331165))))

(declare-fun lt!263339 () SeekEntryResult!5689)

(assert (=> b!575542 (= res!364108 (or (= lt!263339 (MissingZero!5689 i!1132)) (= lt!263339 (MissingVacant!5689 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35909 (_ BitVec 32)) SeekEntryResult!5689)

(assert (=> b!575542 (= lt!263339 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!575543 () Bool)

(declare-fun res!364111 () Bool)

(assert (=> b!575543 (=> (not res!364111) (not e!331162))))

(assert (=> b!575543 (= res!364111 (and (= (size!17597 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17597 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17597 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575544 () Bool)

(declare-fun e!331164 () Bool)

(declare-fun e!331166 () Bool)

(assert (=> b!575544 (= e!331164 e!331166)))

(declare-fun res!364107 () Bool)

(assert (=> b!575544 (=> res!364107 e!331166)))

(declare-fun lt!263338 () (_ BitVec 64))

(assert (=> b!575544 (= res!364107 (or (= lt!263338 (select (arr!17233 a!3118) j!142)) (= lt!263338 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575544 (= lt!263338 (select (arr!17233 a!3118) (index!24985 lt!263331)))))

(declare-fun b!575545 () Bool)

(declare-fun res!364112 () Bool)

(assert (=> b!575545 (=> (not res!364112) (not e!331165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35909 (_ BitVec 32)) Bool)

(assert (=> b!575545 (= res!364112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575546 () Bool)

(declare-fun e!331167 () Bool)

(assert (=> b!575546 (= e!331166 e!331167)))

(declare-fun res!364109 () Bool)

(assert (=> b!575546 (=> res!364109 e!331167)))

(declare-fun lt!263332 () SeekEntryResult!5689)

(declare-fun lt!263342 () SeekEntryResult!5689)

(assert (=> b!575546 (= res!364109 (or (bvslt (index!24985 lt!263331) #b00000000000000000000000000000000) (bvsge (index!24985 lt!263331) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53901 lt!263331) #b01111111111111111111111111111110) (bvslt (x!53901 lt!263331) #b00000000000000000000000000000000) (not (= lt!263338 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17233 a!3118) i!1132 k0!1914) (index!24985 lt!263331)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263342 lt!263332))))))

(declare-fun lt!263336 () SeekEntryResult!5689)

(declare-fun lt!263330 () SeekEntryResult!5689)

(assert (=> b!575546 (= lt!263336 lt!263330)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35909 (_ BitVec 32)) SeekEntryResult!5689)

(assert (=> b!575546 (= lt!263330 (seekKeyOrZeroReturnVacant!0 (x!53901 lt!263331) (index!24985 lt!263331) (index!24985 lt!263331) lt!263341 lt!263333 mask!3119))))

(assert (=> b!575546 (= lt!263336 (seekEntryOrOpen!0 lt!263341 lt!263333 mask!3119))))

(declare-fun lt!263340 () SeekEntryResult!5689)

(assert (=> b!575546 (= lt!263340 lt!263342)))

(assert (=> b!575546 (= lt!263342 (seekKeyOrZeroReturnVacant!0 (x!53901 lt!263331) (index!24985 lt!263331) (index!24985 lt!263331) (select (arr!17233 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575547 () Bool)

(assert (=> b!575547 (= e!331163 (not e!331164))))

(declare-fun res!364104 () Bool)

(assert (=> b!575547 (=> res!364104 e!331164)))

(get-info :version)

(assert (=> b!575547 (= res!364104 (or (undefined!6501 lt!263331) (not ((_ is Intermediate!5689) lt!263331))))))

(assert (=> b!575547 (= lt!263340 lt!263332)))

(assert (=> b!575547 (= lt!263332 (Found!5689 j!142))))

(assert (=> b!575547 (= lt!263340 (seekEntryOrOpen!0 (select (arr!17233 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!575547 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18080 0))(
  ( (Unit!18081) )
))
(declare-fun lt!263335 () Unit!18080)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35909 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18080)

(assert (=> b!575547 (= lt!263335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!364113 () Bool)

(assert (=> start!52810 (=> (not res!364113) (not e!331162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52810 (= res!364113 (validMask!0 mask!3119))))

(assert (=> start!52810 e!331162))

(assert (=> start!52810 true))

(declare-fun array_inv!13007 (array!35909) Bool)

(assert (=> start!52810 (array_inv!13007 a!3118)))

(declare-fun b!575548 () Bool)

(assert (=> b!575548 (= e!331167 (= lt!263340 lt!263336))))

(assert (=> b!575548 (= lt!263342 lt!263330)))

(declare-fun lt!263337 () Unit!18080)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35909 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18080)

(assert (=> b!575548 (= lt!263337 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!53901 lt!263331) (index!24985 lt!263331) (index!24985 lt!263331) mask!3119))))

(declare-fun b!575549 () Bool)

(declare-fun res!364114 () Bool)

(assert (=> b!575549 (=> (not res!364114) (not e!331162))))

(declare-fun arrayContainsKey!0 (array!35909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575549 (= res!364114 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52810 res!364113) b!575543))

(assert (= (and b!575543 res!364111) b!575539))

(assert (= (and b!575539 res!364105) b!575538))

(assert (= (and b!575538 res!364106) b!575549))

(assert (= (and b!575549 res!364114) b!575542))

(assert (= (and b!575542 res!364108) b!575545))

(assert (= (and b!575545 res!364112) b!575541))

(assert (= (and b!575541 res!364110) b!575540))

(assert (= (and b!575540 res!364115) b!575547))

(assert (= (and b!575547 (not res!364104)) b!575544))

(assert (= (and b!575544 (not res!364107)) b!575546))

(assert (= (and b!575546 (not res!364109)) b!575548))

(declare-fun m!554527 () Bool)

(assert (=> b!575540 m!554527))

(declare-fun m!554529 () Bool)

(assert (=> b!575540 m!554529))

(declare-fun m!554531 () Bool)

(assert (=> b!575540 m!554531))

(assert (=> b!575540 m!554527))

(declare-fun m!554533 () Bool)

(assert (=> b!575540 m!554533))

(declare-fun m!554535 () Bool)

(assert (=> b!575540 m!554535))

(assert (=> b!575540 m!554527))

(declare-fun m!554537 () Bool)

(assert (=> b!575540 m!554537))

(declare-fun m!554539 () Bool)

(assert (=> b!575540 m!554539))

(declare-fun m!554541 () Bool)

(assert (=> b!575538 m!554541))

(declare-fun m!554543 () Bool)

(assert (=> b!575549 m!554543))

(assert (=> b!575544 m!554527))

(declare-fun m!554545 () Bool)

(assert (=> b!575544 m!554545))

(declare-fun m!554547 () Bool)

(assert (=> b!575546 m!554547))

(assert (=> b!575546 m!554527))

(declare-fun m!554549 () Bool)

(assert (=> b!575546 m!554549))

(assert (=> b!575546 m!554535))

(assert (=> b!575546 m!554527))

(declare-fun m!554551 () Bool)

(assert (=> b!575546 m!554551))

(declare-fun m!554553 () Bool)

(assert (=> b!575546 m!554553))

(declare-fun m!554555 () Bool)

(assert (=> b!575542 m!554555))

(declare-fun m!554557 () Bool)

(assert (=> b!575548 m!554557))

(assert (=> b!575547 m!554527))

(assert (=> b!575547 m!554527))

(declare-fun m!554559 () Bool)

(assert (=> b!575547 m!554559))

(declare-fun m!554561 () Bool)

(assert (=> b!575547 m!554561))

(declare-fun m!554563 () Bool)

(assert (=> b!575547 m!554563))

(declare-fun m!554565 () Bool)

(assert (=> start!52810 m!554565))

(declare-fun m!554567 () Bool)

(assert (=> start!52810 m!554567))

(declare-fun m!554569 () Bool)

(assert (=> b!575541 m!554569))

(declare-fun m!554571 () Bool)

(assert (=> b!575545 m!554571))

(assert (=> b!575539 m!554527))

(assert (=> b!575539 m!554527))

(declare-fun m!554573 () Bool)

(assert (=> b!575539 m!554573))

(check-sat (not start!52810) (not b!575545) (not b!575546) (not b!575541) (not b!575539) (not b!575549) (not b!575547) (not b!575540) (not b!575538) (not b!575542) (not b!575548))
(check-sat)
