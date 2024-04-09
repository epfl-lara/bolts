; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45426 () Bool)

(assert start!45426)

(declare-fun b!499128 () Bool)

(declare-fun res!301256 () Bool)

(declare-fun e!292500 () Bool)

(assert (=> b!499128 (=> (not res!301256) (not e!292500))))

(declare-datatypes ((array!32211 0))(
  ( (array!32212 (arr!15484 (Array (_ BitVec 32) (_ BitVec 64))) (size!15848 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32211)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32211 (_ BitVec 32)) Bool)

(assert (=> b!499128 (= res!301256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499129 () Bool)

(declare-fun e!292501 () Bool)

(assert (=> b!499129 (= e!292500 (not e!292501))))

(declare-fun res!301257 () Bool)

(assert (=> b!499129 (=> res!301257 e!292501)))

(declare-datatypes ((SeekEntryResult!3958 0))(
  ( (MissingZero!3958 (index!18014 (_ BitVec 32))) (Found!3958 (index!18015 (_ BitVec 32))) (Intermediate!3958 (undefined!4770 Bool) (index!18016 (_ BitVec 32)) (x!47086 (_ BitVec 32))) (Undefined!3958) (MissingVacant!3958 (index!18017 (_ BitVec 32))) )
))
(declare-fun lt!226339 () SeekEntryResult!3958)

(declare-fun lt!226340 () (_ BitVec 64))

(declare-fun lt!226334 () array!32211)

(declare-fun lt!226331 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32211 (_ BitVec 32)) SeekEntryResult!3958)

(assert (=> b!499129 (= res!301257 (= lt!226339 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226331 lt!226340 lt!226334 mask!3524)))))

(declare-fun lt!226332 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499129 (= lt!226339 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226332 (select (arr!15484 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499129 (= lt!226331 (toIndex!0 lt!226340 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499129 (= lt!226340 (select (store (arr!15484 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!499129 (= lt!226332 (toIndex!0 (select (arr!15484 a!3235) j!176) mask!3524))))

(assert (=> b!499129 (= lt!226334 (array!32212 (store (arr!15484 a!3235) i!1204 k0!2280) (size!15848 a!3235)))))

(declare-fun e!292504 () Bool)

(assert (=> b!499129 e!292504))

(declare-fun res!301266 () Bool)

(assert (=> b!499129 (=> (not res!301266) (not e!292504))))

(assert (=> b!499129 (= res!301266 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14922 0))(
  ( (Unit!14923) )
))
(declare-fun lt!226338 () Unit!14922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32211 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14922)

(assert (=> b!499129 (= lt!226338 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499130 () Bool)

(declare-fun res!301260 () Bool)

(declare-fun e!292505 () Bool)

(assert (=> b!499130 (=> (not res!301260) (not e!292505))))

(declare-fun arrayContainsKey!0 (array!32211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499130 (= res!301260 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499131 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32211 (_ BitVec 32)) SeekEntryResult!3958)

(assert (=> b!499131 (= e!292504 (= (seekEntryOrOpen!0 (select (arr!15484 a!3235) j!176) a!3235 mask!3524) (Found!3958 j!176)))))

(declare-fun b!499132 () Bool)

(declare-fun e!292506 () Bool)

(assert (=> b!499132 (= e!292506 false)))

(declare-fun b!499133 () Bool)

(declare-fun e!292507 () Bool)

(assert (=> b!499133 (= e!292507 true)))

(declare-fun lt!226336 () SeekEntryResult!3958)

(assert (=> b!499133 (= lt!226336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226332 lt!226340 lt!226334 mask!3524))))

(declare-fun res!301259 () Bool)

(assert (=> start!45426 (=> (not res!301259) (not e!292505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45426 (= res!301259 (validMask!0 mask!3524))))

(assert (=> start!45426 e!292505))

(assert (=> start!45426 true))

(declare-fun array_inv!11258 (array!32211) Bool)

(assert (=> start!45426 (array_inv!11258 a!3235)))

(declare-fun b!499134 () Bool)

(declare-fun res!301264 () Bool)

(assert (=> b!499134 (=> res!301264 e!292501)))

(get-info :version)

(assert (=> b!499134 (= res!301264 (or (undefined!4770 lt!226339) (not ((_ is Intermediate!3958) lt!226339))))))

(declare-fun b!499135 () Bool)

(assert (=> b!499135 (= e!292505 e!292500)))

(declare-fun res!301261 () Bool)

(assert (=> b!499135 (=> (not res!301261) (not e!292500))))

(declare-fun lt!226337 () SeekEntryResult!3958)

(assert (=> b!499135 (= res!301261 (or (= lt!226337 (MissingZero!3958 i!1204)) (= lt!226337 (MissingVacant!3958 i!1204))))))

(assert (=> b!499135 (= lt!226337 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!499136 () Bool)

(declare-fun e!292503 () Unit!14922)

(declare-fun Unit!14924 () Unit!14922)

(assert (=> b!499136 (= e!292503 Unit!14924)))

(declare-fun lt!226335 () Unit!14922)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14922)

(assert (=> b!499136 (= lt!226335 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226332 #b00000000000000000000000000000000 (index!18016 lt!226339) (x!47086 lt!226339) mask!3524))))

(declare-fun res!301258 () Bool)

(assert (=> b!499136 (= res!301258 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226332 lt!226340 lt!226334 mask!3524) (Intermediate!3958 false (index!18016 lt!226339) (x!47086 lt!226339))))))

(assert (=> b!499136 (=> (not res!301258) (not e!292506))))

(assert (=> b!499136 e!292506))

(declare-fun b!499137 () Bool)

(declare-fun res!301265 () Bool)

(assert (=> b!499137 (=> (not res!301265) (not e!292505))))

(assert (=> b!499137 (= res!301265 (and (= (size!15848 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15848 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15848 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499138 () Bool)

(assert (=> b!499138 (= e!292501 e!292507)))

(declare-fun res!301263 () Bool)

(assert (=> b!499138 (=> res!301263 e!292507)))

(assert (=> b!499138 (= res!301263 (or (bvsgt #b00000000000000000000000000000000 (x!47086 lt!226339)) (bvsgt (x!47086 lt!226339) #b01111111111111111111111111111110) (bvslt lt!226332 #b00000000000000000000000000000000) (bvsge lt!226332 (size!15848 a!3235)) (bvslt (index!18016 lt!226339) #b00000000000000000000000000000000) (bvsge (index!18016 lt!226339) (size!15848 a!3235)) (not (= lt!226339 (Intermediate!3958 false (index!18016 lt!226339) (x!47086 lt!226339))))))))

(assert (=> b!499138 (and (or (= (select (arr!15484 a!3235) (index!18016 lt!226339)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15484 a!3235) (index!18016 lt!226339)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15484 a!3235) (index!18016 lt!226339)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15484 a!3235) (index!18016 lt!226339)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226333 () Unit!14922)

(assert (=> b!499138 (= lt!226333 e!292503)))

(declare-fun c!59213 () Bool)

(assert (=> b!499138 (= c!59213 (= (select (arr!15484 a!3235) (index!18016 lt!226339)) (select (arr!15484 a!3235) j!176)))))

(assert (=> b!499138 (and (bvslt (x!47086 lt!226339) #b01111111111111111111111111111110) (or (= (select (arr!15484 a!3235) (index!18016 lt!226339)) (select (arr!15484 a!3235) j!176)) (= (select (arr!15484 a!3235) (index!18016 lt!226339)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15484 a!3235) (index!18016 lt!226339)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499139 () Bool)

(declare-fun Unit!14925 () Unit!14922)

(assert (=> b!499139 (= e!292503 Unit!14925)))

(declare-fun b!499140 () Bool)

(declare-fun res!301268 () Bool)

(assert (=> b!499140 (=> (not res!301268) (not e!292500))))

(declare-datatypes ((List!9695 0))(
  ( (Nil!9692) (Cons!9691 (h!10565 (_ BitVec 64)) (t!15931 List!9695)) )
))
(declare-fun arrayNoDuplicates!0 (array!32211 (_ BitVec 32) List!9695) Bool)

(assert (=> b!499140 (= res!301268 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9692))))

(declare-fun b!499141 () Bool)

(declare-fun res!301267 () Bool)

(assert (=> b!499141 (=> (not res!301267) (not e!292505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499141 (= res!301267 (validKeyInArray!0 (select (arr!15484 a!3235) j!176)))))

(declare-fun b!499142 () Bool)

(declare-fun res!301262 () Bool)

(assert (=> b!499142 (=> (not res!301262) (not e!292505))))

(assert (=> b!499142 (= res!301262 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45426 res!301259) b!499137))

(assert (= (and b!499137 res!301265) b!499141))

(assert (= (and b!499141 res!301267) b!499142))

(assert (= (and b!499142 res!301262) b!499130))

(assert (= (and b!499130 res!301260) b!499135))

(assert (= (and b!499135 res!301261) b!499128))

(assert (= (and b!499128 res!301256) b!499140))

(assert (= (and b!499140 res!301268) b!499129))

(assert (= (and b!499129 res!301266) b!499131))

(assert (= (and b!499129 (not res!301257)) b!499134))

(assert (= (and b!499134 (not res!301264)) b!499138))

(assert (= (and b!499138 c!59213) b!499136))

(assert (= (and b!499138 (not c!59213)) b!499139))

(assert (= (and b!499136 res!301258) b!499132))

(assert (= (and b!499138 (not res!301263)) b!499133))

(declare-fun m!480373 () Bool)

(assert (=> b!499133 m!480373))

(declare-fun m!480375 () Bool)

(assert (=> start!45426 m!480375))

(declare-fun m!480377 () Bool)

(assert (=> start!45426 m!480377))

(declare-fun m!480379 () Bool)

(assert (=> b!499140 m!480379))

(declare-fun m!480381 () Bool)

(assert (=> b!499130 m!480381))

(declare-fun m!480383 () Bool)

(assert (=> b!499141 m!480383))

(assert (=> b!499141 m!480383))

(declare-fun m!480385 () Bool)

(assert (=> b!499141 m!480385))

(declare-fun m!480387 () Bool)

(assert (=> b!499138 m!480387))

(assert (=> b!499138 m!480383))

(assert (=> b!499131 m!480383))

(assert (=> b!499131 m!480383))

(declare-fun m!480389 () Bool)

(assert (=> b!499131 m!480389))

(declare-fun m!480391 () Bool)

(assert (=> b!499136 m!480391))

(assert (=> b!499136 m!480373))

(declare-fun m!480393 () Bool)

(assert (=> b!499129 m!480393))

(declare-fun m!480395 () Bool)

(assert (=> b!499129 m!480395))

(declare-fun m!480397 () Bool)

(assert (=> b!499129 m!480397))

(assert (=> b!499129 m!480383))

(declare-fun m!480399 () Bool)

(assert (=> b!499129 m!480399))

(declare-fun m!480401 () Bool)

(assert (=> b!499129 m!480401))

(assert (=> b!499129 m!480383))

(declare-fun m!480403 () Bool)

(assert (=> b!499129 m!480403))

(assert (=> b!499129 m!480383))

(declare-fun m!480405 () Bool)

(assert (=> b!499129 m!480405))

(declare-fun m!480407 () Bool)

(assert (=> b!499129 m!480407))

(declare-fun m!480409 () Bool)

(assert (=> b!499128 m!480409))

(declare-fun m!480411 () Bool)

(assert (=> b!499135 m!480411))

(declare-fun m!480413 () Bool)

(assert (=> b!499142 m!480413))

(check-sat (not b!499135) (not b!499130) (not b!499133) (not start!45426) (not b!499142) (not b!499128) (not b!499136) (not b!499129) (not b!499141) (not b!499131) (not b!499140))
(check-sat)
