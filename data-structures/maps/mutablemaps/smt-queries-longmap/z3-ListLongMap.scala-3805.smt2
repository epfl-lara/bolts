; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52204 () Bool)

(assert start!52204)

(declare-fun b!569475 () Bool)

(declare-fun e!327577 () Bool)

(assert (=> b!569475 (= e!327577 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5584 0))(
  ( (MissingZero!5584 (index!24563 (_ BitVec 32))) (Found!5584 (index!24564 (_ BitVec 32))) (Intermediate!5584 (undefined!6396 Bool) (index!24565 (_ BitVec 32)) (x!53462 (_ BitVec 32))) (Undefined!5584) (MissingVacant!5584 (index!24566 (_ BitVec 32))) )
))
(declare-fun lt!259662 () SeekEntryResult!5584)

(declare-fun lt!259664 () SeekEntryResult!5584)

(declare-datatypes ((array!35681 0))(
  ( (array!35682 (arr!17128 (Array (_ BitVec 32) (_ BitVec 64))) (size!17492 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35681)

(get-info :version)

(assert (=> b!569475 (and (= lt!259662 (Found!5584 j!142)) (or (undefined!6396 lt!259664) (not ((_ is Intermediate!5584) lt!259664)) (= (select (arr!17128 a!3118) (index!24565 lt!259664)) (select (arr!17128 a!3118) j!142)) (not (= (select (arr!17128 a!3118) (index!24565 lt!259664)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259662 (MissingZero!5584 (index!24565 lt!259664)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35681 (_ BitVec 32)) SeekEntryResult!5584)

(assert (=> b!569475 (= lt!259662 (seekEntryOrOpen!0 (select (arr!17128 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35681 (_ BitVec 32)) Bool)

(assert (=> b!569475 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17870 0))(
  ( (Unit!17871) )
))
(declare-fun lt!259659 () Unit!17870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17870)

(assert (=> b!569475 (= lt!259659 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569476 () Bool)

(declare-fun res!359646 () Bool)

(declare-fun e!327576 () Bool)

(assert (=> b!569476 (=> (not res!359646) (not e!327576))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569476 (= res!359646 (validKeyInArray!0 k0!1914))))

(declare-fun b!569477 () Bool)

(declare-fun res!359647 () Bool)

(assert (=> b!569477 (=> (not res!359647) (not e!327576))))

(declare-fun arrayContainsKey!0 (array!35681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569477 (= res!359647 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569478 () Bool)

(declare-fun res!359650 () Bool)

(assert (=> b!569478 (=> (not res!359650) (not e!327576))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569478 (= res!359650 (and (= (size!17492 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17492 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17492 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569480 () Bool)

(declare-fun e!327575 () Bool)

(assert (=> b!569480 (= e!327575 e!327577)))

(declare-fun res!359649 () Bool)

(assert (=> b!569480 (=> (not res!359649) (not e!327577))))

(declare-fun lt!259660 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35681 (_ BitVec 32)) SeekEntryResult!5584)

(assert (=> b!569480 (= res!359649 (= lt!259664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259660 (select (store (arr!17128 a!3118) i!1132 k0!1914) j!142) (array!35682 (store (arr!17128 a!3118) i!1132 k0!1914) (size!17492 a!3118)) mask!3119)))))

(declare-fun lt!259663 () (_ BitVec 32))

(assert (=> b!569480 (= lt!259664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259663 (select (arr!17128 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569480 (= lt!259660 (toIndex!0 (select (store (arr!17128 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!569480 (= lt!259663 (toIndex!0 (select (arr!17128 a!3118) j!142) mask!3119))))

(declare-fun b!569481 () Bool)

(declare-fun res!359643 () Bool)

(assert (=> b!569481 (=> (not res!359643) (not e!327575))))

(declare-datatypes ((List!11261 0))(
  ( (Nil!11258) (Cons!11257 (h!12278 (_ BitVec 64)) (t!17497 List!11261)) )
))
(declare-fun arrayNoDuplicates!0 (array!35681 (_ BitVec 32) List!11261) Bool)

(assert (=> b!569481 (= res!359643 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11258))))

(declare-fun b!569482 () Bool)

(declare-fun res!359651 () Bool)

(assert (=> b!569482 (=> (not res!359651) (not e!327575))))

(assert (=> b!569482 (= res!359651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569483 () Bool)

(declare-fun res!359644 () Bool)

(assert (=> b!569483 (=> (not res!359644) (not e!327576))))

(assert (=> b!569483 (= res!359644 (validKeyInArray!0 (select (arr!17128 a!3118) j!142)))))

(declare-fun b!569479 () Bool)

(assert (=> b!569479 (= e!327576 e!327575)))

(declare-fun res!359648 () Bool)

(assert (=> b!569479 (=> (not res!359648) (not e!327575))))

(declare-fun lt!259661 () SeekEntryResult!5584)

(assert (=> b!569479 (= res!359648 (or (= lt!259661 (MissingZero!5584 i!1132)) (= lt!259661 (MissingVacant!5584 i!1132))))))

(assert (=> b!569479 (= lt!259661 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!359645 () Bool)

(assert (=> start!52204 (=> (not res!359645) (not e!327576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52204 (= res!359645 (validMask!0 mask!3119))))

(assert (=> start!52204 e!327576))

(assert (=> start!52204 true))

(declare-fun array_inv!12902 (array!35681) Bool)

(assert (=> start!52204 (array_inv!12902 a!3118)))

(assert (= (and start!52204 res!359645) b!569478))

(assert (= (and b!569478 res!359650) b!569483))

(assert (= (and b!569483 res!359644) b!569476))

(assert (= (and b!569476 res!359646) b!569477))

(assert (= (and b!569477 res!359647) b!569479))

(assert (= (and b!569479 res!359648) b!569482))

(assert (= (and b!569482 res!359651) b!569481))

(assert (= (and b!569481 res!359643) b!569480))

(assert (= (and b!569480 res!359649) b!569475))

(declare-fun m!548337 () Bool)

(assert (=> b!569476 m!548337))

(declare-fun m!548339 () Bool)

(assert (=> start!52204 m!548339))

(declare-fun m!548341 () Bool)

(assert (=> start!52204 m!548341))

(declare-fun m!548343 () Bool)

(assert (=> b!569475 m!548343))

(declare-fun m!548345 () Bool)

(assert (=> b!569475 m!548345))

(declare-fun m!548347 () Bool)

(assert (=> b!569475 m!548347))

(declare-fun m!548349 () Bool)

(assert (=> b!569475 m!548349))

(assert (=> b!569475 m!548347))

(declare-fun m!548351 () Bool)

(assert (=> b!569475 m!548351))

(declare-fun m!548353 () Bool)

(assert (=> b!569481 m!548353))

(declare-fun m!548355 () Bool)

(assert (=> b!569479 m!548355))

(assert (=> b!569480 m!548347))

(declare-fun m!548357 () Bool)

(assert (=> b!569480 m!548357))

(assert (=> b!569480 m!548347))

(declare-fun m!548359 () Bool)

(assert (=> b!569480 m!548359))

(declare-fun m!548361 () Bool)

(assert (=> b!569480 m!548361))

(assert (=> b!569480 m!548359))

(assert (=> b!569480 m!548347))

(declare-fun m!548363 () Bool)

(assert (=> b!569480 m!548363))

(declare-fun m!548365 () Bool)

(assert (=> b!569480 m!548365))

(assert (=> b!569480 m!548359))

(declare-fun m!548367 () Bool)

(assert (=> b!569480 m!548367))

(assert (=> b!569483 m!548347))

(assert (=> b!569483 m!548347))

(declare-fun m!548369 () Bool)

(assert (=> b!569483 m!548369))

(declare-fun m!548371 () Bool)

(assert (=> b!569482 m!548371))

(declare-fun m!548373 () Bool)

(assert (=> b!569477 m!548373))

(check-sat (not b!569481) (not b!569480) (not b!569475) (not b!569476) (not b!569479) (not b!569482) (not start!52204) (not b!569483) (not b!569477))
(check-sat)
