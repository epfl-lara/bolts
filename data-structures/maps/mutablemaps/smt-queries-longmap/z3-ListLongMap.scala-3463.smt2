; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48120 () Bool)

(assert start!48120)

(declare-fun b!529579 () Bool)

(declare-fun e!308596 () Bool)

(declare-fun e!308593 () Bool)

(assert (=> b!529579 (= e!308596 (not e!308593))))

(declare-fun res!325436 () Bool)

(assert (=> b!529579 (=> res!325436 e!308593)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33516 0))(
  ( (array!33517 (arr!16102 (Array (_ BitVec 32) (_ BitVec 64))) (size!16466 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33516)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!244209 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4576 0))(
  ( (MissingZero!4576 (index!20528 (_ BitVec 32))) (Found!4576 (index!20529 (_ BitVec 32))) (Intermediate!4576 (undefined!5388 Bool) (index!20530 (_ BitVec 32)) (x!49529 (_ BitVec 32))) (Undefined!4576) (MissingVacant!4576 (index!20531 (_ BitVec 32))) )
))
(declare-fun lt!244214 () SeekEntryResult!4576)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33516 (_ BitVec 32)) SeekEntryResult!4576)

(assert (=> b!529579 (= res!325436 (= lt!244214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244209 (select (store (arr!16102 a!3235) i!1204 k0!2280) j!176) (array!33517 (store (arr!16102 a!3235) i!1204 k0!2280) (size!16466 a!3235)) mask!3524)))))

(declare-fun lt!244213 () (_ BitVec 32))

