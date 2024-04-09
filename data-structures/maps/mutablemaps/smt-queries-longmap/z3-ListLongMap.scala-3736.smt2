; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51430 () Bool)

(assert start!51430)

(declare-fun b!561530 () Bool)

(declare-fun e!323589 () Bool)

(declare-fun e!323592 () Bool)

(assert (=> b!561530 (= e!323589 e!323592)))

(declare-fun res!352844 () Bool)

(assert (=> b!561530 (=> res!352844 e!323592)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255676 () (_ BitVec 64))

(declare-datatypes ((array!35249 0))(
  ( (array!35250 (arr!16921 (Array (_ BitVec 32) (_ BitVec 64))) (size!17285 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35249)

(assert (=> b!561530 (= res!352844 (or (= lt!255676 (select (arr!16921 a!3118) j!142)) (= lt!255676 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5377 0))(
  ( (MissingZero!5377 (index!23735 (_ BitVec 32))) (Found!5377 (index!23736 (_ BitVec 32))) (Intermediate!5377 (undefined!6189 Bool) (index!23737 (_ BitVec 32)) (x!52667 (_ BitVec 32))) (Undefined!5377) (MissingVacant!5377 (index!23738 (_ BitVec 32))) )
))
(declare-fun lt!255673 () SeekEntryResult!5377)

(assert (=> b!561530 (= lt!255676 (select (arr!16921 a!3118) (index!23737 lt!255673)))))

(declare-fun b!561531 () Bool)

(declare-fun e!323594 () Bool)

(assert (=> b!561531 (= e!323594 (not true))))

(declare-fun e!323595 () Bool)

(assert (=> b!561531 e!323595))

(declare-fun res!352839 () Bool)

(assert (=> b!561531 (=> (not res!352839) (not e!323595))))

(declare-fun lt!255672 () SeekEntryResult!5377)

(assert (=> b!561531 (= res!352839 (= lt!255672 (Found!5377 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35249 (_ BitVec 32)) SeekEntryResult!5377)

(assert (=> b!561531 (= lt!255672 (seekEntryOrOpen!0 (select (arr!16921 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35249 (_ BitVec 32)) Bool)

(assert (=> b!561531 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17528 0))(
  ( (Unit!17529) )
))
(declare-fun lt!255669 () Unit!17528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35249 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17528)

(assert (=> b!561531 (= lt!255669 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561532 () Bool)

(declare-fun res!352838 () Bool)

(declare-fun e!323591 () Bool)

(assert (=> b!561532 (=> (not res!352838) (not e!323591))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561532 (= res!352838 (validKeyInArray!0 k0!1914))))

(declare-fun b!561533 () Bool)

(declare-fun e!323590 () Bool)

(assert (=> b!561533 (= e!323592 e!323590)))

(declare-fun res!352836 () Bool)

(assert (=> b!561533 (=> (not res!352836) (not e!323590))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35249 (_ BitVec 32)) SeekEntryResult!5377)

(assert (=> b!561533 (= res!352836 (= lt!255672 (seekKeyOrZeroReturnVacant!0 (x!52667 lt!255673) (index!23737 lt!255673) (index!23737 lt!255673) (select (arr!16921 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561535 () Bool)

(declare-fun res!352841 () Bool)

(assert (=> b!561535 (=> (not res!352841) (not e!323591))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561535 (= res!352841 (and (= (size!17285 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17285 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17285 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561536 () Bool)

(declare-fun res!352835 () Bool)

(declare-fun e!323593 () Bool)

(assert (=> b!561536 (=> (not res!352835) (not e!323593))))

(declare-datatypes ((List!11054 0))(
  ( (Nil!11051) (Cons!11050 (h!12053 (_ BitVec 64)) (t!17290 List!11054)) )
))
(declare-fun arrayNoDuplicates!0 (array!35249 (_ BitVec 32) List!11054) Bool)

(assert (=> b!561536 (= res!352835 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11051))))

(declare-fun b!561537 () Bool)

(declare-fun res!352832 () Bool)

(assert (=> b!561537 (=> (not res!352832) (not e!323591))))

(assert (=> b!561537 (= res!352832 (validKeyInArray!0 (select (arr!16921 a!3118) j!142)))))

(declare-fun b!561538 () Bool)

(assert (=> b!561538 (= e!323595 e!323589)))

(declare-fun res!352843 () Bool)

(assert (=> b!561538 (=> res!352843 e!323589)))

(get-info :version)

(assert (=> b!561538 (= res!352843 (or (undefined!6189 lt!255673) (not ((_ is Intermediate!5377) lt!255673))))))

(declare-fun b!561539 () Bool)

(declare-fun res!352834 () Bool)

(assert (=> b!561539 (=> (not res!352834) (not e!323593))))

(assert (=> b!561539 (= res!352834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561540 () Bool)

(declare-fun res!352833 () Bool)

(assert (=> b!561540 (=> (not res!352833) (not e!323591))))

(declare-fun arrayContainsKey!0 (array!35249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561540 (= res!352833 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561534 () Bool)

(declare-fun lt!255675 () array!35249)

(declare-fun lt!255674 () (_ BitVec 64))

(assert (=> b!561534 (= e!323590 (= (seekEntryOrOpen!0 lt!255674 lt!255675 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52667 lt!255673) (index!23737 lt!255673) (index!23737 lt!255673) lt!255674 lt!255675 mask!3119)))))

(declare-fun res!352842 () Bool)

(assert (=> start!51430 (=> (not res!352842) (not e!323591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51430 (= res!352842 (validMask!0 mask!3119))))

(assert (=> start!51430 e!323591))

(assert (=> start!51430 true))

(declare-fun array_inv!12695 (array!35249) Bool)

(assert (=> start!51430 (array_inv!12695 a!3118)))

(declare-fun b!561541 () Bool)

(assert (=> b!561541 (= e!323593 e!323594)))

(declare-fun res!352840 () Bool)

(assert (=> b!561541 (=> (not res!352840) (not e!323594))))

(declare-fun lt!255677 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35249 (_ BitVec 32)) SeekEntryResult!5377)

(assert (=> b!561541 (= res!352840 (= lt!255673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255677 lt!255674 lt!255675 mask!3119)))))

(declare-fun lt!255671 () (_ BitVec 32))

(assert (=> b!561541 (= lt!255673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255671 (select (arr!16921 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561541 (= lt!255677 (toIndex!0 lt!255674 mask!3119))))

(assert (=> b!561541 (= lt!255674 (select (store (arr!16921 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!561541 (= lt!255671 (toIndex!0 (select (arr!16921 a!3118) j!142) mask!3119))))

(assert (=> b!561541 (= lt!255675 (array!35250 (store (arr!16921 a!3118) i!1132 k0!1914) (size!17285 a!3118)))))

(declare-fun b!561542 () Bool)

(assert (=> b!561542 (= e!323591 e!323593)))

(declare-fun res!352837 () Bool)

(assert (=> b!561542 (=> (not res!352837) (not e!323593))))

(declare-fun lt!255670 () SeekEntryResult!5377)

(assert (=> b!561542 (= res!352837 (or (= lt!255670 (MissingZero!5377 i!1132)) (= lt!255670 (MissingVacant!5377 i!1132))))))

(assert (=> b!561542 (= lt!255670 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!51430 res!352842) b!561535))

(assert (= (and b!561535 res!352841) b!561537))

(assert (= (and b!561537 res!352832) b!561532))

(assert (= (and b!561532 res!352838) b!561540))

(assert (= (and b!561540 res!352833) b!561542))

(assert (= (and b!561542 res!352837) b!561539))

(assert (= (and b!561539 res!352834) b!561536))

(assert (= (and b!561536 res!352835) b!561541))

(assert (= (and b!561541 res!352840) b!561531))

(assert (= (and b!561531 res!352839) b!561538))

(assert (= (and b!561538 (not res!352843)) b!561530))

(assert (= (and b!561530 (not res!352844)) b!561533))

(assert (= (and b!561533 res!352836) b!561534))

(declare-fun m!539499 () Bool)

(assert (=> b!561536 m!539499))

(declare-fun m!539501 () Bool)

(assert (=> b!561541 m!539501))

(declare-fun m!539503 () Bool)

(assert (=> b!561541 m!539503))

(assert (=> b!561541 m!539501))

(assert (=> b!561541 m!539501))

(declare-fun m!539505 () Bool)

(assert (=> b!561541 m!539505))

(declare-fun m!539507 () Bool)

(assert (=> b!561541 m!539507))

(declare-fun m!539509 () Bool)

(assert (=> b!561541 m!539509))

(declare-fun m!539511 () Bool)

(assert (=> b!561541 m!539511))

(declare-fun m!539513 () Bool)

(assert (=> b!561541 m!539513))

(declare-fun m!539515 () Bool)

(assert (=> b!561539 m!539515))

(assert (=> b!561533 m!539501))

(assert (=> b!561533 m!539501))

(declare-fun m!539517 () Bool)

(assert (=> b!561533 m!539517))

(assert (=> b!561537 m!539501))

(assert (=> b!561537 m!539501))

(declare-fun m!539519 () Bool)

(assert (=> b!561537 m!539519))

(declare-fun m!539521 () Bool)

(assert (=> start!51430 m!539521))

(declare-fun m!539523 () Bool)

(assert (=> start!51430 m!539523))

(assert (=> b!561531 m!539501))

(assert (=> b!561531 m!539501))

(declare-fun m!539525 () Bool)

(assert (=> b!561531 m!539525))

(declare-fun m!539527 () Bool)

(assert (=> b!561531 m!539527))

(declare-fun m!539529 () Bool)

(assert (=> b!561531 m!539529))

(declare-fun m!539531 () Bool)

(assert (=> b!561542 m!539531))

(declare-fun m!539533 () Bool)

(assert (=> b!561534 m!539533))

(declare-fun m!539535 () Bool)

(assert (=> b!561534 m!539535))

(declare-fun m!539537 () Bool)

(assert (=> b!561540 m!539537))

(assert (=> b!561530 m!539501))

(declare-fun m!539539 () Bool)

(assert (=> b!561530 m!539539))

(declare-fun m!539541 () Bool)

(assert (=> b!561532 m!539541))

(check-sat (not b!561540) (not b!561533) (not b!561532) (not b!561536) (not b!561531) (not b!561537) (not b!561542) (not start!51430) (not b!561541) (not b!561534) (not b!561539))
(check-sat)
