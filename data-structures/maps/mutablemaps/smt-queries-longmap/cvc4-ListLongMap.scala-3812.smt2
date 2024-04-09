; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52314 () Bool)

(assert start!52314)

(declare-fun b!570493 () Bool)

(declare-fun res!360432 () Bool)

(declare-fun e!328114 () Bool)

(assert (=> b!570493 (=> (not res!360432) (not e!328114))))

(declare-datatypes ((array!35728 0))(
  ( (array!35729 (arr!17150 (Array (_ BitVec 32) (_ BitVec 64))) (size!17514 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35728)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35728 (_ BitVec 32)) Bool)

(assert (=> b!570493 (= res!360432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570494 () Bool)

(declare-fun e!328116 () Bool)

(assert (=> b!570494 (= e!328116 e!328114)))

(declare-fun res!360424 () Bool)

(assert (=> b!570494 (=> (not res!360424) (not e!328114))))

(declare-datatypes ((SeekEntryResult!5606 0))(
  ( (MissingZero!5606 (index!24651 (_ BitVec 32))) (Found!5606 (index!24652 (_ BitVec 32))) (Intermediate!5606 (undefined!6418 Bool) (index!24653 (_ BitVec 32)) (x!53549 (_ BitVec 32))) (Undefined!5606) (MissingVacant!5606 (index!24654 (_ BitVec 32))) )
))
(declare-fun lt!260131 () SeekEntryResult!5606)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570494 (= res!360424 (or (= lt!260131 (MissingZero!5606 i!1132)) (= lt!260131 (MissingVacant!5606 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35728 (_ BitVec 32)) SeekEntryResult!5606)

(assert (=> b!570494 (= lt!260131 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570495 () Bool)

(declare-fun res!360433 () Bool)

(assert (=> b!570495 (=> (not res!360433) (not e!328116))))

(declare-fun arrayContainsKey!0 (array!35728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570495 (= res!360433 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570496 () Bool)

(declare-fun res!360434 () Bool)

(assert (=> b!570496 (=> (not res!360434) (not e!328116))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570496 (= res!360434 (and (= (size!17514 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17514 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17514 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570497 () Bool)

(declare-fun res!360430 () Bool)

(assert (=> b!570497 (=> (not res!360430) (not e!328116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570497 (= res!360430 (validKeyInArray!0 k!1914))))

(declare-fun b!570498 () Bool)

(declare-fun e!328117 () Bool)

(declare-fun e!328115 () Bool)

(assert (=> b!570498 (= e!328117 e!328115)))

(declare-fun res!360425 () Bool)

(assert (=> b!570498 (=> res!360425 e!328115)))

(declare-fun lt!260135 () SeekEntryResult!5606)

(assert (=> b!570498 (= res!360425 (or (undefined!6418 lt!260135) (not (is-Intermediate!5606 lt!260135)) (= (select (arr!17150 a!3118) (index!24653 lt!260135)) (select (arr!17150 a!3118) j!142)) (= (select (arr!17150 a!3118) (index!24653 lt!260135)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570499 () Bool)

(declare-fun res!360426 () Bool)

(assert (=> b!570499 (=> (not res!360426) (not e!328116))))

(assert (=> b!570499 (= res!360426 (validKeyInArray!0 (select (arr!17150 a!3118) j!142)))))

(declare-fun res!360431 () Bool)

(assert (=> start!52314 (=> (not res!360431) (not e!328116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52314 (= res!360431 (validMask!0 mask!3119))))

(assert (=> start!52314 e!328116))

(assert (=> start!52314 true))

(declare-fun array_inv!12924 (array!35728) Bool)

(assert (=> start!52314 (array_inv!12924 a!3118)))

(declare-fun b!570500 () Bool)

(declare-fun e!328112 () Bool)

(assert (=> b!570500 (= e!328114 e!328112)))

(declare-fun res!360428 () Bool)

(assert (=> b!570500 (=> (not res!360428) (not e!328112))))

(declare-fun lt!260130 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35728 (_ BitVec 32)) SeekEntryResult!5606)

(assert (=> b!570500 (= res!360428 (= lt!260135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260130 (select (store (arr!17150 a!3118) i!1132 k!1914) j!142) (array!35729 (store (arr!17150 a!3118) i!1132 k!1914) (size!17514 a!3118)) mask!3119)))))

(declare-fun lt!260132 () (_ BitVec 32))

(assert (=> b!570500 (= lt!260135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260132 (select (arr!17150 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570500 (= lt!260130 (toIndex!0 (select (store (arr!17150 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570500 (= lt!260132 (toIndex!0 (select (arr!17150 a!3118) j!142) mask!3119))))

(declare-fun b!570501 () Bool)

(assert (=> b!570501 (= e!328112 (not true))))

(assert (=> b!570501 e!328117))

(declare-fun res!360427 () Bool)

(assert (=> b!570501 (=> (not res!360427) (not e!328117))))

(declare-fun lt!260133 () SeekEntryResult!5606)

(assert (=> b!570501 (= res!360427 (= lt!260133 (Found!5606 j!142)))))

(assert (=> b!570501 (= lt!260133 (seekEntryOrOpen!0 (select (arr!17150 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570501 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17914 0))(
  ( (Unit!17915) )
))
(declare-fun lt!260134 () Unit!17914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17914)

(assert (=> b!570501 (= lt!260134 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570502 () Bool)

(declare-fun res!360429 () Bool)

(assert (=> b!570502 (=> (not res!360429) (not e!328114))))

(declare-datatypes ((List!11283 0))(
  ( (Nil!11280) (Cons!11279 (h!12303 (_ BitVec 64)) (t!17519 List!11283)) )
))
(declare-fun arrayNoDuplicates!0 (array!35728 (_ BitVec 32) List!11283) Bool)

(assert (=> b!570502 (= res!360429 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11280))))

(declare-fun b!570503 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35728 (_ BitVec 32)) SeekEntryResult!5606)

(assert (=> b!570503 (= e!328115 (= lt!260133 (seekKeyOrZeroReturnVacant!0 (x!53549 lt!260135) (index!24653 lt!260135) (index!24653 lt!260135) (select (arr!17150 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52314 res!360431) b!570496))

(assert (= (and b!570496 res!360434) b!570499))

(assert (= (and b!570499 res!360426) b!570497))

(assert (= (and b!570497 res!360430) b!570495))

(assert (= (and b!570495 res!360433) b!570494))

(assert (= (and b!570494 res!360424) b!570493))

(assert (= (and b!570493 res!360432) b!570502))

(assert (= (and b!570502 res!360429) b!570500))

(assert (= (and b!570500 res!360428) b!570501))

(assert (= (and b!570501 res!360427) b!570498))

(assert (= (and b!570498 (not res!360425)) b!570503))

(declare-fun m!549411 () Bool)

(assert (=> b!570500 m!549411))

(declare-fun m!549413 () Bool)

(assert (=> b!570500 m!549413))

(assert (=> b!570500 m!549411))

(declare-fun m!549415 () Bool)

(assert (=> b!570500 m!549415))

(declare-fun m!549417 () Bool)

(assert (=> b!570500 m!549417))

(assert (=> b!570500 m!549415))

(declare-fun m!549419 () Bool)

(assert (=> b!570500 m!549419))

(assert (=> b!570500 m!549411))

(declare-fun m!549421 () Bool)

(assert (=> b!570500 m!549421))

(assert (=> b!570500 m!549415))

(declare-fun m!549423 () Bool)

(assert (=> b!570500 m!549423))

(declare-fun m!549425 () Bool)

(assert (=> b!570495 m!549425))

(declare-fun m!549427 () Bool)

(assert (=> start!52314 m!549427))

(declare-fun m!549429 () Bool)

(assert (=> start!52314 m!549429))

(declare-fun m!549431 () Bool)

(assert (=> b!570502 m!549431))

(assert (=> b!570499 m!549411))

(assert (=> b!570499 m!549411))

(declare-fun m!549433 () Bool)

(assert (=> b!570499 m!549433))

(declare-fun m!549435 () Bool)

(assert (=> b!570493 m!549435))

(declare-fun m!549437 () Bool)

(assert (=> b!570494 m!549437))

(assert (=> b!570501 m!549411))

(assert (=> b!570501 m!549411))

(declare-fun m!549439 () Bool)

(assert (=> b!570501 m!549439))

(declare-fun m!549441 () Bool)

(assert (=> b!570501 m!549441))

(declare-fun m!549443 () Bool)

(assert (=> b!570501 m!549443))

(declare-fun m!549445 () Bool)

(assert (=> b!570498 m!549445))

(assert (=> b!570498 m!549411))

(assert (=> b!570503 m!549411))

(assert (=> b!570503 m!549411))

(declare-fun m!549447 () Bool)

(assert (=> b!570503 m!549447))

(declare-fun m!549449 () Bool)

(assert (=> b!570497 m!549449))

(push 1)

