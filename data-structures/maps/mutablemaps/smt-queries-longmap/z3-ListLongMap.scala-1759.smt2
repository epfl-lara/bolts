; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32162 () Bool)

(assert start!32162)

(declare-fun b!320256 () Bool)

(declare-fun res!174659 () Bool)

(declare-fun e!198709 () Bool)

(assert (=> b!320256 (=> (not res!174659) (not e!198709))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320256 (= res!174659 (validKeyInArray!0 k0!2497))))

(declare-datatypes ((array!16393 0))(
  ( (array!16394 (arr!7754 (Array (_ BitVec 32) (_ BitVec 64))) (size!8106 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16393)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!320257 () Bool)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!320257 (= e!198709 (and (= (select (arr!7754 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8106 a!3305)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun res!174662 () Bool)

(assert (=> start!32162 (=> (not res!174662) (not e!198709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32162 (= res!174662 (validMask!0 mask!3777))))

(assert (=> start!32162 e!198709))

(declare-fun array_inv!5708 (array!16393) Bool)

(assert (=> start!32162 (array_inv!5708 a!3305)))

(assert (=> start!32162 true))

(declare-fun b!320258 () Bool)

(declare-fun res!174660 () Bool)

(assert (=> b!320258 (=> (not res!174660) (not e!198709))))

(declare-datatypes ((SeekEntryResult!2896 0))(
  ( (MissingZero!2896 (index!13760 (_ BitVec 32))) (Found!2896 (index!13761 (_ BitVec 32))) (Intermediate!2896 (undefined!3708 Bool) (index!13762 (_ BitVec 32)) (x!31992 (_ BitVec 32))) (Undefined!2896) (MissingVacant!2896 (index!13763 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16393 (_ BitVec 32)) SeekEntryResult!2896)

(assert (=> b!320258 (= res!174660 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2896 i!1250)))))

(declare-fun b!320259 () Bool)

(declare-fun res!174658 () Bool)

(assert (=> b!320259 (=> (not res!174658) (not e!198709))))

(declare-fun arrayContainsKey!0 (array!16393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320259 (= res!174658 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320260 () Bool)

(declare-fun res!174663 () Bool)

(assert (=> b!320260 (=> (not res!174663) (not e!198709))))

(assert (=> b!320260 (= res!174663 (and (= (size!8106 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8106 a!3305))))))

(declare-fun b!320261 () Bool)

(declare-fun res!174657 () Bool)

(assert (=> b!320261 (=> (not res!174657) (not e!198709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16393 (_ BitVec 32)) Bool)

(assert (=> b!320261 (= res!174657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320262 () Bool)

(declare-fun res!174661 () Bool)

(assert (=> b!320262 (=> (not res!174661) (not e!198709))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16393 (_ BitVec 32)) SeekEntryResult!2896)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320262 (= res!174661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!2896 false resIndex!58 resX!58)))))

(assert (= (and start!32162 res!174662) b!320260))

(assert (= (and b!320260 res!174663) b!320256))

(assert (= (and b!320256 res!174659) b!320259))

(assert (= (and b!320259 res!174658) b!320258))

(assert (= (and b!320258 res!174660) b!320261))

(assert (= (and b!320261 res!174657) b!320262))

(assert (= (and b!320262 res!174661) b!320257))

(declare-fun m!328675 () Bool)

(assert (=> b!320259 m!328675))

(declare-fun m!328677 () Bool)

(assert (=> b!320261 m!328677))

(declare-fun m!328679 () Bool)

(assert (=> b!320256 m!328679))

(declare-fun m!328681 () Bool)

(assert (=> b!320262 m!328681))

(assert (=> b!320262 m!328681))

(declare-fun m!328683 () Bool)

(assert (=> b!320262 m!328683))

(declare-fun m!328685 () Bool)

(assert (=> start!32162 m!328685))

(declare-fun m!328687 () Bool)

(assert (=> start!32162 m!328687))

(declare-fun m!328689 () Bool)

(assert (=> b!320257 m!328689))

(declare-fun m!328691 () Bool)

(assert (=> b!320258 m!328691))

(check-sat (not b!320261) (not b!320262) (not b!320259) (not start!32162) (not b!320258) (not b!320256))
(check-sat)
(get-model)

(declare-fun d!69313 () Bool)

(declare-fun res!174689 () Bool)

(declare-fun e!198724 () Bool)

(assert (=> d!69313 (=> res!174689 e!198724)))

(assert (=> d!69313 (= res!174689 (bvsge #b00000000000000000000000000000000 (size!8106 a!3305)))))

(assert (=> d!69313 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198724)))

(declare-fun bm!26048 () Bool)

(declare-fun call!26051 () Bool)

(assert (=> bm!26048 (= call!26051 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!320292 () Bool)

(declare-fun e!198722 () Bool)

(assert (=> b!320292 (= e!198722 call!26051)))

(declare-fun b!320293 () Bool)

(assert (=> b!320293 (= e!198724 e!198722)))

(declare-fun c!50426 () Bool)

(assert (=> b!320293 (= c!50426 (validKeyInArray!0 (select (arr!7754 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!320294 () Bool)

(declare-fun e!198723 () Bool)

(assert (=> b!320294 (= e!198723 call!26051)))

(declare-fun b!320295 () Bool)

(assert (=> b!320295 (= e!198722 e!198723)))

(declare-fun lt!155980 () (_ BitVec 64))

(assert (=> b!320295 (= lt!155980 (select (arr!7754 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9817 0))(
  ( (Unit!9818) )
))
(declare-fun lt!155979 () Unit!9817)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16393 (_ BitVec 64) (_ BitVec 32)) Unit!9817)

(assert (=> b!320295 (= lt!155979 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!155980 #b00000000000000000000000000000000))))

(assert (=> b!320295 (arrayContainsKey!0 a!3305 lt!155980 #b00000000000000000000000000000000)))

(declare-fun lt!155981 () Unit!9817)

(assert (=> b!320295 (= lt!155981 lt!155979)))

(declare-fun res!174690 () Bool)

(assert (=> b!320295 (= res!174690 (= (seekEntryOrOpen!0 (select (arr!7754 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2896 #b00000000000000000000000000000000)))))

(assert (=> b!320295 (=> (not res!174690) (not e!198723))))

(assert (= (and d!69313 (not res!174689)) b!320293))

(assert (= (and b!320293 c!50426) b!320295))

(assert (= (and b!320293 (not c!50426)) b!320292))

(assert (= (and b!320295 res!174690) b!320294))

(assert (= (or b!320294 b!320292) bm!26048))

(declare-fun m!328711 () Bool)

(assert (=> bm!26048 m!328711))

(declare-fun m!328713 () Bool)

(assert (=> b!320293 m!328713))

(assert (=> b!320293 m!328713))

(declare-fun m!328715 () Bool)

(assert (=> b!320293 m!328715))

(assert (=> b!320295 m!328713))

(declare-fun m!328717 () Bool)

(assert (=> b!320295 m!328717))

(declare-fun m!328719 () Bool)

(assert (=> b!320295 m!328719))

(assert (=> b!320295 m!328713))

(declare-fun m!328721 () Bool)

(assert (=> b!320295 m!328721))

(assert (=> b!320261 d!69313))

(declare-fun d!69317 () Bool)

(declare-fun res!174701 () Bool)

(declare-fun e!198735 () Bool)

(assert (=> d!69317 (=> res!174701 e!198735)))

(assert (=> d!69317 (= res!174701 (= (select (arr!7754 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69317 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!198735)))

(declare-fun b!320306 () Bool)

(declare-fun e!198736 () Bool)

(assert (=> b!320306 (= e!198735 e!198736)))

(declare-fun res!174702 () Bool)

(assert (=> b!320306 (=> (not res!174702) (not e!198736))))

(assert (=> b!320306 (= res!174702 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8106 a!3305)))))

(declare-fun b!320307 () Bool)

(assert (=> b!320307 (= e!198736 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69317 (not res!174701)) b!320306))

(assert (= (and b!320306 res!174702) b!320307))

(assert (=> d!69317 m!328713))

(declare-fun m!328727 () Bool)

(assert (=> b!320307 m!328727))

(assert (=> b!320259 d!69317))

(declare-fun d!69323 () Bool)

(declare-fun lt!156003 () SeekEntryResult!2896)

(get-info :version)

(assert (=> d!69323 (and (or ((_ is Undefined!2896) lt!156003) (not ((_ is Found!2896) lt!156003)) (and (bvsge (index!13761 lt!156003) #b00000000000000000000000000000000) (bvslt (index!13761 lt!156003) (size!8106 a!3305)))) (or ((_ is Undefined!2896) lt!156003) ((_ is Found!2896) lt!156003) (not ((_ is MissingZero!2896) lt!156003)) (and (bvsge (index!13760 lt!156003) #b00000000000000000000000000000000) (bvslt (index!13760 lt!156003) (size!8106 a!3305)))) (or ((_ is Undefined!2896) lt!156003) ((_ is Found!2896) lt!156003) ((_ is MissingZero!2896) lt!156003) (not ((_ is MissingVacant!2896) lt!156003)) (and (bvsge (index!13763 lt!156003) #b00000000000000000000000000000000) (bvslt (index!13763 lt!156003) (size!8106 a!3305)))) (or ((_ is Undefined!2896) lt!156003) (ite ((_ is Found!2896) lt!156003) (= (select (arr!7754 a!3305) (index!13761 lt!156003)) k0!2497) (ite ((_ is MissingZero!2896) lt!156003) (= (select (arr!7754 a!3305) (index!13760 lt!156003)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2896) lt!156003) (= (select (arr!7754 a!3305) (index!13763 lt!156003)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!198769 () SeekEntryResult!2896)

(assert (=> d!69323 (= lt!156003 e!198769)))

(declare-fun c!50452 () Bool)

(declare-fun lt!156004 () SeekEntryResult!2896)

(assert (=> d!69323 (= c!50452 (and ((_ is Intermediate!2896) lt!156004) (undefined!3708 lt!156004)))))

(assert (=> d!69323 (= lt!156004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69323 (validMask!0 mask!3777)))

(assert (=> d!69323 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!156003)))

(declare-fun b!320365 () Bool)

(declare-fun c!50453 () Bool)

(declare-fun lt!156005 () (_ BitVec 64))

(assert (=> b!320365 (= c!50453 (= lt!156005 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!198768 () SeekEntryResult!2896)

(declare-fun e!198767 () SeekEntryResult!2896)

(assert (=> b!320365 (= e!198768 e!198767)))

(declare-fun b!320366 () Bool)

(assert (=> b!320366 (= e!198768 (Found!2896 (index!13762 lt!156004)))))

(declare-fun b!320367 () Bool)

(assert (=> b!320367 (= e!198767 (MissingZero!2896 (index!13762 lt!156004)))))

(declare-fun b!320368 () Bool)

(assert (=> b!320368 (= e!198769 Undefined!2896)))

(declare-fun b!320369 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16393 (_ BitVec 32)) SeekEntryResult!2896)

(assert (=> b!320369 (= e!198767 (seekKeyOrZeroReturnVacant!0 (x!31992 lt!156004) (index!13762 lt!156004) (index!13762 lt!156004) k0!2497 a!3305 mask!3777))))

(declare-fun b!320370 () Bool)

(assert (=> b!320370 (= e!198769 e!198768)))

(assert (=> b!320370 (= lt!156005 (select (arr!7754 a!3305) (index!13762 lt!156004)))))

(declare-fun c!50451 () Bool)

(assert (=> b!320370 (= c!50451 (= lt!156005 k0!2497))))

(assert (= (and d!69323 c!50452) b!320368))

(assert (= (and d!69323 (not c!50452)) b!320370))

(assert (= (and b!320370 c!50451) b!320366))

(assert (= (and b!320370 (not c!50451)) b!320365))

(assert (= (and b!320365 c!50453) b!320367))

(assert (= (and b!320365 (not c!50453)) b!320369))

(assert (=> d!69323 m!328685))

(assert (=> d!69323 m!328681))

(declare-fun m!328747 () Bool)

(assert (=> d!69323 m!328747))

(declare-fun m!328749 () Bool)

(assert (=> d!69323 m!328749))

(declare-fun m!328751 () Bool)

(assert (=> d!69323 m!328751))

(assert (=> d!69323 m!328681))

(assert (=> d!69323 m!328683))

(declare-fun m!328753 () Bool)

(assert (=> b!320369 m!328753))

(declare-fun m!328755 () Bool)

(assert (=> b!320370 m!328755))

(assert (=> b!320258 d!69323))

(declare-fun d!69331 () Bool)

(assert (=> d!69331 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32162 d!69331))

(declare-fun d!69335 () Bool)

(assert (=> d!69335 (= (array_inv!5708 a!3305) (bvsge (size!8106 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32162 d!69335))

(declare-fun d!69337 () Bool)

(declare-fun e!198814 () Bool)

(assert (=> d!69337 e!198814))

(declare-fun c!50479 () Bool)

(declare-fun lt!156043 () SeekEntryResult!2896)

(assert (=> d!69337 (= c!50479 (and ((_ is Intermediate!2896) lt!156043) (undefined!3708 lt!156043)))))

(declare-fun e!198812 () SeekEntryResult!2896)

(assert (=> d!69337 (= lt!156043 e!198812)))

(declare-fun c!50480 () Bool)

(assert (=> d!69337 (= c!50480 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!156044 () (_ BitVec 64))

(assert (=> d!69337 (= lt!156044 (select (arr!7754 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69337 (validMask!0 mask!3777)))

(assert (=> d!69337 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156043)))

(declare-fun b!320440 () Bool)

(declare-fun e!198813 () Bool)

(assert (=> b!320440 (= e!198814 e!198813)))

(declare-fun res!174735 () Bool)

(assert (=> b!320440 (= res!174735 (and ((_ is Intermediate!2896) lt!156043) (not (undefined!3708 lt!156043)) (bvslt (x!31992 lt!156043) #b01111111111111111111111111111110) (bvsge (x!31992 lt!156043) #b00000000000000000000000000000000) (bvsge (x!31992 lt!156043) #b00000000000000000000000000000000)))))

(assert (=> b!320440 (=> (not res!174735) (not e!198813))))

(declare-fun b!320441 () Bool)

(declare-fun e!198810 () SeekEntryResult!2896)

(assert (=> b!320441 (= e!198812 e!198810)))

(declare-fun c!50478 () Bool)

(assert (=> b!320441 (= c!50478 (or (= lt!156044 k0!2497) (= (bvadd lt!156044 lt!156044) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!320442 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320442 (= e!198810 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!320443 () Bool)

(assert (=> b!320443 (= e!198812 (Intermediate!2896 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!320444 () Bool)

(assert (=> b!320444 (and (bvsge (index!13762 lt!156043) #b00000000000000000000000000000000) (bvslt (index!13762 lt!156043) (size!8106 a!3305)))))

(declare-fun res!174736 () Bool)

(assert (=> b!320444 (= res!174736 (= (select (arr!7754 a!3305) (index!13762 lt!156043)) k0!2497))))

(declare-fun e!198811 () Bool)

(assert (=> b!320444 (=> res!174736 e!198811)))

(assert (=> b!320444 (= e!198813 e!198811)))

(declare-fun b!320445 () Bool)

(assert (=> b!320445 (= e!198810 (Intermediate!2896 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!320446 () Bool)

(assert (=> b!320446 (= e!198814 (bvsge (x!31992 lt!156043) #b01111111111111111111111111111110))))

(declare-fun b!320447 () Bool)

(assert (=> b!320447 (and (bvsge (index!13762 lt!156043) #b00000000000000000000000000000000) (bvslt (index!13762 lt!156043) (size!8106 a!3305)))))

(declare-fun res!174737 () Bool)

(assert (=> b!320447 (= res!174737 (= (select (arr!7754 a!3305) (index!13762 lt!156043)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!320447 (=> res!174737 e!198811)))

(declare-fun b!320448 () Bool)

(assert (=> b!320448 (and (bvsge (index!13762 lt!156043) #b00000000000000000000000000000000) (bvslt (index!13762 lt!156043) (size!8106 a!3305)))))

(assert (=> b!320448 (= e!198811 (= (select (arr!7754 a!3305) (index!13762 lt!156043)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69337 c!50480) b!320443))

(assert (= (and d!69337 (not c!50480)) b!320441))

(assert (= (and b!320441 c!50478) b!320445))

(assert (= (and b!320441 (not c!50478)) b!320442))

(assert (= (and d!69337 c!50479) b!320446))

(assert (= (and d!69337 (not c!50479)) b!320440))

(assert (= (and b!320440 res!174735) b!320444))

(assert (= (and b!320444 (not res!174736)) b!320447))

(assert (= (and b!320447 (not res!174737)) b!320448))

(declare-fun m!328777 () Bool)

(assert (=> b!320447 m!328777))

(assert (=> d!69337 m!328681))

(declare-fun m!328779 () Bool)

(assert (=> d!69337 m!328779))

(assert (=> d!69337 m!328685))

(assert (=> b!320444 m!328777))

(assert (=> b!320448 m!328777))

(assert (=> b!320442 m!328681))

(declare-fun m!328781 () Bool)

(assert (=> b!320442 m!328781))

(assert (=> b!320442 m!328781))

(declare-fun m!328783 () Bool)

(assert (=> b!320442 m!328783))

(assert (=> b!320262 d!69337))

(declare-fun d!69345 () Bool)

(declare-fun lt!156053 () (_ BitVec 32))

(declare-fun lt!156052 () (_ BitVec 32))

(assert (=> d!69345 (= lt!156053 (bvmul (bvxor lt!156052 (bvlshr lt!156052 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69345 (= lt!156052 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69345 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!174738 (let ((h!5407 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31999 (bvmul (bvxor h!5407 (bvlshr h!5407 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31999 (bvlshr x!31999 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!174738 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!174738 #b00000000000000000000000000000000))))))

(assert (=> d!69345 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!156053 (bvlshr lt!156053 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!320262 d!69345))

(declare-fun d!69353 () Bool)

(assert (=> d!69353 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!320256 d!69353))

(check-sat (not d!69323) (not b!320307) (not d!69337) (not b!320442) (not bm!26048) (not b!320369) (not b!320295) (not b!320293))
(check-sat)
