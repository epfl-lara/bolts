; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47464 () Bool)

(assert start!47464)

(declare-fun b!522307 () Bool)

(declare-datatypes ((Unit!16274 0))(
  ( (Unit!16275) )
))
(declare-fun e!304644 () Unit!16274)

(declare-fun Unit!16276 () Unit!16274)

(assert (=> b!522307 (= e!304644 Unit!16276)))

(declare-fun b!522308 () Bool)

(declare-fun res!320113 () Bool)

(declare-fun e!304645 () Bool)

(assert (=> b!522308 (=> (not res!320113) (not e!304645))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33250 0))(
  ( (array!33251 (arr!15978 (Array (_ BitVec 32) (_ BitVec 64))) (size!16342 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33250)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!522308 (= res!320113 (and (= (size!16342 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16342 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16342 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!304642 () Bool)

(declare-fun b!522309 () Bool)

(declare-datatypes ((SeekEntryResult!4452 0))(
  ( (MissingZero!4452 (index!20011 (_ BitVec 32))) (Found!4452 (index!20012 (_ BitVec 32))) (Intermediate!4452 (undefined!5264 Bool) (index!20013 (_ BitVec 32)) (x!49017 (_ BitVec 32))) (Undefined!4452) (MissingVacant!4452 (index!20014 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33250 (_ BitVec 32)) SeekEntryResult!4452)

(assert (=> b!522309 (= e!304642 (= (seekEntryOrOpen!0 (select (arr!15978 a!3235) j!176) a!3235 mask!3524) (Found!4452 j!176)))))

(declare-fun b!522310 () Bool)

(declare-fun res!320104 () Bool)

(assert (=> b!522310 (=> (not res!320104) (not e!304645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522310 (= res!320104 (validKeyInArray!0 (select (arr!15978 a!3235) j!176)))))

(declare-fun b!522311 () Bool)

(declare-fun e!304639 () Bool)

(declare-fun e!304643 () Bool)

(assert (=> b!522311 (= e!304639 (not e!304643))))

(declare-fun res!320110 () Bool)

(assert (=> b!522311 (=> res!320110 e!304643)))

(declare-fun lt!239605 () array!33250)

(declare-fun lt!239607 () (_ BitVec 64))

(declare-fun lt!239606 () (_ BitVec 32))

(declare-fun lt!239604 () SeekEntryResult!4452)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33250 (_ BitVec 32)) SeekEntryResult!4452)

(assert (=> b!522311 (= res!320110 (= lt!239604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239606 lt!239607 lt!239605 mask!3524)))))

(declare-fun lt!239609 () (_ BitVec 32))

(assert (=> b!522311 (= lt!239604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239609 (select (arr!15978 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522311 (= lt!239606 (toIndex!0 lt!239607 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!522311 (= lt!239607 (select (store (arr!15978 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522311 (= lt!239609 (toIndex!0 (select (arr!15978 a!3235) j!176) mask!3524))))

(assert (=> b!522311 (= lt!239605 (array!33251 (store (arr!15978 a!3235) i!1204 k!2280) (size!16342 a!3235)))))

(assert (=> b!522311 e!304642))

(declare-fun res!320107 () Bool)

(assert (=> b!522311 (=> (not res!320107) (not e!304642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33250 (_ BitVec 32)) Bool)

(assert (=> b!522311 (= res!320107 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239611 () Unit!16274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33250 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16274)

(assert (=> b!522311 (= lt!239611 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522312 () Bool)

(assert (=> b!522312 (= e!304645 e!304639)))

(declare-fun res!320108 () Bool)

(assert (=> b!522312 (=> (not res!320108) (not e!304639))))

(declare-fun lt!239612 () SeekEntryResult!4452)

(assert (=> b!522312 (= res!320108 (or (= lt!239612 (MissingZero!4452 i!1204)) (= lt!239612 (MissingVacant!4452 i!1204))))))

(assert (=> b!522312 (= lt!239612 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522313 () Bool)

(declare-fun Unit!16277 () Unit!16274)

(assert (=> b!522313 (= e!304644 Unit!16277)))

(declare-fun lt!239608 () Unit!16274)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33250 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16274)

(assert (=> b!522313 (= lt!239608 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239609 #b00000000000000000000000000000000 (index!20013 lt!239604) (x!49017 lt!239604) mask!3524))))

(declare-fun res!320109 () Bool)

(assert (=> b!522313 (= res!320109 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239609 lt!239607 lt!239605 mask!3524) (Intermediate!4452 false (index!20013 lt!239604) (x!49017 lt!239604))))))

(declare-fun e!304640 () Bool)

(assert (=> b!522313 (=> (not res!320109) (not e!304640))))

(assert (=> b!522313 e!304640))

(declare-fun b!522314 () Bool)

(declare-fun res!320106 () Bool)

(assert (=> b!522314 (=> (not res!320106) (not e!304639))))

(declare-datatypes ((List!10189 0))(
  ( (Nil!10186) (Cons!10185 (h!11107 (_ BitVec 64)) (t!16425 List!10189)) )
))
(declare-fun arrayNoDuplicates!0 (array!33250 (_ BitVec 32) List!10189) Bool)

(assert (=> b!522314 (= res!320106 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10186))))

(declare-fun b!522315 () Bool)

(declare-fun res!320114 () Bool)

(assert (=> b!522315 (=> (not res!320114) (not e!304645))))

(declare-fun arrayContainsKey!0 (array!33250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522315 (= res!320114 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522316 () Bool)

(declare-fun res!320103 () Bool)

(assert (=> b!522316 (=> res!320103 e!304643)))

(assert (=> b!522316 (= res!320103 (or (undefined!5264 lt!239604) (not (is-Intermediate!4452 lt!239604))))))

(declare-fun res!320112 () Bool)

(assert (=> start!47464 (=> (not res!320112) (not e!304645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47464 (= res!320112 (validMask!0 mask!3524))))

(assert (=> start!47464 e!304645))

(assert (=> start!47464 true))

(declare-fun array_inv!11752 (array!33250) Bool)

(assert (=> start!47464 (array_inv!11752 a!3235)))

(declare-fun b!522317 () Bool)

(declare-fun res!320111 () Bool)

(assert (=> b!522317 (=> (not res!320111) (not e!304639))))

(assert (=> b!522317 (= res!320111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522318 () Bool)

(declare-fun res!320105 () Bool)

(assert (=> b!522318 (=> (not res!320105) (not e!304645))))

(assert (=> b!522318 (= res!320105 (validKeyInArray!0 k!2280))))

(declare-fun b!522319 () Bool)

(assert (=> b!522319 (= e!304643 true)))

(assert (=> b!522319 (and (or (= (select (arr!15978 a!3235) (index!20013 lt!239604)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15978 a!3235) (index!20013 lt!239604)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15978 a!3235) (index!20013 lt!239604)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15978 a!3235) (index!20013 lt!239604)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239610 () Unit!16274)

(assert (=> b!522319 (= lt!239610 e!304644)))

(declare-fun c!61403 () Bool)

(assert (=> b!522319 (= c!61403 (= (select (arr!15978 a!3235) (index!20013 lt!239604)) (select (arr!15978 a!3235) j!176)))))

(assert (=> b!522319 (and (bvslt (x!49017 lt!239604) #b01111111111111111111111111111110) (or (= (select (arr!15978 a!3235) (index!20013 lt!239604)) (select (arr!15978 a!3235) j!176)) (= (select (arr!15978 a!3235) (index!20013 lt!239604)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15978 a!3235) (index!20013 lt!239604)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522320 () Bool)

(assert (=> b!522320 (= e!304640 false)))

(assert (= (and start!47464 res!320112) b!522308))

(assert (= (and b!522308 res!320113) b!522310))

(assert (= (and b!522310 res!320104) b!522318))

(assert (= (and b!522318 res!320105) b!522315))

(assert (= (and b!522315 res!320114) b!522312))

(assert (= (and b!522312 res!320108) b!522317))

(assert (= (and b!522317 res!320111) b!522314))

(assert (= (and b!522314 res!320106) b!522311))

(assert (= (and b!522311 res!320107) b!522309))

(assert (= (and b!522311 (not res!320110)) b!522316))

(assert (= (and b!522316 (not res!320103)) b!522319))

(assert (= (and b!522319 c!61403) b!522313))

(assert (= (and b!522319 (not c!61403)) b!522307))

(assert (= (and b!522313 res!320109) b!522320))

(declare-fun m!503257 () Bool)

(assert (=> b!522319 m!503257))

(declare-fun m!503259 () Bool)

(assert (=> b!522319 m!503259))

(declare-fun m!503261 () Bool)

(assert (=> b!522313 m!503261))

(declare-fun m!503263 () Bool)

(assert (=> b!522313 m!503263))

(declare-fun m!503265 () Bool)

(assert (=> b!522315 m!503265))

(declare-fun m!503267 () Bool)

(assert (=> b!522311 m!503267))

(declare-fun m!503269 () Bool)

(assert (=> b!522311 m!503269))

(declare-fun m!503271 () Bool)

(assert (=> b!522311 m!503271))

(declare-fun m!503273 () Bool)

(assert (=> b!522311 m!503273))

(assert (=> b!522311 m!503259))

(declare-fun m!503275 () Bool)

(assert (=> b!522311 m!503275))

(declare-fun m!503277 () Bool)

(assert (=> b!522311 m!503277))

(assert (=> b!522311 m!503259))

(declare-fun m!503279 () Bool)

(assert (=> b!522311 m!503279))

(assert (=> b!522311 m!503259))

(declare-fun m!503281 () Bool)

(assert (=> b!522311 m!503281))

(declare-fun m!503283 () Bool)

(assert (=> b!522312 m!503283))

(declare-fun m!503285 () Bool)

(assert (=> b!522314 m!503285))

(declare-fun m!503287 () Bool)

(assert (=> start!47464 m!503287))

(declare-fun m!503289 () Bool)

(assert (=> start!47464 m!503289))

(declare-fun m!503291 () Bool)

(assert (=> b!522318 m!503291))

(declare-fun m!503293 () Bool)

(assert (=> b!522317 m!503293))

(assert (=> b!522310 m!503259))

(assert (=> b!522310 m!503259))

(declare-fun m!503295 () Bool)

(assert (=> b!522310 m!503295))

(assert (=> b!522309 m!503259))

(assert (=> b!522309 m!503259))

(declare-fun m!503297 () Bool)

(assert (=> b!522309 m!503297))

(push 1)

