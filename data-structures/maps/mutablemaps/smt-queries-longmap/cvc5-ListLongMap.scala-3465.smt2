; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48130 () Bool)

(assert start!48130)

(declare-fun b!529744 () Bool)

(declare-fun res!325603 () Bool)

(declare-fun e!308686 () Bool)

(assert (=> b!529744 (=> (not res!325603) (not e!308686))))

(declare-datatypes ((array!33526 0))(
  ( (array!33527 (arr!16107 (Array (_ BitVec 32) (_ BitVec 64))) (size!16471 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33526)

(declare-datatypes ((List!10318 0))(
  ( (Nil!10315) (Cons!10314 (h!11254 (_ BitVec 64)) (t!16554 List!10318)) )
))
(declare-fun arrayNoDuplicates!0 (array!33526 (_ BitVec 32) List!10318) Bool)

(assert (=> b!529744 (= res!325603 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10315))))

(declare-fun b!529745 () Bool)

(declare-fun res!325607 () Bool)

(declare-fun e!308684 () Bool)

(assert (=> b!529745 (=> (not res!325607) (not e!308684))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!529745 (= res!325607 (and (= (size!16471 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16471 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16471 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529746 () Bool)

(declare-fun res!325602 () Bool)

(assert (=> b!529746 (=> (not res!325602) (not e!308684))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529746 (= res!325602 (validKeyInArray!0 k!2280))))

(declare-fun res!325601 () Bool)

(assert (=> start!48130 (=> (not res!325601) (not e!308684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48130 (= res!325601 (validMask!0 mask!3524))))

(assert (=> start!48130 e!308684))

(assert (=> start!48130 true))

(declare-fun array_inv!11881 (array!33526) Bool)

(assert (=> start!48130 (array_inv!11881 a!3235)))

(declare-fun b!529747 () Bool)

(assert (=> b!529747 (= e!308684 e!308686)))

(declare-fun res!325609 () Bool)

(assert (=> b!529747 (=> (not res!325609) (not e!308686))))

(declare-datatypes ((SeekEntryResult!4581 0))(
  ( (MissingZero!4581 (index!20548 (_ BitVec 32))) (Found!4581 (index!20549 (_ BitVec 32))) (Intermediate!4581 (undefined!5393 Bool) (index!20550 (_ BitVec 32)) (x!49550 (_ BitVec 32))) (Undefined!4581) (MissingVacant!4581 (index!20551 (_ BitVec 32))) )
))
(declare-fun lt!244339 () SeekEntryResult!4581)

(assert (=> b!529747 (= res!325609 (or (= lt!244339 (MissingZero!4581 i!1204)) (= lt!244339 (MissingVacant!4581 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33526 (_ BitVec 32)) SeekEntryResult!4581)

(assert (=> b!529747 (= lt!244339 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529748 () Bool)

(declare-fun res!325606 () Bool)

(assert (=> b!529748 (=> (not res!325606) (not e!308684))))

(assert (=> b!529748 (= res!325606 (validKeyInArray!0 (select (arr!16107 a!3235) j!176)))))

(declare-fun b!529749 () Bool)

(declare-fun e!308681 () Bool)

(declare-fun e!308682 () Bool)

(assert (=> b!529749 (= e!308681 e!308682)))

(declare-fun res!325600 () Bool)

(assert (=> b!529749 (=> res!325600 e!308682)))

(declare-fun lt!244337 () Bool)

(declare-fun lt!244336 () SeekEntryResult!4581)

(assert (=> b!529749 (= res!325600 (or (and (not lt!244337) (undefined!5393 lt!244336)) (and (not lt!244337) (not (undefined!5393 lt!244336)))))))

(assert (=> b!529749 (= lt!244337 (not (is-Intermediate!4581 lt!244336)))))

(declare-fun e!308683 () Bool)

(declare-fun b!529750 () Bool)

(assert (=> b!529750 (= e!308683 (= (seekEntryOrOpen!0 (select (arr!16107 a!3235) j!176) a!3235 mask!3524) (Found!4581 j!176)))))

(declare-fun b!529751 () Bool)

(assert (=> b!529751 (= e!308682 true)))

(declare-fun lt!244333 () SeekEntryResult!4581)

(declare-fun lt!244334 () array!33526)

(declare-fun lt!244335 () (_ BitVec 64))

(assert (=> b!529751 (= lt!244333 (seekEntryOrOpen!0 lt!244335 lt!244334 mask!3524))))

(assert (=> b!529751 false))

(declare-fun b!529752 () Bool)

(declare-fun res!325610 () Bool)

(assert (=> b!529752 (=> (not res!325610) (not e!308686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33526 (_ BitVec 32)) Bool)

(assert (=> b!529752 (= res!325610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529753 () Bool)

(declare-fun res!325604 () Bool)

(assert (=> b!529753 (=> (not res!325604) (not e!308684))))

(declare-fun arrayContainsKey!0 (array!33526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529753 (= res!325604 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529754 () Bool)

(assert (=> b!529754 (= e!308686 (not e!308681))))

(declare-fun res!325608 () Bool)

(assert (=> b!529754 (=> res!325608 e!308681)))

(declare-fun lt!244332 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33526 (_ BitVec 32)) SeekEntryResult!4581)

(assert (=> b!529754 (= res!325608 (= lt!244336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244332 lt!244335 lt!244334 mask!3524)))))

(declare-fun lt!244340 () (_ BitVec 32))

(assert (=> b!529754 (= lt!244336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244340 (select (arr!16107 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529754 (= lt!244332 (toIndex!0 lt!244335 mask!3524))))

(assert (=> b!529754 (= lt!244335 (select (store (arr!16107 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!529754 (= lt!244340 (toIndex!0 (select (arr!16107 a!3235) j!176) mask!3524))))

(assert (=> b!529754 (= lt!244334 (array!33527 (store (arr!16107 a!3235) i!1204 k!2280) (size!16471 a!3235)))))

(assert (=> b!529754 e!308683))

(declare-fun res!325605 () Bool)

(assert (=> b!529754 (=> (not res!325605) (not e!308683))))

(assert (=> b!529754 (= res!325605 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16766 0))(
  ( (Unit!16767) )
))
(declare-fun lt!244338 () Unit!16766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33526 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16766)

(assert (=> b!529754 (= lt!244338 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!48130 res!325601) b!529745))

(assert (= (and b!529745 res!325607) b!529748))

(assert (= (and b!529748 res!325606) b!529746))

(assert (= (and b!529746 res!325602) b!529753))

(assert (= (and b!529753 res!325604) b!529747))

(assert (= (and b!529747 res!325609) b!529752))

(assert (= (and b!529752 res!325610) b!529744))

(assert (= (and b!529744 res!325603) b!529754))

(assert (= (and b!529754 res!325605) b!529750))

(assert (= (and b!529754 (not res!325608)) b!529749))

(assert (= (and b!529749 (not res!325600)) b!529751))

(declare-fun m!510289 () Bool)

(assert (=> start!48130 m!510289))

(declare-fun m!510291 () Bool)

(assert (=> start!48130 m!510291))

(declare-fun m!510293 () Bool)

(assert (=> b!529746 m!510293))

(declare-fun m!510295 () Bool)

(assert (=> b!529753 m!510295))

(declare-fun m!510297 () Bool)

(assert (=> b!529748 m!510297))

(assert (=> b!529748 m!510297))

(declare-fun m!510299 () Bool)

(assert (=> b!529748 m!510299))

(declare-fun m!510301 () Bool)

(assert (=> b!529754 m!510301))

(declare-fun m!510303 () Bool)

(assert (=> b!529754 m!510303))

(declare-fun m!510305 () Bool)

(assert (=> b!529754 m!510305))

(declare-fun m!510307 () Bool)

(assert (=> b!529754 m!510307))

(declare-fun m!510309 () Bool)

(assert (=> b!529754 m!510309))

(assert (=> b!529754 m!510297))

(declare-fun m!510311 () Bool)

(assert (=> b!529754 m!510311))

(assert (=> b!529754 m!510297))

(declare-fun m!510313 () Bool)

(assert (=> b!529754 m!510313))

(assert (=> b!529754 m!510297))

(declare-fun m!510315 () Bool)

(assert (=> b!529754 m!510315))

(declare-fun m!510317 () Bool)

(assert (=> b!529751 m!510317))

(declare-fun m!510319 () Bool)

(assert (=> b!529744 m!510319))

(declare-fun m!510321 () Bool)

(assert (=> b!529752 m!510321))

(declare-fun m!510323 () Bool)

(assert (=> b!529747 m!510323))

(assert (=> b!529750 m!510297))

(assert (=> b!529750 m!510297))

(declare-fun m!510325 () Bool)

(assert (=> b!529750 m!510325))

(push 1)

