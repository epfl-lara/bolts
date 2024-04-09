; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50602 () Bool)

(assert start!50602)

(declare-fun b!552475 () Bool)

(declare-fun res!345040 () Bool)

(declare-fun e!318805 () Bool)

(assert (=> b!552475 (=> (not res!345040) (not e!318805))))

(declare-datatypes ((array!34781 0))(
  ( (array!34782 (arr!16696 (Array (_ BitVec 32) (_ BitVec 64))) (size!17060 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34781)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34781 (_ BitVec 32)) Bool)

(assert (=> b!552475 (= res!345040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552476 () Bool)

(declare-fun res!345041 () Bool)

(declare-fun e!318803 () Bool)

(assert (=> b!552476 (=> (not res!345041) (not e!318803))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552476 (= res!345041 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552477 () Bool)

(declare-fun res!345039 () Bool)

(assert (=> b!552477 (=> (not res!345039) (not e!318803))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552477 (= res!345039 (validKeyInArray!0 (select (arr!16696 a!3118) j!142)))))

(declare-fun b!552478 () Bool)

(declare-fun e!318804 () Bool)

(declare-fun e!318800 () Bool)

(assert (=> b!552478 (= e!318804 (not e!318800))))

(declare-fun res!345043 () Bool)

(assert (=> b!552478 (=> res!345043 e!318800)))

(declare-fun lt!251209 () (_ BitVec 32))

(assert (=> b!552478 (= res!345043 (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt lt!251209 #b00000000000000000000000000000000) (bvsge lt!251209 (bvadd #b00000000000000000000000000000001 mask!3119))))))

(declare-fun e!318801 () Bool)

(assert (=> b!552478 e!318801))

(declare-fun res!345038 () Bool)

(assert (=> b!552478 (=> (not res!345038) (not e!318801))))

(assert (=> b!552478 (= res!345038 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17078 0))(
  ( (Unit!17079) )
))
(declare-fun lt!251207 () Unit!17078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17078)

(assert (=> b!552478 (= lt!251207 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552479 () Bool)

(declare-fun res!345046 () Bool)

(assert (=> b!552479 (=> (not res!345046) (not e!318805))))

(declare-datatypes ((List!10829 0))(
  ( (Nil!10826) (Cons!10825 (h!11810 (_ BitVec 64)) (t!17065 List!10829)) )
))
(declare-fun arrayNoDuplicates!0 (array!34781 (_ BitVec 32) List!10829) Bool)

(assert (=> b!552479 (= res!345046 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10826))))

(declare-fun b!552480 () Bool)

(assert (=> b!552480 (= e!318803 e!318805)))

(declare-fun res!345037 () Bool)

(assert (=> b!552480 (=> (not res!345037) (not e!318805))))

(declare-datatypes ((SeekEntryResult!5152 0))(
  ( (MissingZero!5152 (index!22835 (_ BitVec 32))) (Found!5152 (index!22836 (_ BitVec 32))) (Intermediate!5152 (undefined!5964 Bool) (index!22837 (_ BitVec 32)) (x!51797 (_ BitVec 32))) (Undefined!5152) (MissingVacant!5152 (index!22838 (_ BitVec 32))) )
))
(declare-fun lt!251210 () SeekEntryResult!5152)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552480 (= res!345037 (or (= lt!251210 (MissingZero!5152 i!1132)) (= lt!251210 (MissingVacant!5152 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34781 (_ BitVec 32)) SeekEntryResult!5152)

(assert (=> b!552480 (= lt!251210 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!552482 () Bool)

(declare-fun res!345045 () Bool)

(assert (=> b!552482 (=> (not res!345045) (not e!318803))))

(assert (=> b!552482 (= res!345045 (validKeyInArray!0 k0!1914))))

(declare-fun b!552483 () Bool)

(assert (=> b!552483 (= e!318801 (= (seekEntryOrOpen!0 (select (arr!16696 a!3118) j!142) a!3118 mask!3119) (Found!5152 j!142)))))

(declare-fun b!552484 () Bool)

(assert (=> b!552484 (= e!318800 (validKeyInArray!0 (select (store (arr!16696 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun b!552485 () Bool)

(declare-fun res!345044 () Bool)

(assert (=> b!552485 (=> (not res!345044) (not e!318803))))

(assert (=> b!552485 (= res!345044 (and (= (size!17060 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17060 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17060 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!345047 () Bool)

(assert (=> start!50602 (=> (not res!345047) (not e!318803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50602 (= res!345047 (validMask!0 mask!3119))))

(assert (=> start!50602 e!318803))

(assert (=> start!50602 true))

(declare-fun array_inv!12470 (array!34781) Bool)

(assert (=> start!50602 (array_inv!12470 a!3118)))

(declare-fun b!552481 () Bool)

(assert (=> b!552481 (= e!318805 e!318804)))

(declare-fun res!345042 () Bool)

(assert (=> b!552481 (=> (not res!345042) (not e!318804))))

(declare-fun lt!251208 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34781 (_ BitVec 32)) SeekEntryResult!5152)

(assert (=> b!552481 (= res!345042 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251208 (select (arr!16696 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251209 (select (store (arr!16696 a!3118) i!1132 k0!1914) j!142) (array!34782 (store (arr!16696 a!3118) i!1132 k0!1914) (size!17060 a!3118)) mask!3119)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552481 (= lt!251209 (toIndex!0 (select (store (arr!16696 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!552481 (= lt!251208 (toIndex!0 (select (arr!16696 a!3118) j!142) mask!3119))))

(assert (= (and start!50602 res!345047) b!552485))

(assert (= (and b!552485 res!345044) b!552477))

(assert (= (and b!552477 res!345039) b!552482))

(assert (= (and b!552482 res!345045) b!552476))

(assert (= (and b!552476 res!345041) b!552480))

(assert (= (and b!552480 res!345037) b!552475))

(assert (= (and b!552475 res!345040) b!552479))

(assert (= (and b!552479 res!345046) b!552481))

(assert (= (and b!552481 res!345042) b!552478))

(assert (= (and b!552478 res!345038) b!552483))

(assert (= (and b!552478 (not res!345043)) b!552484))

(declare-fun m!529443 () Bool)

(assert (=> b!552482 m!529443))

(declare-fun m!529445 () Bool)

(assert (=> start!50602 m!529445))

(declare-fun m!529447 () Bool)

(assert (=> start!50602 m!529447))

(declare-fun m!529449 () Bool)

(assert (=> b!552483 m!529449))

(assert (=> b!552483 m!529449))

(declare-fun m!529451 () Bool)

(assert (=> b!552483 m!529451))

(declare-fun m!529453 () Bool)

(assert (=> b!552476 m!529453))

(assert (=> b!552481 m!529449))

(declare-fun m!529455 () Bool)

(assert (=> b!552481 m!529455))

(declare-fun m!529457 () Bool)

(assert (=> b!552481 m!529457))

(declare-fun m!529459 () Bool)

(assert (=> b!552481 m!529459))

(assert (=> b!552481 m!529449))

(assert (=> b!552481 m!529457))

(assert (=> b!552481 m!529449))

(declare-fun m!529461 () Bool)

(assert (=> b!552481 m!529461))

(declare-fun m!529463 () Bool)

(assert (=> b!552481 m!529463))

(assert (=> b!552481 m!529457))

(declare-fun m!529465 () Bool)

(assert (=> b!552481 m!529465))

(declare-fun m!529467 () Bool)

(assert (=> b!552479 m!529467))

(declare-fun m!529469 () Bool)

(assert (=> b!552478 m!529469))

(declare-fun m!529471 () Bool)

(assert (=> b!552478 m!529471))

(assert (=> b!552484 m!529463))

(assert (=> b!552484 m!529457))

(assert (=> b!552484 m!529457))

(declare-fun m!529473 () Bool)

(assert (=> b!552484 m!529473))

(declare-fun m!529475 () Bool)

(assert (=> b!552475 m!529475))

(declare-fun m!529477 () Bool)

(assert (=> b!552480 m!529477))

(assert (=> b!552477 m!529449))

(assert (=> b!552477 m!529449))

(declare-fun m!529479 () Bool)

(assert (=> b!552477 m!529479))

(check-sat (not b!552478) (not b!552480) (not b!552477) (not b!552481) (not b!552476) (not b!552479) (not b!552483) (not b!552482) (not b!552484) (not start!50602) (not b!552475))
(check-sat)
