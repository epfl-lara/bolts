; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51076 () Bool)

(assert start!51076)

(declare-fun b!557627 () Bool)

(declare-fun e!321259 () Bool)

(assert (=> b!557627 (= e!321259 (not true))))

(declare-fun e!321258 () Bool)

(assert (=> b!557627 e!321258))

(declare-fun res!349642 () Bool)

(assert (=> b!557627 (=> (not res!349642) (not e!321258))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35084 0))(
  ( (array!35085 (arr!16843 (Array (_ BitVec 32) (_ BitVec 64))) (size!17207 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35084)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35084 (_ BitVec 32)) Bool)

(assert (=> b!557627 (= res!349642 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17372 0))(
  ( (Unit!17373) )
))
(declare-fun lt!253421 () Unit!17372)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17372)

(assert (=> b!557627 (= lt!253421 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!349645 () Bool)

(declare-fun e!321256 () Bool)

(assert (=> start!51076 (=> (not res!349645) (not e!321256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51076 (= res!349645 (validMask!0 mask!3119))))

(assert (=> start!51076 e!321256))

(assert (=> start!51076 true))

(declare-fun array_inv!12617 (array!35084) Bool)

(assert (=> start!51076 (array_inv!12617 a!3118)))

(declare-fun b!557628 () Bool)

(declare-fun res!349641 () Bool)

(assert (=> b!557628 (=> (not res!349641) (not e!321256))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557628 (= res!349641 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557629 () Bool)

(declare-fun res!349643 () Bool)

(assert (=> b!557629 (=> (not res!349643) (not e!321256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557629 (= res!349643 (validKeyInArray!0 k0!1914))))

(declare-fun b!557630 () Bool)

(declare-datatypes ((SeekEntryResult!5299 0))(
  ( (MissingZero!5299 (index!23423 (_ BitVec 32))) (Found!5299 (index!23424 (_ BitVec 32))) (Intermediate!5299 (undefined!6111 Bool) (index!23425 (_ BitVec 32)) (x!52354 (_ BitVec 32))) (Undefined!5299) (MissingVacant!5299 (index!23426 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35084 (_ BitVec 32)) SeekEntryResult!5299)

(assert (=> b!557630 (= e!321258 (= (seekEntryOrOpen!0 (select (arr!16843 a!3118) j!142) a!3118 mask!3119) (Found!5299 j!142)))))

(declare-fun b!557631 () Bool)

(declare-fun res!349647 () Bool)

(assert (=> b!557631 (=> (not res!349647) (not e!321256))))

(assert (=> b!557631 (= res!349647 (validKeyInArray!0 (select (arr!16843 a!3118) j!142)))))

(declare-fun b!557632 () Bool)

(declare-fun res!349649 () Bool)

(assert (=> b!557632 (=> (not res!349649) (not e!321259))))

(assert (=> b!557632 (= res!349649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557633 () Bool)

(declare-fun res!349644 () Bool)

(assert (=> b!557633 (=> (not res!349644) (not e!321259))))

(declare-datatypes ((List!10976 0))(
  ( (Nil!10973) (Cons!10972 (h!11966 (_ BitVec 64)) (t!17212 List!10976)) )
))
(declare-fun arrayNoDuplicates!0 (array!35084 (_ BitVec 32) List!10976) Bool)

(assert (=> b!557633 (= res!349644 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10973))))

(declare-fun b!557634 () Bool)

(assert (=> b!557634 (= e!321256 e!321259)))

(declare-fun res!349648 () Bool)

(assert (=> b!557634 (=> (not res!349648) (not e!321259))))

(declare-fun lt!253420 () SeekEntryResult!5299)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557634 (= res!349648 (or (= lt!253420 (MissingZero!5299 i!1132)) (= lt!253420 (MissingVacant!5299 i!1132))))))

(assert (=> b!557634 (= lt!253420 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!557635 () Bool)

(declare-fun res!349640 () Bool)

(assert (=> b!557635 (=> (not res!349640) (not e!321256))))

(assert (=> b!557635 (= res!349640 (and (= (size!17207 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17207 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17207 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557636 () Bool)

(declare-fun res!349646 () Bool)

(assert (=> b!557636 (=> (not res!349646) (not e!321259))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35084 (_ BitVec 32)) SeekEntryResult!5299)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557636 (= res!349646 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16843 a!3118) j!142) mask!3119) (select (arr!16843 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16843 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16843 a!3118) i!1132 k0!1914) j!142) (array!35085 (store (arr!16843 a!3118) i!1132 k0!1914) (size!17207 a!3118)) mask!3119)))))

(assert (= (and start!51076 res!349645) b!557635))

(assert (= (and b!557635 res!349640) b!557631))

(assert (= (and b!557631 res!349647) b!557629))

(assert (= (and b!557629 res!349643) b!557628))

(assert (= (and b!557628 res!349641) b!557634))

(assert (= (and b!557634 res!349648) b!557632))

(assert (= (and b!557632 res!349649) b!557633))

(assert (= (and b!557633 res!349644) b!557636))

(assert (= (and b!557636 res!349646) b!557627))

(assert (= (and b!557627 res!349642) b!557630))

(declare-fun m!535519 () Bool)

(assert (=> b!557636 m!535519))

(declare-fun m!535521 () Bool)

(assert (=> b!557636 m!535521))

(assert (=> b!557636 m!535519))

(declare-fun m!535523 () Bool)

(assert (=> b!557636 m!535523))

(declare-fun m!535525 () Bool)

(assert (=> b!557636 m!535525))

(assert (=> b!557636 m!535523))

(declare-fun m!535527 () Bool)

(assert (=> b!557636 m!535527))

(assert (=> b!557636 m!535521))

(assert (=> b!557636 m!535519))

(declare-fun m!535529 () Bool)

(assert (=> b!557636 m!535529))

(declare-fun m!535531 () Bool)

(assert (=> b!557636 m!535531))

(assert (=> b!557636 m!535523))

(assert (=> b!557636 m!535525))

(assert (=> b!557630 m!535519))

(assert (=> b!557630 m!535519))

(declare-fun m!535533 () Bool)

(assert (=> b!557630 m!535533))

(declare-fun m!535535 () Bool)

(assert (=> b!557634 m!535535))

(declare-fun m!535537 () Bool)

(assert (=> b!557632 m!535537))

(assert (=> b!557631 m!535519))

(assert (=> b!557631 m!535519))

(declare-fun m!535539 () Bool)

(assert (=> b!557631 m!535539))

(declare-fun m!535541 () Bool)

(assert (=> start!51076 m!535541))

(declare-fun m!535543 () Bool)

(assert (=> start!51076 m!535543))

(declare-fun m!535545 () Bool)

(assert (=> b!557633 m!535545))

(declare-fun m!535547 () Bool)

(assert (=> b!557628 m!535547))

(declare-fun m!535549 () Bool)

(assert (=> b!557629 m!535549))

(declare-fun m!535551 () Bool)

(assert (=> b!557627 m!535551))

(declare-fun m!535553 () Bool)

(assert (=> b!557627 m!535553))

(check-sat (not b!557630) (not b!557629) (not b!557636) (not b!557632) (not b!557634) (not start!51076) (not b!557633) (not b!557627) (not b!557628) (not b!557631))
(check-sat)
