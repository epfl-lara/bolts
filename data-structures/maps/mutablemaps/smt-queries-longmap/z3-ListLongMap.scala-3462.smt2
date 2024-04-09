; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48114 () Bool)

(assert start!48114)

(declare-fun b!529480 () Bool)

(declare-fun e!308542 () Bool)

(declare-fun e!308538 () Bool)

(assert (=> b!529480 (= e!308542 e!308538)))

(declare-fun res!325341 () Bool)

(assert (=> b!529480 (=> (not res!325341) (not e!308538))))

(declare-datatypes ((SeekEntryResult!4573 0))(
  ( (MissingZero!4573 (index!20516 (_ BitVec 32))) (Found!4573 (index!20517 (_ BitVec 32))) (Intermediate!4573 (undefined!5385 Bool) (index!20518 (_ BitVec 32)) (x!49518 (_ BitVec 32))) (Undefined!4573) (MissingVacant!4573 (index!20519 (_ BitVec 32))) )
))
(declare-fun lt!244156 () SeekEntryResult!4573)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529480 (= res!325341 (or (= lt!244156 (MissingZero!4573 i!1204)) (= lt!244156 (MissingVacant!4573 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33510 0))(
  ( (array!33511 (arr!16099 (Array (_ BitVec 32) (_ BitVec 64))) (size!16463 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33510)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33510 (_ BitVec 32)) SeekEntryResult!4573)

(assert (=> b!529480 (= lt!244156 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!529481 () Bool)

(declare-fun res!325338 () Bool)

(assert (=> b!529481 (=> (not res!325338) (not e!308538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33510 (_ BitVec 32)) Bool)

(assert (=> b!529481 (= res!325338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529482 () Bool)

(declare-fun e!308541 () Bool)

(assert (=> b!529482 (= e!308541 true)))

(assert (=> b!529482 false))

(declare-fun b!529483 () Bool)

(declare-fun e!308540 () Bool)

(assert (=> b!529483 (= e!308538 (not e!308540))))

(declare-fun res!325345 () Bool)

(assert (=> b!529483 (=> res!325345 e!308540)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!244155 () SeekEntryResult!4573)

(declare-fun lt!244159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33510 (_ BitVec 32)) SeekEntryResult!4573)

(assert (=> b!529483 (= res!325345 (= lt!244155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244159 (select (store (arr!16099 a!3235) i!1204 k0!2280) j!176) (array!33511 (store (arr!16099 a!3235) i!1204 k0!2280) (size!16463 a!3235)) mask!3524)))))

(declare-fun lt!244160 () (_ BitVec 32))

(assert (=> b!529483 (= lt!244155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244160 (select (arr!16099 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529483 (= lt!244159 (toIndex!0 (select (store (arr!16099 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!529483 (= lt!244160 (toIndex!0 (select (arr!16099 a!3235) j!176) mask!3524))))

(declare-fun e!308537 () Bool)

(assert (=> b!529483 e!308537))

(declare-fun res!325342 () Bool)

(assert (=> b!529483 (=> (not res!325342) (not e!308537))))

(assert (=> b!529483 (= res!325342 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16750 0))(
  ( (Unit!16751) )
))
(declare-fun lt!244158 () Unit!16750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16750)

(assert (=> b!529483 (= lt!244158 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!325336 () Bool)

(assert (=> start!48114 (=> (not res!325336) (not e!308542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48114 (= res!325336 (validMask!0 mask!3524))))

(assert (=> start!48114 e!308542))

(assert (=> start!48114 true))

(declare-fun array_inv!11873 (array!33510) Bool)

(assert (=> start!48114 (array_inv!11873 a!3235)))

(declare-fun b!529484 () Bool)

(assert (=> b!529484 (= e!308537 (= (seekEntryOrOpen!0 (select (arr!16099 a!3235) j!176) a!3235 mask!3524) (Found!4573 j!176)))))

(declare-fun b!529485 () Bool)

(assert (=> b!529485 (= e!308540 e!308541)))

(declare-fun res!325343 () Bool)

(assert (=> b!529485 (=> res!325343 e!308541)))

(declare-fun lt!244157 () Bool)

(assert (=> b!529485 (= res!325343 (or (and (not lt!244157) (undefined!5385 lt!244155)) (and (not lt!244157) (not (undefined!5385 lt!244155)))))))

(get-info :version)

(assert (=> b!529485 (= lt!244157 (not ((_ is Intermediate!4573) lt!244155)))))

(declare-fun b!529486 () Bool)

(declare-fun res!325339 () Bool)

(assert (=> b!529486 (=> (not res!325339) (not e!308538))))

(declare-datatypes ((List!10310 0))(
  ( (Nil!10307) (Cons!10306 (h!11246 (_ BitVec 64)) (t!16546 List!10310)) )
))
(declare-fun arrayNoDuplicates!0 (array!33510 (_ BitVec 32) List!10310) Bool)

(assert (=> b!529486 (= res!325339 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10307))))

(declare-fun b!529487 () Bool)

(declare-fun res!325337 () Bool)

(assert (=> b!529487 (=> (not res!325337) (not e!308542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529487 (= res!325337 (validKeyInArray!0 k0!2280))))

(declare-fun b!529488 () Bool)

(declare-fun res!325344 () Bool)

(assert (=> b!529488 (=> (not res!325344) (not e!308542))))

(assert (=> b!529488 (= res!325344 (validKeyInArray!0 (select (arr!16099 a!3235) j!176)))))

(declare-fun b!529489 () Bool)

(declare-fun res!325340 () Bool)

(assert (=> b!529489 (=> (not res!325340) (not e!308542))))

(declare-fun arrayContainsKey!0 (array!33510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529489 (= res!325340 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529490 () Bool)

(declare-fun res!325346 () Bool)

(assert (=> b!529490 (=> (not res!325346) (not e!308542))))

(assert (=> b!529490 (= res!325346 (and (= (size!16463 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16463 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16463 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!48114 res!325336) b!529490))

(assert (= (and b!529490 res!325346) b!529488))

(assert (= (and b!529488 res!325344) b!529487))

(assert (= (and b!529487 res!325337) b!529489))

(assert (= (and b!529489 res!325340) b!529480))

(assert (= (and b!529480 res!325341) b!529481))

(assert (= (and b!529481 res!325338) b!529486))

(assert (= (and b!529486 res!325339) b!529483))

(assert (= (and b!529483 res!325342) b!529484))

(assert (= (and b!529483 (not res!325345)) b!529485))

(assert (= (and b!529485 (not res!325343)) b!529482))

(declare-fun m!509995 () Bool)

(assert (=> b!529481 m!509995))

(declare-fun m!509997 () Bool)

(assert (=> b!529488 m!509997))

(assert (=> b!529488 m!509997))

(declare-fun m!509999 () Bool)

(assert (=> b!529488 m!509999))

(declare-fun m!510001 () Bool)

(assert (=> b!529486 m!510001))

(declare-fun m!510003 () Bool)

(assert (=> b!529487 m!510003))

(declare-fun m!510005 () Bool)

(assert (=> b!529483 m!510005))

(declare-fun m!510007 () Bool)

(assert (=> b!529483 m!510007))

(assert (=> b!529483 m!510007))

(declare-fun m!510009 () Bool)

(assert (=> b!529483 m!510009))

(assert (=> b!529483 m!509997))

(declare-fun m!510011 () Bool)

(assert (=> b!529483 m!510011))

(assert (=> b!529483 m!509997))

(declare-fun m!510013 () Bool)

(assert (=> b!529483 m!510013))

(assert (=> b!529483 m!510007))

(declare-fun m!510015 () Bool)

(assert (=> b!529483 m!510015))

(declare-fun m!510017 () Bool)

(assert (=> b!529483 m!510017))

(assert (=> b!529483 m!509997))

(declare-fun m!510019 () Bool)

(assert (=> b!529483 m!510019))

(declare-fun m!510021 () Bool)

(assert (=> start!48114 m!510021))

(declare-fun m!510023 () Bool)

(assert (=> start!48114 m!510023))

(declare-fun m!510025 () Bool)

(assert (=> b!529489 m!510025))

(declare-fun m!510027 () Bool)

(assert (=> b!529480 m!510027))

(assert (=> b!529484 m!509997))

(assert (=> b!529484 m!509997))

(declare-fun m!510029 () Bool)

(assert (=> b!529484 m!510029))

(check-sat (not b!529481) (not b!529483) (not b!529484) (not b!529488) (not start!48114) (not b!529487) (not b!529489) (not b!529486) (not b!529480))
(check-sat)
