; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52206 () Bool)

(assert start!52206)

(declare-fun b!569502 () Bool)

(declare-fun res!359675 () Bool)

(declare-fun e!327589 () Bool)

(assert (=> b!569502 (=> (not res!359675) (not e!327589))))

(declare-datatypes ((array!35683 0))(
  ( (array!35684 (arr!17129 (Array (_ BitVec 32) (_ BitVec 64))) (size!17493 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35683)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569502 (= res!359675 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569504 () Bool)

(declare-fun e!327586 () Bool)

(declare-fun e!327587 () Bool)

(assert (=> b!569504 (= e!327586 e!327587)))

(declare-fun res!359676 () Bool)

(assert (=> b!569504 (=> (not res!359676) (not e!327587))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5585 0))(
  ( (MissingZero!5585 (index!24567 (_ BitVec 32))) (Found!5585 (index!24568 (_ BitVec 32))) (Intermediate!5585 (undefined!6397 Bool) (index!24569 (_ BitVec 32)) (x!53463 (_ BitVec 32))) (Undefined!5585) (MissingVacant!5585 (index!24570 (_ BitVec 32))) )
))
(declare-fun lt!259678 () SeekEntryResult!5585)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!259682 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35683 (_ BitVec 32)) SeekEntryResult!5585)

(assert (=> b!569504 (= res!359676 (= lt!259678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259682 (select (store (arr!17129 a!3118) i!1132 k!1914) j!142) (array!35684 (store (arr!17129 a!3118) i!1132 k!1914) (size!17493 a!3118)) mask!3119)))))

(declare-fun lt!259680 () (_ BitVec 32))

