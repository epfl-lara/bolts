; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48122 () Bool)

(assert start!48122)

(declare-fun b!529612 () Bool)

(declare-fun e!308611 () Bool)

(declare-fun e!308614 () Bool)

(assert (=> b!529612 (= e!308611 e!308614)))

(declare-fun res!325474 () Bool)

(assert (=> b!529612 (=> (not res!325474) (not e!308614))))

(declare-datatypes ((SeekEntryResult!4577 0))(
  ( (MissingZero!4577 (index!20532 (_ BitVec 32))) (Found!4577 (index!20533 (_ BitVec 32))) (Intermediate!4577 (undefined!5389 Bool) (index!20534 (_ BitVec 32)) (x!49530 (_ BitVec 32))) (Undefined!4577) (MissingVacant!4577 (index!20535 (_ BitVec 32))) )
))
(declare-fun lt!244227 () SeekEntryResult!4577)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529612 (= res!325474 (or (= lt!244227 (MissingZero!4577 i!1204)) (= lt!244227 (MissingVacant!4577 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33518 0))(
  ( (array!33519 (arr!16103 (Array (_ BitVec 32) (_ BitVec 64))) (size!16467 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33518)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33518 (_ BitVec 32)) SeekEntryResult!4577)

(assert (=> b!529612 (= lt!244227 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529613 () Bool)

(declare-fun res!325475 () Bool)

(assert (=> b!529613 (=> (not res!325475) (not e!308611))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529613 (= res!325475 (validKeyInArray!0 (select (arr!16103 a!3235) j!176)))))

(declare-fun b!529614 () Bool)

(declare-fun res!325470 () Bool)

(assert (=> b!529614 (=> (not res!325470) (not e!308611))))

(assert (=> b!529614 (= res!325470 (validKeyInArray!0 k!2280))))

(declare-fun b!529615 () Bool)

(declare-fun res!325478 () Bool)

(assert (=> b!529615 (=> (not res!325478) (not e!308614))))

(declare-datatypes ((List!10314 0))(
  ( (Nil!10311) (Cons!10310 (h!11250 (_ BitVec 64)) (t!16550 List!10314)) )
))
(declare-fun arrayNoDuplicates!0 (array!33518 (_ BitVec 32) List!10314) Bool)

(assert (=> b!529615 (= res!325478 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10311))))

(declare-fun res!325472 () Bool)

(assert (=> start!48122 (=> (not res!325472) (not e!308611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48122 (= res!325472 (validMask!0 mask!3524))))

(assert (=> start!48122 e!308611))

(assert (=> start!48122 true))

(declare-fun array_inv!11877 (array!33518) Bool)

(assert (=> start!48122 (array_inv!11877 a!3235)))

(declare-fun b!529616 () Bool)

(declare-fun e!308609 () Bool)

(assert (=> b!529616 (= e!308614 (not e!308609))))

(declare-fun res!325468 () Bool)

(assert (=> b!529616 (=> res!325468 e!308609)))

(declare-fun lt!244231 () (_ BitVec 32))

(declare-fun lt!244228 () SeekEntryResult!4577)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33518 (_ BitVec 32)) SeekEntryResult!4577)

(assert (=> b!529616 (= res!325468 (= lt!244228 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244231 (select (store (arr!16103 a!3235) i!1204 k!2280) j!176) (array!33519 (store (arr!16103 a!3235) i!1204 k!2280) (size!16467 a!3235)) mask!3524)))))

(declare-fun lt!244232 () (_ BitVec 32))

(assert (=> b!529616 (= lt!244228 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244232 (select (arr!16103 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529616 (= lt!244231 (toIndex!0 (select (store (arr!16103 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!529616 (= lt!244232 (toIndex!0 (select (arr!16103 a!3235) j!176) mask!3524))))

(declare-fun e!308610 () Bool)

(assert (=> b!529616 e!308610))

(declare-fun res!325473 () Bool)

(assert (=> b!529616 (=> (not res!325473) (not e!308610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33518 (_ BitVec 32)) Bool)

(assert (=> b!529616 (= res!325473 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16758 0))(
  ( (Unit!16759) )
))
(declare-fun lt!244229 () Unit!16758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16758)

(assert (=> b!529616 (= lt!244229 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529617 () Bool)

(assert (=> b!529617 (= e!308610 (= (seekEntryOrOpen!0 (select (arr!16103 a!3235) j!176) a!3235 mask!3524) (Found!4577 j!176)))))

(declare-fun b!529618 () Bool)

(declare-fun res!325469 () Bool)

(assert (=> b!529618 (=> (not res!325469) (not e!308614))))

(assert (=> b!529618 (= res!325469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529619 () Bool)

(declare-fun res!325477 () Bool)

(assert (=> b!529619 (=> (not res!325477) (not e!308611))))

(declare-fun arrayContainsKey!0 (array!33518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529619 (= res!325477 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529620 () Bool)

(declare-fun e!308612 () Bool)

(assert (=> b!529620 (= e!308609 e!308612)))

(declare-fun res!325471 () Bool)

(assert (=> b!529620 (=> res!325471 e!308612)))

(declare-fun lt!244230 () Bool)

(assert (=> b!529620 (= res!325471 (or (and (not lt!244230) (undefined!5389 lt!244228)) (and (not lt!244230) (not (undefined!5389 lt!244228)))))))

(assert (=> b!529620 (= lt!244230 (not (is-Intermediate!4577 lt!244228)))))

(declare-fun b!529621 () Bool)

(assert (=> b!529621 (= e!308612 true)))

(assert (=> b!529621 false))

(declare-fun b!529622 () Bool)

(declare-fun res!325476 () Bool)

(assert (=> b!529622 (=> (not res!325476) (not e!308611))))

(assert (=> b!529622 (= res!325476 (and (= (size!16467 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16467 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16467 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!48122 res!325472) b!529622))

(assert (= (and b!529622 res!325476) b!529613))

(assert (= (and b!529613 res!325475) b!529614))

(assert (= (and b!529614 res!325470) b!529619))

(assert (= (and b!529619 res!325477) b!529612))

(assert (= (and b!529612 res!325474) b!529618))

(assert (= (and b!529618 res!325469) b!529615))

(assert (= (and b!529615 res!325478) b!529616))

(assert (= (and b!529616 res!325473) b!529617))

(assert (= (and b!529616 (not res!325468)) b!529620))

(assert (= (and b!529620 (not res!325471)) b!529621))

(declare-fun m!510139 () Bool)

(assert (=> b!529613 m!510139))

(assert (=> b!529613 m!510139))

(declare-fun m!510141 () Bool)

(assert (=> b!529613 m!510141))

(declare-fun m!510143 () Bool)

(assert (=> b!529619 m!510143))

(declare-fun m!510145 () Bool)

(assert (=> b!529616 m!510145))

(declare-fun m!510147 () Bool)

(assert (=> b!529616 m!510147))

(declare-fun m!510149 () Bool)

(assert (=> b!529616 m!510149))

(declare-fun m!510151 () Bool)

(assert (=> b!529616 m!510151))

(assert (=> b!529616 m!510145))

(assert (=> b!529616 m!510139))

(declare-fun m!510153 () Bool)

(assert (=> b!529616 m!510153))

(assert (=> b!529616 m!510139))

(declare-fun m!510155 () Bool)

(assert (=> b!529616 m!510155))

(assert (=> b!529616 m!510139))

(declare-fun m!510157 () Bool)

(assert (=> b!529616 m!510157))

(assert (=> b!529616 m!510145))

(declare-fun m!510159 () Bool)

(assert (=> b!529616 m!510159))

(declare-fun m!510161 () Bool)

(assert (=> b!529618 m!510161))

(assert (=> b!529617 m!510139))

(assert (=> b!529617 m!510139))

(declare-fun m!510163 () Bool)

(assert (=> b!529617 m!510163))

(declare-fun m!510165 () Bool)

(assert (=> b!529614 m!510165))

(declare-fun m!510167 () Bool)

(assert (=> b!529615 m!510167))

(declare-fun m!510169 () Bool)

(assert (=> b!529612 m!510169))

(declare-fun m!510171 () Bool)

(assert (=> start!48122 m!510171))

(declare-fun m!510173 () Bool)

(assert (=> start!48122 m!510173))

(push 1)

