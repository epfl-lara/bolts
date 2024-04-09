; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29460 () Bool)

(assert start!29460)

(declare-datatypes ((SeekEntryResult!2301 0))(
  ( (MissingZero!2301 (index!11377 (_ BitVec 32))) (Found!2301 (index!11378 (_ BitVec 32))) (Intermediate!2301 (undefined!3113 Bool) (index!11379 (_ BitVec 32)) (x!29569 (_ BitVec 32))) (Undefined!2301) (MissingVacant!2301 (index!11380 (_ BitVec 32))) )
))
(declare-fun lt!148128 () SeekEntryResult!2301)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun e!188236 () Bool)

(declare-fun b!297885 () Bool)

(declare-fun lt!148127 () SeekEntryResult!2301)

(declare-fun lt!148126 () Bool)

(assert (=> b!297885 (= e!188236 (and (not lt!148126) (= lt!148128 (MissingVacant!2301 i!1256)) (is-Intermediate!2301 lt!148127) (undefined!3113 lt!148127)))))

(declare-fun lt!148130 () SeekEntryResult!2301)

(declare-fun lt!148129 () (_ BitVec 32))

(declare-datatypes ((array!15074 0))(
  ( (array!15075 (arr!7141 (Array (_ BitVec 32) (_ BitVec 64))) (size!7493 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15074)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15074 (_ BitVec 32)) SeekEntryResult!2301)

(assert (=> b!297885 (= lt!148130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148129 k!2524 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312)) mask!3809))))

