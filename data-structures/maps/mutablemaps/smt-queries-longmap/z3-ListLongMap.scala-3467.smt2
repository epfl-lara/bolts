; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48144 () Bool)

(assert start!48144)

(declare-fun b!529975 () Bool)

(declare-fun res!325831 () Bool)

(declare-fun e!308808 () Bool)

(assert (=> b!529975 (=> (not res!325831) (not e!308808))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33540 0))(
  ( (array!33541 (arr!16114 (Array (_ BitVec 32) (_ BitVec 64))) (size!16478 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33540)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!529975 (= res!325831 (and (= (size!16478 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16478 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16478 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529976 () Bool)

(declare-fun e!308810 () Bool)

(assert (=> b!529976 (= e!308808 e!308810)))

(declare-fun res!325835 () Bool)

(assert (=> b!529976 (=> (not res!325835) (not e!308810))))

(declare-datatypes ((SeekEntryResult!4588 0))(
  ( (MissingZero!4588 (index!20576 (_ BitVec 32))) (Found!4588 (index!20577 (_ BitVec 32))) (Intermediate!4588 (undefined!5400 Bool) (index!20578 (_ BitVec 32)) (x!49573 (_ BitVec 32))) (Undefined!4588) (MissingVacant!4588 (index!20579 (_ BitVec 32))) )
))
(declare-fun lt!244521 () SeekEntryResult!4588)

(assert (=> b!529976 (= res!325835 (or (= lt!244521 (MissingZero!4588 i!1204)) (= lt!244521 (MissingVacant!4588 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33540 (_ BitVec 32)) SeekEntryResult!4588)

(assert (=> b!529976 (= lt!244521 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!529977 () Bool)

(declare-fun res!325840 () Bool)

(assert (=> b!529977 (=> (not res!325840) (not e!308808))))

(declare-fun arrayContainsKey!0 (array!33540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529977 (= res!325840 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!325834 () Bool)

(assert (=> start!48144 (=> (not res!325834) (not e!308808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48144 (= res!325834 (validMask!0 mask!3524))))

(assert (=> start!48144 e!308808))

(assert (=> start!48144 true))

(declare-fun array_inv!11888 (array!33540) Bool)

(assert (=> start!48144 (array_inv!11888 a!3235)))

(declare-fun b!529978 () Bool)

(declare-fun res!325837 () Bool)

(assert (=> b!529978 (=> (not res!325837) (not e!308808))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529978 (= res!325837 (validKeyInArray!0 (select (arr!16114 a!3235) j!176)))))

(declare-fun b!529979 () Bool)

(declare-fun e!308811 () Bool)

(assert (=> b!529979 (= e!308811 (= (seekEntryOrOpen!0 (select (arr!16114 a!3235) j!176) a!3235 mask!3524) (Found!4588 j!176)))))

(declare-fun b!529980 () Bool)

(declare-fun res!325841 () Bool)

(assert (=> b!529980 (=> (not res!325841) (not e!308808))))

(assert (=> b!529980 (= res!325841 (validKeyInArray!0 k0!2280))))

(declare-fun b!529981 () Bool)

(declare-fun e!308812 () Bool)

(assert (=> b!529981 (= e!308812 true)))

(declare-fun lt!244525 () array!33540)

(declare-fun lt!244528 () (_ BitVec 64))

(declare-fun lt!244524 () SeekEntryResult!4588)

(assert (=> b!529981 (= lt!244524 (seekEntryOrOpen!0 lt!244528 lt!244525 mask!3524))))

(assert (=> b!529981 false))

(declare-fun b!529982 () Bool)

(declare-fun res!325839 () Bool)

(assert (=> b!529982 (=> (not res!325839) (not e!308810))))

(declare-datatypes ((List!10325 0))(
  ( (Nil!10322) (Cons!10321 (h!11261 (_ BitVec 64)) (t!16561 List!10325)) )
))
(declare-fun arrayNoDuplicates!0 (array!33540 (_ BitVec 32) List!10325) Bool)

(assert (=> b!529982 (= res!325839 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10322))))

(declare-fun b!529983 () Bool)

(declare-fun res!325833 () Bool)

(assert (=> b!529983 (=> (not res!325833) (not e!308810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33540 (_ BitVec 32)) Bool)

(assert (=> b!529983 (= res!325833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529984 () Bool)

(declare-fun e!308809 () Bool)

(assert (=> b!529984 (= e!308810 (not e!308809))))

(declare-fun res!325832 () Bool)

(assert (=> b!529984 (=> res!325832 e!308809)))

(declare-fun lt!244529 () SeekEntryResult!4588)

(declare-fun lt!244522 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33540 (_ BitVec 32)) SeekEntryResult!4588)

(assert (=> b!529984 (= res!325832 (= lt!244529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244522 lt!244528 lt!244525 mask!3524)))))

(declare-fun lt!244526 () (_ BitVec 32))

(assert (=> b!529984 (= lt!244529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244526 (select (arr!16114 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529984 (= lt!244522 (toIndex!0 lt!244528 mask!3524))))

(assert (=> b!529984 (= lt!244528 (select (store (arr!16114 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!529984 (= lt!244526 (toIndex!0 (select (arr!16114 a!3235) j!176) mask!3524))))

(assert (=> b!529984 (= lt!244525 (array!33541 (store (arr!16114 a!3235) i!1204 k0!2280) (size!16478 a!3235)))))

(assert (=> b!529984 e!308811))

(declare-fun res!325838 () Bool)

(assert (=> b!529984 (=> (not res!325838) (not e!308811))))

(assert (=> b!529984 (= res!325838 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16780 0))(
  ( (Unit!16781) )
))
(declare-fun lt!244523 () Unit!16780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16780)

(assert (=> b!529984 (= lt!244523 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529985 () Bool)

(assert (=> b!529985 (= e!308809 e!308812)))

(declare-fun res!325836 () Bool)

(assert (=> b!529985 (=> res!325836 e!308812)))

(declare-fun lt!244527 () Bool)

(assert (=> b!529985 (= res!325836 (or (and (not lt!244527) (undefined!5400 lt!244529)) (and (not lt!244527) (not (undefined!5400 lt!244529)))))))

(get-info :version)

(assert (=> b!529985 (= lt!244527 (not ((_ is Intermediate!4588) lt!244529)))))

(assert (= (and start!48144 res!325834) b!529975))

(assert (= (and b!529975 res!325831) b!529978))

(assert (= (and b!529978 res!325837) b!529980))

(assert (= (and b!529980 res!325841) b!529977))

(assert (= (and b!529977 res!325840) b!529976))

(assert (= (and b!529976 res!325835) b!529983))

(assert (= (and b!529983 res!325833) b!529982))

(assert (= (and b!529982 res!325839) b!529984))

(assert (= (and b!529984 res!325838) b!529979))

(assert (= (and b!529984 (not res!325832)) b!529985))

(assert (= (and b!529985 (not res!325836)) b!529981))

(declare-fun m!510555 () Bool)

(assert (=> b!529978 m!510555))

(assert (=> b!529978 m!510555))

(declare-fun m!510557 () Bool)

(assert (=> b!529978 m!510557))

(declare-fun m!510559 () Bool)

(assert (=> b!529976 m!510559))

(assert (=> b!529984 m!510555))

(declare-fun m!510561 () Bool)

(assert (=> b!529984 m!510561))

(declare-fun m!510563 () Bool)

(assert (=> b!529984 m!510563))

(declare-fun m!510565 () Bool)

(assert (=> b!529984 m!510565))

(declare-fun m!510567 () Bool)

(assert (=> b!529984 m!510567))

(declare-fun m!510569 () Bool)

(assert (=> b!529984 m!510569))

(assert (=> b!529984 m!510555))

(declare-fun m!510571 () Bool)

(assert (=> b!529984 m!510571))

(assert (=> b!529984 m!510555))

(declare-fun m!510573 () Bool)

(assert (=> b!529984 m!510573))

(declare-fun m!510575 () Bool)

(assert (=> b!529984 m!510575))

(declare-fun m!510577 () Bool)

(assert (=> b!529981 m!510577))

(declare-fun m!510579 () Bool)

(assert (=> b!529977 m!510579))

(declare-fun m!510581 () Bool)

(assert (=> b!529980 m!510581))

(declare-fun m!510583 () Bool)

(assert (=> start!48144 m!510583))

(declare-fun m!510585 () Bool)

(assert (=> start!48144 m!510585))

(declare-fun m!510587 () Bool)

(assert (=> b!529983 m!510587))

(assert (=> b!529979 m!510555))

(assert (=> b!529979 m!510555))

(declare-fun m!510589 () Bool)

(assert (=> b!529979 m!510589))

(declare-fun m!510591 () Bool)

(assert (=> b!529982 m!510591))

(check-sat (not b!529977) (not b!529981) (not b!529976) (not b!529980) (not b!529983) (not b!529982) (not b!529979) (not b!529984) (not start!48144) (not b!529978))
(check-sat)
