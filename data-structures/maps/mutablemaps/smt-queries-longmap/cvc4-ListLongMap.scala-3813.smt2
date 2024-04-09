; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52320 () Bool)

(assert start!52320)

(declare-fun b!570592 () Bool)

(declare-fun res!360531 () Bool)

(declare-fun e!328170 () Bool)

(assert (=> b!570592 (=> (not res!360531) (not e!328170))))

(declare-datatypes ((array!35734 0))(
  ( (array!35735 (arr!17153 (Array (_ BitVec 32) (_ BitVec 64))) (size!17517 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35734)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570592 (= res!360531 (validKeyInArray!0 (select (arr!17153 a!3118) j!142)))))

(declare-fun res!360529 () Bool)

(assert (=> start!52320 (=> (not res!360529) (not e!328170))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52320 (= res!360529 (validMask!0 mask!3119))))

(assert (=> start!52320 e!328170))

(assert (=> start!52320 true))

(declare-fun array_inv!12927 (array!35734) Bool)

(assert (=> start!52320 (array_inv!12927 a!3118)))

(declare-fun b!570593 () Bool)

(declare-fun res!360530 () Bool)

(assert (=> b!570593 (=> (not res!360530) (not e!328170))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570593 (= res!360530 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570594 () Bool)

(declare-fun res!360525 () Bool)

(assert (=> b!570594 (=> (not res!360525) (not e!328170))))

(assert (=> b!570594 (= res!360525 (validKeyInArray!0 k!1914))))

(declare-fun b!570595 () Bool)

(declare-fun e!328168 () Bool)

(declare-fun e!328166 () Bool)

(assert (=> b!570595 (= e!328168 e!328166)))

(declare-fun res!360524 () Bool)

(assert (=> b!570595 (=> res!360524 e!328166)))

(declare-datatypes ((SeekEntryResult!5609 0))(
  ( (MissingZero!5609 (index!24663 (_ BitVec 32))) (Found!5609 (index!24664 (_ BitVec 32))) (Intermediate!5609 (undefined!6421 Bool) (index!24665 (_ BitVec 32)) (x!53560 (_ BitVec 32))) (Undefined!5609) (MissingVacant!5609 (index!24666 (_ BitVec 32))) )
))
(declare-fun lt!260189 () SeekEntryResult!5609)

(assert (=> b!570595 (= res!360524 (or (undefined!6421 lt!260189) (not (is-Intermediate!5609 lt!260189)) (= (select (arr!17153 a!3118) (index!24665 lt!260189)) (select (arr!17153 a!3118) j!142)) (= (select (arr!17153 a!3118) (index!24665 lt!260189)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570596 () Bool)

(declare-fun e!328171 () Bool)

(assert (=> b!570596 (= e!328170 e!328171)))

(declare-fun res!360528 () Bool)

(assert (=> b!570596 (=> (not res!360528) (not e!328171))))

(declare-fun lt!260186 () SeekEntryResult!5609)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570596 (= res!360528 (or (= lt!260186 (MissingZero!5609 i!1132)) (= lt!260186 (MissingVacant!5609 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35734 (_ BitVec 32)) SeekEntryResult!5609)

(assert (=> b!570596 (= lt!260186 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570597 () Bool)

(declare-fun res!360532 () Bool)

(assert (=> b!570597 (=> (not res!360532) (not e!328171))))

(declare-datatypes ((List!11286 0))(
  ( (Nil!11283) (Cons!11282 (h!12306 (_ BitVec 64)) (t!17522 List!11286)) )
))
(declare-fun arrayNoDuplicates!0 (array!35734 (_ BitVec 32) List!11286) Bool)

(assert (=> b!570597 (= res!360532 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11283))))

(declare-fun b!570598 () Bool)

(declare-fun e!328167 () Bool)

(assert (=> b!570598 (= e!328171 e!328167)))

(declare-fun res!360526 () Bool)

(assert (=> b!570598 (=> (not res!360526) (not e!328167))))

(declare-fun lt!260188 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35734 (_ BitVec 32)) SeekEntryResult!5609)

(assert (=> b!570598 (= res!360526 (= lt!260189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260188 (select (store (arr!17153 a!3118) i!1132 k!1914) j!142) (array!35735 (store (arr!17153 a!3118) i!1132 k!1914) (size!17517 a!3118)) mask!3119)))))

(declare-fun lt!260185 () (_ BitVec 32))

(assert (=> b!570598 (= lt!260189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260185 (select (arr!17153 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570598 (= lt!260188 (toIndex!0 (select (store (arr!17153 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570598 (= lt!260185 (toIndex!0 (select (arr!17153 a!3118) j!142) mask!3119))))

(declare-fun b!570599 () Bool)

(assert (=> b!570599 (= e!328167 (not true))))

(assert (=> b!570599 e!328168))

(declare-fun res!360533 () Bool)

(assert (=> b!570599 (=> (not res!360533) (not e!328168))))

(declare-fun lt!260184 () SeekEntryResult!5609)

(assert (=> b!570599 (= res!360533 (= lt!260184 (Found!5609 j!142)))))

(assert (=> b!570599 (= lt!260184 (seekEntryOrOpen!0 (select (arr!17153 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35734 (_ BitVec 32)) Bool)

(assert (=> b!570599 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17920 0))(
  ( (Unit!17921) )
))
(declare-fun lt!260187 () Unit!17920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35734 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17920)

(assert (=> b!570599 (= lt!260187 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570600 () Bool)

(declare-fun res!360523 () Bool)

(assert (=> b!570600 (=> (not res!360523) (not e!328171))))

(assert (=> b!570600 (= res!360523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570601 () Bool)

(declare-fun res!360527 () Bool)

(assert (=> b!570601 (=> (not res!360527) (not e!328170))))

(assert (=> b!570601 (= res!360527 (and (= (size!17517 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17517 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17517 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570602 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35734 (_ BitVec 32)) SeekEntryResult!5609)

(assert (=> b!570602 (= e!328166 (= lt!260184 (seekKeyOrZeroReturnVacant!0 (x!53560 lt!260189) (index!24665 lt!260189) (index!24665 lt!260189) (select (arr!17153 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52320 res!360529) b!570601))

(assert (= (and b!570601 res!360527) b!570592))

(assert (= (and b!570592 res!360531) b!570594))

(assert (= (and b!570594 res!360525) b!570593))

(assert (= (and b!570593 res!360530) b!570596))

(assert (= (and b!570596 res!360528) b!570600))

(assert (= (and b!570600 res!360523) b!570597))

(assert (= (and b!570597 res!360532) b!570598))

(assert (= (and b!570598 res!360526) b!570599))

(assert (= (and b!570599 res!360533) b!570595))

(assert (= (and b!570595 (not res!360524)) b!570602))

(declare-fun m!549531 () Bool)

(assert (=> b!570598 m!549531))

(declare-fun m!549533 () Bool)

(assert (=> b!570598 m!549533))

(assert (=> b!570598 m!549531))

(declare-fun m!549535 () Bool)

(assert (=> b!570598 m!549535))

(assert (=> b!570598 m!549531))

(declare-fun m!549537 () Bool)

(assert (=> b!570598 m!549537))

(declare-fun m!549539 () Bool)

(assert (=> b!570598 m!549539))

(assert (=> b!570598 m!549537))

(declare-fun m!549541 () Bool)

(assert (=> b!570598 m!549541))

(assert (=> b!570598 m!549537))

(declare-fun m!549543 () Bool)

(assert (=> b!570598 m!549543))

(declare-fun m!549545 () Bool)

(assert (=> b!570595 m!549545))

(assert (=> b!570595 m!549531))

(declare-fun m!549547 () Bool)

(assert (=> b!570594 m!549547))

(declare-fun m!549549 () Bool)

(assert (=> start!52320 m!549549))

(declare-fun m!549551 () Bool)

(assert (=> start!52320 m!549551))

(assert (=> b!570599 m!549531))

(assert (=> b!570599 m!549531))

(declare-fun m!549553 () Bool)

(assert (=> b!570599 m!549553))

(declare-fun m!549555 () Bool)

(assert (=> b!570599 m!549555))

(declare-fun m!549557 () Bool)

(assert (=> b!570599 m!549557))

(assert (=> b!570592 m!549531))

(assert (=> b!570592 m!549531))

(declare-fun m!549559 () Bool)

(assert (=> b!570592 m!549559))

(declare-fun m!549561 () Bool)

(assert (=> b!570600 m!549561))

(declare-fun m!549563 () Bool)

(assert (=> b!570593 m!549563))

(declare-fun m!549565 () Bool)

(assert (=> b!570597 m!549565))

(declare-fun m!549567 () Bool)

(assert (=> b!570596 m!549567))

(assert (=> b!570602 m!549531))

(assert (=> b!570602 m!549531))

(declare-fun m!549569 () Bool)

(assert (=> b!570602 m!549569))

(push 1)