(assert (=> b!297885 (= lt!148127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148129 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297885 (= lt!148129 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297886 () Bool)

(declare-fun res!157122 () Bool)

(declare-fun e!188235 () Bool)

(assert (=> b!297886 (=> (not res!157122) (not e!188235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297886 (= res!157122 (validKeyInArray!0 k!2524))))

(declare-fun b!297887 () Bool)

(assert (=> b!297887 (= e!188235 e!188236)))

(declare-fun res!157117 () Bool)

(assert (=> b!297887 (=> (not res!157117) (not e!188236))))

(assert (=> b!297887 (= res!157117 (or lt!148126 (= lt!148128 (MissingVacant!2301 i!1256))))))

(assert (=> b!297887 (= lt!148126 (= lt!148128 (MissingZero!2301 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15074 (_ BitVec 32)) SeekEntryResult!2301)

(assert (=> b!297887 (= lt!148128 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!157119 () Bool)

(assert (=> start!29460 (=> (not res!157119) (not e!188235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29460 (= res!157119 (validMask!0 mask!3809))))

(assert (=> start!29460 e!188235))

(assert (=> start!29460 true))

(declare-fun array_inv!5095 (array!15074) Bool)

(assert (=> start!29460 (array_inv!5095 a!3312)))

(declare-fun b!297888 () Bool)

(declare-fun res!157121 () Bool)

(assert (=> b!297888 (=> (not res!157121) (not e!188235))))

(assert (=> b!297888 (= res!157121 (and (= (size!7493 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7493 a!3312))))))

(declare-fun b!297889 () Bool)

(declare-fun res!157118 () Bool)

(assert (=> b!297889 (=> (not res!157118) (not e!188235))))

(declare-fun arrayContainsKey!0 (array!15074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297889 (= res!157118 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297890 () Bool)

(declare-fun res!157120 () Bool)

(assert (=> b!297890 (=> (not res!157120) (not e!188236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15074 (_ BitVec 32)) Bool)

(assert (=> b!297890 (= res!157120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29460 res!157119) b!297888))

(assert (= (and b!297888 res!157121) b!297886))

(assert (= (and b!297886 res!157122) b!297889))

(assert (= (and b!297889 res!157118) b!297887))

(assert (= (and b!297887 res!157117) b!297890))

(assert (= (and b!297890 res!157120) b!297885))

(declare-fun m!310523 () Bool)

(assert (=> b!297886 m!310523))

(declare-fun m!310525 () Bool)

(assert (=> b!297890 m!310525))

(declare-fun m!310527 () Bool)

(assert (=> b!297887 m!310527))

(declare-fun m!310529 () Bool)

(assert (=> b!297885 m!310529))

(declare-fun m!310531 () Bool)

(assert (=> b!297885 m!310531))

(declare-fun m!310533 () Bool)

(assert (=> b!297885 m!310533))

(declare-fun m!310535 () Bool)

(assert (=> b!297885 m!310535))

(declare-fun m!310537 () Bool)

(assert (=> start!29460 m!310537))

(declare-fun m!310539 () Bool)

(assert (=> start!29460 m!310539))

(declare-fun m!310541 () Bool)

(assert (=> b!297889 m!310541))

(push 1)

(assert (not b!297886))

(assert (not start!29460))

(assert (not b!297890))

(assert (not b!297885))

(assert (not b!297889))

(assert (not b!297887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!297953 () Bool)

(declare-fun e!188277 () Bool)

(declare-fun e!188279 () Bool)

(assert (=> b!297953 (= e!188277 e!188279)))

(declare-fun c!47973 () Bool)

(assert (=> b!297953 (= c!47973 (validKeyInArray!0 (select (arr!7141 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!297954 () Bool)

(declare-fun call!25773 () Bool)

(assert (=> b!297954 (= e!188279 call!25773)))

(declare-fun d!67177 () Bool)

(declare-fun res!157175 () Bool)

(assert (=> d!67177 (=> res!157175 e!188277)))

(assert (=> d!67177 (= res!157175 (bvsge #b00000000000000000000000000000000 (size!7493 a!3312)))))

(assert (=> d!67177 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188277)))

(declare-fun b!297955 () Bool)

(declare-fun e!188278 () Bool)

(assert (=> b!297955 (= e!188279 e!188278)))

(declare-fun lt!148178 () (_ BitVec 64))

(assert (=> b!297955 (= lt!148178 (select (arr!7141 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9296 0))(
  ( (Unit!9297) )
))
(declare-fun lt!148177 () Unit!9296)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15074 (_ BitVec 64) (_ BitVec 32)) Unit!9296)

(assert (=> b!297955 (= lt!148177 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148178 #b00000000000000000000000000000000))))

(assert (=> b!297955 (arrayContainsKey!0 a!3312 lt!148178 #b00000000000000000000000000000000)))

(declare-fun lt!148176 () Unit!9296)

(assert (=> b!297955 (= lt!148176 lt!148177)))

(declare-fun res!157176 () Bool)

(assert (=> b!297955 (= res!157176 (= (seekEntryOrOpen!0 (select (arr!7141 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2301 #b00000000000000000000000000000000)))))

(assert (=> b!297955 (=> (not res!157176) (not e!188278))))

(declare-fun b!297956 () Bool)

(assert (=> b!297956 (= e!188278 call!25773)))

(declare-fun bm!25770 () Bool)

(assert (=> bm!25770 (= call!25773 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67177 (not res!157175)) b!297953))

(assert (= (and b!297953 c!47973) b!297955))

(assert (= (and b!297953 (not c!47973)) b!297954))

(assert (= (and b!297955 res!157176) b!297956))

(assert (= (or b!297956 b!297954) bm!25770))

(declare-fun m!310597 () Bool)

(assert (=> b!297953 m!310597))

(assert (=> b!297953 m!310597))

(declare-fun m!310599 () Bool)

(assert (=> b!297953 m!310599))

(assert (=> b!297955 m!310597))

(declare-fun m!310601 () Bool)

(assert (=> b!297955 m!310601))

(declare-fun m!310603 () Bool)

(assert (=> b!297955 m!310603))

(assert (=> b!297955 m!310597))

(declare-fun m!310605 () Bool)

(assert (=> b!297955 m!310605))

(declare-fun m!310607 () Bool)

(assert (=> bm!25770 m!310607))

(assert (=> b!297890 d!67177))

(declare-fun b!298044 () Bool)

(declare-fun e!188333 () SeekEntryResult!2301)

(declare-fun e!188329 () SeekEntryResult!2301)

(assert (=> b!298044 (= e!188333 e!188329)))

(declare-fun c!48008 () Bool)

(declare-fun lt!148207 () (_ BitVec 64))

(assert (=> b!298044 (= c!48008 (or (= lt!148207 k!2524) (= (bvadd lt!148207 lt!148207) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298045 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298045 (= e!188329 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148129 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312)) mask!3809))))

(declare-fun lt!148208 () SeekEntryResult!2301)

(declare-fun b!298046 () Bool)

(assert (=> b!298046 (and (bvsge (index!11379 lt!148208) #b00000000000000000000000000000000) (bvslt (index!11379 lt!148208) (size!7493 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312)))))))

(declare-fun e!188330 () Bool)

(assert (=> b!298046 (= e!188330 (= (select (arr!7141 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312))) (index!11379 lt!148208)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298047 () Bool)

(assert (=> b!298047 (= e!188329 (Intermediate!2301 false lt!148129 #b00000000000000000000000000000000))))

(declare-fun b!298048 () Bool)

(declare-fun e!188332 () Bool)

(assert (=> b!298048 (= e!188332 (bvsge (x!29569 lt!148208) #b01111111111111111111111111111110))))

(declare-fun b!298049 () Bool)

(assert (=> b!298049 (and (bvsge (index!11379 lt!148208) #b00000000000000000000000000000000) (bvslt (index!11379 lt!148208) (size!7493 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312)))))))

(declare-fun res!157198 () Bool)

(assert (=> b!298049 (= res!157198 (= (select (arr!7141 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312))) (index!11379 lt!148208)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298049 (=> res!157198 e!188330)))

(declare-fun b!298050 () Bool)

(assert (=> b!298050 (= e!188333 (Intermediate!2301 true lt!148129 #b00000000000000000000000000000000))))

(declare-fun b!298052 () Bool)

(declare-fun e!188331 () Bool)

(assert (=> b!298052 (= e!188332 e!188331)))

(declare-fun res!157199 () Bool)

(assert (=> b!298052 (= res!157199 (and (is-Intermediate!2301 lt!148208) (not (undefined!3113 lt!148208)) (bvslt (x!29569 lt!148208) #b01111111111111111111111111111110) (bvsge (x!29569 lt!148208) #b00000000000000000000000000000000) (bvsge (x!29569 lt!148208) #b00000000000000000000000000000000)))))

(assert (=> b!298052 (=> (not res!157199) (not e!188331))))

(declare-fun b!298051 () Bool)

(assert (=> b!298051 (and (bvsge (index!11379 lt!148208) #b00000000000000000000000000000000) (bvslt (index!11379 lt!148208) (size!7493 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312)))))))

(declare-fun res!157200 () Bool)

(assert (=> b!298051 (= res!157200 (= (select (arr!7141 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312))) (index!11379 lt!148208)) k!2524))))

(assert (=> b!298051 (=> res!157200 e!188330)))

(assert (=> b!298051 (= e!188331 e!188330)))

(declare-fun d!67183 () Bool)

(assert (=> d!67183 e!188332))

(declare-fun c!48009 () Bool)

(assert (=> d!67183 (= c!48009 (and (is-Intermediate!2301 lt!148208) (undefined!3113 lt!148208)))))

(assert (=> d!67183 (= lt!148208 e!188333)))

(declare-fun c!48007 () Bool)

(assert (=> d!67183 (= c!48007 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67183 (= lt!148207 (select (arr!7141 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312))) lt!148129))))

(assert (=> d!67183 (validMask!0 mask!3809)))

(assert (=> d!67183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148129 k!2524 (array!15075 (store (arr!7141 a!3312) i!1256 k!2524) (size!7493 a!3312)) mask!3809) lt!148208)))

(assert (= (and d!67183 c!48007) b!298050))

(assert (= (and d!67183 (not c!48007)) b!298044))

(assert (= (and b!298044 c!48008) b!298047))

(assert (= (and b!298044 (not c!48008)) b!298045))

(assert (= (and d!67183 c!48009) b!298048))

(assert (= (and d!67183 (not c!48009)) b!298052))

(assert (= (and b!298052 res!157199) b!298051))

(assert (= (and b!298051 (not res!157200)) b!298049))

(assert (= (and b!298049 (not res!157198)) b!298046))

(declare-fun m!310649 () Bool)

(assert (=> b!298049 m!310649))

(declare-fun m!310653 () Bool)

(assert (=> d!67183 m!310653))

(assert (=> d!67183 m!310537))

(assert (=> b!298051 m!310649))

(assert (=> b!298046 m!310649))

(declare-fun m!310655 () Bool)

(assert (=> b!298045 m!310655))

(assert (=> b!298045 m!310655))

(declare-fun m!310657 () Bool)

(assert (=> b!298045 m!310657))

(assert (=> b!297885 d!67183))

(declare-fun b!298062 () Bool)

(declare-fun e!188343 () SeekEntryResult!2301)

(declare-fun e!188339 () SeekEntryResult!2301)

(assert (=> b!298062 (= e!188343 e!188339)))

(declare-fun c!48014 () Bool)

(declare-fun lt!148211 () (_ BitVec 64))

(assert (=> b!298062 (= c!48014 (or (= lt!148211 k!2524) (= (bvadd lt!148211 lt!148211) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298063 () Bool)

(assert (=> b!298063 (= e!188339 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148129 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!298064 () Bool)

(declare-fun lt!148212 () SeekEntryResult!2301)

(assert (=> b!298064 (and (bvsge (index!11379 lt!148212) #b00000000000000000000000000000000) (bvslt (index!11379 lt!148212) (size!7493 a!3312)))))

(declare-fun e!188340 () Bool)

(assert (=> b!298064 (= e!188340 (= (select (arr!7141 a!3312) (index!11379 lt!148212)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298065 () Bool)

(assert (=> b!298065 (= e!188339 (Intermediate!2301 false lt!148129 #b00000000000000000000000000000000))))

(declare-fun b!298066 () Bool)

(declare-fun e!188342 () Bool)

(assert (=> b!298066 (= e!188342 (bvsge (x!29569 lt!148212) #b01111111111111111111111111111110))))

(declare-fun b!298067 () Bool)

(assert (=> b!298067 (and (bvsge (index!11379 lt!148212) #b00000000000000000000000000000000) (bvslt (index!11379 lt!148212) (size!7493 a!3312)))))

(declare-fun res!157204 () Bool)

(assert (=> b!298067 (= res!157204 (= (select (arr!7141 a!3312) (index!11379 lt!148212)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298067 (=> res!157204 e!188340)))

(declare-fun b!298068 () Bool)

(assert (=> b!298068 (= e!188343 (Intermediate!2301 true lt!148129 #b00000000000000000000000000000000))))

(declare-fun b!298070 () Bool)

(declare-fun e!188341 () Bool)

(assert (=> b!298070 (= e!188342 e!188341)))

(declare-fun res!157205 () Bool)

(assert (=> b!298070 (= res!157205 (and (is-Intermediate!2301 lt!148212) (not (undefined!3113 lt!148212)) (bvslt (x!29569 lt!148212) #b01111111111111111111111111111110) (bvsge (x!29569 lt!148212) #b00000000000000000000000000000000) (bvsge (x!29569 lt!148212) #b00000000000000000000000000000000)))))

(assert (=> b!298070 (=> (not res!157205) (not e!188341))))

(declare-fun b!298069 () Bool)

(assert (=> b!298069 (and (bvsge (index!11379 lt!148212) #b00000000000000000000000000000000) (bvslt (index!11379 lt!148212) (size!7493 a!3312)))))

(declare-fun res!157206 () Bool)

(assert (=> b!298069 (= res!157206 (= (select (arr!7141 a!3312) (index!11379 lt!148212)) k!2524))))

(assert (=> b!298069 (=> res!157206 e!188340)))

(assert (=> b!298069 (= e!188341 e!188340)))

(declare-fun d!67197 () Bool)

(assert (=> d!67197 e!188342))

(declare-fun c!48015 () Bool)

(assert (=> d!67197 (= c!48015 (and (is-Intermediate!2301 lt!148212) (undefined!3113 lt!148212)))))

(assert (=> d!67197 (= lt!148212 e!188343)))

(declare-fun c!48013 () Bool)

(assert (=> d!67197 (= c!48013 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67197 (= lt!148211 (select (arr!7141 a!3312) lt!148129))))

(assert (=> d!67197 (validMask!0 mask!3809)))

(assert (=> d!67197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148129 k!2524 a!3312 mask!3809) lt!148212)))

(assert (= (and d!67197 c!48013) b!298068))

(assert (= (and d!67197 (not c!48013)) b!298062))

(assert (= (and b!298062 c!48014) b!298065))

(assert (= (and b!298062 (not c!48014)) b!298063))

(assert (= (and d!67197 c!48015) b!298066))

(assert (= (and d!67197 (not c!48015)) b!298070))

(assert (= (and b!298070 res!157205) b!298069))

(assert (= (and b!298069 (not res!157206)) b!298067))

(assert (= (and b!298067 (not res!157204)) b!298064))

(declare-fun m!310659 () Bool)

(assert (=> b!298067 m!310659))

(declare-fun m!310661 () Bool)

(assert (=> d!67197 m!310661))

(assert (=> d!67197 m!310537))

(assert (=> b!298069 m!310659))

(assert (=> b!298064 m!310659))

(assert (=> b!298063 m!310655))

(assert (=> b!298063 m!310655))

(declare-fun m!310663 () Bool)

(assert (=> b!298063 m!310663))

(assert (=> b!297885 d!67197))

(declare-fun d!67199 () Bool)

(declare-fun lt!148228 () (_ BitVec 32))

(declare-fun lt!148227 () (_ BitVec 32))

(assert (=> d!67199 (= lt!148228 (bvmul (bvxor lt!148227 (bvlshr lt!148227 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67199 (= lt!148227 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67199 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157208 (let ((h!5325 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29575 (bvmul (bvxor h!5325 (bvlshr h!5325 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29575 (bvlshr x!29575 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157208 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157208 #b00000000000000000000000000000000))))))

(assert (=> d!67199 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!148228 (bvlshr lt!148228 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!297885 d!67199))

(declare-fun d!67203 () Bool)

(assert (=> d!67203 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29460 d!67203))

(declare-fun d!67213 () Bool)

(assert (=> d!67213 (= (array_inv!5095 a!3312) (bvsge (size!7493 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29460 d!67213))

(declare-fun d!67215 () Bool)

(declare-fun res!157232 () Bool)

(declare-fun e!188377 () Bool)

(assert (=> d!67215 (=> res!157232 e!188377)))

(assert (=> d!67215 (= res!157232 (= (select (arr!7141 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67215 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!188377)))

(declare-fun b!298123 () Bool)

(declare-fun e!188378 () Bool)

(assert (=> b!298123 (= e!188377 e!188378)))

(declare-fun res!157233 () Bool)

(assert (=> b!298123 (=> (not res!157233) (not e!188378))))

(assert (=> b!298123 (= res!157233 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7493 a!3312)))))

(declare-fun b!298124 () Bool)

(assert (=> b!298124 (= e!188378 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67215 (not res!157232)) b!298123))

(assert (= (and b!298123 res!157233) b!298124))

(assert (=> d!67215 m!310597))

(declare-fun m!310689 () Bool)

(assert (=> b!298124 m!310689))

(assert (=> b!297889 d!67215))

(declare-fun e!188386 () SeekEntryResult!2301)

(declare-fun lt!148255 () SeekEntryResult!2301)

(declare-fun b!298137 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15074 (_ BitVec 32)) SeekEntryResult!2301)

(assert (=> b!298137 (= e!188386 (seekKeyOrZeroReturnVacant!0 (x!29569 lt!148255) (index!11379 lt!148255) (index!11379 lt!148255) k!2524 a!3312 mask!3809))))

(declare-fun d!67217 () Bool)

(declare-fun lt!148254 () SeekEntryResult!2301)

(assert (=> d!67217 (and (or (is-Undefined!2301 lt!148254) (not (is-Found!2301 lt!148254)) (and (bvsge (index!11378 lt!148254) #b00000000000000000000000000000000) (bvslt (index!11378 lt!148254) (size!7493 a!3312)))) (or (is-Undefined!2301 lt!148254) (is-Found!2301 lt!148254) (not (is-MissingZero!2301 lt!148254)) (and (bvsge (index!11377 lt!148254) #b00000000000000000000000000000000) (bvslt (index!11377 lt!148254) (size!7493 a!3312)))) (or (is-Undefined!2301 lt!148254) (is-Found!2301 lt!148254) (is-MissingZero!2301 lt!148254) (not (is-MissingVacant!2301 lt!148254)) (and (bvsge (index!11380 lt!148254) #b00000000000000000000000000000000) (bvslt (index!11380 lt!148254) (size!7493 a!3312)))) (or (is-Undefined!2301 lt!148254) (ite (is-Found!2301 lt!148254) (= (select (arr!7141 a!3312) (index!11378 lt!148254)) k!2524) (ite (is-MissingZero!2301 lt!148254) (= (select (arr!7141 a!3312) (index!11377 lt!148254)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2301 lt!148254) (= (select (arr!7141 a!3312) (index!11380 lt!148254)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!188387 () SeekEntryResult!2301)

(assert (=> d!67217 (= lt!148254 e!188387)))

(declare-fun c!48038 () Bool)

(assert (=> d!67217 (= c!48038 (and (is-Intermediate!2301 lt!148255) (undefined!3113 lt!148255)))))

(assert (=> d!67217 (= lt!148255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67217 (validMask!0 mask!3809)))

(assert (=> d!67217 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!148254)))

(declare-fun b!298138 () Bool)

(declare-fun e!188385 () SeekEntryResult!2301)

(assert (=> b!298138 (= e!188387 e!188385)))

(declare-fun lt!148256 () (_ BitVec 64))

(assert (=> b!298138 (= lt!148256 (select (arr!7141 a!3312) (index!11379 lt!148255)))))

