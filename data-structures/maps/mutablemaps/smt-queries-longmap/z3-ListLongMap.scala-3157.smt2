; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44478 () Bool)

(assert start!44478)

(declare-fun b!488217 () Bool)

(declare-fun res!291529 () Bool)

(declare-fun e!287203 () Bool)

(assert (=> b!488217 (=> (not res!291529) (not e!287203))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31593 0))(
  ( (array!31594 (arr!15184 (Array (_ BitVec 32) (_ BitVec 64))) (size!15548 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31593)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488217 (= res!291529 (and (= (size!15548 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15548 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15548 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488218 () Bool)

(declare-fun res!291535 () Bool)

(assert (=> b!488218 (=> (not res!291535) (not e!287203))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488218 (= res!291535 (validKeyInArray!0 k0!2280))))

(declare-fun b!488219 () Bool)

(declare-fun res!291536 () Bool)

(declare-fun e!287205 () Bool)

(assert (=> b!488219 (=> (not res!291536) (not e!287205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31593 (_ BitVec 32)) Bool)

(assert (=> b!488219 (= res!291536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488220 () Bool)

(declare-fun res!291528 () Bool)

(assert (=> b!488220 (=> (not res!291528) (not e!287203))))

(assert (=> b!488220 (= res!291528 (validKeyInArray!0 (select (arr!15184 a!3235) j!176)))))

(declare-fun b!488221 () Bool)

(assert (=> b!488221 (= e!287205 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111))))))

(declare-fun e!287204 () Bool)

(assert (=> b!488221 e!287204))

(declare-fun res!291530 () Bool)

(assert (=> b!488221 (=> (not res!291530) (not e!287204))))

(assert (=> b!488221 (= res!291530 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14254 0))(
  ( (Unit!14255) )
))
(declare-fun lt!220352 () Unit!14254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14254)

(assert (=> b!488221 (= lt!220352 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488222 () Bool)

(assert (=> b!488222 (= e!287203 e!287205)))

(declare-fun res!291532 () Bool)

(assert (=> b!488222 (=> (not res!291532) (not e!287205))))

(declare-datatypes ((SeekEntryResult!3658 0))(
  ( (MissingZero!3658 (index!16811 (_ BitVec 32))) (Found!3658 (index!16812 (_ BitVec 32))) (Intermediate!3658 (undefined!4470 Bool) (index!16813 (_ BitVec 32)) (x!45956 (_ BitVec 32))) (Undefined!3658) (MissingVacant!3658 (index!16814 (_ BitVec 32))) )
))
(declare-fun lt!220351 () SeekEntryResult!3658)

(assert (=> b!488222 (= res!291532 (or (= lt!220351 (MissingZero!3658 i!1204)) (= lt!220351 (MissingVacant!3658 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31593 (_ BitVec 32)) SeekEntryResult!3658)

(assert (=> b!488222 (= lt!220351 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!291534 () Bool)

(assert (=> start!44478 (=> (not res!291534) (not e!287203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44478 (= res!291534 (validMask!0 mask!3524))))

(assert (=> start!44478 e!287203))

(assert (=> start!44478 true))

(declare-fun array_inv!10958 (array!31593) Bool)

(assert (=> start!44478 (array_inv!10958 a!3235)))

(declare-fun b!488223 () Bool)

(declare-fun res!291533 () Bool)

(assert (=> b!488223 (=> (not res!291533) (not e!287205))))

(declare-datatypes ((List!9395 0))(
  ( (Nil!9392) (Cons!9391 (h!10250 (_ BitVec 64)) (t!15631 List!9395)) )
))
(declare-fun arrayNoDuplicates!0 (array!31593 (_ BitVec 32) List!9395) Bool)

(assert (=> b!488223 (= res!291533 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9392))))

(declare-fun b!488224 () Bool)

(declare-fun res!291531 () Bool)

(assert (=> b!488224 (=> (not res!291531) (not e!287203))))

(declare-fun arrayContainsKey!0 (array!31593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488224 (= res!291531 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488225 () Bool)

(assert (=> b!488225 (= e!287204 (= (seekEntryOrOpen!0 (select (arr!15184 a!3235) j!176) a!3235 mask!3524) (Found!3658 j!176)))))

(assert (= (and start!44478 res!291534) b!488217))

(assert (= (and b!488217 res!291529) b!488220))

(assert (= (and b!488220 res!291528) b!488218))

(assert (= (and b!488218 res!291535) b!488224))

(assert (= (and b!488224 res!291531) b!488222))

(assert (= (and b!488222 res!291532) b!488219))

(assert (= (and b!488219 res!291536) b!488223))

(assert (= (and b!488223 res!291533) b!488221))

(assert (= (and b!488221 res!291530) b!488225))

(declare-fun m!467989 () Bool)

(assert (=> start!44478 m!467989))

(declare-fun m!467991 () Bool)

(assert (=> start!44478 m!467991))

(declare-fun m!467993 () Bool)

(assert (=> b!488223 m!467993))

(declare-fun m!467995 () Bool)

(assert (=> b!488224 m!467995))

(declare-fun m!467997 () Bool)

(assert (=> b!488222 m!467997))

(declare-fun m!467999 () Bool)

(assert (=> b!488219 m!467999))

(declare-fun m!468001 () Bool)

(assert (=> b!488220 m!468001))

(assert (=> b!488220 m!468001))

(declare-fun m!468003 () Bool)

(assert (=> b!488220 m!468003))

(declare-fun m!468005 () Bool)

(assert (=> b!488218 m!468005))

(declare-fun m!468007 () Bool)

(assert (=> b!488221 m!468007))

(declare-fun m!468009 () Bool)

(assert (=> b!488221 m!468009))

(assert (=> b!488225 m!468001))

(assert (=> b!488225 m!468001))

(declare-fun m!468011 () Bool)

(assert (=> b!488225 m!468011))

(check-sat (not b!488222) (not b!488225) (not start!44478) (not b!488219) (not b!488220) (not b!488218) (not b!488223) (not b!488224) (not b!488221))
(check-sat)
(get-model)

(declare-fun d!77663 () Bool)

(assert (=> d!77663 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488218 d!77663))

(declare-fun b!488263 () Bool)

(declare-fun e!287230 () Bool)

(declare-fun e!287229 () Bool)

(assert (=> b!488263 (= e!287230 e!287229)))

(declare-fun res!291570 () Bool)

(assert (=> b!488263 (=> (not res!291570) (not e!287229))))

(declare-fun e!287228 () Bool)

(assert (=> b!488263 (= res!291570 (not e!287228))))

(declare-fun res!291572 () Bool)

(assert (=> b!488263 (=> (not res!291572) (not e!287228))))

(assert (=> b!488263 (= res!291572 (validKeyInArray!0 (select (arr!15184 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488264 () Bool)

(declare-fun e!287227 () Bool)

(declare-fun call!31325 () Bool)

(assert (=> b!488264 (= e!287227 call!31325)))

(declare-fun b!488265 () Bool)

(declare-fun contains!2706 (List!9395 (_ BitVec 64)) Bool)

(assert (=> b!488265 (= e!287228 (contains!2706 Nil!9392 (select (arr!15184 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488266 () Bool)

(assert (=> b!488266 (= e!287227 call!31325)))

(declare-fun bm!31322 () Bool)

(declare-fun c!58616 () Bool)

(assert (=> bm!31322 (= call!31325 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58616 (Cons!9391 (select (arr!15184 a!3235) #b00000000000000000000000000000000) Nil!9392) Nil!9392)))))

(declare-fun d!77665 () Bool)

(declare-fun res!291571 () Bool)

(assert (=> d!77665 (=> res!291571 e!287230)))

(assert (=> d!77665 (= res!291571 (bvsge #b00000000000000000000000000000000 (size!15548 a!3235)))))

(assert (=> d!77665 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9392) e!287230)))

(declare-fun b!488267 () Bool)

(assert (=> b!488267 (= e!287229 e!287227)))

(assert (=> b!488267 (= c!58616 (validKeyInArray!0 (select (arr!15184 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77665 (not res!291571)) b!488263))

(assert (= (and b!488263 res!291572) b!488265))

(assert (= (and b!488263 res!291570) b!488267))

(assert (= (and b!488267 c!58616) b!488264))

(assert (= (and b!488267 (not c!58616)) b!488266))

(assert (= (or b!488264 b!488266) bm!31322))

(declare-fun m!468037 () Bool)

(assert (=> b!488263 m!468037))

(assert (=> b!488263 m!468037))

(declare-fun m!468039 () Bool)

(assert (=> b!488263 m!468039))

(assert (=> b!488265 m!468037))

(assert (=> b!488265 m!468037))

(declare-fun m!468041 () Bool)

(assert (=> b!488265 m!468041))

(assert (=> bm!31322 m!468037))

(declare-fun m!468043 () Bool)

(assert (=> bm!31322 m!468043))

(assert (=> b!488267 m!468037))

(assert (=> b!488267 m!468037))

(assert (=> b!488267 m!468039))

(assert (=> b!488223 d!77665))

(declare-fun b!488280 () Bool)

(declare-fun c!58625 () Bool)

(declare-fun lt!220365 () (_ BitVec 64))

(assert (=> b!488280 (= c!58625 (= lt!220365 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287239 () SeekEntryResult!3658)

(declare-fun e!287237 () SeekEntryResult!3658)

(assert (=> b!488280 (= e!287239 e!287237)))

(declare-fun b!488281 () Bool)

(declare-fun e!287238 () SeekEntryResult!3658)

(assert (=> b!488281 (= e!287238 Undefined!3658)))

(declare-fun b!488282 () Bool)

(declare-fun lt!220366 () SeekEntryResult!3658)

(assert (=> b!488282 (= e!287239 (Found!3658 (index!16813 lt!220366)))))

(declare-fun b!488283 () Bool)

(assert (=> b!488283 (= e!287237 (MissingZero!3658 (index!16813 lt!220366)))))

(declare-fun d!77667 () Bool)

(declare-fun lt!220367 () SeekEntryResult!3658)

(get-info :version)

(assert (=> d!77667 (and (or ((_ is Undefined!3658) lt!220367) (not ((_ is Found!3658) lt!220367)) (and (bvsge (index!16812 lt!220367) #b00000000000000000000000000000000) (bvslt (index!16812 lt!220367) (size!15548 a!3235)))) (or ((_ is Undefined!3658) lt!220367) ((_ is Found!3658) lt!220367) (not ((_ is MissingZero!3658) lt!220367)) (and (bvsge (index!16811 lt!220367) #b00000000000000000000000000000000) (bvslt (index!16811 lt!220367) (size!15548 a!3235)))) (or ((_ is Undefined!3658) lt!220367) ((_ is Found!3658) lt!220367) ((_ is MissingZero!3658) lt!220367) (not ((_ is MissingVacant!3658) lt!220367)) (and (bvsge (index!16814 lt!220367) #b00000000000000000000000000000000) (bvslt (index!16814 lt!220367) (size!15548 a!3235)))) (or ((_ is Undefined!3658) lt!220367) (ite ((_ is Found!3658) lt!220367) (= (select (arr!15184 a!3235) (index!16812 lt!220367)) k0!2280) (ite ((_ is MissingZero!3658) lt!220367) (= (select (arr!15184 a!3235) (index!16811 lt!220367)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3658) lt!220367) (= (select (arr!15184 a!3235) (index!16814 lt!220367)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77667 (= lt!220367 e!287238)))

(declare-fun c!58624 () Bool)

(assert (=> d!77667 (= c!58624 (and ((_ is Intermediate!3658) lt!220366) (undefined!4470 lt!220366)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31593 (_ BitVec 32)) SeekEntryResult!3658)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77667 (= lt!220366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!77667 (validMask!0 mask!3524)))

(assert (=> d!77667 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!220367)))

(declare-fun b!488284 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31593 (_ BitVec 32)) SeekEntryResult!3658)

(assert (=> b!488284 (= e!287237 (seekKeyOrZeroReturnVacant!0 (x!45956 lt!220366) (index!16813 lt!220366) (index!16813 lt!220366) k0!2280 a!3235 mask!3524))))

(declare-fun b!488285 () Bool)

(assert (=> b!488285 (= e!287238 e!287239)))

(assert (=> b!488285 (= lt!220365 (select (arr!15184 a!3235) (index!16813 lt!220366)))))

(declare-fun c!58623 () Bool)

(assert (=> b!488285 (= c!58623 (= lt!220365 k0!2280))))

(assert (= (and d!77667 c!58624) b!488281))

(assert (= (and d!77667 (not c!58624)) b!488285))

(assert (= (and b!488285 c!58623) b!488282))

(assert (= (and b!488285 (not c!58623)) b!488280))

(assert (= (and b!488280 c!58625) b!488283))

(assert (= (and b!488280 (not c!58625)) b!488284))

(declare-fun m!468045 () Bool)

(assert (=> d!77667 m!468045))

(declare-fun m!468047 () Bool)

(assert (=> d!77667 m!468047))

(assert (=> d!77667 m!467989))

(declare-fun m!468049 () Bool)

(assert (=> d!77667 m!468049))

(declare-fun m!468051 () Bool)

(assert (=> d!77667 m!468051))

(assert (=> d!77667 m!468049))

(declare-fun m!468053 () Bool)

(assert (=> d!77667 m!468053))

(declare-fun m!468055 () Bool)

(assert (=> b!488284 m!468055))

(declare-fun m!468057 () Bool)

(assert (=> b!488285 m!468057))

(assert (=> b!488222 d!77667))

(declare-fun d!77683 () Bool)

(assert (=> d!77683 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44478 d!77683))

(declare-fun d!77685 () Bool)

(assert (=> d!77685 (= (array_inv!10958 a!3235) (bvsge (size!15548 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44478 d!77685))

(declare-fun b!488351 () Bool)

(declare-fun e!287283 () Bool)

(declare-fun call!31331 () Bool)

(assert (=> b!488351 (= e!287283 call!31331)))

(declare-fun b!488352 () Bool)

(declare-fun e!287284 () Bool)

(assert (=> b!488352 (= e!287284 e!287283)))

(declare-fun c!58649 () Bool)

(assert (=> b!488352 (= c!58649 (validKeyInArray!0 (select (arr!15184 a!3235) j!176)))))

(declare-fun d!77687 () Bool)

(declare-fun res!291592 () Bool)

(assert (=> d!77687 (=> res!291592 e!287284)))

(assert (=> d!77687 (= res!291592 (bvsge j!176 (size!15548 a!3235)))))

(assert (=> d!77687 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!287284)))

(declare-fun b!488353 () Bool)

(declare-fun e!287282 () Bool)

(assert (=> b!488353 (= e!287283 e!287282)))

(declare-fun lt!220394 () (_ BitVec 64))

(assert (=> b!488353 (= lt!220394 (select (arr!15184 a!3235) j!176))))

(declare-fun lt!220392 () Unit!14254)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31593 (_ BitVec 64) (_ BitVec 32)) Unit!14254)

(assert (=> b!488353 (= lt!220392 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220394 j!176))))

(assert (=> b!488353 (arrayContainsKey!0 a!3235 lt!220394 #b00000000000000000000000000000000)))

(declare-fun lt!220393 () Unit!14254)

(assert (=> b!488353 (= lt!220393 lt!220392)))

(declare-fun res!291593 () Bool)

(assert (=> b!488353 (= res!291593 (= (seekEntryOrOpen!0 (select (arr!15184 a!3235) j!176) a!3235 mask!3524) (Found!3658 j!176)))))

(assert (=> b!488353 (=> (not res!291593) (not e!287282))))

(declare-fun b!488354 () Bool)

(assert (=> b!488354 (= e!287282 call!31331)))

(declare-fun bm!31328 () Bool)

(assert (=> bm!31328 (= call!31331 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!77687 (not res!291592)) b!488352))

(assert (= (and b!488352 c!58649) b!488353))

(assert (= (and b!488352 (not c!58649)) b!488351))

(assert (= (and b!488353 res!291593) b!488354))

(assert (= (or b!488354 b!488351) bm!31328))

(assert (=> b!488352 m!468001))

(assert (=> b!488352 m!468001))

(assert (=> b!488352 m!468003))

(assert (=> b!488353 m!468001))

(declare-fun m!468099 () Bool)

(assert (=> b!488353 m!468099))

(declare-fun m!468101 () Bool)

(assert (=> b!488353 m!468101))

(assert (=> b!488353 m!468001))

(assert (=> b!488353 m!468011))

(declare-fun m!468103 () Bool)

(assert (=> bm!31328 m!468103))

(assert (=> b!488221 d!77687))

(declare-fun d!77699 () Bool)

(assert (=> d!77699 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220409 () Unit!14254)

(declare-fun choose!38 (array!31593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14254)

(assert (=> d!77699 (= lt!220409 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77699 (validMask!0 mask!3524)))

(assert (=> d!77699 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220409)))

(declare-fun bs!15564 () Bool)

(assert (= bs!15564 d!77699))

(assert (=> bs!15564 m!468007))

(declare-fun m!468105 () Bool)

(assert (=> bs!15564 m!468105))

(assert (=> bs!15564 m!467989))

(assert (=> b!488221 d!77699))

(declare-fun d!77701 () Bool)

(assert (=> d!77701 (= (validKeyInArray!0 (select (arr!15184 a!3235) j!176)) (and (not (= (select (arr!15184 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15184 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488220 d!77701))

(declare-fun b!488371 () Bool)

(declare-fun c!58656 () Bool)

(declare-fun lt!220410 () (_ BitVec 64))

(assert (=> b!488371 (= c!58656 (= lt!220410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287299 () SeekEntryResult!3658)

(declare-fun e!287297 () SeekEntryResult!3658)

(assert (=> b!488371 (= e!287299 e!287297)))

(declare-fun b!488372 () Bool)

(declare-fun e!287298 () SeekEntryResult!3658)

(assert (=> b!488372 (= e!287298 Undefined!3658)))

(declare-fun b!488373 () Bool)

(declare-fun lt!220411 () SeekEntryResult!3658)

(assert (=> b!488373 (= e!287299 (Found!3658 (index!16813 lt!220411)))))

(declare-fun b!488374 () Bool)

(assert (=> b!488374 (= e!287297 (MissingZero!3658 (index!16813 lt!220411)))))

(declare-fun d!77703 () Bool)

(declare-fun lt!220412 () SeekEntryResult!3658)

(assert (=> d!77703 (and (or ((_ is Undefined!3658) lt!220412) (not ((_ is Found!3658) lt!220412)) (and (bvsge (index!16812 lt!220412) #b00000000000000000000000000000000) (bvslt (index!16812 lt!220412) (size!15548 a!3235)))) (or ((_ is Undefined!3658) lt!220412) ((_ is Found!3658) lt!220412) (not ((_ is MissingZero!3658) lt!220412)) (and (bvsge (index!16811 lt!220412) #b00000000000000000000000000000000) (bvslt (index!16811 lt!220412) (size!15548 a!3235)))) (or ((_ is Undefined!3658) lt!220412) ((_ is Found!3658) lt!220412) ((_ is MissingZero!3658) lt!220412) (not ((_ is MissingVacant!3658) lt!220412)) (and (bvsge (index!16814 lt!220412) #b00000000000000000000000000000000) (bvslt (index!16814 lt!220412) (size!15548 a!3235)))) (or ((_ is Undefined!3658) lt!220412) (ite ((_ is Found!3658) lt!220412) (= (select (arr!15184 a!3235) (index!16812 lt!220412)) (select (arr!15184 a!3235) j!176)) (ite ((_ is MissingZero!3658) lt!220412) (= (select (arr!15184 a!3235) (index!16811 lt!220412)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3658) lt!220412) (= (select (arr!15184 a!3235) (index!16814 lt!220412)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77703 (= lt!220412 e!287298)))

(declare-fun c!58655 () Bool)

(assert (=> d!77703 (= c!58655 (and ((_ is Intermediate!3658) lt!220411) (undefined!4470 lt!220411)))))

(assert (=> d!77703 (= lt!220411 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15184 a!3235) j!176) mask!3524) (select (arr!15184 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77703 (validMask!0 mask!3524)))

(assert (=> d!77703 (= (seekEntryOrOpen!0 (select (arr!15184 a!3235) j!176) a!3235 mask!3524) lt!220412)))

(declare-fun b!488375 () Bool)

(assert (=> b!488375 (= e!287297 (seekKeyOrZeroReturnVacant!0 (x!45956 lt!220411) (index!16813 lt!220411) (index!16813 lt!220411) (select (arr!15184 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!488376 () Bool)

(assert (=> b!488376 (= e!287298 e!287299)))

(assert (=> b!488376 (= lt!220410 (select (arr!15184 a!3235) (index!16813 lt!220411)))))

(declare-fun c!58654 () Bool)

(assert (=> b!488376 (= c!58654 (= lt!220410 (select (arr!15184 a!3235) j!176)))))

(assert (= (and d!77703 c!58655) b!488372))

(assert (= (and d!77703 (not c!58655)) b!488376))

(assert (= (and b!488376 c!58654) b!488373))

(assert (= (and b!488376 (not c!58654)) b!488371))

(assert (= (and b!488371 c!58656) b!488374))

(assert (= (and b!488371 (not c!58656)) b!488375))

(declare-fun m!468107 () Bool)

(assert (=> d!77703 m!468107))

(declare-fun m!468109 () Bool)

(assert (=> d!77703 m!468109))

(assert (=> d!77703 m!467989))

(declare-fun m!468111 () Bool)

(assert (=> d!77703 m!468111))

(assert (=> d!77703 m!468001))

(declare-fun m!468113 () Bool)

(assert (=> d!77703 m!468113))

(assert (=> d!77703 m!468001))

(assert (=> d!77703 m!468111))

(declare-fun m!468115 () Bool)

(assert (=> d!77703 m!468115))

(assert (=> b!488375 m!468001))

(declare-fun m!468117 () Bool)

(assert (=> b!488375 m!468117))

(declare-fun m!468119 () Bool)

(assert (=> b!488376 m!468119))

(assert (=> b!488225 d!77703))

(declare-fun d!77705 () Bool)

(declare-fun res!291610 () Bool)

(declare-fun e!287310 () Bool)

(assert (=> d!77705 (=> res!291610 e!287310)))

(assert (=> d!77705 (= res!291610 (= (select (arr!15184 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!77705 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!287310)))

(declare-fun b!488389 () Bool)

(declare-fun e!287311 () Bool)

(assert (=> b!488389 (= e!287310 e!287311)))

(declare-fun res!291611 () Bool)

(assert (=> b!488389 (=> (not res!291611) (not e!287311))))

(assert (=> b!488389 (= res!291611 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15548 a!3235)))))

(declare-fun b!488390 () Bool)

(assert (=> b!488390 (= e!287311 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77705 (not res!291610)) b!488389))

(assert (= (and b!488389 res!291611) b!488390))

(assert (=> d!77705 m!468037))

(declare-fun m!468139 () Bool)

(assert (=> b!488390 m!468139))

(assert (=> b!488224 d!77705))

(declare-fun b!488391 () Bool)

(declare-fun e!287313 () Bool)

(declare-fun call!31338 () Bool)

(assert (=> b!488391 (= e!287313 call!31338)))

(declare-fun b!488392 () Bool)

(declare-fun e!287314 () Bool)

(assert (=> b!488392 (= e!287314 e!287313)))

(declare-fun c!58659 () Bool)

(assert (=> b!488392 (= c!58659 (validKeyInArray!0 (select (arr!15184 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77711 () Bool)

(declare-fun res!291612 () Bool)

(assert (=> d!77711 (=> res!291612 e!287314)))

(assert (=> d!77711 (= res!291612 (bvsge #b00000000000000000000000000000000 (size!15548 a!3235)))))

(assert (=> d!77711 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!287314)))

(declare-fun b!488393 () Bool)

(declare-fun e!287312 () Bool)

(assert (=> b!488393 (= e!287313 e!287312)))

(declare-fun lt!220421 () (_ BitVec 64))

(assert (=> b!488393 (= lt!220421 (select (arr!15184 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220419 () Unit!14254)

(assert (=> b!488393 (= lt!220419 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220421 #b00000000000000000000000000000000))))

(assert (=> b!488393 (arrayContainsKey!0 a!3235 lt!220421 #b00000000000000000000000000000000)))

(declare-fun lt!220420 () Unit!14254)

(assert (=> b!488393 (= lt!220420 lt!220419)))

(declare-fun res!291613 () Bool)

(assert (=> b!488393 (= res!291613 (= (seekEntryOrOpen!0 (select (arr!15184 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3658 #b00000000000000000000000000000000)))))

(assert (=> b!488393 (=> (not res!291613) (not e!287312))))

(declare-fun b!488394 () Bool)

(assert (=> b!488394 (= e!287312 call!31338)))

(declare-fun bm!31335 () Bool)

(assert (=> bm!31335 (= call!31338 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!77711 (not res!291612)) b!488392))

(assert (= (and b!488392 c!58659) b!488393))

(assert (= (and b!488392 (not c!58659)) b!488391))

(assert (= (and b!488393 res!291613) b!488394))

(assert (= (or b!488394 b!488391) bm!31335))

(assert (=> b!488392 m!468037))

(assert (=> b!488392 m!468037))

(assert (=> b!488392 m!468039))

(assert (=> b!488393 m!468037))

(declare-fun m!468141 () Bool)

(assert (=> b!488393 m!468141))

(declare-fun m!468143 () Bool)

(assert (=> b!488393 m!468143))

(assert (=> b!488393 m!468037))

(declare-fun m!468145 () Bool)

(assert (=> b!488393 m!468145))

(declare-fun m!468147 () Bool)

(assert (=> bm!31335 m!468147))

(assert (=> b!488219 d!77711))

(check-sat (not b!488265) (not d!77667) (not b!488353) (not b!488352) (not b!488263) (not bm!31322) (not d!77703) (not b!488284) (not b!488267) (not b!488375) (not d!77699) (not b!488393) (not b!488390) (not bm!31335) (not b!488392) (not bm!31328))
(check-sat)
