; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29832 () Bool)

(assert start!29832)

(declare-fun b!300046 () Bool)

(declare-fun res!158239 () Bool)

(declare-fun e!189492 () Bool)

(assert (=> b!300046 (=> (not res!158239) (not e!189492))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15158 0))(
  ( (array!15159 (arr!7174 (Array (_ BitVec 32) (_ BitVec 64))) (size!7526 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15158)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!300046 (= res!158239 (and (= (size!7526 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7526 a!3312))))))

(declare-fun b!300047 () Bool)

(declare-fun res!158238 () Bool)

(declare-fun e!189493 () Bool)

(assert (=> b!300047 (=> (not res!158238) (not e!189493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15158 (_ BitVec 32)) Bool)

(assert (=> b!300047 (= res!158238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300048 () Bool)

(declare-fun res!158240 () Bool)

(assert (=> b!300048 (=> (not res!158240) (not e!189492))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300048 (= res!158240 (validKeyInArray!0 k!2524))))

(declare-fun res!158236 () Bool)

(assert (=> start!29832 (=> (not res!158236) (not e!189492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29832 (= res!158236 (validMask!0 mask!3809))))

(assert (=> start!29832 e!189492))

(assert (=> start!29832 true))

(declare-fun array_inv!5128 (array!15158) Bool)

(assert (=> start!29832 (array_inv!5128 a!3312)))

(declare-fun b!300049 () Bool)

(assert (=> b!300049 (= e!189492 e!189493)))

(declare-fun res!158237 () Bool)

(assert (=> b!300049 (=> (not res!158237) (not e!189493))))

(declare-fun lt!149310 () Bool)

(declare-datatypes ((SeekEntryResult!2334 0))(
  ( (MissingZero!2334 (index!11512 (_ BitVec 32))) (Found!2334 (index!11513 (_ BitVec 32))) (Intermediate!2334 (undefined!3146 Bool) (index!11514 (_ BitVec 32)) (x!29733 (_ BitVec 32))) (Undefined!2334) (MissingVacant!2334 (index!11515 (_ BitVec 32))) )
))
(declare-fun lt!149312 () SeekEntryResult!2334)

(assert (=> b!300049 (= res!158237 (or lt!149310 (= lt!149312 (MissingVacant!2334 i!1256))))))

(assert (=> b!300049 (= lt!149310 (= lt!149312 (MissingZero!2334 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15158 (_ BitVec 32)) SeekEntryResult!2334)

(assert (=> b!300049 (= lt!149312 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300050 () Bool)

(declare-fun res!158241 () Bool)

(assert (=> b!300050 (=> (not res!158241) (not e!189492))))

(declare-fun arrayContainsKey!0 (array!15158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300050 (= res!158241 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300051 () Bool)

(declare-fun lt!149311 () SeekEntryResult!2334)

(assert (=> b!300051 (= e!189493 (and (not lt!149310) (= lt!149312 (MissingVacant!2334 i!1256)) (let ((bdg!6466 (not (is-Intermediate!2334 lt!149311)))) (and (or bdg!6466 (not (undefined!3146 lt!149311))) (or bdg!6466 (not (= (select (arr!7174 a!3312) (index!11514 lt!149311)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6466 (not (= (select (arr!7174 a!3312) (index!11514 lt!149311)) k!2524))) (not bdg!6466)))))))

(declare-fun lt!149309 () (_ BitVec 32))

(declare-fun lt!149308 () SeekEntryResult!2334)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15158 (_ BitVec 32)) SeekEntryResult!2334)

(assert (=> b!300051 (= lt!149308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149309 k!2524 (array!15159 (store (arr!7174 a!3312) i!1256 k!2524) (size!7526 a!3312)) mask!3809))))

(assert (=> b!300051 (= lt!149311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149309 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300051 (= lt!149309 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29832 res!158236) b!300046))

(assert (= (and b!300046 res!158239) b!300048))

(assert (= (and b!300048 res!158240) b!300050))

(assert (= (and b!300050 res!158241) b!300049))

(assert (= (and b!300049 res!158237) b!300047))

(assert (= (and b!300047 res!158238) b!300051))

(declare-fun m!312133 () Bool)

(assert (=> b!300048 m!312133))

(declare-fun m!312135 () Bool)

(assert (=> start!29832 m!312135))

(declare-fun m!312137 () Bool)

(assert (=> start!29832 m!312137))

(declare-fun m!312139 () Bool)

(assert (=> b!300050 m!312139))

(declare-fun m!312141 () Bool)

(assert (=> b!300049 m!312141))

(declare-fun m!312143 () Bool)

(assert (=> b!300051 m!312143))

(declare-fun m!312145 () Bool)

(assert (=> b!300051 m!312145))

(declare-fun m!312147 () Bool)

(assert (=> b!300051 m!312147))

(declare-fun m!312149 () Bool)

(assert (=> b!300051 m!312149))

(declare-fun m!312151 () Bool)

(assert (=> b!300051 m!312151))

(declare-fun m!312153 () Bool)

(assert (=> b!300047 m!312153))

(push 1)

(assert (not b!300047))

(assert (not b!300051))

(assert (not b!300050))

(assert (not b!300049))

(assert (not b!300048))

(assert (not start!29832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67579 () Bool)

(assert (=> d!67579 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!300048 d!67579))

(declare-fun b!300160 () Bool)

(declare-fun e!189559 () SeekEntryResult!2334)

(assert (=> b!300160 (= e!189559 Undefined!2334)))

(declare-fun e!189558 () SeekEntryResult!2334)

(declare-fun lt!149381 () SeekEntryResult!2334)

(declare-fun b!300161 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15158 (_ BitVec 32)) SeekEntryResult!2334)

(assert (=> b!300161 (= e!189558 (seekKeyOrZeroReturnVacant!0 (x!29733 lt!149381) (index!11514 lt!149381) (index!11514 lt!149381) k!2524 a!3312 mask!3809))))

(declare-fun d!67583 () Bool)

(declare-fun lt!149382 () SeekEntryResult!2334)

(assert (=> d!67583 (and (or (is-Undefined!2334 lt!149382) (not (is-Found!2334 lt!149382)) (and (bvsge (index!11513 lt!149382) #b00000000000000000000000000000000) (bvslt (index!11513 lt!149382) (size!7526 a!3312)))) (or (is-Undefined!2334 lt!149382) (is-Found!2334 lt!149382) (not (is-MissingZero!2334 lt!149382)) (and (bvsge (index!11512 lt!149382) #b00000000000000000000000000000000) (bvslt (index!11512 lt!149382) (size!7526 a!3312)))) (or (is-Undefined!2334 lt!149382) (is-Found!2334 lt!149382) (is-MissingZero!2334 lt!149382) (not (is-MissingVacant!2334 lt!149382)) (and (bvsge (index!11515 lt!149382) #b00000000000000000000000000000000) (bvslt (index!11515 lt!149382) (size!7526 a!3312)))) (or (is-Undefined!2334 lt!149382) (ite (is-Found!2334 lt!149382) (= (select (arr!7174 a!3312) (index!11513 lt!149382)) k!2524) (ite (is-MissingZero!2334 lt!149382) (= (select (arr!7174 a!3312) (index!11512 lt!149382)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2334 lt!149382) (= (select (arr!7174 a!3312) (index!11515 lt!149382)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67583 (= lt!149382 e!189559)))

(declare-fun c!48527 () Bool)

(assert (=> d!67583 (= c!48527 (and (is-Intermediate!2334 lt!149381) (undefined!3146 lt!149381)))))

(assert (=> d!67583 (= lt!149381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67583 (validMask!0 mask!3809)))

(assert (=> d!67583 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!149382)))

(declare-fun b!300162 () Bool)

(declare-fun c!48525 () Bool)

(declare-fun lt!149380 () (_ BitVec 64))

(assert (=> b!300162 (= c!48525 (= lt!149380 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189557 () SeekEntryResult!2334)

(assert (=> b!300162 (= e!189557 e!189558)))

(declare-fun b!300163 () Bool)

(assert (=> b!300163 (= e!189557 (Found!2334 (index!11514 lt!149381)))))

(declare-fun b!300164 () Bool)

(assert (=> b!300164 (= e!189558 (MissingZero!2334 (index!11514 lt!149381)))))

(declare-fun b!300165 () Bool)

(assert (=> b!300165 (= e!189559 e!189557)))

(assert (=> b!300165 (= lt!149380 (select (arr!7174 a!3312) (index!11514 lt!149381)))))

(declare-fun c!48526 () Bool)

(assert (=> b!300165 (= c!48526 (= lt!149380 k!2524))))

(assert (= (and d!67583 c!48527) b!300160))

(assert (= (and d!67583 (not c!48527)) b!300165))

(assert (= (and b!300165 c!48526) b!300163))

(assert (= (and b!300165 (not c!48526)) b!300162))

(assert (= (and b!300162 c!48525) b!300164))

(assert (= (and b!300162 (not c!48525)) b!300161))

(declare-fun m!312237 () Bool)

(assert (=> b!300161 m!312237))

(declare-fun m!312239 () Bool)

(assert (=> d!67583 m!312239))

(assert (=> d!67583 m!312151))

(declare-fun m!312241 () Bool)

(assert (=> d!67583 m!312241))

(declare-fun m!312243 () Bool)

(assert (=> d!67583 m!312243))

(assert (=> d!67583 m!312135))

(assert (=> d!67583 m!312151))

(declare-fun m!312245 () Bool)

(assert (=> d!67583 m!312245))

(declare-fun m!312247 () Bool)

(assert (=> b!300165 m!312247))

(assert (=> b!300049 d!67583))

(declare-fun d!67593 () Bool)

(declare-fun res!158306 () Bool)

(declare-fun e!189568 () Bool)

(assert (=> d!67593 (=> res!158306 e!189568)))

(assert (=> d!67593 (= res!158306 (= (select (arr!7174 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67593 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189568)))

(declare-fun b!300176 () Bool)

(declare-fun e!189569 () Bool)

(assert (=> b!300176 (= e!189568 e!189569)))

(declare-fun res!158307 () Bool)

(assert (=> b!300176 (=> (not res!158307) (not e!189569))))

(assert (=> b!300176 (= res!158307 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7526 a!3312)))))

(declare-fun b!300177 () Bool)

(assert (=> b!300177 (= e!189569 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67593 (not res!158306)) b!300176))

(assert (= (and b!300176 res!158307) b!300177))

(declare-fun m!312249 () Bool)

(assert (=> d!67593 m!312249))

(declare-fun m!312251 () Bool)

(assert (=> b!300177 m!312251))

(assert (=> b!300050 d!67593))

(declare-fun d!67599 () Bool)

(assert (=> d!67599 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29832 d!67599))

(declare-fun d!67607 () Bool)

(assert (=> d!67607 (= (array_inv!5128 a!3312) (bvsge (size!7526 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29832 d!67607))

(declare-fun b!300238 () Bool)

(declare-fun e!189609 () Bool)

(declare-fun e!189605 () Bool)

(assert (=> b!300238 (= e!189609 e!189605)))

(declare-fun res!158327 () Bool)

(declare-fun lt!149407 () SeekEntryResult!2334)

(assert (=> b!300238 (= res!158327 (and (is-Intermediate!2334 lt!149407) (not (undefined!3146 lt!149407)) (bvslt (x!29733 lt!149407) #b01111111111111111111111111111110) (bvsge (x!29733 lt!149407) #b00000000000000000000000000000000) (bvsge (x!29733 lt!149407) #b00000000000000000000000000000000)))))

(assert (=> b!300238 (=> (not res!158327) (not e!189605))))

(declare-fun b!300239 () Bool)

(assert (=> b!300239 (= e!189609 (bvsge (x!29733 lt!149407) #b01111111111111111111111111111110))))

(declare-fun b!300240 () Bool)

(declare-fun e!189606 () SeekEntryResult!2334)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300240 (= e!189606 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149309 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15159 (store (arr!7174 a!3312) i!1256 k!2524) (size!7526 a!3312)) mask!3809))))

(declare-fun d!67609 () Bool)

(assert (=> d!67609 e!189609))

(declare-fun c!48549 () Bool)

(assert (=> d!67609 (= c!48549 (and (is-Intermediate!2334 lt!149407) (undefined!3146 lt!149407)))))

(declare-fun e!189608 () SeekEntryResult!2334)

(assert (=> d!67609 (= lt!149407 e!189608)))

(declare-fun c!48550 () Bool)

(assert (=> d!67609 (= c!48550 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149406 () (_ BitVec 64))

(assert (=> d!67609 (= lt!149406 (select (arr!7174 (array!15159 (store (arr!7174 a!3312) i!1256 k!2524) (size!7526 a!3312))) lt!149309))))

(assert (=> d!67609 (validMask!0 mask!3809)))

(assert (=> d!67609 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149309 k!2524 (array!15159 (store (arr!7174 a!3312) i!1256 k!2524) (size!7526 a!3312)) mask!3809) lt!149407)))

(declare-fun b!300241 () Bool)

(assert (=> b!300241 (and (bvsge (index!11514 lt!149407) #b00000000000000000000000000000000) (bvslt (index!11514 lt!149407) (size!7526 (array!15159 (store (arr!7174 a!3312) i!1256 k!2524) (size!7526 a!3312)))))))

