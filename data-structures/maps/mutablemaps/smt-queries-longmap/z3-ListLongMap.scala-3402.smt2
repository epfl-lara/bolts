; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47016 () Bool)

(assert start!47016)

(declare-fun b!518194 () Bool)

(declare-fun e!302356 () Bool)

(assert (=> b!518194 (= e!302356 false)))

(declare-fun b!518195 () Bool)

(declare-fun res!317358 () Bool)

(declare-fun e!302353 () Bool)

(assert (=> b!518195 (=> res!317358 e!302353)))

(declare-datatypes ((SeekEntryResult!4393 0))(
  ( (MissingZero!4393 (index!19760 (_ BitVec 32))) (Found!4393 (index!19761 (_ BitVec 32))) (Intermediate!4393 (undefined!5205 Bool) (index!19762 (_ BitVec 32)) (x!48753 (_ BitVec 32))) (Undefined!4393) (MissingVacant!4393 (index!19763 (_ BitVec 32))) )
))
(declare-fun lt!237297 () SeekEntryResult!4393)

(get-info :version)

(assert (=> b!518195 (= res!317358 (or (undefined!5205 lt!237297) (not ((_ is Intermediate!4393) lt!237297))))))

(declare-fun b!518196 () Bool)

(declare-fun res!317352 () Bool)

(declare-fun e!302351 () Bool)

(assert (=> b!518196 (=> (not res!317352) (not e!302351))))

