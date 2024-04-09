; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47778 () Bool)

(assert start!47778)

(declare-fun res!322579 () Bool)

(declare-fun e!306500 () Bool)

(assert (=> start!47778 (=> (not res!322579) (not e!306500))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47778 (= res!322579 (validMask!0 mask!3524))))

(assert (=> start!47778 e!306500))

(assert (=> start!47778 true))

(declare-datatypes ((array!33375 0))(
  ( (array!33376 (arr!16036 (Array (_ BitVec 32) (_ BitVec 64))) (size!16400 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33375)

(declare-fun array_inv!11810 (array!33375) Bool)

(assert (=> start!47778 (array_inv!11810 a!3235)))

(declare-fun b!525733 () Bool)

(declare-fun res!322588 () Bool)

(assert (=> b!525733 (=> (not res!322588) (not e!306500))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525733 (= res!322588 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525734 () Bool)

(declare-fun res!322583 () Bool)

(assert (=> b!525734 (=> (not res!322583) (not e!306500))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!525734 (= res!322583 (and (= (size!16400 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16400 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16400 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525735 () Bool)

(declare-datatypes ((Unit!16506 0))(
  ( (Unit!16507) )
))
(declare-fun e!306499 () Unit!16506)

(declare-fun Unit!16508 () Unit!16506)

(assert (=> b!525735 (= e!306499 Unit!16508)))

(declare-fun b!525736 () Bool)

(declare-fun res!322585 () Bool)

(assert (=> b!525736 (=> (not res!322585) (not e!306500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525736 (= res!322585 (validKeyInArray!0 (select (arr!16036 a!3235) j!176)))))

(declare-fun b!525737 () Bool)

(declare-fun e!306497 () Bool)

(assert (=> b!525737 (= e!306497 true)))

(declare-datatypes ((SeekEntryResult!4510 0))(
  ( (MissingZero!4510 (index!20252 (_ BitVec 32))) (Found!4510 (index!20253 (_ BitVec 32))) (Intermediate!4510 (undefined!5322 Bool) (index!20254 (_ BitVec 32)) (x!49254 (_ BitVec 32))) (Undefined!4510) (MissingVacant!4510 (index!20255 (_ BitVec 32))) )
))
(declare-fun lt!241714 () SeekEntryResult!4510)

(assert (=> b!525737 (= (index!20254 lt!241714) i!1204)))

(declare-fun lt!241712 () (_ BitVec 32))

(declare-fun lt!241710 () Unit!16506)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33375 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16506)

(assert (=> b!525737 (= lt!241710 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241712 #b00000000000000000000000000000000 (index!20254 lt!241714) (x!49254 lt!241714) mask!3524))))

(assert (=> b!525737 (and (or (= (select (arr!16036 a!3235) (index!20254 lt!241714)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16036 a!3235) (index!20254 lt!241714)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16036 a!3235) (index!20254 lt!241714)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16036 a!3235) (index!20254 lt!241714)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241709 () Unit!16506)

(assert (=> b!525737 (= lt!241709 e!306499)))

(declare-fun c!61883 () Bool)

(assert (=> b!525737 (= c!61883 (= (select (arr!16036 a!3235) (index!20254 lt!241714)) (select (arr!16036 a!3235) j!176)))))

(assert (=> b!525737 (and (bvslt (x!49254 lt!241714) #b01111111111111111111111111111110) (or (= (select (arr!16036 a!3235) (index!20254 lt!241714)) (select (arr!16036 a!3235) j!176)) (= (select (arr!16036 a!3235) (index!20254 lt!241714)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16036 a!3235) (index!20254 lt!241714)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525738 () Bool)

(declare-fun Unit!16509 () Unit!16506)

(assert (=> b!525738 (= e!306499 Unit!16509)))

(declare-fun lt!241715 () Unit!16506)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33375 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16506)

(assert (=> b!525738 (= lt!241715 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241712 #b00000000000000000000000000000000 (index!20254 lt!241714) (x!49254 lt!241714) mask!3524))))

(declare-fun lt!241706 () (_ BitVec 64))

(declare-fun res!322589 () Bool)

(declare-fun lt!241708 () array!33375)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33375 (_ BitVec 32)) SeekEntryResult!4510)

(assert (=> b!525738 (= res!322589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241712 lt!241706 lt!241708 mask!3524) (Intermediate!4510 false (index!20254 lt!241714) (x!49254 lt!241714))))))

(declare-fun e!306496 () Bool)

(assert (=> b!525738 (=> (not res!322589) (not e!306496))))

(assert (=> b!525738 e!306496))

(declare-fun e!306498 () Bool)

(declare-fun b!525739 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33375 (_ BitVec 32)) SeekEntryResult!4510)

(assert (=> b!525739 (= e!306498 (= (seekEntryOrOpen!0 (select (arr!16036 a!3235) j!176) a!3235 mask!3524) (Found!4510 j!176)))))

(declare-fun b!525740 () Bool)

(declare-fun res!322587 () Bool)

(declare-fun e!306501 () Bool)

(assert (=> b!525740 (=> (not res!322587) (not e!306501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33375 (_ BitVec 32)) Bool)

(assert (=> b!525740 (= res!322587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525741 () Bool)

(assert (=> b!525741 (= e!306496 false)))

(declare-fun b!525742 () Bool)

(declare-fun res!322578 () Bool)

(assert (=> b!525742 (=> (not res!322578) (not e!306501))))

(declare-datatypes ((List!10247 0))(
  ( (Nil!10244) (Cons!10243 (h!11174 (_ BitVec 64)) (t!16483 List!10247)) )
))
(declare-fun arrayNoDuplicates!0 (array!33375 (_ BitVec 32) List!10247) Bool)

(assert (=> b!525742 (= res!322578 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10244))))

(declare-fun b!525743 () Bool)

(declare-fun res!322586 () Bool)

(assert (=> b!525743 (=> res!322586 e!306497)))

(get-info :version)

(assert (=> b!525743 (= res!322586 (or (undefined!5322 lt!241714) (not ((_ is Intermediate!4510) lt!241714))))))

(declare-fun b!525744 () Bool)

(assert (=> b!525744 (= e!306500 e!306501)))

(declare-fun res!322582 () Bool)

(assert (=> b!525744 (=> (not res!322582) (not e!306501))))

(declare-fun lt!241713 () SeekEntryResult!4510)

(assert (=> b!525744 (= res!322582 (or (= lt!241713 (MissingZero!4510 i!1204)) (= lt!241713 (MissingVacant!4510 i!1204))))))

(assert (=> b!525744 (= lt!241713 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!525745 () Bool)

(declare-fun res!322581 () Bool)

(assert (=> b!525745 (=> (not res!322581) (not e!306500))))

(assert (=> b!525745 (= res!322581 (validKeyInArray!0 k0!2280))))

(declare-fun b!525746 () Bool)

(assert (=> b!525746 (= e!306501 (not e!306497))))

(declare-fun res!322584 () Bool)

(assert (=> b!525746 (=> res!322584 e!306497)))

(declare-fun lt!241711 () (_ BitVec 32))

(assert (=> b!525746 (= res!322584 (= lt!241714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241711 lt!241706 lt!241708 mask!3524)))))

(assert (=> b!525746 (= lt!241714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241712 (select (arr!16036 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525746 (= lt!241711 (toIndex!0 lt!241706 mask!3524))))

(assert (=> b!525746 (= lt!241706 (select (store (arr!16036 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!525746 (= lt!241712 (toIndex!0 (select (arr!16036 a!3235) j!176) mask!3524))))

(assert (=> b!525746 (= lt!241708 (array!33376 (store (arr!16036 a!3235) i!1204 k0!2280) (size!16400 a!3235)))))

(assert (=> b!525746 e!306498))

(declare-fun res!322580 () Bool)

(assert (=> b!525746 (=> (not res!322580) (not e!306498))))

(assert (=> b!525746 (= res!322580 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241707 () Unit!16506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33375 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16506)

(assert (=> b!525746 (= lt!241707 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47778 res!322579) b!525734))

(assert (= (and b!525734 res!322583) b!525736))

(assert (= (and b!525736 res!322585) b!525745))

(assert (= (and b!525745 res!322581) b!525733))

(assert (= (and b!525733 res!322588) b!525744))

(assert (= (and b!525744 res!322582) b!525740))

(assert (= (and b!525740 res!322587) b!525742))

(assert (= (and b!525742 res!322578) b!525746))

(assert (= (and b!525746 res!322580) b!525739))

(assert (= (and b!525746 (not res!322584)) b!525743))

(assert (= (and b!525743 (not res!322586)) b!525737))

(assert (= (and b!525737 c!61883) b!525738))

(assert (= (and b!525737 (not c!61883)) b!525735))

(assert (= (and b!525738 res!322589) b!525741))

(declare-fun m!506451 () Bool)

(assert (=> start!47778 m!506451))

(declare-fun m!506453 () Bool)

(assert (=> start!47778 m!506453))

(declare-fun m!506455 () Bool)

(assert (=> b!525746 m!506455))

(declare-fun m!506457 () Bool)

(assert (=> b!525746 m!506457))

(declare-fun m!506459 () Bool)

(assert (=> b!525746 m!506459))

(declare-fun m!506461 () Bool)

(assert (=> b!525746 m!506461))

(declare-fun m!506463 () Bool)

(assert (=> b!525746 m!506463))

(declare-fun m!506465 () Bool)

(assert (=> b!525746 m!506465))

(declare-fun m!506467 () Bool)

(assert (=> b!525746 m!506467))

(assert (=> b!525746 m!506465))

(declare-fun m!506469 () Bool)

(assert (=> b!525746 m!506469))

(assert (=> b!525746 m!506465))

(declare-fun m!506471 () Bool)

(assert (=> b!525746 m!506471))

(assert (=> b!525739 m!506465))

(assert (=> b!525739 m!506465))

(declare-fun m!506473 () Bool)

(assert (=> b!525739 m!506473))

(declare-fun m!506475 () Bool)

(assert (=> b!525744 m!506475))

(declare-fun m!506477 () Bool)

(assert (=> b!525740 m!506477))

(declare-fun m!506479 () Bool)

(assert (=> b!525737 m!506479))

(declare-fun m!506481 () Bool)

(assert (=> b!525737 m!506481))

(assert (=> b!525737 m!506465))

(declare-fun m!506483 () Bool)

(assert (=> b!525745 m!506483))

(assert (=> b!525736 m!506465))

(assert (=> b!525736 m!506465))

(declare-fun m!506485 () Bool)

(assert (=> b!525736 m!506485))

(declare-fun m!506487 () Bool)

(assert (=> b!525733 m!506487))

(declare-fun m!506489 () Bool)

(assert (=> b!525742 m!506489))

(declare-fun m!506491 () Bool)

(assert (=> b!525738 m!506491))

(declare-fun m!506493 () Bool)

(assert (=> b!525738 m!506493))

(check-sat (not b!525744) (not b!525740) (not start!47778) (not b!525739) (not b!525745) (not b!525737) (not b!525736) (not b!525733) (not b!525738) (not b!525742) (not b!525746))
(check-sat)
