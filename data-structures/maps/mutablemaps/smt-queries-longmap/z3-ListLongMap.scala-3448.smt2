; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47820 () Bool)

(assert start!47820)

(declare-fun b!526615 () Bool)

(declare-fun res!323341 () Bool)

(declare-fun e!306938 () Bool)

(assert (=> b!526615 (=> (not res!323341) (not e!306938))))

(declare-datatypes ((array!33417 0))(
  ( (array!33418 (arr!16057 (Array (_ BitVec 32) (_ BitVec 64))) (size!16421 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33417)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526615 (= res!323341 (validKeyInArray!0 (select (arr!16057 a!3235) j!176)))))

(declare-fun b!526616 () Bool)

(declare-datatypes ((Unit!16590 0))(
  ( (Unit!16591) )
))
(declare-fun e!306937 () Unit!16590)

(declare-fun Unit!16592 () Unit!16590)

(assert (=> b!526616 (= e!306937 Unit!16592)))

(declare-fun b!526617 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!306940 () Bool)

(declare-datatypes ((SeekEntryResult!4531 0))(
  ( (MissingZero!4531 (index!20336 (_ BitVec 32))) (Found!4531 (index!20337 (_ BitVec 32))) (Intermediate!4531 (undefined!5343 Bool) (index!20338 (_ BitVec 32)) (x!49331 (_ BitVec 32))) (Undefined!4531) (MissingVacant!4531 (index!20339 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33417 (_ BitVec 32)) SeekEntryResult!4531)

(assert (=> b!526617 (= e!306940 (= (seekEntryOrOpen!0 (select (arr!16057 a!3235) j!176) a!3235 mask!3524) (Found!4531 j!176)))))

(declare-fun b!526618 () Bool)

(declare-fun res!323334 () Bool)

(assert (=> b!526618 (=> (not res!323334) (not e!306938))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526618 (= res!323334 (and (= (size!16421 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16421 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16421 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526619 () Bool)

(declare-fun Unit!16593 () Unit!16590)

(assert (=> b!526619 (= e!306937 Unit!16593)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!242343 () SeekEntryResult!4531)

(declare-fun lt!242339 () (_ BitVec 32))

(declare-fun lt!242341 () Unit!16590)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33417 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16590)

(assert (=> b!526619 (= lt!242341 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242339 #b00000000000000000000000000000000 (index!20338 lt!242343) (x!49331 lt!242343) mask!3524))))

(declare-fun lt!242337 () array!33417)

(declare-fun lt!242344 () (_ BitVec 64))

(declare-fun res!323340 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33417 (_ BitVec 32)) SeekEntryResult!4531)

(assert (=> b!526619 (= res!323340 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242339 lt!242344 lt!242337 mask!3524) (Intermediate!4531 false (index!20338 lt!242343) (x!49331 lt!242343))))))

(declare-fun e!306943 () Bool)

(assert (=> b!526619 (=> (not res!323340) (not e!306943))))

(assert (=> b!526619 e!306943))

(declare-fun b!526620 () Bool)

(declare-fun e!306939 () Bool)

(declare-fun e!306942 () Bool)

(assert (=> b!526620 (= e!306939 (not e!306942))))

(declare-fun res!323343 () Bool)

(assert (=> b!526620 (=> res!323343 e!306942)))

(declare-fun lt!242342 () (_ BitVec 32))

(assert (=> b!526620 (= res!323343 (= lt!242343 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242342 lt!242344 lt!242337 mask!3524)))))

(assert (=> b!526620 (= lt!242343 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242339 (select (arr!16057 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526620 (= lt!242342 (toIndex!0 lt!242344 mask!3524))))

(assert (=> b!526620 (= lt!242344 (select (store (arr!16057 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!526620 (= lt!242339 (toIndex!0 (select (arr!16057 a!3235) j!176) mask!3524))))

(assert (=> b!526620 (= lt!242337 (array!33418 (store (arr!16057 a!3235) i!1204 k0!2280) (size!16421 a!3235)))))

(assert (=> b!526620 e!306940))

(declare-fun res!323339 () Bool)

(assert (=> b!526620 (=> (not res!323339) (not e!306940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33417 (_ BitVec 32)) Bool)

(assert (=> b!526620 (= res!323339 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242336 () Unit!16590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33417 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16590)

(assert (=> b!526620 (= lt!242336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526621 () Bool)

(assert (=> b!526621 (= e!306942 (bvsle (x!49331 lt!242343) #b01111111111111111111111111111110))))

(assert (=> b!526621 (= (index!20338 lt!242343) i!1204)))

(declare-fun lt!242340 () Unit!16590)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33417 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16590)

(assert (=> b!526621 (= lt!242340 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242339 #b00000000000000000000000000000000 (index!20338 lt!242343) (x!49331 lt!242343) mask!3524))))

(assert (=> b!526621 (and (or (= (select (arr!16057 a!3235) (index!20338 lt!242343)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16057 a!3235) (index!20338 lt!242343)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16057 a!3235) (index!20338 lt!242343)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16057 a!3235) (index!20338 lt!242343)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242345 () Unit!16590)

(assert (=> b!526621 (= lt!242345 e!306937)))

(declare-fun c!61946 () Bool)

(assert (=> b!526621 (= c!61946 (= (select (arr!16057 a!3235) (index!20338 lt!242343)) (select (arr!16057 a!3235) j!176)))))

(assert (=> b!526621 (and (bvslt (x!49331 lt!242343) #b01111111111111111111111111111110) (or (= (select (arr!16057 a!3235) (index!20338 lt!242343)) (select (arr!16057 a!3235) j!176)) (= (select (arr!16057 a!3235) (index!20338 lt!242343)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16057 a!3235) (index!20338 lt!242343)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526622 () Bool)

(assert (=> b!526622 (= e!306938 e!306939)))

(declare-fun res!323344 () Bool)

(assert (=> b!526622 (=> (not res!323344) (not e!306939))))

(declare-fun lt!242338 () SeekEntryResult!4531)

(assert (=> b!526622 (= res!323344 (or (= lt!242338 (MissingZero!4531 i!1204)) (= lt!242338 (MissingVacant!4531 i!1204))))))

(assert (=> b!526622 (= lt!242338 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!526623 () Bool)

(declare-fun res!323336 () Bool)

(assert (=> b!526623 (=> res!323336 e!306942)))

(get-info :version)

(assert (=> b!526623 (= res!323336 (or (undefined!5343 lt!242343) (not ((_ is Intermediate!4531) lt!242343))))))

(declare-fun b!526624 () Bool)

(declare-fun res!323342 () Bool)

(assert (=> b!526624 (=> (not res!323342) (not e!306938))))

(assert (=> b!526624 (= res!323342 (validKeyInArray!0 k0!2280))))

(declare-fun res!323335 () Bool)

(assert (=> start!47820 (=> (not res!323335) (not e!306938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47820 (= res!323335 (validMask!0 mask!3524))))

(assert (=> start!47820 e!306938))

(assert (=> start!47820 true))

(declare-fun array_inv!11831 (array!33417) Bool)

(assert (=> start!47820 (array_inv!11831 a!3235)))

(declare-fun b!526625 () Bool)

(declare-fun res!323338 () Bool)

(assert (=> b!526625 (=> (not res!323338) (not e!306939))))

(assert (=> b!526625 (= res!323338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526626 () Bool)

(declare-fun res!323337 () Bool)

(assert (=> b!526626 (=> (not res!323337) (not e!306939))))

(declare-datatypes ((List!10268 0))(
  ( (Nil!10265) (Cons!10264 (h!11195 (_ BitVec 64)) (t!16504 List!10268)) )
))
(declare-fun arrayNoDuplicates!0 (array!33417 (_ BitVec 32) List!10268) Bool)

(assert (=> b!526626 (= res!323337 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10265))))

(declare-fun b!526627 () Bool)

(assert (=> b!526627 (= e!306943 false)))

(declare-fun b!526628 () Bool)

(declare-fun res!323345 () Bool)

(assert (=> b!526628 (=> (not res!323345) (not e!306938))))

(declare-fun arrayContainsKey!0 (array!33417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526628 (= res!323345 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47820 res!323335) b!526618))

(assert (= (and b!526618 res!323334) b!526615))

(assert (= (and b!526615 res!323341) b!526624))

(assert (= (and b!526624 res!323342) b!526628))

(assert (= (and b!526628 res!323345) b!526622))

(assert (= (and b!526622 res!323344) b!526625))

(assert (= (and b!526625 res!323338) b!526626))

(assert (= (and b!526626 res!323337) b!526620))

(assert (= (and b!526620 res!323339) b!526617))

(assert (= (and b!526620 (not res!323343)) b!526623))

(assert (= (and b!526623 (not res!323336)) b!526621))

(assert (= (and b!526621 c!61946) b!526619))

(assert (= (and b!526621 (not c!61946)) b!526616))

(assert (= (and b!526619 res!323340) b!526627))

(declare-fun m!507375 () Bool)

(assert (=> b!526621 m!507375))

(declare-fun m!507377 () Bool)

(assert (=> b!526621 m!507377))

(declare-fun m!507379 () Bool)

(assert (=> b!526621 m!507379))

(declare-fun m!507381 () Bool)

(assert (=> b!526622 m!507381))

(declare-fun m!507383 () Bool)

(assert (=> b!526628 m!507383))

(declare-fun m!507385 () Bool)

(assert (=> b!526626 m!507385))

(declare-fun m!507387 () Bool)

(assert (=> b!526619 m!507387))

(declare-fun m!507389 () Bool)

(assert (=> b!526619 m!507389))

(declare-fun m!507391 () Bool)

(assert (=> b!526624 m!507391))

(declare-fun m!507393 () Bool)

(assert (=> b!526620 m!507393))

(declare-fun m!507395 () Bool)

(assert (=> b!526620 m!507395))

(declare-fun m!507397 () Bool)

(assert (=> b!526620 m!507397))

(declare-fun m!507399 () Bool)

(assert (=> b!526620 m!507399))

(assert (=> b!526620 m!507379))

(declare-fun m!507401 () Bool)

(assert (=> b!526620 m!507401))

(assert (=> b!526620 m!507379))

(declare-fun m!507403 () Bool)

(assert (=> b!526620 m!507403))

(assert (=> b!526620 m!507379))

(declare-fun m!507405 () Bool)

(assert (=> b!526620 m!507405))

(declare-fun m!507407 () Bool)

(assert (=> b!526620 m!507407))

(declare-fun m!507409 () Bool)

(assert (=> start!47820 m!507409))

(declare-fun m!507411 () Bool)

(assert (=> start!47820 m!507411))

(assert (=> b!526615 m!507379))

(assert (=> b!526615 m!507379))

(declare-fun m!507413 () Bool)

(assert (=> b!526615 m!507413))

(assert (=> b!526617 m!507379))

(assert (=> b!526617 m!507379))

(declare-fun m!507415 () Bool)

(assert (=> b!526617 m!507415))

(declare-fun m!507417 () Bool)

(assert (=> b!526625 m!507417))

(check-sat (not b!526628) (not b!526620) (not start!47820) (not b!526624) (not b!526621) (not b!526626) (not b!526622) (not b!526625) (not b!526619) (not b!526615) (not b!526617))
(check-sat)
