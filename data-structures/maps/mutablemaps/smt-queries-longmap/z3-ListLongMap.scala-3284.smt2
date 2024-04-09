; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45660 () Bool)

(assert start!45660)

(declare-fun b!503308 () Bool)

(declare-fun e!294756 () Bool)

(assert (=> b!503308 (= e!294756 false)))

(declare-fun b!503309 () Bool)

(declare-fun res!304755 () Bool)

(declare-fun e!294754 () Bool)

(assert (=> b!503309 (=> (not res!304755) (not e!294754))))

(declare-datatypes ((array!32376 0))(
  ( (array!32377 (arr!15565 (Array (_ BitVec 32) (_ BitVec 64))) (size!15929 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32376)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32376 (_ BitVec 32)) Bool)

(assert (=> b!503309 (= res!304755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503310 () Bool)

(declare-fun res!304749 () Bool)

(declare-fun e!294757 () Bool)

(assert (=> b!503310 (=> (not res!304749) (not e!294757))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503310 (= res!304749 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503311 () Bool)

(assert (=> b!503311 (= e!294757 e!294754)))

(declare-fun res!304752 () Bool)

(assert (=> b!503311 (=> (not res!304752) (not e!294754))))

(declare-datatypes ((SeekEntryResult!4039 0))(
  ( (MissingZero!4039 (index!18344 (_ BitVec 32))) (Found!4039 (index!18345 (_ BitVec 32))) (Intermediate!4039 (undefined!4851 Bool) (index!18346 (_ BitVec 32)) (x!47395 (_ BitVec 32))) (Undefined!4039) (MissingVacant!4039 (index!18347 (_ BitVec 32))) )
))
(declare-fun lt!229030 () SeekEntryResult!4039)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503311 (= res!304752 (or (= lt!229030 (MissingZero!4039 i!1204)) (= lt!229030 (MissingVacant!4039 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32376 (_ BitVec 32)) SeekEntryResult!4039)

(assert (=> b!503311 (= lt!229030 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!503312 () Bool)

(declare-fun e!294752 () Bool)

(declare-fun e!294751 () Bool)

(assert (=> b!503312 (= e!294752 e!294751)))

(declare-fun res!304759 () Bool)

(assert (=> b!503312 (=> res!304759 e!294751)))

(declare-fun lt!229035 () SeekEntryResult!4039)

(declare-fun lt!229029 () (_ BitVec 32))

(assert (=> b!503312 (= res!304759 (or (bvsgt (x!47395 lt!229035) #b01111111111111111111111111111110) (bvslt lt!229029 #b00000000000000000000000000000000) (bvsge lt!229029 (size!15929 a!3235)) (bvslt (index!18346 lt!229035) #b00000000000000000000000000000000) (bvsge (index!18346 lt!229035) (size!15929 a!3235)) (not (= lt!229035 (Intermediate!4039 false (index!18346 lt!229035) (x!47395 lt!229035))))))))

(assert (=> b!503312 (= (index!18346 lt!229035) i!1204)))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!15246 0))(
  ( (Unit!15247) )
))
(declare-fun lt!229027 () Unit!15246)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32376 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15246)

(assert (=> b!503312 (= lt!229027 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229029 #b00000000000000000000000000000000 (index!18346 lt!229035) (x!47395 lt!229035) mask!3524))))

(assert (=> b!503312 (and (or (= (select (arr!15565 a!3235) (index!18346 lt!229035)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15565 a!3235) (index!18346 lt!229035)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15565 a!3235) (index!18346 lt!229035)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15565 a!3235) (index!18346 lt!229035)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229031 () Unit!15246)

(declare-fun e!294755 () Unit!15246)

(assert (=> b!503312 (= lt!229031 e!294755)))

(declare-fun c!59558 () Bool)

(assert (=> b!503312 (= c!59558 (= (select (arr!15565 a!3235) (index!18346 lt!229035)) (select (arr!15565 a!3235) j!176)))))

(assert (=> b!503312 (and (bvslt (x!47395 lt!229035) #b01111111111111111111111111111110) (or (= (select (arr!15565 a!3235) (index!18346 lt!229035)) (select (arr!15565 a!3235) j!176)) (= (select (arr!15565 a!3235) (index!18346 lt!229035)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15565 a!3235) (index!18346 lt!229035)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503313 () Bool)

(declare-fun res!304758 () Bool)

(assert (=> b!503313 (=> res!304758 e!294751)))

(declare-fun e!294749 () Bool)

(assert (=> b!503313 (= res!304758 e!294749)))

(declare-fun res!304753 () Bool)

(assert (=> b!503313 (=> (not res!304753) (not e!294749))))

(assert (=> b!503313 (= res!304753 (bvsgt #b00000000000000000000000000000000 (x!47395 lt!229035)))))

(declare-fun b!503314 () Bool)

(declare-fun res!304760 () Bool)

(assert (=> b!503314 (=> (not res!304760) (not e!294754))))

(declare-datatypes ((List!9776 0))(
  ( (Nil!9773) (Cons!9772 (h!10649 (_ BitVec 64)) (t!16012 List!9776)) )
))
(declare-fun arrayNoDuplicates!0 (array!32376 (_ BitVec 32) List!9776) Bool)

(assert (=> b!503314 (= res!304760 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9773))))

(declare-fun b!503315 () Bool)

(declare-fun Unit!15248 () Unit!15246)

(assert (=> b!503315 (= e!294755 Unit!15248)))

(declare-fun lt!229034 () Unit!15246)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32376 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15246)

(assert (=> b!503315 (= lt!229034 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229029 #b00000000000000000000000000000000 (index!18346 lt!229035) (x!47395 lt!229035) mask!3524))))

(declare-fun res!304754 () Bool)

(declare-fun lt!229032 () (_ BitVec 64))

(declare-fun lt!229037 () array!32376)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32376 (_ BitVec 32)) SeekEntryResult!4039)

(assert (=> b!503315 (= res!304754 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229029 lt!229032 lt!229037 mask!3524) (Intermediate!4039 false (index!18346 lt!229035) (x!47395 lt!229035))))))

(assert (=> b!503315 (=> (not res!304754) (not e!294756))))

(assert (=> b!503315 e!294756))

(declare-fun b!503316 () Bool)

(assert (=> b!503316 (= e!294754 (not e!294752))))

(declare-fun res!304751 () Bool)

(assert (=> b!503316 (=> res!304751 e!294752)))

(declare-fun lt!229033 () (_ BitVec 32))

(assert (=> b!503316 (= res!304751 (= lt!229035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229033 lt!229032 lt!229037 mask!3524)))))

(assert (=> b!503316 (= lt!229035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229029 (select (arr!15565 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503316 (= lt!229033 (toIndex!0 lt!229032 mask!3524))))

(assert (=> b!503316 (= lt!229032 (select (store (arr!15565 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!503316 (= lt!229029 (toIndex!0 (select (arr!15565 a!3235) j!176) mask!3524))))

(assert (=> b!503316 (= lt!229037 (array!32377 (store (arr!15565 a!3235) i!1204 k0!2280) (size!15929 a!3235)))))

(declare-fun e!294750 () Bool)

(assert (=> b!503316 e!294750))

(declare-fun res!304750 () Bool)

(assert (=> b!503316 (=> (not res!304750) (not e!294750))))

(assert (=> b!503316 (= res!304750 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229028 () Unit!15246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32376 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15246)

(assert (=> b!503316 (= lt!229028 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503317 () Bool)

(declare-fun Unit!15249 () Unit!15246)

(assert (=> b!503317 (= e!294755 Unit!15249)))

(declare-fun res!304763 () Bool)

(assert (=> start!45660 (=> (not res!304763) (not e!294757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45660 (= res!304763 (validMask!0 mask!3524))))

(assert (=> start!45660 e!294757))

(assert (=> start!45660 true))

(declare-fun array_inv!11339 (array!32376) Bool)

(assert (=> start!45660 (array_inv!11339 a!3235)))

(declare-fun b!503318 () Bool)

(assert (=> b!503318 (= e!294750 (= (seekEntryOrOpen!0 (select (arr!15565 a!3235) j!176) a!3235 mask!3524) (Found!4039 j!176)))))

(declare-fun b!503319 () Bool)

(assert (=> b!503319 (= e!294751 true)))

(declare-fun lt!229036 () SeekEntryResult!4039)

(assert (=> b!503319 (= lt!229036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229029 lt!229032 lt!229037 mask!3524))))

(declare-fun b!503320 () Bool)

(declare-fun res!304756 () Bool)

(assert (=> b!503320 (=> (not res!304756) (not e!294757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503320 (= res!304756 (validKeyInArray!0 k0!2280))))

(declare-fun b!503321 () Bool)

(declare-fun res!304757 () Bool)

(assert (=> b!503321 (=> (not res!304757) (not e!294757))))

(assert (=> b!503321 (= res!304757 (validKeyInArray!0 (select (arr!15565 a!3235) j!176)))))

(declare-fun b!503322 () Bool)

(declare-fun res!304762 () Bool)

(assert (=> b!503322 (=> (not res!304762) (not e!294757))))

(assert (=> b!503322 (= res!304762 (and (= (size!15929 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15929 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15929 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503323 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32376 (_ BitVec 32)) SeekEntryResult!4039)

(assert (=> b!503323 (= e!294749 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229029 (index!18346 lt!229035) (select (arr!15565 a!3235) j!176) a!3235 mask!3524) (Found!4039 j!176))))))

(declare-fun b!503324 () Bool)

(declare-fun res!304761 () Bool)

(assert (=> b!503324 (=> res!304761 e!294752)))

(get-info :version)

(assert (=> b!503324 (= res!304761 (or (undefined!4851 lt!229035) (not ((_ is Intermediate!4039) lt!229035))))))

(assert (= (and start!45660 res!304763) b!503322))

(assert (= (and b!503322 res!304762) b!503321))

(assert (= (and b!503321 res!304757) b!503320))

(assert (= (and b!503320 res!304756) b!503310))

(assert (= (and b!503310 res!304749) b!503311))

(assert (= (and b!503311 res!304752) b!503309))

(assert (= (and b!503309 res!304755) b!503314))

(assert (= (and b!503314 res!304760) b!503316))

(assert (= (and b!503316 res!304750) b!503318))

(assert (= (and b!503316 (not res!304751)) b!503324))

(assert (= (and b!503324 (not res!304761)) b!503312))

(assert (= (and b!503312 c!59558) b!503315))

(assert (= (and b!503312 (not c!59558)) b!503317))

(assert (= (and b!503315 res!304754) b!503308))

(assert (= (and b!503312 (not res!304759)) b!503313))

(assert (= (and b!503313 res!304753) b!503323))

(assert (= (and b!503313 (not res!304758)) b!503319))

(declare-fun m!484175 () Bool)

(assert (=> start!45660 m!484175))

(declare-fun m!484177 () Bool)

(assert (=> start!45660 m!484177))

(declare-fun m!484179 () Bool)

(assert (=> b!503314 m!484179))

(declare-fun m!484181 () Bool)

(assert (=> b!503315 m!484181))

(declare-fun m!484183 () Bool)

(assert (=> b!503315 m!484183))

(declare-fun m!484185 () Bool)

(assert (=> b!503310 m!484185))

(declare-fun m!484187 () Bool)

(assert (=> b!503312 m!484187))

(declare-fun m!484189 () Bool)

(assert (=> b!503312 m!484189))

(declare-fun m!484191 () Bool)

(assert (=> b!503312 m!484191))

(assert (=> b!503318 m!484191))

(assert (=> b!503318 m!484191))

(declare-fun m!484193 () Bool)

(assert (=> b!503318 m!484193))

(declare-fun m!484195 () Bool)

(assert (=> b!503311 m!484195))

(assert (=> b!503323 m!484191))

(assert (=> b!503323 m!484191))

(declare-fun m!484197 () Bool)

(assert (=> b!503323 m!484197))

(assert (=> b!503319 m!484183))

(declare-fun m!484199 () Bool)

(assert (=> b!503309 m!484199))

(declare-fun m!484201 () Bool)

(assert (=> b!503320 m!484201))

(assert (=> b!503321 m!484191))

(assert (=> b!503321 m!484191))

(declare-fun m!484203 () Bool)

(assert (=> b!503321 m!484203))

(declare-fun m!484205 () Bool)

(assert (=> b!503316 m!484205))

(declare-fun m!484207 () Bool)

(assert (=> b!503316 m!484207))

(declare-fun m!484209 () Bool)

(assert (=> b!503316 m!484209))

(declare-fun m!484211 () Bool)

(assert (=> b!503316 m!484211))

(assert (=> b!503316 m!484191))

(declare-fun m!484213 () Bool)

(assert (=> b!503316 m!484213))

(assert (=> b!503316 m!484191))

(declare-fun m!484215 () Bool)

(assert (=> b!503316 m!484215))

(assert (=> b!503316 m!484191))

(declare-fun m!484217 () Bool)

(assert (=> b!503316 m!484217))

(declare-fun m!484219 () Bool)

(assert (=> b!503316 m!484219))

(check-sat (not b!503316) (not b!503312) (not b!503311) (not b!503318) (not b!503320) (not b!503315) (not b!503310) (not start!45660) (not b!503321) (not b!503309) (not b!503319) (not b!503323) (not b!503314))
(check-sat)