(declare-datatypes ((array!33117 0))(
  ( (array!33118 (arr!15919 (Array (_ BitVec 32) (_ BitVec 64))) (size!16283 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33117)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518196 (= res!317352 (validKeyInArray!0 (select (arr!15919 a!3235) j!176)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!302355 () Bool)

(declare-fun b!518197 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33117 (_ BitVec 32)) SeekEntryResult!4393)

(assert (=> b!518197 (= e!302355 (= (seekEntryOrOpen!0 (select (arr!15919 a!3235) j!176) a!3235 mask!3524) (Found!4393 j!176)))))

(declare-fun b!518198 () Bool)

(assert (=> b!518198 (= e!302353 (and (bvsge (index!19762 lt!237297) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237297) (size!16283 a!3235))))))

(declare-datatypes ((Unit!16038 0))(
  ( (Unit!16039) )
))
(declare-fun lt!237293 () Unit!16038)

(declare-fun e!302350 () Unit!16038)

(assert (=> b!518198 (= lt!237293 e!302350)))

(declare-fun c!60716 () Bool)

(assert (=> b!518198 (= c!60716 (= (select (arr!15919 a!3235) (index!19762 lt!237297)) (select (arr!15919 a!3235) j!176)))))

(assert (=> b!518198 (and (bvslt (x!48753 lt!237297) #b01111111111111111111111111111110) (or (= (select (arr!15919 a!3235) (index!19762 lt!237297)) (select (arr!15919 a!3235) j!176)) (= (select (arr!15919 a!3235) (index!19762 lt!237297)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15919 a!3235) (index!19762 lt!237297)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518199 () Bool)

(declare-fun res!317355 () Bool)

(declare-fun e!302352 () Bool)

(assert (=> b!518199 (=> (not res!317355) (not e!302352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33117 (_ BitVec 32)) Bool)

(assert (=> b!518199 (= res!317355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!518200 () Bool)

(assert (=> b!518200 (= e!302352 (not e!302353))))

(declare-fun res!317356 () Bool)

(assert (=> b!518200 (=> res!317356 e!302353)))

(declare-fun lt!237295 () (_ BitVec 64))

(declare-fun lt!237291 () array!33117)

(declare-fun lt!237292 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33117 (_ BitVec 32)) SeekEntryResult!4393)

(assert (=> b!518200 (= res!317356 (= lt!237297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237292 lt!237295 lt!237291 mask!3524)))))

(declare-fun lt!237298 () (_ BitVec 32))

(assert (=> b!518200 (= lt!237297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237298 (select (arr!15919 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518200 (= lt!237292 (toIndex!0 lt!237295 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518200 (= lt!237295 (select (store (arr!15919 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!518200 (= lt!237298 (toIndex!0 (select (arr!15919 a!3235) j!176) mask!3524))))

(assert (=> b!518200 (= lt!237291 (array!33118 (store (arr!15919 a!3235) i!1204 k0!2280) (size!16283 a!3235)))))

(assert (=> b!518200 e!302355))

(declare-fun res!317359 () Bool)

(assert (=> b!518200 (=> (not res!317359) (not e!302355))))

(assert (=> b!518200 (= res!317359 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237296 () Unit!16038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16038)

(assert (=> b!518200 (= lt!237296 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518201 () Bool)

(declare-fun res!317353 () Bool)

(assert (=> b!518201 (=> (not res!317353) (not e!302352))))

(declare-datatypes ((List!10130 0))(
  ( (Nil!10127) (Cons!10126 (h!11033 (_ BitVec 64)) (t!16366 List!10130)) )
))
(declare-fun arrayNoDuplicates!0 (array!33117 (_ BitVec 32) List!10130) Bool)

(assert (=> b!518201 (= res!317353 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10127))))

(declare-fun res!317354 () Bool)

(assert (=> start!47016 (=> (not res!317354) (not e!302351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47016 (= res!317354 (validMask!0 mask!3524))))

(assert (=> start!47016 e!302351))

(assert (=> start!47016 true))

(declare-fun array_inv!11693 (array!33117) Bool)

(assert (=> start!47016 (array_inv!11693 a!3235)))

(declare-fun b!518202 () Bool)

(declare-fun res!317350 () Bool)

(assert (=> b!518202 (=> (not res!317350) (not e!302351))))

(assert (=> b!518202 (= res!317350 (validKeyInArray!0 k0!2280))))

(declare-fun b!518203 () Bool)

(declare-fun res!317360 () Bool)

(assert (=> b!518203 (=> (not res!317360) (not e!302351))))

(assert (=> b!518203 (= res!317360 (and (= (size!16283 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16283 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16283 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!518204 () Bool)

(declare-fun Unit!16040 () Unit!16038)

(assert (=> b!518204 (= e!302350 Unit!16040)))

(declare-fun b!518205 () Bool)

(declare-fun res!317349 () Bool)

(assert (=> b!518205 (=> (not res!317349) (not e!302351))))

(declare-fun arrayContainsKey!0 (array!33117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518205 (= res!317349 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!518206 () Bool)

(assert (=> b!518206 (= e!302351 e!302352)))

(declare-fun res!317357 () Bool)

(assert (=> b!518206 (=> (not res!317357) (not e!302352))))

(declare-fun lt!237299 () SeekEntryResult!4393)

(assert (=> b!518206 (= res!317357 (or (= lt!237299 (MissingZero!4393 i!1204)) (= lt!237299 (MissingVacant!4393 i!1204))))))

(assert (=> b!518206 (= lt!237299 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!518207 () Bool)

(declare-fun Unit!16041 () Unit!16038)

(assert (=> b!518207 (= e!302350 Unit!16041)))

(declare-fun lt!237294 () Unit!16038)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33117 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16038)

(assert (=> b!518207 (= lt!237294 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!237298 #b00000000000000000000000000000000 (index!19762 lt!237297) (x!48753 lt!237297) mask!3524))))

(declare-fun res!317351 () Bool)

(assert (=> b!518207 (= res!317351 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237298 lt!237295 lt!237291 mask!3524) (Intermediate!4393 false (index!19762 lt!237297) (x!48753 lt!237297))))))

(assert (=> b!518207 (=> (not res!317351) (not e!302356))))

(assert (=> b!518207 e!302356))

(assert (= (and start!47016 res!317354) b!518203))

(assert (= (and b!518203 res!317360) b!518196))

(assert (= (and b!518196 res!317352) b!518202))

(assert (= (and b!518202 res!317350) b!518205))

(assert (= (and b!518205 res!317349) b!518206))

(assert (= (and b!518206 res!317357) b!518199))

(assert (= (and b!518199 res!317355) b!518201))

(assert (= (and b!518201 res!317353) b!518200))

(assert (= (and b!518200 res!317359) b!518197))

(assert (= (and b!518200 (not res!317356)) b!518195))

(assert (= (and b!518195 (not res!317358)) b!518198))

(assert (= (and b!518198 c!60716) b!518207))

(assert (= (and b!518198 (not c!60716)) b!518204))

(assert (= (and b!518207 res!317351) b!518194))

(declare-fun m!499609 () Bool)

(assert (=> b!518199 m!499609))

(declare-fun m!499611 () Bool)

(assert (=> start!47016 m!499611))

(declare-fun m!499613 () Bool)

(assert (=> start!47016 m!499613))

(declare-fun m!499615 () Bool)

(assert (=> b!518197 m!499615))

(assert (=> b!518197 m!499615))

(declare-fun m!499617 () Bool)

(assert (=> b!518197 m!499617))

(declare-fun m!499619 () Bool)

(assert (=> b!518198 m!499619))

(assert (=> b!518198 m!499615))

(assert (=> b!518200 m!499615))

(declare-fun m!499621 () Bool)

(assert (=> b!518200 m!499621))

(declare-fun m!499623 () Bool)

(assert (=> b!518200 m!499623))

(declare-fun m!499625 () Bool)

(assert (=> b!518200 m!499625))

(declare-fun m!499627 () Bool)

(assert (=> b!518200 m!499627))

(declare-fun m!499629 () Bool)

(assert (=> b!518200 m!499629))

(assert (=> b!518200 m!499615))

(declare-fun m!499631 () Bool)

(assert (=> b!518200 m!499631))

(declare-fun m!499633 () Bool)

(assert (=> b!518200 m!499633))

(declare-fun m!499635 () Bool)

(assert (=> b!518200 m!499635))

(assert (=> b!518200 m!499615))

(declare-fun m!499637 () Bool)

(assert (=> b!518207 m!499637))

(declare-fun m!499639 () Bool)

(assert (=> b!518207 m!499639))

(assert (=> b!518196 m!499615))

(assert (=> b!518196 m!499615))

(declare-fun m!499641 () Bool)

(assert (=> b!518196 m!499641))

(declare-fun m!499643 () Bool)

(assert (=> b!518202 m!499643))

(declare-fun m!499645 () Bool)

(assert (=> b!518205 m!499645))

(declare-fun m!499647 () Bool)

(assert (=> b!518206 m!499647))

(declare-fun m!499649 () Bool)

(assert (=> b!518201 m!499649))

(check-sat (not b!518196) (not b!518207) (not b!518197) (not b!518202) (not b!518200) (not b!518199) (not b!518205) (not start!47016) (not b!518201) (not b!518206))
(check-sat)
(get-model)

(declare-fun b!518258 () Bool)

(declare-fun e!302385 () Bool)

(declare-fun e!302384 () Bool)

(assert (=> b!518258 (= e!302385 e!302384)))

(declare-fun lt!237334 () (_ BitVec 64))

(assert (=> b!518258 (= lt!237334 (select (arr!15919 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237335 () Unit!16038)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33117 (_ BitVec 64) (_ BitVec 32)) Unit!16038)

(assert (=> b!518258 (= lt!237335 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237334 #b00000000000000000000000000000000))))

(assert (=> b!518258 (arrayContainsKey!0 a!3235 lt!237334 #b00000000000000000000000000000000)))

(declare-fun lt!237333 () Unit!16038)

(assert (=> b!518258 (= lt!237333 lt!237335)))

(declare-fun res!317402 () Bool)

(assert (=> b!518258 (= res!317402 (= (seekEntryOrOpen!0 (select (arr!15919 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4393 #b00000000000000000000000000000000)))))

(assert (=> b!518258 (=> (not res!317402) (not e!302384))))

(declare-fun b!518259 () Bool)

(declare-fun call!31703 () Bool)

(assert (=> b!518259 (= e!302384 call!31703)))

(declare-fun b!518261 () Bool)

(declare-fun e!302386 () Bool)

(assert (=> b!518261 (= e!302386 e!302385)))

(declare-fun c!60722 () Bool)

(assert (=> b!518261 (= c!60722 (validKeyInArray!0 (select (arr!15919 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31700 () Bool)

(assert (=> bm!31700 (= call!31703 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79737 () Bool)

(declare-fun res!317401 () Bool)

(assert (=> d!79737 (=> res!317401 e!302386)))

(assert (=> d!79737 (= res!317401 (bvsge #b00000000000000000000000000000000 (size!16283 a!3235)))))

(assert (=> d!79737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!302386)))

(declare-fun b!518260 () Bool)

(assert (=> b!518260 (= e!302385 call!31703)))

(assert (= (and d!79737 (not res!317401)) b!518261))

(assert (= (and b!518261 c!60722) b!518258))

(assert (= (and b!518261 (not c!60722)) b!518260))

(assert (= (and b!518258 res!317402) b!518259))

(assert (= (or b!518259 b!518260) bm!31700))

(declare-fun m!499693 () Bool)

(assert (=> b!518258 m!499693))

(declare-fun m!499695 () Bool)

(assert (=> b!518258 m!499695))

(declare-fun m!499697 () Bool)

(assert (=> b!518258 m!499697))

(assert (=> b!518258 m!499693))

(declare-fun m!499699 () Bool)

(assert (=> b!518258 m!499699))

(assert (=> b!518261 m!499693))

(assert (=> b!518261 m!499693))

(declare-fun m!499701 () Bool)

(assert (=> b!518261 m!499701))

(declare-fun m!499703 () Bool)

(assert (=> bm!31700 m!499703))

(assert (=> b!518199 d!79737))

(declare-fun d!79739 () Bool)

(declare-fun res!317407 () Bool)

(declare-fun e!302391 () Bool)

(assert (=> d!79739 (=> res!317407 e!302391)))

(assert (=> d!79739 (= res!317407 (= (select (arr!15919 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79739 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!302391)))

(declare-fun b!518266 () Bool)

(declare-fun e!302392 () Bool)

(assert (=> b!518266 (= e!302391 e!302392)))

(declare-fun res!317408 () Bool)

(assert (=> b!518266 (=> (not res!317408) (not e!302392))))

(assert (=> b!518266 (= res!317408 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16283 a!3235)))))

(declare-fun b!518267 () Bool)

(assert (=> b!518267 (= e!302392 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79739 (not res!317407)) b!518266))

(assert (= (and b!518266 res!317408) b!518267))

(assert (=> d!79739 m!499693))

(declare-fun m!499705 () Bool)

(assert (=> b!518267 m!499705))

(assert (=> b!518205 d!79739))

(declare-fun d!79741 () Bool)

(assert (=> d!79741 (= (validKeyInArray!0 (select (arr!15919 a!3235) j!176)) (and (not (= (select (arr!15919 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15919 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518196 d!79741))

(declare-fun d!79743 () Bool)

(declare-fun e!302395 () Bool)

(assert (=> d!79743 e!302395))

(declare-fun res!317411 () Bool)

(assert (=> d!79743 (=> (not res!317411) (not e!302395))))

(assert (=> d!79743 (= res!317411 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16283 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16283 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16283 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16283 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16283 a!3235))))))

(declare-fun lt!237338 () Unit!16038)

(declare-fun choose!47 (array!33117 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16038)

(assert (=> d!79743 (= lt!237338 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!237298 #b00000000000000000000000000000000 (index!19762 lt!237297) (x!48753 lt!237297) mask!3524))))

(assert (=> d!79743 (validMask!0 mask!3524)))

(assert (=> d!79743 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!237298 #b00000000000000000000000000000000 (index!19762 lt!237297) (x!48753 lt!237297) mask!3524) lt!237338)))

(declare-fun b!518270 () Bool)

(assert (=> b!518270 (= e!302395 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237298 (select (store (arr!15919 a!3235) i!1204 k0!2280) j!176) (array!33118 (store (arr!15919 a!3235) i!1204 k0!2280) (size!16283 a!3235)) mask!3524) (Intermediate!4393 false (index!19762 lt!237297) (x!48753 lt!237297))))))

(assert (= (and d!79743 res!317411) b!518270))

(declare-fun m!499707 () Bool)

(assert (=> d!79743 m!499707))

(assert (=> d!79743 m!499611))

(assert (=> b!518270 m!499623))

(assert (=> b!518270 m!499627))

(assert (=> b!518270 m!499627))

(declare-fun m!499709 () Bool)

(assert (=> b!518270 m!499709))

(assert (=> b!518207 d!79743))

(declare-fun d!79745 () Bool)

(declare-fun e!302422 () Bool)

(assert (=> d!79745 e!302422))

(declare-fun c!60729 () Bool)

(declare-fun lt!237343 () SeekEntryResult!4393)

(assert (=> d!79745 (= c!60729 (and ((_ is Intermediate!4393) lt!237343) (undefined!5205 lt!237343)))))

(declare-fun e!302421 () SeekEntryResult!4393)

(assert (=> d!79745 (= lt!237343 e!302421)))

(declare-fun c!60730 () Bool)

(assert (=> d!79745 (= c!60730 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237344 () (_ BitVec 64))

(assert (=> d!79745 (= lt!237344 (select (arr!15919 lt!237291) lt!237298))))

(assert (=> d!79745 (validMask!0 mask!3524)))

(assert (=> d!79745 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237298 lt!237295 lt!237291 mask!3524) lt!237343)))

(declare-fun b!518301 () Bool)

(declare-fun e!302420 () SeekEntryResult!4393)

(assert (=> b!518301 (= e!302420 (Intermediate!4393 false lt!237298 #b00000000000000000000000000000000))))

(declare-fun b!518302 () Bool)

(assert (=> b!518302 (and (bvsge (index!19762 lt!237343) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237343) (size!16283 lt!237291)))))

(declare-fun e!302419 () Bool)

(assert (=> b!518302 (= e!302419 (= (select (arr!15919 lt!237291) (index!19762 lt!237343)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!518303 () Bool)

(assert (=> b!518303 (and (bvsge (index!19762 lt!237343) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237343) (size!16283 lt!237291)))))

(declare-fun res!317431 () Bool)

(assert (=> b!518303 (= res!317431 (= (select (arr!15919 lt!237291) (index!19762 lt!237343)) lt!237295))))

(assert (=> b!518303 (=> res!317431 e!302419)))

(declare-fun e!302418 () Bool)

(assert (=> b!518303 (= e!302418 e!302419)))

(declare-fun b!518304 () Bool)

(assert (=> b!518304 (= e!302421 (Intermediate!4393 true lt!237298 #b00000000000000000000000000000000))))

(declare-fun b!518305 () Bool)

(assert (=> b!518305 (and (bvsge (index!19762 lt!237343) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237343) (size!16283 lt!237291)))))

(declare-fun res!317432 () Bool)

(assert (=> b!518305 (= res!317432 (= (select (arr!15919 lt!237291) (index!19762 lt!237343)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518305 (=> res!317432 e!302419)))

(declare-fun b!518306 () Bool)

(assert (=> b!518306 (= e!302421 e!302420)))

(declare-fun c!60731 () Bool)

(assert (=> b!518306 (= c!60731 (or (= lt!237344 lt!237295) (= (bvadd lt!237344 lt!237344) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518307 () Bool)

(assert (=> b!518307 (= e!302422 e!302418)))

(declare-fun res!317430 () Bool)

(assert (=> b!518307 (= res!317430 (and ((_ is Intermediate!4393) lt!237343) (not (undefined!5205 lt!237343)) (bvslt (x!48753 lt!237343) #b01111111111111111111111111111110) (bvsge (x!48753 lt!237343) #b00000000000000000000000000000000) (bvsge (x!48753 lt!237343) #b00000000000000000000000000000000)))))

(assert (=> b!518307 (=> (not res!317430) (not e!302418))))

(declare-fun b!518308 () Bool)

(assert (=> b!518308 (= e!302422 (bvsge (x!48753 lt!237343) #b01111111111111111111111111111110))))

(declare-fun b!518309 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518309 (= e!302420 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237298 #b00000000000000000000000000000000 mask!3524) lt!237295 lt!237291 mask!3524))))

(assert (= (and d!79745 c!60730) b!518304))

(assert (= (and d!79745 (not c!60730)) b!518306))

(assert (= (and b!518306 c!60731) b!518301))

(assert (= (and b!518306 (not c!60731)) b!518309))

(assert (= (and d!79745 c!60729) b!518308))

(assert (= (and d!79745 (not c!60729)) b!518307))

(assert (= (and b!518307 res!317430) b!518303))

(assert (= (and b!518303 (not res!317431)) b!518305))

(assert (= (and b!518305 (not res!317432)) b!518302))

(declare-fun m!499719 () Bool)

(assert (=> d!79745 m!499719))

(assert (=> d!79745 m!499611))

(declare-fun m!499721 () Bool)

(assert (=> b!518303 m!499721))

(assert (=> b!518302 m!499721))

(declare-fun m!499723 () Bool)

(assert (=> b!518309 m!499723))

(assert (=> b!518309 m!499723))

(declare-fun m!499725 () Bool)

(assert (=> b!518309 m!499725))

(assert (=> b!518305 m!499721))

(assert (=> b!518207 d!79745))

(declare-fun d!79759 () Bool)

(assert (=> d!79759 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518202 d!79759))

(declare-fun d!79761 () Bool)

(declare-fun lt!237363 () SeekEntryResult!4393)

(assert (=> d!79761 (and (or ((_ is Undefined!4393) lt!237363) (not ((_ is Found!4393) lt!237363)) (and (bvsge (index!19761 lt!237363) #b00000000000000000000000000000000) (bvslt (index!19761 lt!237363) (size!16283 a!3235)))) (or ((_ is Undefined!4393) lt!237363) ((_ is Found!4393) lt!237363) (not ((_ is MissingZero!4393) lt!237363)) (and (bvsge (index!19760 lt!237363) #b00000000000000000000000000000000) (bvslt (index!19760 lt!237363) (size!16283 a!3235)))) (or ((_ is Undefined!4393) lt!237363) ((_ is Found!4393) lt!237363) ((_ is MissingZero!4393) lt!237363) (not ((_ is MissingVacant!4393) lt!237363)) (and (bvsge (index!19763 lt!237363) #b00000000000000000000000000000000) (bvslt (index!19763 lt!237363) (size!16283 a!3235)))) (or ((_ is Undefined!4393) lt!237363) (ite ((_ is Found!4393) lt!237363) (= (select (arr!15919 a!3235) (index!19761 lt!237363)) (select (arr!15919 a!3235) j!176)) (ite ((_ is MissingZero!4393) lt!237363) (= (select (arr!15919 a!3235) (index!19760 lt!237363)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4393) lt!237363) (= (select (arr!15919 a!3235) (index!19763 lt!237363)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302441 () SeekEntryResult!4393)

(assert (=> d!79761 (= lt!237363 e!302441)))

(declare-fun c!60748 () Bool)

(declare-fun lt!237364 () SeekEntryResult!4393)

(assert (=> d!79761 (= c!60748 (and ((_ is Intermediate!4393) lt!237364) (undefined!5205 lt!237364)))))

(assert (=> d!79761 (= lt!237364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15919 a!3235) j!176) mask!3524) (select (arr!15919 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79761 (validMask!0 mask!3524)))

(assert (=> d!79761 (= (seekEntryOrOpen!0 (select (arr!15919 a!3235) j!176) a!3235 mask!3524) lt!237363)))

(declare-fun b!518343 () Bool)

(declare-fun c!60749 () Bool)

(declare-fun lt!237365 () (_ BitVec 64))

(assert (=> b!518343 (= c!60749 (= lt!237365 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302442 () SeekEntryResult!4393)

(declare-fun e!302443 () SeekEntryResult!4393)

(assert (=> b!518343 (= e!302442 e!302443)))

(declare-fun b!518344 () Bool)

(assert (=> b!518344 (= e!302442 (Found!4393 (index!19762 lt!237364)))))

(declare-fun b!518345 () Bool)

(assert (=> b!518345 (= e!302443 (MissingZero!4393 (index!19762 lt!237364)))))

(declare-fun b!518346 () Bool)

(assert (=> b!518346 (= e!302441 e!302442)))

(assert (=> b!518346 (= lt!237365 (select (arr!15919 a!3235) (index!19762 lt!237364)))))

(declare-fun c!60747 () Bool)

(assert (=> b!518346 (= c!60747 (= lt!237365 (select (arr!15919 a!3235) j!176)))))

(declare-fun b!518347 () Bool)

(assert (=> b!518347 (= e!302441 Undefined!4393)))

(declare-fun b!518348 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33117 (_ BitVec 32)) SeekEntryResult!4393)

(assert (=> b!518348 (= e!302443 (seekKeyOrZeroReturnVacant!0 (x!48753 lt!237364) (index!19762 lt!237364) (index!19762 lt!237364) (select (arr!15919 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79761 c!60748) b!518347))

(assert (= (and d!79761 (not c!60748)) b!518346))

(assert (= (and b!518346 c!60747) b!518344))

(assert (= (and b!518346 (not c!60747)) b!518343))

(assert (= (and b!518343 c!60749) b!518345))

(assert (= (and b!518343 (not c!60749)) b!518348))

(assert (=> d!79761 m!499631))

(assert (=> d!79761 m!499615))

(declare-fun m!499745 () Bool)

(assert (=> d!79761 m!499745))

(assert (=> d!79761 m!499615))

(assert (=> d!79761 m!499631))

(declare-fun m!499747 () Bool)

(assert (=> d!79761 m!499747))

(declare-fun m!499749 () Bool)

(assert (=> d!79761 m!499749))

(assert (=> d!79761 m!499611))

(declare-fun m!499751 () Bool)

(assert (=> d!79761 m!499751))

(declare-fun m!499753 () Bool)

(assert (=> b!518346 m!499753))

(assert (=> b!518348 m!499615))

(declare-fun m!499755 () Bool)

(assert (=> b!518348 m!499755))

(assert (=> b!518197 d!79761))

(declare-fun d!79769 () Bool)

(declare-fun lt!237378 () (_ BitVec 32))

(declare-fun lt!237377 () (_ BitVec 32))

(assert (=> d!79769 (= lt!237378 (bvmul (bvxor lt!237377 (bvlshr lt!237377 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79769 (= lt!237377 ((_ extract 31 0) (bvand (bvxor (select (arr!15919 a!3235) j!176) (bvlshr (select (arr!15919 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79769 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317442 (let ((h!11035 ((_ extract 31 0) (bvand (bvxor (select (arr!15919 a!3235) j!176) (bvlshr (select (arr!15919 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48758 (bvmul (bvxor h!11035 (bvlshr h!11035 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48758 (bvlshr x!48758 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317442 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317442 #b00000000000000000000000000000000))))))

(assert (=> d!79769 (= (toIndex!0 (select (arr!15919 a!3235) j!176) mask!3524) (bvand (bvxor lt!237378 (bvlshr lt!237378 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518200 d!79769))

(declare-fun b!518388 () Bool)

(declare-fun e!302470 () Bool)

(declare-fun e!302469 () Bool)

(assert (=> b!518388 (= e!302470 e!302469)))

(declare-fun lt!237380 () (_ BitVec 64))

(assert (=> b!518388 (= lt!237380 (select (arr!15919 a!3235) j!176))))

(declare-fun lt!237381 () Unit!16038)

(assert (=> b!518388 (= lt!237381 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237380 j!176))))

(assert (=> b!518388 (arrayContainsKey!0 a!3235 lt!237380 #b00000000000000000000000000000000)))

(declare-fun lt!237379 () Unit!16038)

(assert (=> b!518388 (= lt!237379 lt!237381)))

(declare-fun res!317453 () Bool)

(assert (=> b!518388 (= res!317453 (= (seekEntryOrOpen!0 (select (arr!15919 a!3235) j!176) a!3235 mask!3524) (Found!4393 j!176)))))

(assert (=> b!518388 (=> (not res!317453) (not e!302469))))

(declare-fun b!518389 () Bool)

(declare-fun call!31707 () Bool)

(assert (=> b!518389 (= e!302469 call!31707)))

(declare-fun b!518391 () Bool)

(declare-fun e!302471 () Bool)

(assert (=> b!518391 (= e!302471 e!302470)))

(declare-fun c!60762 () Bool)

(assert (=> b!518391 (= c!60762 (validKeyInArray!0 (select (arr!15919 a!3235) j!176)))))

(declare-fun bm!31704 () Bool)

(assert (=> bm!31704 (= call!31707 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79773 () Bool)

(declare-fun res!317452 () Bool)

(assert (=> d!79773 (=> res!317452 e!302471)))

(assert (=> d!79773 (= res!317452 (bvsge j!176 (size!16283 a!3235)))))

(assert (=> d!79773 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302471)))

(declare-fun b!518390 () Bool)

(assert (=> b!518390 (= e!302470 call!31707)))

(assert (= (and d!79773 (not res!317452)) b!518391))

(assert (= (and b!518391 c!60762) b!518388))

(assert (= (and b!518391 (not c!60762)) b!518390))

(assert (= (and b!518388 res!317453) b!518389))

(assert (= (or b!518389 b!518390) bm!31704))

(assert (=> b!518388 m!499615))

(declare-fun m!499775 () Bool)

(assert (=> b!518388 m!499775))

(declare-fun m!499777 () Bool)

(assert (=> b!518388 m!499777))

(assert (=> b!518388 m!499615))

(assert (=> b!518388 m!499617))

(assert (=> b!518391 m!499615))

(assert (=> b!518391 m!499615))

(assert (=> b!518391 m!499641))

(declare-fun m!499779 () Bool)

(assert (=> bm!31704 m!499779))

(assert (=> b!518200 d!79773))

(declare-fun d!79777 () Bool)

(assert (=> d!79777 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237386 () Unit!16038)

(declare-fun choose!38 (array!33117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16038)

(assert (=> d!79777 (= lt!237386 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79777 (validMask!0 mask!3524)))

(assert (=> d!79777 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237386)))

(declare-fun bs!16356 () Bool)

(assert (= bs!16356 d!79777))

(assert (=> bs!16356 m!499633))

(declare-fun m!499789 () Bool)

(assert (=> bs!16356 m!499789))

(assert (=> bs!16356 m!499611))

(assert (=> b!518200 d!79777))

(declare-fun d!79781 () Bool)

(declare-fun e!302481 () Bool)

(assert (=> d!79781 e!302481))

(declare-fun c!60766 () Bool)

(declare-fun lt!237387 () SeekEntryResult!4393)

(assert (=> d!79781 (= c!60766 (and ((_ is Intermediate!4393) lt!237387) (undefined!5205 lt!237387)))))

(declare-fun e!302480 () SeekEntryResult!4393)

(assert (=> d!79781 (= lt!237387 e!302480)))

(declare-fun c!60767 () Bool)

(assert (=> d!79781 (= c!60767 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237388 () (_ BitVec 64))

(assert (=> d!79781 (= lt!237388 (select (arr!15919 lt!237291) lt!237292))))

(assert (=> d!79781 (validMask!0 mask!3524)))

(assert (=> d!79781 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237292 lt!237295 lt!237291 mask!3524) lt!237387)))

(declare-fun b!518401 () Bool)

(declare-fun e!302479 () SeekEntryResult!4393)

(assert (=> b!518401 (= e!302479 (Intermediate!4393 false lt!237292 #b00000000000000000000000000000000))))

(declare-fun b!518402 () Bool)

(assert (=> b!518402 (and (bvsge (index!19762 lt!237387) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237387) (size!16283 lt!237291)))))

(declare-fun e!302478 () Bool)

(assert (=> b!518402 (= e!302478 (= (select (arr!15919 lt!237291) (index!19762 lt!237387)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!518403 () Bool)

(assert (=> b!518403 (and (bvsge (index!19762 lt!237387) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237387) (size!16283 lt!237291)))))

(declare-fun res!317458 () Bool)

(assert (=> b!518403 (= res!317458 (= (select (arr!15919 lt!237291) (index!19762 lt!237387)) lt!237295))))

(assert (=> b!518403 (=> res!317458 e!302478)))

(declare-fun e!302477 () Bool)

(assert (=> b!518403 (= e!302477 e!302478)))

(declare-fun b!518404 () Bool)

(assert (=> b!518404 (= e!302480 (Intermediate!4393 true lt!237292 #b00000000000000000000000000000000))))

(declare-fun b!518405 () Bool)

(assert (=> b!518405 (and (bvsge (index!19762 lt!237387) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237387) (size!16283 lt!237291)))))

(declare-fun res!317459 () Bool)

(assert (=> b!518405 (= res!317459 (= (select (arr!15919 lt!237291) (index!19762 lt!237387)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518405 (=> res!317459 e!302478)))

(declare-fun b!518406 () Bool)

(assert (=> b!518406 (= e!302480 e!302479)))

(declare-fun c!60768 () Bool)

(assert (=> b!518406 (= c!60768 (or (= lt!237388 lt!237295) (= (bvadd lt!237388 lt!237388) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518407 () Bool)

(assert (=> b!518407 (= e!302481 e!302477)))

(declare-fun res!317457 () Bool)

(assert (=> b!518407 (= res!317457 (and ((_ is Intermediate!4393) lt!237387) (not (undefined!5205 lt!237387)) (bvslt (x!48753 lt!237387) #b01111111111111111111111111111110) (bvsge (x!48753 lt!237387) #b00000000000000000000000000000000) (bvsge (x!48753 lt!237387) #b00000000000000000000000000000000)))))

(assert (=> b!518407 (=> (not res!317457) (not e!302477))))

(declare-fun b!518408 () Bool)

(assert (=> b!518408 (= e!302481 (bvsge (x!48753 lt!237387) #b01111111111111111111111111111110))))

(declare-fun b!518409 () Bool)

(assert (=> b!518409 (= e!302479 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237292 #b00000000000000000000000000000000 mask!3524) lt!237295 lt!237291 mask!3524))))

(assert (= (and d!79781 c!60767) b!518404))

(assert (= (and d!79781 (not c!60767)) b!518406))

(assert (= (and b!518406 c!60768) b!518401))

(assert (= (and b!518406 (not c!60768)) b!518409))

(assert (= (and d!79781 c!60766) b!518408))

(assert (= (and d!79781 (not c!60766)) b!518407))

(assert (= (and b!518407 res!317457) b!518403))

(assert (= (and b!518403 (not res!317458)) b!518405))

(assert (= (and b!518405 (not res!317459)) b!518402))

(declare-fun m!499791 () Bool)

(assert (=> d!79781 m!499791))

(assert (=> d!79781 m!499611))

(declare-fun m!499793 () Bool)

(assert (=> b!518403 m!499793))

(assert (=> b!518402 m!499793))

(declare-fun m!499795 () Bool)

(assert (=> b!518409 m!499795))

(assert (=> b!518409 m!499795))

(declare-fun m!499797 () Bool)

(assert (=> b!518409 m!499797))

(assert (=> b!518405 m!499793))

(assert (=> b!518200 d!79781))

(declare-fun d!79783 () Bool)

(declare-fun lt!237390 () (_ BitVec 32))

(declare-fun lt!237389 () (_ BitVec 32))

(assert (=> d!79783 (= lt!237390 (bvmul (bvxor lt!237389 (bvlshr lt!237389 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79783 (= lt!237389 ((_ extract 31 0) (bvand (bvxor lt!237295 (bvlshr lt!237295 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79783 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317442 (let ((h!11035 ((_ extract 31 0) (bvand (bvxor lt!237295 (bvlshr lt!237295 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48758 (bvmul (bvxor h!11035 (bvlshr h!11035 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48758 (bvlshr x!48758 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317442 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317442 #b00000000000000000000000000000000))))))

(assert (=> d!79783 (= (toIndex!0 lt!237295 mask!3524) (bvand (bvxor lt!237390 (bvlshr lt!237390 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518200 d!79783))

(declare-fun d!79785 () Bool)

(declare-fun e!302486 () Bool)

(assert (=> d!79785 e!302486))

(declare-fun c!60769 () Bool)

(declare-fun lt!237391 () SeekEntryResult!4393)

(assert (=> d!79785 (= c!60769 (and ((_ is Intermediate!4393) lt!237391) (undefined!5205 lt!237391)))))

(declare-fun e!302485 () SeekEntryResult!4393)

(assert (=> d!79785 (= lt!237391 e!302485)))

(declare-fun c!60770 () Bool)

(assert (=> d!79785 (= c!60770 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!237392 () (_ BitVec 64))

(assert (=> d!79785 (= lt!237392 (select (arr!15919 a!3235) lt!237298))))

(assert (=> d!79785 (validMask!0 mask!3524)))

(assert (=> d!79785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237298 (select (arr!15919 a!3235) j!176) a!3235 mask!3524) lt!237391)))

(declare-fun b!518410 () Bool)

(declare-fun e!302484 () SeekEntryResult!4393)

(assert (=> b!518410 (= e!302484 (Intermediate!4393 false lt!237298 #b00000000000000000000000000000000))))

(declare-fun b!518411 () Bool)

(assert (=> b!518411 (and (bvsge (index!19762 lt!237391) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237391) (size!16283 a!3235)))))

(declare-fun e!302483 () Bool)

(assert (=> b!518411 (= e!302483 (= (select (arr!15919 a!3235) (index!19762 lt!237391)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!518412 () Bool)

(assert (=> b!518412 (and (bvsge (index!19762 lt!237391) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237391) (size!16283 a!3235)))))

(declare-fun res!317461 () Bool)

(assert (=> b!518412 (= res!317461 (= (select (arr!15919 a!3235) (index!19762 lt!237391)) (select (arr!15919 a!3235) j!176)))))

(assert (=> b!518412 (=> res!317461 e!302483)))

(declare-fun e!302482 () Bool)

(assert (=> b!518412 (= e!302482 e!302483)))

(declare-fun b!518413 () Bool)

(assert (=> b!518413 (= e!302485 (Intermediate!4393 true lt!237298 #b00000000000000000000000000000000))))

(declare-fun b!518414 () Bool)

(assert (=> b!518414 (and (bvsge (index!19762 lt!237391) #b00000000000000000000000000000000) (bvslt (index!19762 lt!237391) (size!16283 a!3235)))))

(declare-fun res!317462 () Bool)

(assert (=> b!518414 (= res!317462 (= (select (arr!15919 a!3235) (index!19762 lt!237391)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518414 (=> res!317462 e!302483)))

(declare-fun b!518415 () Bool)

(assert (=> b!518415 (= e!302485 e!302484)))

(declare-fun c!60771 () Bool)

(assert (=> b!518415 (= c!60771 (or (= lt!237392 (select (arr!15919 a!3235) j!176)) (= (bvadd lt!237392 lt!237392) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518416 () Bool)

(assert (=> b!518416 (= e!302486 e!302482)))

(declare-fun res!317460 () Bool)

(assert (=> b!518416 (= res!317460 (and ((_ is Intermediate!4393) lt!237391) (not (undefined!5205 lt!237391)) (bvslt (x!48753 lt!237391) #b01111111111111111111111111111110) (bvsge (x!48753 lt!237391) #b00000000000000000000000000000000) (bvsge (x!48753 lt!237391) #b00000000000000000000000000000000)))))

(assert (=> b!518416 (=> (not res!317460) (not e!302482))))

(declare-fun b!518417 () Bool)

(assert (=> b!518417 (= e!302486 (bvsge (x!48753 lt!237391) #b01111111111111111111111111111110))))

(declare-fun b!518418 () Bool)

(assert (=> b!518418 (= e!302484 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237298 #b00000000000000000000000000000000 mask!3524) (select (arr!15919 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79785 c!60770) b!518413))

(assert (= (and d!79785 (not c!60770)) b!518415))

(assert (= (and b!518415 c!60771) b!518410))

(assert (= (and b!518415 (not c!60771)) b!518418))

(assert (= (and d!79785 c!60769) b!518417))

(assert (= (and d!79785 (not c!60769)) b!518416))

(assert (= (and b!518416 res!317460) b!518412))

(assert (= (and b!518412 (not res!317461)) b!518414))

(assert (= (and b!518414 (not res!317462)) b!518411))

(declare-fun m!499799 () Bool)

(assert (=> d!79785 m!499799))

(assert (=> d!79785 m!499611))

(declare-fun m!499801 () Bool)

(assert (=> b!518412 m!499801))

(assert (=> b!518411 m!499801))

(assert (=> b!518418 m!499723))

(assert (=> b!518418 m!499723))

(assert (=> b!518418 m!499615))

(declare-fun m!499803 () Bool)

(assert (=> b!518418 m!499803))

(assert (=> b!518414 m!499801))

(assert (=> b!518200 d!79785))

(declare-fun d!79787 () Bool)

(declare-fun lt!237393 () SeekEntryResult!4393)

(assert (=> d!79787 (and (or ((_ is Undefined!4393) lt!237393) (not ((_ is Found!4393) lt!237393)) (and (bvsge (index!19761 lt!237393) #b00000000000000000000000000000000) (bvslt (index!19761 lt!237393) (size!16283 a!3235)))) (or ((_ is Undefined!4393) lt!237393) ((_ is Found!4393) lt!237393) (not ((_ is MissingZero!4393) lt!237393)) (and (bvsge (index!19760 lt!237393) #b00000000000000000000000000000000) (bvslt (index!19760 lt!237393) (size!16283 a!3235)))) (or ((_ is Undefined!4393) lt!237393) ((_ is Found!4393) lt!237393) ((_ is MissingZero!4393) lt!237393) (not ((_ is MissingVacant!4393) lt!237393)) (and (bvsge (index!19763 lt!237393) #b00000000000000000000000000000000) (bvslt (index!19763 lt!237393) (size!16283 a!3235)))) (or ((_ is Undefined!4393) lt!237393) (ite ((_ is Found!4393) lt!237393) (= (select (arr!15919 a!3235) (index!19761 lt!237393)) k0!2280) (ite ((_ is MissingZero!4393) lt!237393) (= (select (arr!15919 a!3235) (index!19760 lt!237393)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4393) lt!237393) (= (select (arr!15919 a!3235) (index!19763 lt!237393)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302487 () SeekEntryResult!4393)

(assert (=> d!79787 (= lt!237393 e!302487)))

(declare-fun c!60773 () Bool)

(declare-fun lt!237394 () SeekEntryResult!4393)

(assert (=> d!79787 (= c!60773 (and ((_ is Intermediate!4393) lt!237394) (undefined!5205 lt!237394)))))

(assert (=> d!79787 (= lt!237394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79787 (validMask!0 mask!3524)))

(assert (=> d!79787 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!237393)))

(declare-fun b!518419 () Bool)

(declare-fun c!60774 () Bool)

(declare-fun lt!237395 () (_ BitVec 64))

(assert (=> b!518419 (= c!60774 (= lt!237395 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302488 () SeekEntryResult!4393)

(declare-fun e!302489 () SeekEntryResult!4393)

(assert (=> b!518419 (= e!302488 e!302489)))

(declare-fun b!518420 () Bool)

(assert (=> b!518420 (= e!302488 (Found!4393 (index!19762 lt!237394)))))

(declare-fun b!518421 () Bool)

(assert (=> b!518421 (= e!302489 (MissingZero!4393 (index!19762 lt!237394)))))

(declare-fun b!518422 () Bool)

(assert (=> b!518422 (= e!302487 e!302488)))

(assert (=> b!518422 (= lt!237395 (select (arr!15919 a!3235) (index!19762 lt!237394)))))

(declare-fun c!60772 () Bool)

(assert (=> b!518422 (= c!60772 (= lt!237395 k0!2280))))

(declare-fun b!518423 () Bool)

(assert (=> b!518423 (= e!302487 Undefined!4393)))

(declare-fun b!518424 () Bool)

(assert (=> b!518424 (= e!302489 (seekKeyOrZeroReturnVacant!0 (x!48753 lt!237394) (index!19762 lt!237394) (index!19762 lt!237394) k0!2280 a!3235 mask!3524))))

(assert (= (and d!79787 c!60773) b!518423))

(assert (= (and d!79787 (not c!60773)) b!518422))

(assert (= (and b!518422 c!60772) b!518420))

(assert (= (and b!518422 (not c!60772)) b!518419))

(assert (= (and b!518419 c!60774) b!518421))

(assert (= (and b!518419 (not c!60774)) b!518424))

(declare-fun m!499805 () Bool)

(assert (=> d!79787 m!499805))

(declare-fun m!499807 () Bool)

(assert (=> d!79787 m!499807))

(assert (=> d!79787 m!499805))

(declare-fun m!499809 () Bool)

(assert (=> d!79787 m!499809))

(declare-fun m!499811 () Bool)

(assert (=> d!79787 m!499811))

(assert (=> d!79787 m!499611))

(declare-fun m!499813 () Bool)

(assert (=> d!79787 m!499813))

(declare-fun m!499815 () Bool)

(assert (=> b!518422 m!499815))

(declare-fun m!499817 () Bool)

(assert (=> b!518424 m!499817))

(assert (=> b!518206 d!79787))

(declare-fun d!79789 () Bool)

(assert (=> d!79789 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47016 d!79789))

(declare-fun d!79793 () Bool)

(assert (=> d!79793 (= (array_inv!11693 a!3235) (bvsge (size!16283 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47016 d!79793))

(declare-fun b!518462 () Bool)

(declare-fun e!302513 () Bool)

(declare-fun contains!2756 (List!10130 (_ BitVec 64)) Bool)

(assert (=> b!518462 (= e!302513 (contains!2756 Nil!10127 (select (arr!15919 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518463 () Bool)

(declare-fun e!302516 () Bool)

(declare-fun call!31710 () Bool)

(assert (=> b!518463 (= e!302516 call!31710)))

(declare-fun bm!31707 () Bool)

(declare-fun c!60789 () Bool)

(assert (=> bm!31707 (= call!31710 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60789 (Cons!10126 (select (arr!15919 a!3235) #b00000000000000000000000000000000) Nil!10127) Nil!10127)))))

(declare-fun d!79795 () Bool)

(declare-fun res!317474 () Bool)

(declare-fun e!302515 () Bool)

(assert (=> d!79795 (=> res!317474 e!302515)))

(assert (=> d!79795 (= res!317474 (bvsge #b00000000000000000000000000000000 (size!16283 a!3235)))))

(assert (=> d!79795 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10127) e!302515)))

(declare-fun b!518464 () Bool)

(declare-fun e!302514 () Bool)

(assert (=> b!518464 (= e!302514 e!302516)))

(assert (=> b!518464 (= c!60789 (validKeyInArray!0 (select (arr!15919 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518465 () Bool)

(assert (=> b!518465 (= e!302516 call!31710)))

(declare-fun b!518466 () Bool)

(assert (=> b!518466 (= e!302515 e!302514)))

(declare-fun res!317473 () Bool)

(assert (=> b!518466 (=> (not res!317473) (not e!302514))))

(assert (=> b!518466 (= res!317473 (not e!302513))))

(declare-fun res!317475 () Bool)

(assert (=> b!518466 (=> (not res!317475) (not e!302513))))

(assert (=> b!518466 (= res!317475 (validKeyInArray!0 (select (arr!15919 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79795 (not res!317474)) b!518466))

(assert (= (and b!518466 res!317475) b!518462))

(assert (= (and b!518466 res!317473) b!518464))

(assert (= (and b!518464 c!60789) b!518463))

(assert (= (and b!518464 (not c!60789)) b!518465))

(assert (= (or b!518463 b!518465) bm!31707))

(assert (=> b!518462 m!499693))

(assert (=> b!518462 m!499693))

(declare-fun m!499849 () Bool)

(assert (=> b!518462 m!499849))

(assert (=> bm!31707 m!499693))

(declare-fun m!499851 () Bool)

(assert (=> bm!31707 m!499851))

(assert (=> b!518464 m!499693))

(assert (=> b!518464 m!499693))

(assert (=> b!518464 m!499701))

(assert (=> b!518466 m!499693))

(assert (=> b!518466 m!499693))

(assert (=> b!518466 m!499701))

(assert (=> b!518201 d!79795))

(check-sat (not bm!31704) (not b!518309) (not d!79787) (not b!518464) (not b!518348) (not b!518267) (not d!79777) (not d!79781) (not d!79785) (not b!518258) (not b!518391) (not b!518466) (not b!518261) (not b!518462) (not d!79745) (not b!518409) (not b!518388) (not d!79761) (not bm!31700) (not b!518270) (not bm!31707) (not b!518418) (not b!518424) (not d!79743))
(check-sat)
