; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52322 () Bool)

(assert start!52322)

(declare-fun res!360562 () Bool)

(declare-fun e!328186 () Bool)

(assert (=> start!52322 (=> (not res!360562) (not e!328186))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52322 (= res!360562 (validMask!0 mask!3119))))

(assert (=> start!52322 e!328186))

(assert (=> start!52322 true))

(declare-datatypes ((array!35736 0))(
  ( (array!35737 (arr!17154 (Array (_ BitVec 32) (_ BitVec 64))) (size!17518 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35736)

(declare-fun array_inv!12928 (array!35736) Bool)

(assert (=> start!52322 (array_inv!12928 a!3118)))

(declare-fun b!570625 () Bool)

(declare-fun e!328184 () Bool)

(assert (=> b!570625 (= e!328186 e!328184)))

(declare-fun res!360561 () Bool)

(assert (=> b!570625 (=> (not res!360561) (not e!328184))))

(declare-datatypes ((SeekEntryResult!5610 0))(
  ( (MissingZero!5610 (index!24667 (_ BitVec 32))) (Found!5610 (index!24668 (_ BitVec 32))) (Intermediate!5610 (undefined!6422 Bool) (index!24669 (_ BitVec 32)) (x!53569 (_ BitVec 32))) (Undefined!5610) (MissingVacant!5610 (index!24670 (_ BitVec 32))) )
))
(declare-fun lt!260205 () SeekEntryResult!5610)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570625 (= res!360561 (or (= lt!260205 (MissingZero!5610 i!1132)) (= lt!260205 (MissingVacant!5610 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35736 (_ BitVec 32)) SeekEntryResult!5610)

(assert (=> b!570625 (= lt!260205 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570626 () Bool)

(declare-fun res!360559 () Bool)

(assert (=> b!570626 (=> (not res!360559) (not e!328186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570626 (= res!360559 (validKeyInArray!0 k!1914))))

(declare-fun b!570627 () Bool)

(declare-fun e!328188 () Bool)

(assert (=> b!570627 (= e!328188 (not true))))

(declare-fun e!328189 () Bool)

(assert (=> b!570627 e!328189))

(declare-fun res!360564 () Bool)

(assert (=> b!570627 (=> (not res!360564) (not e!328189))))

(declare-fun lt!260202 () SeekEntryResult!5610)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570627 (= res!360564 (= lt!260202 (Found!5610 j!142)))))

(assert (=> b!570627 (= lt!260202 (seekEntryOrOpen!0 (select (arr!17154 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35736 (_ BitVec 32)) Bool)

(assert (=> b!570627 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17922 0))(
  ( (Unit!17923) )
))
(declare-fun lt!260204 () Unit!17922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35736 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17922)

(assert (=> b!570627 (= lt!260204 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570628 () Bool)

(declare-fun res!360560 () Bool)

(assert (=> b!570628 (=> (not res!360560) (not e!328184))))

(declare-datatypes ((List!11287 0))(
  ( (Nil!11284) (Cons!11283 (h!12307 (_ BitVec 64)) (t!17523 List!11287)) )
))
(declare-fun arrayNoDuplicates!0 (array!35736 (_ BitVec 32) List!11287) Bool)

(assert (=> b!570628 (= res!360560 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11284))))

(declare-fun b!570629 () Bool)

(declare-fun res!360557 () Bool)

(assert (=> b!570629 (=> (not res!360557) (not e!328186))))

(declare-fun arrayContainsKey!0 (array!35736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570629 (= res!360557 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570630 () Bool)

(assert (=> b!570630 (= e!328184 e!328188)))

(declare-fun res!360565 () Bool)

(assert (=> b!570630 (=> (not res!360565) (not e!328188))))

(declare-fun lt!260207 () SeekEntryResult!5610)

(declare-fun lt!260203 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35736 (_ BitVec 32)) SeekEntryResult!5610)

(assert (=> b!570630 (= res!360565 (= lt!260207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260203 (select (store (arr!17154 a!3118) i!1132 k!1914) j!142) (array!35737 (store (arr!17154 a!3118) i!1132 k!1914) (size!17518 a!3118)) mask!3119)))))

(declare-fun lt!260206 () (_ BitVec 32))

(assert (=> b!570630 (= lt!260207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260206 (select (arr!17154 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570630 (= lt!260203 (toIndex!0 (select (store (arr!17154 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570630 (= lt!260206 (toIndex!0 (select (arr!17154 a!3118) j!142) mask!3119))))

(declare-fun b!570631 () Bool)

(declare-fun e!328185 () Bool)

(assert (=> b!570631 (= e!328189 e!328185)))

(declare-fun res!360566 () Bool)

(assert (=> b!570631 (=> res!360566 e!328185)))

(assert (=> b!570631 (= res!360566 (or (undefined!6422 lt!260207) (not (is-Intermediate!5610 lt!260207)) (= (select (arr!17154 a!3118) (index!24669 lt!260207)) (select (arr!17154 a!3118) j!142)) (= (select (arr!17154 a!3118) (index!24669 lt!260207)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570632 () Bool)

(declare-fun res!360556 () Bool)

(assert (=> b!570632 (=> (not res!360556) (not e!328186))))

(assert (=> b!570632 (= res!360556 (and (= (size!17518 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17518 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17518 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570633 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35736 (_ BitVec 32)) SeekEntryResult!5610)

(assert (=> b!570633 (= e!328185 (= lt!260202 (seekKeyOrZeroReturnVacant!0 (x!53569 lt!260207) (index!24669 lt!260207) (index!24669 lt!260207) (select (arr!17154 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570634 () Bool)

(declare-fun res!360563 () Bool)

(assert (=> b!570634 (=> (not res!360563) (not e!328184))))

(assert (=> b!570634 (= res!360563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570635 () Bool)

(declare-fun res!360558 () Bool)

(assert (=> b!570635 (=> (not res!360558) (not e!328186))))

(assert (=> b!570635 (= res!360558 (validKeyInArray!0 (select (arr!17154 a!3118) j!142)))))

(assert (= (and start!52322 res!360562) b!570632))

(assert (= (and b!570632 res!360556) b!570635))

(assert (= (and b!570635 res!360558) b!570626))

(assert (= (and b!570626 res!360559) b!570629))

(assert (= (and b!570629 res!360557) b!570625))

(assert (= (and b!570625 res!360561) b!570634))

(assert (= (and b!570634 res!360563) b!570628))

(assert (= (and b!570628 res!360560) b!570630))

(assert (= (and b!570630 res!360565) b!570627))

(assert (= (and b!570627 res!360564) b!570631))

(assert (= (and b!570631 (not res!360566)) b!570633))

(declare-fun m!549571 () Bool)

(assert (=> b!570629 m!549571))

(declare-fun m!549573 () Bool)

(assert (=> b!570635 m!549573))

(assert (=> b!570635 m!549573))

(declare-fun m!549575 () Bool)

(assert (=> b!570635 m!549575))

(assert (=> b!570633 m!549573))

(assert (=> b!570633 m!549573))

(declare-fun m!549577 () Bool)

(assert (=> b!570633 m!549577))

(declare-fun m!549579 () Bool)

(assert (=> b!570625 m!549579))

(declare-fun m!549581 () Bool)

(assert (=> b!570628 m!549581))

(declare-fun m!549583 () Bool)

(assert (=> b!570626 m!549583))

(declare-fun m!549585 () Bool)

(assert (=> b!570631 m!549585))

(assert (=> b!570631 m!549573))

(assert (=> b!570630 m!549573))

(declare-fun m!549587 () Bool)

(assert (=> b!570630 m!549587))

(declare-fun m!549589 () Bool)

(assert (=> b!570630 m!549589))

(declare-fun m!549591 () Bool)

(assert (=> b!570630 m!549591))

(assert (=> b!570630 m!549573))

(declare-fun m!549593 () Bool)

(assert (=> b!570630 m!549593))

(assert (=> b!570630 m!549573))

(assert (=> b!570630 m!549589))

(declare-fun m!549595 () Bool)

(assert (=> b!570630 m!549595))

(assert (=> b!570630 m!549589))

(declare-fun m!549597 () Bool)

(assert (=> b!570630 m!549597))

(assert (=> b!570627 m!549573))

(assert (=> b!570627 m!549573))

(declare-fun m!549599 () Bool)

(assert (=> b!570627 m!549599))

(declare-fun m!549601 () Bool)

(assert (=> b!570627 m!549601))

(declare-fun m!549603 () Bool)

(assert (=> b!570627 m!549603))

(declare-fun m!549605 () Bool)

(assert (=> b!570634 m!549605))

(declare-fun m!549607 () Bool)

(assert (=> start!52322 m!549607))

(declare-fun m!549609 () Bool)

(assert (=> start!52322 m!549609))

(push 1)

