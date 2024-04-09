; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44782 () Bool)

(assert start!44782)

(declare-fun b!491328 () Bool)

(declare-fun res!294422 () Bool)

(declare-fun e!288688 () Bool)

(assert (=> b!491328 (=> (not res!294422) (not e!288688))))

(declare-datatypes ((array!31801 0))(
  ( (array!31802 (arr!15285 (Array (_ BitVec 32) (_ BitVec 64))) (size!15649 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31801)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491328 (= res!294422 (validKeyInArray!0 (select (arr!15285 a!3235) j!176)))))

(declare-fun b!491329 () Bool)

(declare-fun res!294415 () Bool)

(assert (=> b!491329 (=> (not res!294415) (not e!288688))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!491329 (= res!294415 (validKeyInArray!0 k!2280))))

(declare-fun b!491330 () Bool)

(declare-fun res!294421 () Bool)

(assert (=> b!491330 (=> (not res!294421) (not e!288688))))

(declare-fun arrayContainsKey!0 (array!31801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491330 (= res!294421 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!294419 () Bool)

(assert (=> start!44782 (=> (not res!294419) (not e!288688))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44782 (= res!294419 (validMask!0 mask!3524))))

(assert (=> start!44782 e!288688))

(assert (=> start!44782 true))

(declare-fun array_inv!11059 (array!31801) Bool)

(assert (=> start!44782 (array_inv!11059 a!3235)))

(declare-fun b!491331 () Bool)

(declare-fun e!288686 () Bool)

(assert (=> b!491331 (= e!288688 e!288686)))

(declare-fun res!294420 () Bool)

(assert (=> b!491331 (=> (not res!294420) (not e!288686))))

(declare-datatypes ((SeekEntryResult!3759 0))(
  ( (MissingZero!3759 (index!17215 (_ BitVec 32))) (Found!3759 (index!17216 (_ BitVec 32))) (Intermediate!3759 (undefined!4571 Bool) (index!17217 (_ BitVec 32)) (x!46332 (_ BitVec 32))) (Undefined!3759) (MissingVacant!3759 (index!17218 (_ BitVec 32))) )
))
(declare-fun lt!222174 () SeekEntryResult!3759)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491331 (= res!294420 (or (= lt!222174 (MissingZero!3759 i!1204)) (= lt!222174 (MissingVacant!3759 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31801 (_ BitVec 32)) SeekEntryResult!3759)

(assert (=> b!491331 (= lt!222174 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491332 () Bool)

(declare-fun e!288687 () Bool)

(assert (=> b!491332 (= e!288686 (not e!288687))))

(declare-fun res!294417 () Bool)

(assert (=> b!491332 (=> res!294417 e!288687)))

(declare-fun lt!222173 () (_ BitVec 64))

(declare-fun lt!222176 () array!31801)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31801 (_ BitVec 32)) SeekEntryResult!3759)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491332 (= res!294417 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15285 a!3235) j!176) mask!3524) (select (arr!15285 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222173 mask!3524) lt!222173 lt!222176 mask!3524))))))

(assert (=> b!491332 (= lt!222173 (select (store (arr!15285 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491332 (= lt!222176 (array!31802 (store (arr!15285 a!3235) i!1204 k!2280) (size!15649 a!3235)))))

(declare-fun lt!222171 () SeekEntryResult!3759)

(assert (=> b!491332 (= lt!222171 (Found!3759 j!176))))

(assert (=> b!491332 (= lt!222171 (seekEntryOrOpen!0 (select (arr!15285 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31801 (_ BitVec 32)) Bool)

(assert (=> b!491332 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14456 0))(
  ( (Unit!14457) )
))
(declare-fun lt!222175 () Unit!14456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14456)

(assert (=> b!491332 (= lt!222175 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491333 () Bool)

(declare-fun res!294418 () Bool)

(assert (=> b!491333 (=> (not res!294418) (not e!288686))))

(declare-datatypes ((List!9496 0))(
  ( (Nil!9493) (Cons!9492 (h!10354 (_ BitVec 64)) (t!15732 List!9496)) )
))
(declare-fun arrayNoDuplicates!0 (array!31801 (_ BitVec 32) List!9496) Bool)

(assert (=> b!491333 (= res!294418 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9493))))

(declare-fun b!491334 () Bool)

(declare-fun res!294416 () Bool)

(assert (=> b!491334 (=> (not res!294416) (not e!288688))))

(assert (=> b!491334 (= res!294416 (and (= (size!15649 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15649 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15649 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491335 () Bool)

(declare-fun res!294414 () Bool)

(assert (=> b!491335 (=> (not res!294414) (not e!288686))))

(assert (=> b!491335 (= res!294414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491336 () Bool)

(assert (=> b!491336 (= e!288687 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!491336 (= lt!222171 (seekEntryOrOpen!0 lt!222173 lt!222176 mask!3524))))

(declare-fun lt!222172 () Unit!14456)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31801 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14456)

(assert (=> b!491336 (= lt!222172 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(assert (= (and start!44782 res!294419) b!491334))

(assert (= (and b!491334 res!294416) b!491328))

(assert (= (and b!491328 res!294422) b!491329))

(assert (= (and b!491329 res!294415) b!491330))

(assert (= (and b!491330 res!294421) b!491331))

(assert (= (and b!491331 res!294420) b!491335))

(assert (= (and b!491335 res!294414) b!491333))

(assert (= (and b!491333 res!294418) b!491332))

(assert (= (and b!491332 (not res!294417)) b!491336))

(declare-fun m!471985 () Bool)

(assert (=> start!44782 m!471985))

(declare-fun m!471987 () Bool)

(assert (=> start!44782 m!471987))

(declare-fun m!471989 () Bool)

(assert (=> b!491335 m!471989))

(declare-fun m!471991 () Bool)

(assert (=> b!491332 m!471991))

(declare-fun m!471993 () Bool)

(assert (=> b!491332 m!471993))

(declare-fun m!471995 () Bool)

(assert (=> b!491332 m!471995))

(declare-fun m!471997 () Bool)

(assert (=> b!491332 m!471997))

(declare-fun m!471999 () Bool)

(assert (=> b!491332 m!471999))

(declare-fun m!472001 () Bool)

(assert (=> b!491332 m!472001))

(declare-fun m!472003 () Bool)

(assert (=> b!491332 m!472003))

(assert (=> b!491332 m!471999))

(assert (=> b!491332 m!471997))

(assert (=> b!491332 m!471999))

(assert (=> b!491332 m!472003))

(declare-fun m!472005 () Bool)

(assert (=> b!491332 m!472005))

(declare-fun m!472007 () Bool)

(assert (=> b!491332 m!472007))

(assert (=> b!491332 m!471999))

(declare-fun m!472009 () Bool)

(assert (=> b!491332 m!472009))

(declare-fun m!472011 () Bool)

(assert (=> b!491331 m!472011))

(declare-fun m!472013 () Bool)

(assert (=> b!491330 m!472013))

(assert (=> b!491328 m!471999))

(assert (=> b!491328 m!471999))

(declare-fun m!472015 () Bool)

(assert (=> b!491328 m!472015))

(declare-fun m!472017 () Bool)

(assert (=> b!491336 m!472017))

(declare-fun m!472019 () Bool)

(assert (=> b!491336 m!472019))

(declare-fun m!472021 () Bool)

(assert (=> b!491333 m!472021))

(declare-fun m!472023 () Bool)

(assert (=> b!491329 m!472023))

(push 1)