(assert (=> b!529579 (= lt!244214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244213 (select (arr!16102 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529579 (= lt!244209 (toIndex!0 (select (store (arr!16102 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!529579 (= lt!244213 (toIndex!0 (select (arr!16102 a!3235) j!176) mask!3524))))

(declare-fun e!308594 () Bool)

(assert (=> b!529579 e!308594))

(declare-fun res!325445 () Bool)

(assert (=> b!529579 (=> (not res!325445) (not e!308594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33516 (_ BitVec 32)) Bool)

(assert (=> b!529579 (= res!325445 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16756 0))(
  ( (Unit!16757) )
))
(declare-fun lt!244212 () Unit!16756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16756)

(assert (=> b!529579 (= lt!244212 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529580 () Bool)

(declare-fun res!325442 () Bool)

(assert (=> b!529580 (=> (not res!325442) (not e!308596))))

(assert (=> b!529580 (= res!325442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529581 () Bool)

(declare-fun res!325443 () Bool)

(declare-fun e!308591 () Bool)

(assert (=> b!529581 (=> (not res!325443) (not e!308591))))

(assert (=> b!529581 (= res!325443 (and (= (size!16466 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16466 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16466 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529582 () Bool)

(assert (=> b!529582 (= e!308591 e!308596)))

(declare-fun res!325440 () Bool)

(assert (=> b!529582 (=> (not res!325440) (not e!308596))))

(declare-fun lt!244211 () SeekEntryResult!4576)

(assert (=> b!529582 (= res!325440 (or (= lt!244211 (MissingZero!4576 i!1204)) (= lt!244211 (MissingVacant!4576 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33516 (_ BitVec 32)) SeekEntryResult!4576)

(assert (=> b!529582 (= lt!244211 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!529583 () Bool)

(declare-fun res!325441 () Bool)

(assert (=> b!529583 (=> (not res!325441) (not e!308591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529583 (= res!325441 (validKeyInArray!0 k0!2280))))

(declare-fun b!529584 () Bool)

(declare-fun e!308592 () Bool)

(assert (=> b!529584 (= e!308593 e!308592)))

(declare-fun res!325444 () Bool)

(assert (=> b!529584 (=> res!325444 e!308592)))

(declare-fun lt!244210 () Bool)

(assert (=> b!529584 (= res!325444 (or (and (not lt!244210) (undefined!5388 lt!244214)) (and (not lt!244210) (not (undefined!5388 lt!244214)))))))

(get-info :version)

(assert (=> b!529584 (= lt!244210 (not ((_ is Intermediate!4576) lt!244214)))))

(declare-fun res!325437 () Bool)

(assert (=> start!48120 (=> (not res!325437) (not e!308591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48120 (= res!325437 (validMask!0 mask!3524))))

(assert (=> start!48120 e!308591))

(assert (=> start!48120 true))

(declare-fun array_inv!11876 (array!33516) Bool)

(assert (=> start!48120 (array_inv!11876 a!3235)))

(declare-fun b!529585 () Bool)

(assert (=> b!529585 (= e!308594 (= (seekEntryOrOpen!0 (select (arr!16102 a!3235) j!176) a!3235 mask!3524) (Found!4576 j!176)))))

(declare-fun b!529586 () Bool)

(declare-fun res!325435 () Bool)

(assert (=> b!529586 (=> (not res!325435) (not e!308591))))

(declare-fun arrayContainsKey!0 (array!33516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529586 (= res!325435 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529587 () Bool)

(assert (=> b!529587 (= e!308592 true)))

(assert (=> b!529587 false))

(declare-fun b!529588 () Bool)

(declare-fun res!325439 () Bool)

(assert (=> b!529588 (=> (not res!325439) (not e!308591))))

(assert (=> b!529588 (= res!325439 (validKeyInArray!0 (select (arr!16102 a!3235) j!176)))))

(declare-fun b!529589 () Bool)

(declare-fun res!325438 () Bool)

(assert (=> b!529589 (=> (not res!325438) (not e!308596))))

(declare-datatypes ((List!10313 0))(
  ( (Nil!10310) (Cons!10309 (h!11249 (_ BitVec 64)) (t!16549 List!10313)) )
))
(declare-fun arrayNoDuplicates!0 (array!33516 (_ BitVec 32) List!10313) Bool)

(assert (=> b!529589 (= res!325438 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10310))))

(assert (= (and start!48120 res!325437) b!529581))

(assert (= (and b!529581 res!325443) b!529588))

(assert (= (and b!529588 res!325439) b!529583))

(assert (= (and b!529583 res!325441) b!529586))

(assert (= (and b!529586 res!325435) b!529582))

(assert (= (and b!529582 res!325440) b!529580))

(assert (= (and b!529580 res!325442) b!529589))

(assert (= (and b!529589 res!325438) b!529579))

(assert (= (and b!529579 res!325445) b!529585))

(assert (= (and b!529579 (not res!325436)) b!529584))

(assert (= (and b!529584 (not res!325444)) b!529587))

(declare-fun m!510103 () Bool)

(assert (=> b!529589 m!510103))

(declare-fun m!510105 () Bool)

(assert (=> b!529579 m!510105))

(declare-fun m!510107 () Bool)

(assert (=> b!529579 m!510107))

(declare-fun m!510109 () Bool)

(assert (=> b!529579 m!510109))

(declare-fun m!510111 () Bool)

(assert (=> b!529579 m!510111))

(declare-fun m!510113 () Bool)

(assert (=> b!529579 m!510113))

(declare-fun m!510115 () Bool)

(assert (=> b!529579 m!510115))

(assert (=> b!529579 m!510109))

(assert (=> b!529579 m!510105))

(declare-fun m!510117 () Bool)

(assert (=> b!529579 m!510117))

(assert (=> b!529579 m!510105))

(declare-fun m!510119 () Bool)

(assert (=> b!529579 m!510119))

(assert (=> b!529579 m!510109))

(declare-fun m!510121 () Bool)

(assert (=> b!529579 m!510121))

(declare-fun m!510123 () Bool)

(assert (=> b!529586 m!510123))

(assert (=> b!529588 m!510105))

(assert (=> b!529588 m!510105))

(declare-fun m!510125 () Bool)

(assert (=> b!529588 m!510125))

(declare-fun m!510127 () Bool)

(assert (=> start!48120 m!510127))

(declare-fun m!510129 () Bool)

(assert (=> start!48120 m!510129))

(declare-fun m!510131 () Bool)

(assert (=> b!529582 m!510131))

(declare-fun m!510133 () Bool)

(assert (=> b!529583 m!510133))

(assert (=> b!529585 m!510105))

(assert (=> b!529585 m!510105))

(declare-fun m!510135 () Bool)

(assert (=> b!529585 m!510135))

(declare-fun m!510137 () Bool)

(assert (=> b!529580 m!510137))

(check-sat (not b!529582) (not b!529583) (not b!529586) (not b!529588) (not b!529580) (not b!529589) (not start!48120) (not b!529579) (not b!529585))
(check-sat)
