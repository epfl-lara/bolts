; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47734 () Bool)

(assert start!47734)

(declare-fun b!524809 () Bool)

(declare-fun res!321797 () Bool)

(declare-fun e!306036 () Bool)

(assert (=> b!524809 (=> (not res!321797) (not e!306036))))

(declare-datatypes ((array!33331 0))(
  ( (array!33332 (arr!16014 (Array (_ BitVec 32) (_ BitVec 64))) (size!16378 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33331)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524809 (= res!321797 (validKeyInArray!0 (select (arr!16014 a!3235) j!176)))))

(declare-fun b!524810 () Bool)

(declare-fun res!321790 () Bool)

(declare-fun e!306040 () Bool)

(assert (=> b!524810 (=> (not res!321790) (not e!306040))))

(declare-datatypes ((List!10225 0))(
  ( (Nil!10222) (Cons!10221 (h!11152 (_ BitVec 64)) (t!16461 List!10225)) )
))
(declare-fun arrayNoDuplicates!0 (array!33331 (_ BitVec 32) List!10225) Bool)

(assert (=> b!524810 (= res!321790 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10222))))

(declare-fun b!524811 () Bool)

(assert (=> b!524811 (= e!306036 e!306040)))

(declare-fun res!321794 () Bool)

(assert (=> b!524811 (=> (not res!321794) (not e!306040))))

(declare-datatypes ((SeekEntryResult!4488 0))(
  ( (MissingZero!4488 (index!20164 (_ BitVec 32))) (Found!4488 (index!20165 (_ BitVec 32))) (Intermediate!4488 (undefined!5300 Bool) (index!20166 (_ BitVec 32)) (x!49176 (_ BitVec 32))) (Undefined!4488) (MissingVacant!4488 (index!20167 (_ BitVec 32))) )
))
(declare-fun lt!241047 () SeekEntryResult!4488)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524811 (= res!321794 (or (= lt!241047 (MissingZero!4488 i!1204)) (= lt!241047 (MissingVacant!4488 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33331 (_ BitVec 32)) SeekEntryResult!4488)

(assert (=> b!524811 (= lt!241047 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524813 () Bool)

(declare-fun res!321796 () Bool)

(assert (=> b!524813 (=> (not res!321796) (not e!306036))))

(assert (=> b!524813 (= res!321796 (validKeyInArray!0 k!2280))))

(declare-fun b!524814 () Bool)

(declare-fun res!321787 () Bool)

(declare-fun e!306039 () Bool)

(assert (=> b!524814 (=> res!321787 e!306039)))

(declare-fun lt!241052 () SeekEntryResult!4488)

(assert (=> b!524814 (= res!321787 (or (undefined!5300 lt!241052) (not (is-Intermediate!4488 lt!241052))))))

(declare-fun b!524815 () Bool)

(declare-fun res!321791 () Bool)

(assert (=> b!524815 (=> (not res!321791) (not e!306036))))

(declare-fun arrayContainsKey!0 (array!33331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524815 (= res!321791 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524816 () Bool)

(declare-fun res!321786 () Bool)

(assert (=> b!524816 (=> (not res!321786) (not e!306040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33331 (_ BitVec 32)) Bool)

(assert (=> b!524816 (= res!321786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524817 () Bool)

(declare-datatypes ((Unit!16418 0))(
  ( (Unit!16419) )
))
(declare-fun e!306034 () Unit!16418)

(declare-fun Unit!16420 () Unit!16418)

(assert (=> b!524817 (= e!306034 Unit!16420)))

(declare-fun lt!241055 () Unit!16418)

(declare-fun lt!241049 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16418)

(assert (=> b!524817 (= lt!241055 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241049 #b00000000000000000000000000000000 (index!20166 lt!241052) (x!49176 lt!241052) mask!3524))))

(declare-fun lt!241051 () (_ BitVec 64))

(declare-fun lt!241046 () array!33331)

(declare-fun res!321795 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33331 (_ BitVec 32)) SeekEntryResult!4488)

(assert (=> b!524817 (= res!321795 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241049 lt!241051 lt!241046 mask!3524) (Intermediate!4488 false (index!20166 lt!241052) (x!49176 lt!241052))))))

(declare-fun e!306035 () Bool)

(assert (=> b!524817 (=> (not res!321795) (not e!306035))))

(assert (=> b!524817 e!306035))

(declare-fun b!524818 () Bool)

(declare-fun res!321789 () Bool)

(assert (=> b!524818 (=> (not res!321789) (not e!306036))))

(assert (=> b!524818 (= res!321789 (and (= (size!16378 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16378 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16378 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524819 () Bool)

(assert (=> b!524819 (= e!306035 false)))

(declare-fun b!524820 () Bool)

(declare-fun Unit!16421 () Unit!16418)

(assert (=> b!524820 (= e!306034 Unit!16421)))

(declare-fun b!524812 () Bool)

(assert (=> b!524812 (= e!306040 (not e!306039))))

(declare-fun res!321788 () Bool)

(assert (=> b!524812 (=> res!321788 e!306039)))

(declare-fun lt!241053 () (_ BitVec 32))

(assert (=> b!524812 (= res!321788 (= lt!241052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241053 lt!241051 lt!241046 mask!3524)))))

(assert (=> b!524812 (= lt!241052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241049 (select (arr!16014 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524812 (= lt!241053 (toIndex!0 lt!241051 mask!3524))))

(assert (=> b!524812 (= lt!241051 (select (store (arr!16014 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524812 (= lt!241049 (toIndex!0 (select (arr!16014 a!3235) j!176) mask!3524))))

(assert (=> b!524812 (= lt!241046 (array!33332 (store (arr!16014 a!3235) i!1204 k!2280) (size!16378 a!3235)))))

(declare-fun e!306038 () Bool)

(assert (=> b!524812 e!306038))

(declare-fun res!321792 () Bool)

(assert (=> b!524812 (=> (not res!321792) (not e!306038))))

(assert (=> b!524812 (= res!321792 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241050 () Unit!16418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16418)

(assert (=> b!524812 (= lt!241050 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!321793 () Bool)

(assert (=> start!47734 (=> (not res!321793) (not e!306036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47734 (= res!321793 (validMask!0 mask!3524))))

(assert (=> start!47734 e!306036))

(assert (=> start!47734 true))

(declare-fun array_inv!11788 (array!33331) Bool)

(assert (=> start!47734 (array_inv!11788 a!3235)))

(declare-fun b!524821 () Bool)

(assert (=> b!524821 (= e!306039 true)))

(assert (=> b!524821 (= (index!20166 lt!241052) i!1204)))

(declare-fun lt!241048 () Unit!16418)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16418)

(assert (=> b!524821 (= lt!241048 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241049 #b00000000000000000000000000000000 (index!20166 lt!241052) (x!49176 lt!241052) mask!3524))))

(assert (=> b!524821 (and (or (= (select (arr!16014 a!3235) (index!20166 lt!241052)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16014 a!3235) (index!20166 lt!241052)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16014 a!3235) (index!20166 lt!241052)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16014 a!3235) (index!20166 lt!241052)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241054 () Unit!16418)

(assert (=> b!524821 (= lt!241054 e!306034)))

(declare-fun c!61817 () Bool)

(assert (=> b!524821 (= c!61817 (= (select (arr!16014 a!3235) (index!20166 lt!241052)) (select (arr!16014 a!3235) j!176)))))

(assert (=> b!524821 (and (bvslt (x!49176 lt!241052) #b01111111111111111111111111111110) (or (= (select (arr!16014 a!3235) (index!20166 lt!241052)) (select (arr!16014 a!3235) j!176)) (= (select (arr!16014 a!3235) (index!20166 lt!241052)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16014 a!3235) (index!20166 lt!241052)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524822 () Bool)

(assert (=> b!524822 (= e!306038 (= (seekEntryOrOpen!0 (select (arr!16014 a!3235) j!176) a!3235 mask!3524) (Found!4488 j!176)))))

(assert (= (and start!47734 res!321793) b!524818))

(assert (= (and b!524818 res!321789) b!524809))

(assert (= (and b!524809 res!321797) b!524813))

(assert (= (and b!524813 res!321796) b!524815))

(assert (= (and b!524815 res!321791) b!524811))

(assert (= (and b!524811 res!321794) b!524816))

(assert (= (and b!524816 res!321786) b!524810))

(assert (= (and b!524810 res!321790) b!524812))

(assert (= (and b!524812 res!321792) b!524822))

(assert (= (and b!524812 (not res!321788)) b!524814))

(assert (= (and b!524814 (not res!321787)) b!524821))

(assert (= (and b!524821 c!61817) b!524817))

(assert (= (and b!524821 (not c!61817)) b!524820))

(assert (= (and b!524817 res!321795) b!524819))

(declare-fun m!505483 () Bool)

(assert (=> b!524815 m!505483))

(declare-fun m!505485 () Bool)

(assert (=> b!524822 m!505485))

(assert (=> b!524822 m!505485))

(declare-fun m!505487 () Bool)

(assert (=> b!524822 m!505487))

(declare-fun m!505489 () Bool)

(assert (=> b!524810 m!505489))

(declare-fun m!505491 () Bool)

(assert (=> b!524812 m!505491))

(declare-fun m!505493 () Bool)

(assert (=> b!524812 m!505493))

(declare-fun m!505495 () Bool)

(assert (=> b!524812 m!505495))

(declare-fun m!505497 () Bool)

(assert (=> b!524812 m!505497))

(assert (=> b!524812 m!505485))

(declare-fun m!505499 () Bool)

(assert (=> b!524812 m!505499))

(declare-fun m!505501 () Bool)

(assert (=> b!524812 m!505501))

(assert (=> b!524812 m!505485))

(assert (=> b!524812 m!505485))

(declare-fun m!505503 () Bool)

(assert (=> b!524812 m!505503))

(declare-fun m!505505 () Bool)

(assert (=> b!524812 m!505505))

(declare-fun m!505507 () Bool)

(assert (=> b!524817 m!505507))

(declare-fun m!505509 () Bool)

(assert (=> b!524817 m!505509))

(declare-fun m!505511 () Bool)

(assert (=> start!47734 m!505511))

(declare-fun m!505513 () Bool)

(assert (=> start!47734 m!505513))

(declare-fun m!505515 () Bool)

(assert (=> b!524813 m!505515))

(assert (=> b!524809 m!505485))

(assert (=> b!524809 m!505485))

(declare-fun m!505517 () Bool)

(assert (=> b!524809 m!505517))

(declare-fun m!505519 () Bool)

(assert (=> b!524811 m!505519))

(declare-fun m!505521 () Bool)

(assert (=> b!524816 m!505521))

(declare-fun m!505523 () Bool)

(assert (=> b!524821 m!505523))

(declare-fun m!505525 () Bool)

(assert (=> b!524821 m!505525))

(assert (=> b!524821 m!505485))

(push 1)

