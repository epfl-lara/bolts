; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47430 () Bool)

(assert start!47430)

(declare-fun b!521593 () Bool)

(declare-fun res!319500 () Bool)

(declare-fun e!304284 () Bool)

(assert (=> b!521593 (=> (not res!319500) (not e!304284))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33216 0))(
  ( (array!33217 (arr!15961 (Array (_ BitVec 32) (_ BitVec 64))) (size!16325 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33216)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!521593 (= res!319500 (and (= (size!16325 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16325 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16325 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521594 () Bool)

(declare-fun e!304283 () Bool)

(assert (=> b!521594 (= e!304283 false)))

(declare-fun b!521595 () Bool)

(declare-fun res!319493 () Bool)

(declare-fun e!304282 () Bool)

(assert (=> b!521595 (=> (not res!319493) (not e!304282))))

(declare-datatypes ((List!10172 0))(
  ( (Nil!10169) (Cons!10168 (h!11090 (_ BitVec 64)) (t!16408 List!10172)) )
))
(declare-fun arrayNoDuplicates!0 (array!33216 (_ BitVec 32) List!10172) Bool)

(assert (=> b!521595 (= res!319493 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10169))))

(declare-fun b!521596 () Bool)

(declare-fun res!319495 () Bool)

(assert (=> b!521596 (=> (not res!319495) (not e!304282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33216 (_ BitVec 32)) Bool)

(assert (=> b!521596 (= res!319495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521597 () Bool)

(declare-datatypes ((Unit!16206 0))(
  ( (Unit!16207) )
))
(declare-fun e!304285 () Unit!16206)

(declare-fun Unit!16208 () Unit!16206)

(assert (=> b!521597 (= e!304285 Unit!16208)))

(declare-fun b!521598 () Bool)

(declare-fun e!304286 () Bool)

(assert (=> b!521598 (= e!304286 true)))

(declare-datatypes ((SeekEntryResult!4435 0))(
  ( (MissingZero!4435 (index!19943 (_ BitVec 32))) (Found!4435 (index!19944 (_ BitVec 32))) (Intermediate!4435 (undefined!5247 Bool) (index!19945 (_ BitVec 32)) (x!48952 (_ BitVec 32))) (Undefined!4435) (MissingVacant!4435 (index!19946 (_ BitVec 32))) )
))
(declare-fun lt!239151 () SeekEntryResult!4435)

(assert (=> b!521598 (and (or (= (select (arr!15961 a!3235) (index!19945 lt!239151)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15961 a!3235) (index!19945 lt!239151)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15961 a!3235) (index!19945 lt!239151)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15961 a!3235) (index!19945 lt!239151)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239148 () Unit!16206)

(assert (=> b!521598 (= lt!239148 e!304285)))

(declare-fun c!61352 () Bool)

(assert (=> b!521598 (= c!61352 (= (select (arr!15961 a!3235) (index!19945 lt!239151)) (select (arr!15961 a!3235) j!176)))))

(assert (=> b!521598 (and (bvslt (x!48952 lt!239151) #b01111111111111111111111111111110) (or (= (select (arr!15961 a!3235) (index!19945 lt!239151)) (select (arr!15961 a!3235) j!176)) (= (select (arr!15961 a!3235) (index!19945 lt!239151)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15961 a!3235) (index!19945 lt!239151)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521599 () Bool)

(declare-fun res!319491 () Bool)

(assert (=> b!521599 (=> (not res!319491) (not e!304284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521599 (= res!319491 (validKeyInArray!0 (select (arr!15961 a!3235) j!176)))))

(declare-fun b!521600 () Bool)

(declare-fun e!304288 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33216 (_ BitVec 32)) SeekEntryResult!4435)

(assert (=> b!521600 (= e!304288 (= (seekEntryOrOpen!0 (select (arr!15961 a!3235) j!176) a!3235 mask!3524) (Found!4435 j!176)))))

(declare-fun b!521601 () Bool)

(declare-fun Unit!16209 () Unit!16206)

(assert (=> b!521601 (= e!304285 Unit!16209)))

(declare-fun lt!239145 () Unit!16206)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!239149 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33216 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16206)

(assert (=> b!521601 (= lt!239145 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239149 #b00000000000000000000000000000000 (index!19945 lt!239151) (x!48952 lt!239151) mask!3524))))

(declare-fun res!319497 () Bool)

(declare-fun lt!239150 () array!33216)

(declare-fun lt!239147 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33216 (_ BitVec 32)) SeekEntryResult!4435)

(assert (=> b!521601 (= res!319497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239149 lt!239147 lt!239150 mask!3524) (Intermediate!4435 false (index!19945 lt!239151) (x!48952 lt!239151))))))

(assert (=> b!521601 (=> (not res!319497) (not e!304283))))

(assert (=> b!521601 e!304283))

(declare-fun b!521603 () Bool)

(assert (=> b!521603 (= e!304284 e!304282)))

(declare-fun res!319499 () Bool)

(assert (=> b!521603 (=> (not res!319499) (not e!304282))))

(declare-fun lt!239153 () SeekEntryResult!4435)

(assert (=> b!521603 (= res!319499 (or (= lt!239153 (MissingZero!4435 i!1204)) (= lt!239153 (MissingVacant!4435 i!1204))))))

(assert (=> b!521603 (= lt!239153 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!521604 () Bool)

(assert (=> b!521604 (= e!304282 (not e!304286))))

(declare-fun res!319492 () Bool)

(assert (=> b!521604 (=> res!319492 e!304286)))

(declare-fun lt!239146 () (_ BitVec 32))

(assert (=> b!521604 (= res!319492 (= lt!239151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239146 lt!239147 lt!239150 mask!3524)))))

(assert (=> b!521604 (= lt!239151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239149 (select (arr!15961 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521604 (= lt!239146 (toIndex!0 lt!239147 mask!3524))))

(assert (=> b!521604 (= lt!239147 (select (store (arr!15961 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!521604 (= lt!239149 (toIndex!0 (select (arr!15961 a!3235) j!176) mask!3524))))

(assert (=> b!521604 (= lt!239150 (array!33217 (store (arr!15961 a!3235) i!1204 k0!2280) (size!16325 a!3235)))))

(assert (=> b!521604 e!304288))

(declare-fun res!319494 () Bool)

(assert (=> b!521604 (=> (not res!319494) (not e!304288))))

(assert (=> b!521604 (= res!319494 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239152 () Unit!16206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16206)

(assert (=> b!521604 (= lt!239152 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521605 () Bool)

(declare-fun res!319496 () Bool)

(assert (=> b!521605 (=> (not res!319496) (not e!304284))))

(declare-fun arrayContainsKey!0 (array!33216 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521605 (= res!319496 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521606 () Bool)

(declare-fun res!319502 () Bool)

(assert (=> b!521606 (=> res!319502 e!304286)))

(get-info :version)

(assert (=> b!521606 (= res!319502 (or (undefined!5247 lt!239151) (not ((_ is Intermediate!4435) lt!239151))))))

(declare-fun b!521602 () Bool)

(declare-fun res!319498 () Bool)

(assert (=> b!521602 (=> (not res!319498) (not e!304284))))

(assert (=> b!521602 (= res!319498 (validKeyInArray!0 k0!2280))))

(declare-fun res!319501 () Bool)

(assert (=> start!47430 (=> (not res!319501) (not e!304284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47430 (= res!319501 (validMask!0 mask!3524))))

(assert (=> start!47430 e!304284))

(assert (=> start!47430 true))

(declare-fun array_inv!11735 (array!33216) Bool)

(assert (=> start!47430 (array_inv!11735 a!3235)))

(assert (= (and start!47430 res!319501) b!521593))

(assert (= (and b!521593 res!319500) b!521599))

(assert (= (and b!521599 res!319491) b!521602))

(assert (= (and b!521602 res!319498) b!521605))

(assert (= (and b!521605 res!319496) b!521603))

(assert (= (and b!521603 res!319499) b!521596))

(assert (= (and b!521596 res!319495) b!521595))

(assert (= (and b!521595 res!319493) b!521604))

(assert (= (and b!521604 res!319494) b!521600))

(assert (= (and b!521604 (not res!319492)) b!521606))

(assert (= (and b!521606 (not res!319502)) b!521598))

(assert (= (and b!521598 c!61352) b!521601))

(assert (= (and b!521598 (not c!61352)) b!521597))

(assert (= (and b!521601 res!319497) b!521594))

(declare-fun m!502543 () Bool)

(assert (=> b!521601 m!502543))

(declare-fun m!502545 () Bool)

(assert (=> b!521601 m!502545))

(declare-fun m!502547 () Bool)

(assert (=> b!521605 m!502547))

(declare-fun m!502549 () Bool)

(assert (=> b!521603 m!502549))

(declare-fun m!502551 () Bool)

(assert (=> b!521596 m!502551))

(declare-fun m!502553 () Bool)

(assert (=> b!521600 m!502553))

(assert (=> b!521600 m!502553))

(declare-fun m!502555 () Bool)

(assert (=> b!521600 m!502555))

(declare-fun m!502557 () Bool)

(assert (=> b!521602 m!502557))

(declare-fun m!502559 () Bool)

(assert (=> b!521598 m!502559))

(assert (=> b!521598 m!502553))

(assert (=> b!521599 m!502553))

(assert (=> b!521599 m!502553))

(declare-fun m!502561 () Bool)

(assert (=> b!521599 m!502561))

(declare-fun m!502563 () Bool)

(assert (=> start!47430 m!502563))

(declare-fun m!502565 () Bool)

(assert (=> start!47430 m!502565))

(declare-fun m!502567 () Bool)

(assert (=> b!521595 m!502567))

(assert (=> b!521604 m!502553))

(declare-fun m!502569 () Bool)

(assert (=> b!521604 m!502569))

(declare-fun m!502571 () Bool)

(assert (=> b!521604 m!502571))

(declare-fun m!502573 () Bool)

(assert (=> b!521604 m!502573))

(declare-fun m!502575 () Bool)

(assert (=> b!521604 m!502575))

(declare-fun m!502577 () Bool)

(assert (=> b!521604 m!502577))

(assert (=> b!521604 m!502553))

(declare-fun m!502579 () Bool)

(assert (=> b!521604 m!502579))

(assert (=> b!521604 m!502553))

(declare-fun m!502581 () Bool)

(assert (=> b!521604 m!502581))

(declare-fun m!502583 () Bool)

(assert (=> b!521604 m!502583))

(check-sat (not b!521595) (not b!521596) (not b!521601) (not b!521605) (not b!521599) (not b!521600) (not b!521602) (not b!521604) (not start!47430) (not b!521603))
(check-sat)
