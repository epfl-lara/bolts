; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51428 () Bool)

(assert start!51428)

(declare-fun b!561491 () Bool)

(declare-fun res!352796 () Bool)

(declare-fun e!323570 () Bool)

(assert (=> b!561491 (=> (not res!352796) (not e!323570))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561491 (= res!352796 (validKeyInArray!0 k!1914))))

(declare-fun b!561492 () Bool)

(declare-fun res!352798 () Bool)

(declare-fun e!323571 () Bool)

(assert (=> b!561492 (=> (not res!352798) (not e!323571))))

(declare-datatypes ((array!35247 0))(
  ( (array!35248 (arr!16920 (Array (_ BitVec 32) (_ BitVec 64))) (size!17284 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35247)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35247 (_ BitVec 32)) Bool)

(assert (=> b!561492 (= res!352798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561493 () Bool)

(declare-fun res!352799 () Bool)

(assert (=> b!561493 (=> (not res!352799) (not e!323571))))

(declare-datatypes ((List!11053 0))(
  ( (Nil!11050) (Cons!11049 (h!12052 (_ BitVec 64)) (t!17289 List!11053)) )
))
(declare-fun arrayNoDuplicates!0 (array!35247 (_ BitVec 32) List!11053) Bool)

(assert (=> b!561493 (= res!352799 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11050))))

(declare-fun b!561494 () Bool)

(declare-fun res!352801 () Bool)

(assert (=> b!561494 (=> (not res!352801) (not e!323570))))

(declare-fun arrayContainsKey!0 (array!35247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561494 (= res!352801 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!352800 () Bool)

(assert (=> start!51428 (=> (not res!352800) (not e!323570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51428 (= res!352800 (validMask!0 mask!3119))))

(assert (=> start!51428 e!323570))

(assert (=> start!51428 true))

(declare-fun array_inv!12694 (array!35247) Bool)

(assert (=> start!51428 (array_inv!12694 a!3118)))

(declare-fun b!561495 () Bool)

(declare-fun e!323569 () Bool)

(declare-fun e!323565 () Bool)

(assert (=> b!561495 (= e!323569 e!323565)))

(declare-fun res!352803 () Bool)

(assert (=> b!561495 (=> res!352803 e!323565)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255648 () (_ BitVec 64))

(assert (=> b!561495 (= res!352803 (or (= lt!255648 (select (arr!16920 a!3118) j!142)) (= lt!255648 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5376 0))(
  ( (MissingZero!5376 (index!23731 (_ BitVec 32))) (Found!5376 (index!23732 (_ BitVec 32))) (Intermediate!5376 (undefined!6188 Bool) (index!23733 (_ BitVec 32)) (x!52666 (_ BitVec 32))) (Undefined!5376) (MissingVacant!5376 (index!23734 (_ BitVec 32))) )
))
(declare-fun lt!255650 () SeekEntryResult!5376)

(assert (=> b!561495 (= lt!255648 (select (arr!16920 a!3118) (index!23733 lt!255650)))))

(declare-fun b!561496 () Bool)

(declare-fun e!323566 () Bool)

(assert (=> b!561496 (= e!323571 e!323566)))

(declare-fun res!352804 () Bool)

(assert (=> b!561496 (=> (not res!352804) (not e!323566))))

(declare-fun lt!255645 () array!35247)

(declare-fun lt!255649 () (_ BitVec 64))

(declare-fun lt!255643 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35247 (_ BitVec 32)) SeekEntryResult!5376)

(assert (=> b!561496 (= res!352804 (= lt!255650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255643 lt!255649 lt!255645 mask!3119)))))

(declare-fun lt!255646 () (_ BitVec 32))

(assert (=> b!561496 (= lt!255650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255646 (select (arr!16920 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561496 (= lt!255643 (toIndex!0 lt!255649 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561496 (= lt!255649 (select (store (arr!16920 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561496 (= lt!255646 (toIndex!0 (select (arr!16920 a!3118) j!142) mask!3119))))

(assert (=> b!561496 (= lt!255645 (array!35248 (store (arr!16920 a!3118) i!1132 k!1914) (size!17284 a!3118)))))

(declare-fun e!323568 () Bool)

(declare-fun b!561497 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35247 (_ BitVec 32)) SeekEntryResult!5376)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35247 (_ BitVec 32)) SeekEntryResult!5376)

(assert (=> b!561497 (= e!323568 (= (seekEntryOrOpen!0 lt!255649 lt!255645 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52666 lt!255650) (index!23733 lt!255650) (index!23733 lt!255650) lt!255649 lt!255645 mask!3119)))))

(declare-fun b!561498 () Bool)

(assert (=> b!561498 (= e!323570 e!323571)))

(declare-fun res!352805 () Bool)

(assert (=> b!561498 (=> (not res!352805) (not e!323571))))

(declare-fun lt!255647 () SeekEntryResult!5376)

(assert (=> b!561498 (= res!352805 (or (= lt!255647 (MissingZero!5376 i!1132)) (= lt!255647 (MissingVacant!5376 i!1132))))))

(assert (=> b!561498 (= lt!255647 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561499 () Bool)

(declare-fun res!352795 () Bool)

(assert (=> b!561499 (=> (not res!352795) (not e!323570))))

(assert (=> b!561499 (= res!352795 (validKeyInArray!0 (select (arr!16920 a!3118) j!142)))))

(declare-fun b!561500 () Bool)

(declare-fun e!323572 () Bool)

(assert (=> b!561500 (= e!323572 e!323569)))

(declare-fun res!352794 () Bool)

(assert (=> b!561500 (=> res!352794 e!323569)))

(assert (=> b!561500 (= res!352794 (or (undefined!6188 lt!255650) (not (is-Intermediate!5376 lt!255650))))))

(declare-fun b!561501 () Bool)

(declare-fun res!352802 () Bool)

(assert (=> b!561501 (=> (not res!352802) (not e!323570))))

(assert (=> b!561501 (= res!352802 (and (= (size!17284 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17284 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17284 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561502 () Bool)

(assert (=> b!561502 (= e!323566 (not true))))

(assert (=> b!561502 e!323572))

(declare-fun res!352797 () Bool)

(assert (=> b!561502 (=> (not res!352797) (not e!323572))))

(declare-fun lt!255642 () SeekEntryResult!5376)

(assert (=> b!561502 (= res!352797 (= lt!255642 (Found!5376 j!142)))))

(assert (=> b!561502 (= lt!255642 (seekEntryOrOpen!0 (select (arr!16920 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561502 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17526 0))(
  ( (Unit!17527) )
))
(declare-fun lt!255644 () Unit!17526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35247 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17526)

(assert (=> b!561502 (= lt!255644 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561503 () Bool)

(assert (=> b!561503 (= e!323565 e!323568)))

(declare-fun res!352793 () Bool)

(assert (=> b!561503 (=> (not res!352793) (not e!323568))))

(assert (=> b!561503 (= res!352793 (= lt!255642 (seekKeyOrZeroReturnVacant!0 (x!52666 lt!255650) (index!23733 lt!255650) (index!23733 lt!255650) (select (arr!16920 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!51428 res!352800) b!561501))

(assert (= (and b!561501 res!352802) b!561499))

(assert (= (and b!561499 res!352795) b!561491))

(assert (= (and b!561491 res!352796) b!561494))

(assert (= (and b!561494 res!352801) b!561498))

(assert (= (and b!561498 res!352805) b!561492))

(assert (= (and b!561492 res!352798) b!561493))

(assert (= (and b!561493 res!352799) b!561496))

(assert (= (and b!561496 res!352804) b!561502))

(assert (= (and b!561502 res!352797) b!561500))

(assert (= (and b!561500 (not res!352794)) b!561495))

(assert (= (and b!561495 (not res!352803)) b!561503))

(assert (= (and b!561503 res!352793) b!561497))

(declare-fun m!539455 () Bool)

(assert (=> b!561495 m!539455))

(declare-fun m!539457 () Bool)

(assert (=> b!561495 m!539457))

(declare-fun m!539459 () Bool)

(assert (=> b!561491 m!539459))

(declare-fun m!539461 () Bool)

(assert (=> b!561498 m!539461))

(assert (=> b!561502 m!539455))

(assert (=> b!561502 m!539455))

(declare-fun m!539463 () Bool)

(assert (=> b!561502 m!539463))

(declare-fun m!539465 () Bool)

(assert (=> b!561502 m!539465))

(declare-fun m!539467 () Bool)

(assert (=> b!561502 m!539467))

(declare-fun m!539469 () Bool)

(assert (=> start!51428 m!539469))

(declare-fun m!539471 () Bool)

(assert (=> start!51428 m!539471))

(assert (=> b!561503 m!539455))

(assert (=> b!561503 m!539455))

(declare-fun m!539473 () Bool)

(assert (=> b!561503 m!539473))

(assert (=> b!561499 m!539455))

(assert (=> b!561499 m!539455))

(declare-fun m!539475 () Bool)

(assert (=> b!561499 m!539475))

(assert (=> b!561496 m!539455))

(declare-fun m!539477 () Bool)

(assert (=> b!561496 m!539477))

(declare-fun m!539479 () Bool)

(assert (=> b!561496 m!539479))

(assert (=> b!561496 m!539455))

(declare-fun m!539481 () Bool)

(assert (=> b!561496 m!539481))

(assert (=> b!561496 m!539455))

(declare-fun m!539483 () Bool)

(assert (=> b!561496 m!539483))

(declare-fun m!539485 () Bool)

(assert (=> b!561496 m!539485))

(declare-fun m!539487 () Bool)

(assert (=> b!561496 m!539487))

(declare-fun m!539489 () Bool)

(assert (=> b!561494 m!539489))

(declare-fun m!539491 () Bool)

(assert (=> b!561493 m!539491))

(declare-fun m!539493 () Bool)

(assert (=> b!561497 m!539493))

(declare-fun m!539495 () Bool)

(assert (=> b!561497 m!539495))

(declare-fun m!539497 () Bool)

(assert (=> b!561492 m!539497))

(push 1)