(assert (=> b!569504 (= lt!259678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259680 (select (arr!17129 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569504 (= lt!259682 (toIndex!0 (select (store (arr!17129 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569504 (= lt!259680 (toIndex!0 (select (arr!17129 a!3118) j!142) mask!3119))))

(declare-fun b!569505 () Bool)

(declare-fun res!359671 () Bool)

(assert (=> b!569505 (=> (not res!359671) (not e!327589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569505 (= res!359671 (validKeyInArray!0 k!1914))))

(declare-fun b!569506 () Bool)

(assert (=> b!569506 (= e!327587 (not true))))

(declare-fun lt!259681 () SeekEntryResult!5585)

(assert (=> b!569506 (and (= lt!259681 (Found!5585 j!142)) (or (undefined!6397 lt!259678) (not (is-Intermediate!5585 lt!259678)) (= (select (arr!17129 a!3118) (index!24569 lt!259678)) (select (arr!17129 a!3118) j!142)) (not (= (select (arr!17129 a!3118) (index!24569 lt!259678)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259681 (MissingZero!5585 (index!24569 lt!259678)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35683 (_ BitVec 32)) SeekEntryResult!5585)

(assert (=> b!569506 (= lt!259681 (seekEntryOrOpen!0 (select (arr!17129 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35683 (_ BitVec 32)) Bool)

(assert (=> b!569506 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17872 0))(
  ( (Unit!17873) )
))
(declare-fun lt!259679 () Unit!17872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17872)

(assert (=> b!569506 (= lt!259679 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569507 () Bool)

(declare-fun res!359674 () Bool)

(assert (=> b!569507 (=> (not res!359674) (not e!327589))))

(assert (=> b!569507 (= res!359674 (validKeyInArray!0 (select (arr!17129 a!3118) j!142)))))

(declare-fun b!569508 () Bool)

(declare-fun res!359673 () Bool)

(assert (=> b!569508 (=> (not res!359673) (not e!327586))))

(declare-datatypes ((List!11262 0))(
  ( (Nil!11259) (Cons!11258 (h!12279 (_ BitVec 64)) (t!17498 List!11262)) )
))
(declare-fun arrayNoDuplicates!0 (array!35683 (_ BitVec 32) List!11262) Bool)

(assert (=> b!569508 (= res!359673 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11259))))

(declare-fun b!569509 () Bool)

(declare-fun res!359678 () Bool)

(assert (=> b!569509 (=> (not res!359678) (not e!327589))))

(assert (=> b!569509 (= res!359678 (and (= (size!17493 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17493 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17493 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569510 () Bool)

(assert (=> b!569510 (= e!327589 e!327586)))

(declare-fun res!359670 () Bool)

(assert (=> b!569510 (=> (not res!359670) (not e!327586))))

(declare-fun lt!259677 () SeekEntryResult!5585)

(assert (=> b!569510 (= res!359670 (or (= lt!259677 (MissingZero!5585 i!1132)) (= lt!259677 (MissingVacant!5585 i!1132))))))

(assert (=> b!569510 (= lt!259677 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569503 () Bool)

(declare-fun res!359672 () Bool)

(assert (=> b!569503 (=> (not res!359672) (not e!327586))))

(assert (=> b!569503 (= res!359672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!359677 () Bool)

(assert (=> start!52206 (=> (not res!359677) (not e!327589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52206 (= res!359677 (validMask!0 mask!3119))))

(assert (=> start!52206 e!327589))

(assert (=> start!52206 true))

(declare-fun array_inv!12903 (array!35683) Bool)

(assert (=> start!52206 (array_inv!12903 a!3118)))

(assert (= (and start!52206 res!359677) b!569509))

(assert (= (and b!569509 res!359678) b!569507))

(assert (= (and b!569507 res!359674) b!569505))

(assert (= (and b!569505 res!359671) b!569502))

(assert (= (and b!569502 res!359675) b!569510))

(assert (= (and b!569510 res!359670) b!569503))

(assert (= (and b!569503 res!359672) b!569508))

(assert (= (and b!569508 res!359673) b!569504))

(assert (= (and b!569504 res!359676) b!569506))

(declare-fun m!548375 () Bool)

(assert (=> b!569510 m!548375))

(declare-fun m!548377 () Bool)

(assert (=> b!569507 m!548377))

(assert (=> b!569507 m!548377))

(declare-fun m!548379 () Bool)

(assert (=> b!569507 m!548379))

(assert (=> b!569504 m!548377))

(declare-fun m!548381 () Bool)

(assert (=> b!569504 m!548381))

(declare-fun m!548383 () Bool)

(assert (=> b!569504 m!548383))

(declare-fun m!548385 () Bool)

(assert (=> b!569504 m!548385))

(assert (=> b!569504 m!548377))

(assert (=> b!569504 m!548383))

(declare-fun m!548387 () Bool)

(assert (=> b!569504 m!548387))

(assert (=> b!569504 m!548377))

(declare-fun m!548389 () Bool)

(assert (=> b!569504 m!548389))

(assert (=> b!569504 m!548383))

(declare-fun m!548391 () Bool)

(assert (=> b!569504 m!548391))

(declare-fun m!548393 () Bool)

(assert (=> b!569505 m!548393))

(declare-fun m!548395 () Bool)

(assert (=> b!569508 m!548395))

(declare-fun m!548397 () Bool)

(assert (=> b!569503 m!548397))

(declare-fun m!548399 () Bool)

(assert (=> b!569502 m!548399))

(assert (=> b!569506 m!548377))

(declare-fun m!548401 () Bool)

(assert (=> b!569506 m!548401))

(declare-fun m!548403 () Bool)

(assert (=> b!569506 m!548403))

(declare-fun m!548405 () Bool)

(assert (=> b!569506 m!548405))

(assert (=> b!569506 m!548377))

(declare-fun m!548407 () Bool)

(assert (=> b!569506 m!548407))

(declare-fun m!548409 () Bool)

(assert (=> start!52206 m!548409))

(declare-fun m!548411 () Bool)

(assert (=> start!52206 m!548411))

(push 1)

