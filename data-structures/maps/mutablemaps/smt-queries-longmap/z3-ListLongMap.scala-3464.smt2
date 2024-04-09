; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48126 () Bool)

(assert start!48126)

(declare-fun b!529678 () Bool)

(declare-fun res!325541 () Bool)

(declare-fun e!308648 () Bool)

(assert (=> b!529678 (=> (not res!325541) (not e!308648))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33522 0))(
  ( (array!33523 (arr!16105 (Array (_ BitVec 32) (_ BitVec 64))) (size!16469 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33522)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!529678 (= res!325541 (and (= (size!16469 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16469 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16469 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529679 () Bool)

(declare-fun e!308645 () Bool)

(assert (=> b!529679 (= e!308648 e!308645)))

(declare-fun res!325538 () Bool)

(assert (=> b!529679 (=> (not res!325538) (not e!308645))))

(declare-datatypes ((SeekEntryResult!4579 0))(
  ( (MissingZero!4579 (index!20540 (_ BitVec 32))) (Found!4579 (index!20541 (_ BitVec 32))) (Intermediate!4579 (undefined!5391 Bool) (index!20542 (_ BitVec 32)) (x!49540 (_ BitVec 32))) (Undefined!4579) (MissingVacant!4579 (index!20543 (_ BitVec 32))) )
))
(declare-fun lt!244282 () SeekEntryResult!4579)

(assert (=> b!529679 (= res!325538 (or (= lt!244282 (MissingZero!4579 i!1204)) (= lt!244282 (MissingVacant!4579 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33522 (_ BitVec 32)) SeekEntryResult!4579)

(assert (=> b!529679 (= lt!244282 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!529680 () Bool)

(declare-fun e!308646 () Bool)

(assert (=> b!529680 (= e!308646 true)))

(declare-fun lt!244286 () SeekEntryResult!4579)

(declare-fun lt!244280 () (_ BitVec 64))

(declare-fun lt!244283 () array!33522)

(assert (=> b!529680 (= lt!244286 (seekEntryOrOpen!0 lt!244280 lt!244283 mask!3524))))

(assert (=> b!529680 false))

(declare-fun b!529681 () Bool)

(declare-fun e!308647 () Bool)

(assert (=> b!529681 (= e!308645 (not e!308647))))

(declare-fun res!325534 () Bool)

(assert (=> b!529681 (=> res!325534 e!308647)))

(declare-fun lt!244279 () SeekEntryResult!4579)

(declare-fun lt!244285 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33522 (_ BitVec 32)) SeekEntryResult!4579)

(assert (=> b!529681 (= res!325534 (= lt!244279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244285 lt!244280 lt!244283 mask!3524)))))

(declare-fun lt!244281 () (_ BitVec 32))

(assert (=> b!529681 (= lt!244279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244281 (select (arr!16105 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529681 (= lt!244285 (toIndex!0 lt!244280 mask!3524))))

(assert (=> b!529681 (= lt!244280 (select (store (arr!16105 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!529681 (= lt!244281 (toIndex!0 (select (arr!16105 a!3235) j!176) mask!3524))))

(assert (=> b!529681 (= lt!244283 (array!33523 (store (arr!16105 a!3235) i!1204 k0!2280) (size!16469 a!3235)))))

(declare-fun e!308650 () Bool)

(assert (=> b!529681 e!308650))

(declare-fun res!325543 () Bool)

(assert (=> b!529681 (=> (not res!325543) (not e!308650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33522 (_ BitVec 32)) Bool)

(assert (=> b!529681 (= res!325543 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16762 0))(
  ( (Unit!16763) )
))
(declare-fun lt!244278 () Unit!16762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16762)

(assert (=> b!529681 (= lt!244278 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529682 () Bool)

(declare-fun res!325539 () Bool)

(assert (=> b!529682 (=> (not res!325539) (not e!308645))))

(assert (=> b!529682 (= res!325539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529683 () Bool)

(assert (=> b!529683 (= e!308650 (= (seekEntryOrOpen!0 (select (arr!16105 a!3235) j!176) a!3235 mask!3524) (Found!4579 j!176)))))

(declare-fun b!529684 () Bool)

(declare-fun res!325536 () Bool)

(assert (=> b!529684 (=> (not res!325536) (not e!308648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529684 (= res!325536 (validKeyInArray!0 (select (arr!16105 a!3235) j!176)))))

(declare-fun b!529685 () Bool)

(declare-fun res!325542 () Bool)

(assert (=> b!529685 (=> (not res!325542) (not e!308648))))

(declare-fun arrayContainsKey!0 (array!33522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529685 (= res!325542 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529686 () Bool)

(declare-fun res!325535 () Bool)

(assert (=> b!529686 (=> (not res!325535) (not e!308648))))

(assert (=> b!529686 (= res!325535 (validKeyInArray!0 k0!2280))))

(declare-fun res!325537 () Bool)

(assert (=> start!48126 (=> (not res!325537) (not e!308648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48126 (= res!325537 (validMask!0 mask!3524))))

(assert (=> start!48126 e!308648))

(assert (=> start!48126 true))

(declare-fun array_inv!11879 (array!33522) Bool)

(assert (=> start!48126 (array_inv!11879 a!3235)))

(declare-fun b!529687 () Bool)

(assert (=> b!529687 (= e!308647 e!308646)))

(declare-fun res!325540 () Bool)

(assert (=> b!529687 (=> res!325540 e!308646)))

(declare-fun lt!244284 () Bool)

(assert (=> b!529687 (= res!325540 (or (and (not lt!244284) (undefined!5391 lt!244279)) (and (not lt!244284) (not (undefined!5391 lt!244279)))))))

(get-info :version)

(assert (=> b!529687 (= lt!244284 (not ((_ is Intermediate!4579) lt!244279)))))

(declare-fun b!529688 () Bool)

(declare-fun res!325544 () Bool)

(assert (=> b!529688 (=> (not res!325544) (not e!308645))))

(declare-datatypes ((List!10316 0))(
  ( (Nil!10313) (Cons!10312 (h!11252 (_ BitVec 64)) (t!16552 List!10316)) )
))
(declare-fun arrayNoDuplicates!0 (array!33522 (_ BitVec 32) List!10316) Bool)

(assert (=> b!529688 (= res!325544 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10313))))

(assert (= (and start!48126 res!325537) b!529678))

(assert (= (and b!529678 res!325541) b!529684))

(assert (= (and b!529684 res!325536) b!529686))

(assert (= (and b!529686 res!325535) b!529685))

(assert (= (and b!529685 res!325542) b!529679))

(assert (= (and b!529679 res!325538) b!529682))

(assert (= (and b!529682 res!325539) b!529688))

(assert (= (and b!529688 res!325544) b!529681))

(assert (= (and b!529681 res!325543) b!529683))

(assert (= (and b!529681 (not res!325534)) b!529687))

(assert (= (and b!529687 (not res!325540)) b!529680))

(declare-fun m!510213 () Bool)

(assert (=> b!529688 m!510213))

(declare-fun m!510215 () Bool)

(assert (=> b!529681 m!510215))

(declare-fun m!510217 () Bool)

(assert (=> b!529681 m!510217))

(declare-fun m!510219 () Bool)

(assert (=> b!529681 m!510219))

(declare-fun m!510221 () Bool)

(assert (=> b!529681 m!510221))

(declare-fun m!510223 () Bool)

(assert (=> b!529681 m!510223))

(declare-fun m!510225 () Bool)

(assert (=> b!529681 m!510225))

(assert (=> b!529681 m!510223))

(declare-fun m!510227 () Bool)

(assert (=> b!529681 m!510227))

(assert (=> b!529681 m!510223))

(declare-fun m!510229 () Bool)

(assert (=> b!529681 m!510229))

(declare-fun m!510231 () Bool)

(assert (=> b!529681 m!510231))

(declare-fun m!510233 () Bool)

(assert (=> b!529679 m!510233))

(declare-fun m!510235 () Bool)

(assert (=> start!48126 m!510235))

(declare-fun m!510237 () Bool)

(assert (=> start!48126 m!510237))

(declare-fun m!510239 () Bool)

(assert (=> b!529685 m!510239))

(assert (=> b!529683 m!510223))

(assert (=> b!529683 m!510223))

(declare-fun m!510241 () Bool)

(assert (=> b!529683 m!510241))

(declare-fun m!510243 () Bool)

(assert (=> b!529680 m!510243))

(declare-fun m!510245 () Bool)

(assert (=> b!529682 m!510245))

(assert (=> b!529684 m!510223))

(assert (=> b!529684 m!510223))

(declare-fun m!510247 () Bool)

(assert (=> b!529684 m!510247))

(declare-fun m!510249 () Bool)

(assert (=> b!529686 m!510249))

(check-sat (not b!529685) (not b!529686) (not b!529681) (not start!48126) (not b!529682) (not b!529688) (not b!529684) (not b!529679) (not b!529683) (not b!529680))
(check-sat)
