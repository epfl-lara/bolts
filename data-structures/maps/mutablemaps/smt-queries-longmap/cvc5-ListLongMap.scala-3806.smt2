; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52208 () Bool)

(assert start!52208)

(declare-fun b!569529 () Bool)

(declare-fun res!359703 () Bool)

(declare-fun e!327600 () Bool)

(assert (=> b!569529 (=> (not res!359703) (not e!327600))))

(declare-datatypes ((array!35685 0))(
  ( (array!35686 (arr!17130 (Array (_ BitVec 32) (_ BitVec 64))) (size!17494 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35685)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569529 (= res!359703 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569530 () Bool)

(declare-fun res!359700 () Bool)

(declare-fun e!327598 () Bool)

(assert (=> b!569530 (=> (not res!359700) (not e!327598))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35685 (_ BitVec 32)) Bool)

(assert (=> b!569530 (= res!359700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569531 () Bool)

(declare-fun res!359701 () Bool)

(assert (=> b!569531 (=> (not res!359701) (not e!327600))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569531 (= res!359701 (validKeyInArray!0 k!1914))))

(declare-fun res!359697 () Bool)

(assert (=> start!52208 (=> (not res!359697) (not e!327600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52208 (= res!359697 (validMask!0 mask!3119))))

(assert (=> start!52208 e!327600))

(assert (=> start!52208 true))

(declare-fun array_inv!12904 (array!35685) Bool)

(assert (=> start!52208 (array_inv!12904 a!3118)))

(declare-fun b!569532 () Bool)

(declare-fun e!327601 () Bool)

(assert (=> b!569532 (= e!327598 e!327601)))

(declare-fun res!359699 () Bool)

(assert (=> b!569532 (=> (not res!359699) (not e!327601))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259695 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5586 0))(
  ( (MissingZero!5586 (index!24571 (_ BitVec 32))) (Found!5586 (index!24572 (_ BitVec 32))) (Intermediate!5586 (undefined!6398 Bool) (index!24573 (_ BitVec 32)) (x!53472 (_ BitVec 32))) (Undefined!5586) (MissingVacant!5586 (index!24574 (_ BitVec 32))) )
))
(declare-fun lt!259699 () SeekEntryResult!5586)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35685 (_ BitVec 32)) SeekEntryResult!5586)

(assert (=> b!569532 (= res!359699 (= lt!259699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259695 (select (store (arr!17130 a!3118) i!1132 k!1914) j!142) (array!35686 (store (arr!17130 a!3118) i!1132 k!1914) (size!17494 a!3118)) mask!3119)))))

(declare-fun lt!259697 () (_ BitVec 32))

(assert (=> b!569532 (= lt!259699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259697 (select (arr!17130 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569532 (= lt!259695 (toIndex!0 (select (store (arr!17130 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569532 (= lt!259697 (toIndex!0 (select (arr!17130 a!3118) j!142) mask!3119))))

(declare-fun b!569533 () Bool)

(declare-fun res!359705 () Bool)

(assert (=> b!569533 (=> (not res!359705) (not e!327598))))

(declare-datatypes ((List!11263 0))(
  ( (Nil!11260) (Cons!11259 (h!12280 (_ BitVec 64)) (t!17499 List!11263)) )
))
(declare-fun arrayNoDuplicates!0 (array!35685 (_ BitVec 32) List!11263) Bool)

(assert (=> b!569533 (= res!359705 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11260))))

(declare-fun b!569534 () Bool)

(assert (=> b!569534 (= e!327601 (not true))))

(declare-fun lt!259696 () SeekEntryResult!5586)

(assert (=> b!569534 (and (= lt!259696 (Found!5586 j!142)) (or (undefined!6398 lt!259699) (not (is-Intermediate!5586 lt!259699)) (= (select (arr!17130 a!3118) (index!24573 lt!259699)) (select (arr!17130 a!3118) j!142)) (not (= (select (arr!17130 a!3118) (index!24573 lt!259699)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259696 (MissingZero!5586 (index!24573 lt!259699)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35685 (_ BitVec 32)) SeekEntryResult!5586)

(assert (=> b!569534 (= lt!259696 (seekEntryOrOpen!0 (select (arr!17130 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569534 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17874 0))(
  ( (Unit!17875) )
))
(declare-fun lt!259700 () Unit!17874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17874)

(assert (=> b!569534 (= lt!259700 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569535 () Bool)

(assert (=> b!569535 (= e!327600 e!327598)))

(declare-fun res!359698 () Bool)

(assert (=> b!569535 (=> (not res!359698) (not e!327598))))

(declare-fun lt!259698 () SeekEntryResult!5586)

(assert (=> b!569535 (= res!359698 (or (= lt!259698 (MissingZero!5586 i!1132)) (= lt!259698 (MissingVacant!5586 i!1132))))))

(assert (=> b!569535 (= lt!259698 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569536 () Bool)

(declare-fun res!359702 () Bool)

(assert (=> b!569536 (=> (not res!359702) (not e!327600))))

(assert (=> b!569536 (= res!359702 (and (= (size!17494 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17494 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17494 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569537 () Bool)

(declare-fun res!359704 () Bool)

(assert (=> b!569537 (=> (not res!359704) (not e!327600))))

(assert (=> b!569537 (= res!359704 (validKeyInArray!0 (select (arr!17130 a!3118) j!142)))))

(assert (= (and start!52208 res!359697) b!569536))

(assert (= (and b!569536 res!359702) b!569537))

(assert (= (and b!569537 res!359704) b!569531))

(assert (= (and b!569531 res!359701) b!569529))

(assert (= (and b!569529 res!359703) b!569535))

(assert (= (and b!569535 res!359698) b!569530))

(assert (= (and b!569530 res!359700) b!569533))

(assert (= (and b!569533 res!359705) b!569532))

(assert (= (and b!569532 res!359699) b!569534))

(declare-fun m!548413 () Bool)

(assert (=> b!569530 m!548413))

(declare-fun m!548415 () Bool)

(assert (=> b!569529 m!548415))

(declare-fun m!548417 () Bool)

(assert (=> b!569533 m!548417))

(declare-fun m!548419 () Bool)

(assert (=> b!569534 m!548419))

(declare-fun m!548421 () Bool)

(assert (=> b!569534 m!548421))

(declare-fun m!548423 () Bool)

(assert (=> b!569534 m!548423))

(declare-fun m!548425 () Bool)

(assert (=> b!569534 m!548425))

(assert (=> b!569534 m!548419))

(declare-fun m!548427 () Bool)

(assert (=> b!569534 m!548427))

(declare-fun m!548429 () Bool)

(assert (=> b!569535 m!548429))

(declare-fun m!548431 () Bool)

(assert (=> b!569531 m!548431))

(declare-fun m!548433 () Bool)

(assert (=> start!52208 m!548433))

(declare-fun m!548435 () Bool)

(assert (=> start!52208 m!548435))

(declare-fun m!548437 () Bool)

(assert (=> b!569532 m!548437))

(declare-fun m!548439 () Bool)

(assert (=> b!569532 m!548439))

(assert (=> b!569532 m!548419))

(declare-fun m!548441 () Bool)

(assert (=> b!569532 m!548441))

(assert (=> b!569532 m!548419))

(assert (=> b!569532 m!548437))

(declare-fun m!548443 () Bool)

(assert (=> b!569532 m!548443))

(assert (=> b!569532 m!548419))

(declare-fun m!548445 () Bool)

(assert (=> b!569532 m!548445))

(assert (=> b!569532 m!548437))

(declare-fun m!548447 () Bool)

(assert (=> b!569532 m!548447))

(assert (=> b!569537 m!548419))

(assert (=> b!569537 m!548419))

(declare-fun m!548449 () Bool)

(assert (=> b!569537 m!548449))

(push 1)

