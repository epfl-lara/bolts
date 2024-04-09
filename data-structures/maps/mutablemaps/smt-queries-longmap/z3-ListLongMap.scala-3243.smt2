; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45276 () Bool)

(assert start!45276)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!291366 () Bool)

(declare-datatypes ((array!32124 0))(
  ( (array!32125 (arr!15442 (Array (_ BitVec 32) (_ BitVec 64))) (size!15806 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32124)

(declare-fun b!497018 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3916 0))(
  ( (MissingZero!3916 (index!17843 (_ BitVec 32))) (Found!3916 (index!17844 (_ BitVec 32))) (Intermediate!3916 (undefined!4728 Bool) (index!17845 (_ BitVec 32)) (x!46923 (_ BitVec 32))) (Undefined!3916) (MissingVacant!3916 (index!17846 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32124 (_ BitVec 32)) SeekEntryResult!3916)

(assert (=> b!497018 (= e!291366 (= (seekEntryOrOpen!0 (select (arr!15442 a!3235) j!176) a!3235 mask!3524) (Found!3916 j!176)))))

(declare-fun b!497019 () Bool)

(declare-fun res!299555 () Bool)

(declare-fun e!291368 () Bool)

(assert (=> b!497019 (=> (not res!299555) (not e!291368))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497019 (= res!299555 (validKeyInArray!0 k0!2280))))

(declare-fun b!497020 () Bool)

(declare-fun res!299560 () Bool)

(declare-fun e!291369 () Bool)

(assert (=> b!497020 (=> (not res!299560) (not e!291369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32124 (_ BitVec 32)) Bool)

(assert (=> b!497020 (= res!299560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497021 () Bool)

(declare-fun res!299559 () Bool)

(declare-fun e!291370 () Bool)

(assert (=> b!497021 (=> res!299559 e!291370)))

(declare-fun lt!225058 () SeekEntryResult!3916)

(get-info :version)

(assert (=> b!497021 (= res!299559 (or (undefined!4728 lt!225058) (not ((_ is Intermediate!3916) lt!225058))))))

(declare-fun b!497022 () Bool)

(assert (=> b!497022 (= e!291368 e!291369)))

(declare-fun res!299556 () Bool)

(assert (=> b!497022 (=> (not res!299556) (not e!291369))))

(declare-fun lt!225056 () SeekEntryResult!3916)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497022 (= res!299556 (or (= lt!225056 (MissingZero!3916 i!1204)) (= lt!225056 (MissingVacant!3916 i!1204))))))

(assert (=> b!497022 (= lt!225056 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!497023 () Bool)

(declare-fun res!299561 () Bool)

(assert (=> b!497023 (=> (not res!299561) (not e!291368))))

(assert (=> b!497023 (= res!299561 (validKeyInArray!0 (select (arr!15442 a!3235) j!176)))))

(declare-fun b!497024 () Bool)

(declare-fun res!299563 () Bool)

(assert (=> b!497024 (=> (not res!299563) (not e!291368))))

(declare-fun arrayContainsKey!0 (array!32124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497024 (= res!299563 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497025 () Bool)

(declare-fun res!299558 () Bool)

(assert (=> b!497025 (=> (not res!299558) (not e!291369))))

(declare-datatypes ((List!9653 0))(
  ( (Nil!9650) (Cons!9649 (h!10520 (_ BitVec 64)) (t!15889 List!9653)) )
))
(declare-fun arrayNoDuplicates!0 (array!32124 (_ BitVec 32) List!9653) Bool)

(assert (=> b!497025 (= res!299558 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9650))))

(declare-fun res!299557 () Bool)

(assert (=> start!45276 (=> (not res!299557) (not e!291368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45276 (= res!299557 (validMask!0 mask!3524))))

(assert (=> start!45276 e!291368))

(assert (=> start!45276 true))

(declare-fun array_inv!11216 (array!32124) Bool)

(assert (=> start!45276 (array_inv!11216 a!3235)))

(declare-fun b!497017 () Bool)

(declare-fun res!299562 () Bool)

(assert (=> b!497017 (=> (not res!299562) (not e!291368))))

(assert (=> b!497017 (= res!299562 (and (= (size!15806 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15806 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15806 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497026 () Bool)

(assert (=> b!497026 (= e!291369 (not e!291370))))

(declare-fun res!299554 () Bool)

(assert (=> b!497026 (=> res!299554 e!291370)))

(declare-fun lt!225059 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32124 (_ BitVec 32)) SeekEntryResult!3916)

(assert (=> b!497026 (= res!299554 (= lt!225058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225059 (select (store (arr!15442 a!3235) i!1204 k0!2280) j!176) (array!32125 (store (arr!15442 a!3235) i!1204 k0!2280) (size!15806 a!3235)) mask!3524)))))

(declare-fun lt!225055 () (_ BitVec 32))

(assert (=> b!497026 (= lt!225058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225055 (select (arr!15442 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497026 (= lt!225059 (toIndex!0 (select (store (arr!15442 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!497026 (= lt!225055 (toIndex!0 (select (arr!15442 a!3235) j!176) mask!3524))))

(assert (=> b!497026 e!291366))

(declare-fun res!299564 () Bool)

(assert (=> b!497026 (=> (not res!299564) (not e!291366))))

(assert (=> b!497026 (= res!299564 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14770 0))(
  ( (Unit!14771) )
))
(declare-fun lt!225057 () Unit!14770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14770)

(assert (=> b!497026 (= lt!225057 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497027 () Bool)

(assert (=> b!497027 (= e!291370 true)))

(assert (=> b!497027 (and (bvslt (x!46923 lt!225058) #b01111111111111111111111111111110) (or (= (select (arr!15442 a!3235) (index!17845 lt!225058)) (select (arr!15442 a!3235) j!176)) (= (select (arr!15442 a!3235) (index!17845 lt!225058)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15442 a!3235) (index!17845 lt!225058)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45276 res!299557) b!497017))

(assert (= (and b!497017 res!299562) b!497023))

(assert (= (and b!497023 res!299561) b!497019))

(assert (= (and b!497019 res!299555) b!497024))

(assert (= (and b!497024 res!299563) b!497022))

(assert (= (and b!497022 res!299556) b!497020))

(assert (= (and b!497020 res!299560) b!497025))

(assert (= (and b!497025 res!299558) b!497026))

(assert (= (and b!497026 res!299564) b!497018))

(assert (= (and b!497026 (not res!299554)) b!497021))

(assert (= (and b!497021 (not res!299559)) b!497027))

(declare-fun m!478407 () Bool)

(assert (=> b!497027 m!478407))

(declare-fun m!478409 () Bool)

(assert (=> b!497027 m!478409))

(declare-fun m!478411 () Bool)

(assert (=> b!497020 m!478411))

(declare-fun m!478413 () Bool)

(assert (=> b!497025 m!478413))

(assert (=> b!497018 m!478409))

(assert (=> b!497018 m!478409))

(declare-fun m!478415 () Bool)

(assert (=> b!497018 m!478415))

(declare-fun m!478417 () Bool)

(assert (=> b!497019 m!478417))

(assert (=> b!497023 m!478409))

(assert (=> b!497023 m!478409))

(declare-fun m!478419 () Bool)

(assert (=> b!497023 m!478419))

(declare-fun m!478421 () Bool)

(assert (=> start!45276 m!478421))

(declare-fun m!478423 () Bool)

(assert (=> start!45276 m!478423))

(declare-fun m!478425 () Bool)

(assert (=> b!497022 m!478425))

(assert (=> b!497026 m!478409))

(declare-fun m!478427 () Bool)

(assert (=> b!497026 m!478427))

(declare-fun m!478429 () Bool)

(assert (=> b!497026 m!478429))

(declare-fun m!478431 () Bool)

(assert (=> b!497026 m!478431))

(declare-fun m!478433 () Bool)

(assert (=> b!497026 m!478433))

(declare-fun m!478435 () Bool)

(assert (=> b!497026 m!478435))

(assert (=> b!497026 m!478429))

(assert (=> b!497026 m!478409))

(declare-fun m!478437 () Bool)

(assert (=> b!497026 m!478437))

(assert (=> b!497026 m!478409))

(declare-fun m!478439 () Bool)

(assert (=> b!497026 m!478439))

(assert (=> b!497026 m!478429))

(declare-fun m!478441 () Bool)

(assert (=> b!497026 m!478441))

(declare-fun m!478443 () Bool)

(assert (=> b!497024 m!478443))

(check-sat (not b!497019) (not b!497023) (not b!497022) (not b!497018) (not start!45276) (not b!497020) (not b!497024) (not b!497026) (not b!497025))
(check-sat)
