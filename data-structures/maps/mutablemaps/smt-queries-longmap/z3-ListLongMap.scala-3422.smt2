; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47466 () Bool)

(assert start!47466)

(declare-fun b!522349 () Bool)

(declare-fun e!304664 () Bool)

(declare-fun e!304663 () Bool)

(assert (=> b!522349 (= e!304664 e!304663)))

(declare-fun res!320139 () Bool)

(assert (=> b!522349 (=> (not res!320139) (not e!304663))))

(declare-datatypes ((SeekEntryResult!4453 0))(
  ( (MissingZero!4453 (index!20015 (_ BitVec 32))) (Found!4453 (index!20016 (_ BitVec 32))) (Intermediate!4453 (undefined!5265 Bool) (index!20017 (_ BitVec 32)) (x!49018 (_ BitVec 32))) (Undefined!4453) (MissingVacant!4453 (index!20018 (_ BitVec 32))) )
))
(declare-fun lt!239631 () SeekEntryResult!4453)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!522349 (= res!320139 (or (= lt!239631 (MissingZero!4453 i!1204)) (= lt!239631 (MissingVacant!4453 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33252 0))(
  ( (array!33253 (arr!15979 (Array (_ BitVec 32) (_ BitVec 64))) (size!16343 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33252)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33252 (_ BitVec 32)) SeekEntryResult!4453)

(assert (=> b!522349 (= lt!239631 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!522350 () Bool)

(declare-fun e!304665 () Bool)

(assert (=> b!522350 (= e!304663 (not e!304665))))

(declare-fun res!320145 () Bool)

(assert (=> b!522350 (=> res!320145 e!304665)))

(declare-fun lt!239639 () array!33252)

(declare-fun lt!239637 () (_ BitVec 64))

(declare-fun lt!239635 () SeekEntryResult!4453)

(declare-fun lt!239632 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33252 (_ BitVec 32)) SeekEntryResult!4453)

(assert (=> b!522350 (= res!320145 (= lt!239635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239632 lt!239637 lt!239639 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!239633 () (_ BitVec 32))

(assert (=> b!522350 (= lt!239635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239633 (select (arr!15979 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522350 (= lt!239632 (toIndex!0 lt!239637 mask!3524))))

(assert (=> b!522350 (= lt!239637 (select (store (arr!15979 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!522350 (= lt!239633 (toIndex!0 (select (arr!15979 a!3235) j!176) mask!3524))))

(assert (=> b!522350 (= lt!239639 (array!33253 (store (arr!15979 a!3235) i!1204 k0!2280) (size!16343 a!3235)))))

(declare-fun e!304660 () Bool)

(assert (=> b!522350 e!304660))

(declare-fun res!320141 () Bool)

(assert (=> b!522350 (=> (not res!320141) (not e!304660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33252 (_ BitVec 32)) Bool)

(assert (=> b!522350 (= res!320141 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16278 0))(
  ( (Unit!16279) )
))
(declare-fun lt!239636 () Unit!16278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33252 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16278)

(assert (=> b!522350 (= lt!239636 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522351 () Bool)

(declare-fun e!304661 () Bool)

(assert (=> b!522351 (= e!304661 false)))

(declare-fun b!522352 () Bool)

(declare-fun e!304666 () Unit!16278)

(declare-fun Unit!16280 () Unit!16278)

(assert (=> b!522352 (= e!304666 Unit!16280)))

(declare-fun lt!239634 () Unit!16278)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33252 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16278)

(assert (=> b!522352 (= lt!239634 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239633 #b00000000000000000000000000000000 (index!20017 lt!239635) (x!49018 lt!239635) mask!3524))))

(declare-fun res!320142 () Bool)

(assert (=> b!522352 (= res!320142 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239633 lt!239637 lt!239639 mask!3524) (Intermediate!4453 false (index!20017 lt!239635) (x!49018 lt!239635))))))

(assert (=> b!522352 (=> (not res!320142) (not e!304661))))

(assert (=> b!522352 e!304661))

(declare-fun b!522353 () Bool)

(declare-fun res!320150 () Bool)

(assert (=> b!522353 (=> (not res!320150) (not e!304664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522353 (= res!320150 (validKeyInArray!0 k0!2280))))

(declare-fun res!320149 () Bool)

(assert (=> start!47466 (=> (not res!320149) (not e!304664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47466 (= res!320149 (validMask!0 mask!3524))))

(assert (=> start!47466 e!304664))

(assert (=> start!47466 true))

(declare-fun array_inv!11753 (array!33252) Bool)

(assert (=> start!47466 (array_inv!11753 a!3235)))

(declare-fun b!522354 () Bool)

(declare-fun res!320144 () Bool)

(assert (=> b!522354 (=> (not res!320144) (not e!304663))))

(declare-datatypes ((List!10190 0))(
  ( (Nil!10187) (Cons!10186 (h!11108 (_ BitVec 64)) (t!16426 List!10190)) )
))
(declare-fun arrayNoDuplicates!0 (array!33252 (_ BitVec 32) List!10190) Bool)

(assert (=> b!522354 (= res!320144 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10187))))

(declare-fun b!522355 () Bool)

(declare-fun res!320147 () Bool)

(assert (=> b!522355 (=> (not res!320147) (not e!304664))))

(assert (=> b!522355 (= res!320147 (and (= (size!16343 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16343 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16343 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522356 () Bool)

(assert (=> b!522356 (= e!304660 (= (seekEntryOrOpen!0 (select (arr!15979 a!3235) j!176) a!3235 mask!3524) (Found!4453 j!176)))))

(declare-fun b!522357 () Bool)

(declare-fun res!320148 () Bool)

(assert (=> b!522357 (=> (not res!320148) (not e!304664))))

(assert (=> b!522357 (= res!320148 (validKeyInArray!0 (select (arr!15979 a!3235) j!176)))))

(declare-fun b!522358 () Bool)

(assert (=> b!522358 (= e!304665 true)))

(assert (=> b!522358 (and (or (= (select (arr!15979 a!3235) (index!20017 lt!239635)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15979 a!3235) (index!20017 lt!239635)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15979 a!3235) (index!20017 lt!239635)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15979 a!3235) (index!20017 lt!239635)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239638 () Unit!16278)

(assert (=> b!522358 (= lt!239638 e!304666)))

(declare-fun c!61406 () Bool)

(assert (=> b!522358 (= c!61406 (= (select (arr!15979 a!3235) (index!20017 lt!239635)) (select (arr!15979 a!3235) j!176)))))

(assert (=> b!522358 (and (bvslt (x!49018 lt!239635) #b01111111111111111111111111111110) (or (= (select (arr!15979 a!3235) (index!20017 lt!239635)) (select (arr!15979 a!3235) j!176)) (= (select (arr!15979 a!3235) (index!20017 lt!239635)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15979 a!3235) (index!20017 lt!239635)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522359 () Bool)

(declare-fun res!320143 () Bool)

(assert (=> b!522359 (=> res!320143 e!304665)))

(get-info :version)

(assert (=> b!522359 (= res!320143 (or (undefined!5265 lt!239635) (not ((_ is Intermediate!4453) lt!239635))))))

(declare-fun b!522360 () Bool)

(declare-fun res!320146 () Bool)

(assert (=> b!522360 (=> (not res!320146) (not e!304663))))

(assert (=> b!522360 (= res!320146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522361 () Bool)

(declare-fun res!320140 () Bool)

(assert (=> b!522361 (=> (not res!320140) (not e!304664))))

(declare-fun arrayContainsKey!0 (array!33252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522361 (= res!320140 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522362 () Bool)

(declare-fun Unit!16281 () Unit!16278)

(assert (=> b!522362 (= e!304666 Unit!16281)))

(assert (= (and start!47466 res!320149) b!522355))

(assert (= (and b!522355 res!320147) b!522357))

(assert (= (and b!522357 res!320148) b!522353))

(assert (= (and b!522353 res!320150) b!522361))

(assert (= (and b!522361 res!320140) b!522349))

(assert (= (and b!522349 res!320139) b!522360))

(assert (= (and b!522360 res!320146) b!522354))

(assert (= (and b!522354 res!320144) b!522350))

(assert (= (and b!522350 res!320141) b!522356))

(assert (= (and b!522350 (not res!320145)) b!522359))

(assert (= (and b!522359 (not res!320143)) b!522358))

(assert (= (and b!522358 c!61406) b!522352))

(assert (= (and b!522358 (not c!61406)) b!522362))

(assert (= (and b!522352 res!320142) b!522351))

(declare-fun m!503299 () Bool)

(assert (=> b!522350 m!503299))

(declare-fun m!503301 () Bool)

(assert (=> b!522350 m!503301))

(declare-fun m!503303 () Bool)

(assert (=> b!522350 m!503303))

(declare-fun m!503305 () Bool)

(assert (=> b!522350 m!503305))

(declare-fun m!503307 () Bool)

(assert (=> b!522350 m!503307))

(declare-fun m!503309 () Bool)

(assert (=> b!522350 m!503309))

(declare-fun m!503311 () Bool)

(assert (=> b!522350 m!503311))

(assert (=> b!522350 m!503305))

(declare-fun m!503313 () Bool)

(assert (=> b!522350 m!503313))

(assert (=> b!522350 m!503305))

(declare-fun m!503315 () Bool)

(assert (=> b!522350 m!503315))

(declare-fun m!503317 () Bool)

(assert (=> b!522353 m!503317))

(declare-fun m!503319 () Bool)

(assert (=> start!47466 m!503319))

(declare-fun m!503321 () Bool)

(assert (=> start!47466 m!503321))

(declare-fun m!503323 () Bool)

(assert (=> b!522352 m!503323))

(declare-fun m!503325 () Bool)

(assert (=> b!522352 m!503325))

(assert (=> b!522357 m!503305))

(assert (=> b!522357 m!503305))

(declare-fun m!503327 () Bool)

(assert (=> b!522357 m!503327))

(assert (=> b!522356 m!503305))

(assert (=> b!522356 m!503305))

(declare-fun m!503329 () Bool)

(assert (=> b!522356 m!503329))

(declare-fun m!503331 () Bool)

(assert (=> b!522358 m!503331))

(assert (=> b!522358 m!503305))

(declare-fun m!503333 () Bool)

(assert (=> b!522349 m!503333))

(declare-fun m!503335 () Bool)

(assert (=> b!522354 m!503335))

(declare-fun m!503337 () Bool)

(assert (=> b!522360 m!503337))

(declare-fun m!503339 () Bool)

(assert (=> b!522361 m!503339))

(check-sat (not b!522357) (not b!522350) (not b!522354) (not b!522360) (not b!522352) (not b!522349) (not b!522353) (not b!522361) (not start!47466) (not b!522356))
(check-sat)
