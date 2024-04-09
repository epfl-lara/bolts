; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51378 () Bool)

(assert start!51378)

(declare-fun b!560516 () Bool)

(declare-fun res!351826 () Bool)

(declare-fun e!322969 () Bool)

(assert (=> b!560516 (=> (not res!351826) (not e!322969))))

(declare-datatypes ((array!35197 0))(
  ( (array!35198 (arr!16895 (Array (_ BitVec 32) (_ BitVec 64))) (size!17259 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35197)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35197 (_ BitVec 32)) Bool)

(assert (=> b!560516 (= res!351826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560517 () Bool)

(declare-fun res!351822 () Bool)

(declare-fun e!322965 () Bool)

(assert (=> b!560517 (=> (not res!351822) (not e!322965))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560517 (= res!351822 (and (= (size!17259 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17259 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17259 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560518 () Bool)

(declare-fun e!322970 () Bool)

(declare-fun e!322972 () Bool)

(assert (=> b!560518 (= e!322970 e!322972)))

(declare-fun res!351820 () Bool)

(assert (=> b!560518 (=> res!351820 e!322972)))

(declare-fun lt!254972 () (_ BitVec 64))

(assert (=> b!560518 (= res!351820 (or (= lt!254972 (select (arr!16895 a!3118) j!142)) (= lt!254972 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5351 0))(
  ( (MissingZero!5351 (index!23631 (_ BitVec 32))) (Found!5351 (index!23632 (_ BitVec 32))) (Intermediate!5351 (undefined!6163 Bool) (index!23633 (_ BitVec 32)) (x!52569 (_ BitVec 32))) (Undefined!5351) (MissingVacant!5351 (index!23634 (_ BitVec 32))) )
))
(declare-fun lt!254975 () SeekEntryResult!5351)

(assert (=> b!560518 (= lt!254972 (select (arr!16895 a!3118) (index!23633 lt!254975)))))

(declare-fun b!560519 () Bool)

(declare-fun e!322971 () Bool)

(assert (=> b!560519 (= e!322969 e!322971)))

(declare-fun res!351827 () Bool)

(assert (=> b!560519 (=> (not res!351827) (not e!322971))))

(declare-fun lt!254967 () (_ BitVec 64))

(declare-fun lt!254969 () (_ BitVec 32))

(declare-fun lt!254974 () array!35197)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35197 (_ BitVec 32)) SeekEntryResult!5351)

(assert (=> b!560519 (= res!351827 (= lt!254975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254969 lt!254967 lt!254974 mask!3119)))))

(declare-fun lt!254968 () (_ BitVec 32))

(assert (=> b!560519 (= lt!254975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254968 (select (arr!16895 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560519 (= lt!254969 (toIndex!0 lt!254967 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!560519 (= lt!254967 (select (store (arr!16895 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560519 (= lt!254968 (toIndex!0 (select (arr!16895 a!3118) j!142) mask!3119))))

(assert (=> b!560519 (= lt!254974 (array!35198 (store (arr!16895 a!3118) i!1132 k!1914) (size!17259 a!3118)))))

(declare-fun b!560520 () Bool)

(declare-fun e!322968 () Bool)

(assert (=> b!560520 (= e!322968 e!322970)))

(declare-fun res!351821 () Bool)

(assert (=> b!560520 (=> res!351821 e!322970)))

(assert (=> b!560520 (= res!351821 (or (undefined!6163 lt!254975) (not (is-Intermediate!5351 lt!254975))))))

(declare-fun b!560521 () Bool)

(declare-fun res!351828 () Bool)

(assert (=> b!560521 (=> (not res!351828) (not e!322965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560521 (= res!351828 (validKeyInArray!0 (select (arr!16895 a!3118) j!142)))))

(declare-fun b!560522 () Bool)

(declare-fun e!322966 () Bool)

(assert (=> b!560522 (= e!322972 e!322966)))

(declare-fun res!351830 () Bool)

(assert (=> b!560522 (=> (not res!351830) (not e!322966))))

(declare-fun lt!254970 () SeekEntryResult!5351)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35197 (_ BitVec 32)) SeekEntryResult!5351)

(assert (=> b!560522 (= res!351830 (= lt!254970 (seekKeyOrZeroReturnVacant!0 (x!52569 lt!254975) (index!23633 lt!254975) (index!23633 lt!254975) (select (arr!16895 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560523 () Bool)

(declare-fun res!351824 () Bool)

(assert (=> b!560523 (=> (not res!351824) (not e!322965))))

(assert (=> b!560523 (= res!351824 (validKeyInArray!0 k!1914))))

(declare-fun b!560524 () Bool)

(declare-fun res!351818 () Bool)

(assert (=> b!560524 (=> (not res!351818) (not e!322969))))

(declare-datatypes ((List!11028 0))(
  ( (Nil!11025) (Cons!11024 (h!12027 (_ BitVec 64)) (t!17264 List!11028)) )
))
(declare-fun arrayNoDuplicates!0 (array!35197 (_ BitVec 32) List!11028) Bool)

(assert (=> b!560524 (= res!351818 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11025))))

(declare-fun b!560525 () Bool)

(declare-fun res!351829 () Bool)

(assert (=> b!560525 (=> (not res!351829) (not e!322965))))

(declare-fun arrayContainsKey!0 (array!35197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560525 (= res!351829 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560526 () Bool)

(assert (=> b!560526 (= e!322965 e!322969)))

(declare-fun res!351823 () Bool)

(assert (=> b!560526 (=> (not res!351823) (not e!322969))))

(declare-fun lt!254973 () SeekEntryResult!5351)

(assert (=> b!560526 (= res!351823 (or (= lt!254973 (MissingZero!5351 i!1132)) (= lt!254973 (MissingVacant!5351 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35197 (_ BitVec 32)) SeekEntryResult!5351)

(assert (=> b!560526 (= lt!254973 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!351825 () Bool)

(assert (=> start!51378 (=> (not res!351825) (not e!322965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51378 (= res!351825 (validMask!0 mask!3119))))

(assert (=> start!51378 e!322965))

(assert (=> start!51378 true))

(declare-fun array_inv!12669 (array!35197) Bool)

(assert (=> start!51378 (array_inv!12669 a!3118)))

(declare-fun b!560527 () Bool)

(assert (=> b!560527 (= e!322966 (= (seekEntryOrOpen!0 lt!254967 lt!254974 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52569 lt!254975) (index!23633 lt!254975) (index!23633 lt!254975) lt!254967 lt!254974 mask!3119)))))

(declare-fun b!560528 () Bool)

(assert (=> b!560528 (= e!322971 (not true))))

(assert (=> b!560528 e!322968))

(declare-fun res!351819 () Bool)

(assert (=> b!560528 (=> (not res!351819) (not e!322968))))

(assert (=> b!560528 (= res!351819 (= lt!254970 (Found!5351 j!142)))))

(assert (=> b!560528 (= lt!254970 (seekEntryOrOpen!0 (select (arr!16895 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560528 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17476 0))(
  ( (Unit!17477) )
))
(declare-fun lt!254971 () Unit!17476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35197 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17476)

(assert (=> b!560528 (= lt!254971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51378 res!351825) b!560517))

(assert (= (and b!560517 res!351822) b!560521))

(assert (= (and b!560521 res!351828) b!560523))

(assert (= (and b!560523 res!351824) b!560525))

(assert (= (and b!560525 res!351829) b!560526))

(assert (= (and b!560526 res!351823) b!560516))

(assert (= (and b!560516 res!351826) b!560524))

(assert (= (and b!560524 res!351818) b!560519))

(assert (= (and b!560519 res!351827) b!560528))

(assert (= (and b!560528 res!351819) b!560520))

(assert (= (and b!560520 (not res!351821)) b!560518))

(assert (= (and b!560518 (not res!351820)) b!560522))

(assert (= (and b!560522 res!351830) b!560527))

(declare-fun m!538355 () Bool)

(assert (=> b!560522 m!538355))

(assert (=> b!560522 m!538355))

(declare-fun m!538357 () Bool)

(assert (=> b!560522 m!538357))

(declare-fun m!538359 () Bool)

(assert (=> b!560523 m!538359))

(declare-fun m!538361 () Bool)

(assert (=> start!51378 m!538361))

(declare-fun m!538363 () Bool)

(assert (=> start!51378 m!538363))

(assert (=> b!560519 m!538355))

(declare-fun m!538365 () Bool)

(assert (=> b!560519 m!538365))

(assert (=> b!560519 m!538355))

(declare-fun m!538367 () Bool)

(assert (=> b!560519 m!538367))

(declare-fun m!538369 () Bool)

(assert (=> b!560519 m!538369))

(declare-fun m!538371 () Bool)

(assert (=> b!560519 m!538371))

(declare-fun m!538373 () Bool)

(assert (=> b!560519 m!538373))

(assert (=> b!560519 m!538355))

(declare-fun m!538375 () Bool)

(assert (=> b!560519 m!538375))

(declare-fun m!538377 () Bool)

(assert (=> b!560524 m!538377))

(assert (=> b!560528 m!538355))

(assert (=> b!560528 m!538355))

(declare-fun m!538379 () Bool)

(assert (=> b!560528 m!538379))

(declare-fun m!538381 () Bool)

(assert (=> b!560528 m!538381))

(declare-fun m!538383 () Bool)

(assert (=> b!560528 m!538383))

(declare-fun m!538385 () Bool)

(assert (=> b!560516 m!538385))

(declare-fun m!538387 () Bool)

(assert (=> b!560525 m!538387))

(declare-fun m!538389 () Bool)

(assert (=> b!560527 m!538389))

(declare-fun m!538391 () Bool)

(assert (=> b!560527 m!538391))

(assert (=> b!560521 m!538355))

(assert (=> b!560521 m!538355))

(declare-fun m!538393 () Bool)

(assert (=> b!560521 m!538393))

(declare-fun m!538395 () Bool)

(assert (=> b!560526 m!538395))

(assert (=> b!560518 m!538355))

(declare-fun m!538397 () Bool)

(assert (=> b!560518 m!538397))

(push 1)

