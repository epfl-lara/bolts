; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63970 () Bool)

(assert start!63970)

(declare-fun b!718335 () Bool)

(declare-fun res!480959 () Bool)

(declare-fun e!403281 () Bool)

(assert (=> b!718335 (=> (not res!480959) (not e!403281))))

(declare-datatypes ((array!40663 0))(
  ( (array!40664 (arr!19455 (Array (_ BitVec 32) (_ BitVec 64))) (size!19876 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40663)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!718335 (= res!480959 (and (= (size!19876 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19876 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19876 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718336 () Bool)

(declare-fun e!403279 () Bool)

(assert (=> b!718336 (= e!403281 e!403279)))

(declare-fun res!480957 () Bool)

(assert (=> b!718336 (=> (not res!480957) (not e!403279))))

(declare-datatypes ((SeekEntryResult!7062 0))(
  ( (MissingZero!7062 (index!30615 (_ BitVec 32))) (Found!7062 (index!30616 (_ BitVec 32))) (Intermediate!7062 (undefined!7874 Bool) (index!30617 (_ BitVec 32)) (x!61659 (_ BitVec 32))) (Undefined!7062) (MissingVacant!7062 (index!30618 (_ BitVec 32))) )
))
(declare-fun lt!319331 () SeekEntryResult!7062)

(assert (=> b!718336 (= res!480957 (or (= lt!319331 (MissingZero!7062 i!1173)) (= lt!319331 (MissingVacant!7062 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40663 (_ BitVec 32)) SeekEntryResult!7062)

(assert (=> b!718336 (= lt!319331 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718337 () Bool)

(declare-fun res!480960 () Bool)

(assert (=> b!718337 (=> (not res!480960) (not e!403279))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718337 (= res!480960 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19876 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19876 a!3186))))))

(declare-fun b!718339 () Bool)

(declare-fun res!480962 () Bool)

(assert (=> b!718339 (=> (not res!480962) (not e!403281))))

(declare-fun arrayContainsKey!0 (array!40663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718339 (= res!480962 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718340 () Bool)

(declare-fun res!480956 () Bool)

(assert (=> b!718340 (=> (not res!480956) (not e!403279))))

(declare-datatypes ((List!13510 0))(
  ( (Nil!13507) (Cons!13506 (h!14551 (_ BitVec 64)) (t!19833 List!13510)) )
))
(declare-fun arrayNoDuplicates!0 (array!40663 (_ BitVec 32) List!13510) Bool)

(assert (=> b!718340 (= res!480956 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13507))))

(declare-fun b!718341 () Bool)

(declare-fun res!480963 () Bool)

(assert (=> b!718341 (=> (not res!480963) (not e!403279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40663 (_ BitVec 32)) Bool)

(assert (=> b!718341 (= res!480963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718342 () Bool)

(declare-fun lt!319330 () (_ BitVec 32))

(assert (=> b!718342 (= e!403279 (and (bvsge mask!3328 #b00000000000000000000000000000000) (or (bvslt lt!319330 #b00000000000000000000000000000000) (bvsge lt!319330 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718342 (= lt!319330 (toIndex!0 (select (arr!19455 a!3186) j!159) mask!3328))))

(declare-fun b!718343 () Bool)

(declare-fun res!480958 () Bool)

(assert (=> b!718343 (=> (not res!480958) (not e!403281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718343 (= res!480958 (validKeyInArray!0 (select (arr!19455 a!3186) j!159)))))

(declare-fun b!718338 () Bool)

(declare-fun res!480961 () Bool)

(assert (=> b!718338 (=> (not res!480961) (not e!403281))))

(assert (=> b!718338 (= res!480961 (validKeyInArray!0 k!2102))))

(declare-fun res!480955 () Bool)

(assert (=> start!63970 (=> (not res!480955) (not e!403281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63970 (= res!480955 (validMask!0 mask!3328))))

(assert (=> start!63970 e!403281))

(assert (=> start!63970 true))

(declare-fun array_inv!15229 (array!40663) Bool)

(assert (=> start!63970 (array_inv!15229 a!3186)))

(assert (= (and start!63970 res!480955) b!718335))

(assert (= (and b!718335 res!480959) b!718343))

(assert (= (and b!718343 res!480958) b!718338))

(assert (= (and b!718338 res!480961) b!718339))

(assert (= (and b!718339 res!480962) b!718336))

(assert (= (and b!718336 res!480957) b!718341))

(assert (= (and b!718341 res!480963) b!718340))

(assert (= (and b!718340 res!480956) b!718337))

(assert (= (and b!718337 res!480960) b!718342))

(declare-fun m!674071 () Bool)

(assert (=> b!718342 m!674071))

(assert (=> b!718342 m!674071))

(declare-fun m!674073 () Bool)

(assert (=> b!718342 m!674073))

(declare-fun m!674075 () Bool)

(assert (=> start!63970 m!674075))

(declare-fun m!674077 () Bool)

(assert (=> start!63970 m!674077))

(declare-fun m!674079 () Bool)

(assert (=> b!718340 m!674079))

(declare-fun m!674081 () Bool)

(assert (=> b!718338 m!674081))

(declare-fun m!674083 () Bool)

(assert (=> b!718336 m!674083))

(declare-fun m!674085 () Bool)

(assert (=> b!718339 m!674085))

(declare-fun m!674087 () Bool)

(assert (=> b!718341 m!674087))

(assert (=> b!718343 m!674071))

(assert (=> b!718343 m!674071))

(declare-fun m!674089 () Bool)

(assert (=> b!718343 m!674089))

(push 1)

(assert (not b!718339))

(assert (not b!718342))

(assert (not b!718343))

(assert (not b!718336))

(assert (not start!63970))

(assert (not b!718338))

(assert (not b!718340))

(assert (not b!718341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!718415 () Bool)

(declare-fun e!403316 () Bool)

(declare-fun contains!4039 (List!13510 (_ BitVec 64)) Bool)

(assert (=> b!718415 (= e!403316 (contains!4039 Nil!13507 (select (arr!19455 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!718416 () Bool)

(declare-fun e!403315 () Bool)

(declare-fun e!403317 () Bool)

(assert (=> b!718416 (= e!403315 e!403317)))

(declare-fun c!79059 () Bool)

(assert (=> b!718416 (= c!79059 (validKeyInArray!0 (select (arr!19455 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!718417 () Bool)

(declare-fun call!34734 () Bool)

(assert (=> b!718417 (= e!403317 call!34734)))

(declare-fun d!98957 () Bool)

(declare-fun res!481031 () Bool)

(declare-fun e!403314 () Bool)

(assert (=> d!98957 (=> res!481031 e!403314)))

(assert (=> d!98957 (= res!481031 (bvsge #b00000000000000000000000000000000 (size!19876 a!3186)))))

(assert (=> d!98957 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13507) e!403314)))

(declare-fun b!718414 () Bool)

(assert (=> b!718414 (= e!403314 e!403315)))

(declare-fun res!481032 () Bool)

(assert (=> b!718414 (=> (not res!481032) (not e!403315))))

(assert (=> b!718414 (= res!481032 (not e!403316))))

(declare-fun res!481030 () Bool)

(assert (=> b!718414 (=> (not res!481030) (not e!403316))))

(assert (=> b!718414 (= res!481030 (validKeyInArray!0 (select (arr!19455 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!718418 () Bool)

(assert (=> b!718418 (= e!403317 call!34734)))

(declare-fun bm!34731 () Bool)

(assert (=> bm!34731 (= call!34734 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79059 (Cons!13506 (select (arr!19455 a!3186) #b00000000000000000000000000000000) Nil!13507) Nil!13507)))))

(assert (= (and d!98957 (not res!481031)) b!718414))

(assert (= (and b!718414 res!481030) b!718415))

(assert (= (and b!718414 res!481032) b!718416))

(assert (= (and b!718416 c!79059) b!718418))

(assert (= (and b!718416 (not c!79059)) b!718417))

(assert (= (or b!718418 b!718417) bm!34731))

(declare-fun m!674135 () Bool)

(assert (=> b!718415 m!674135))

(assert (=> b!718415 m!674135))

(declare-fun m!674137 () Bool)

(assert (=> b!718415 m!674137))

(assert (=> b!718416 m!674135))

(assert (=> b!718416 m!674135))

(declare-fun m!674139 () Bool)

(assert (=> b!718416 m!674139))

(assert (=> b!718414 m!674135))

(assert (=> b!718414 m!674135))

(assert (=> b!718414 m!674139))

(assert (=> bm!34731 m!674135))

(declare-fun m!674141 () Bool)

(assert (=> bm!34731 m!674141))

(assert (=> b!718340 d!98957))

(declare-fun d!98965 () Bool)

(declare-fun res!481037 () Bool)

(declare-fun e!403322 () Bool)

(assert (=> d!98965 (=> res!481037 e!403322)))

(assert (=> d!98965 (= res!481037 (= (select (arr!19455 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!98965 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!403322)))

(declare-fun b!718423 () Bool)

(declare-fun e!403323 () Bool)

(assert (=> b!718423 (= e!403322 e!403323)))

(declare-fun res!481038 () Bool)

(assert (=> b!718423 (=> (not res!481038) (not e!403323))))

(assert (=> b!718423 (= res!481038 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19876 a!3186)))))

(declare-fun b!718424 () Bool)

(assert (=> b!718424 (= e!403323 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!98965 (not res!481037)) b!718423))

(assert (= (and b!718423 res!481038) b!718424))

(assert (=> d!98965 m!674135))

(declare-fun m!674143 () Bool)

(assert (=> b!718424 m!674143))

(assert (=> b!718339 d!98965))

(declare-fun d!98967 () Bool)

(assert (=> d!98967 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!718338 d!98967))

(declare-fun d!98969 () Bool)

(assert (=> d!98969 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63970 d!98969))

(declare-fun d!98971 () Bool)

(assert (=> d!98971 (= (array_inv!15229 a!3186) (bvsge (size!19876 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63970 d!98971))

(declare-fun d!98973 () Bool)

(assert (=> d!98973 (= (validKeyInArray!0 (select (arr!19455 a!3186) j!159)) (and (not (= (select (arr!19455 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19455 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!718343 d!98973))

(declare-fun d!98975 () Bool)

(declare-fun lt!319355 () (_ BitVec 32))

(declare-fun lt!319354 () (_ BitVec 32))

(assert (=> d!98975 (= lt!319355 (bvmul (bvxor lt!319354 (bvlshr lt!319354 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!98975 (= lt!319354 ((_ extract 31 0) (bvand (bvxor (select (arr!19455 a!3186) j!159) (bvlshr (select (arr!19455 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!98975 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!481039 (let ((h!14554 ((_ extract 31 0) (bvand (bvxor (select (arr!19455 a!3186) j!159) (bvlshr (select (arr!19455 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61662 (bvmul (bvxor h!14554 (bvlshr h!14554 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61662 (bvlshr x!61662 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!481039 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!481039 #b00000000000000000000000000000000))))))

(assert (=> d!98975 (= (toIndex!0 (select (arr!19455 a!3186) j!159) mask!3328) (bvand (bvxor lt!319355 (bvlshr lt!319355 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!718342 d!98975))

(declare-fun e!403359 () SeekEntryResult!7062)

(declare-fun b!718478 () Bool)

(declare-fun lt!319378 () SeekEntryResult!7062)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40663 (_ BitVec 32)) SeekEntryResult!7062)

(assert (=> b!718478 (= e!403359 (seekKeyOrZeroReturnVacant!0 (x!61659 lt!319378) (index!30617 lt!319378) (index!30617 lt!319378) k!2102 a!3186 mask!3328))))

(declare-fun b!718479 () Bool)

(declare-fun e!403358 () SeekEntryResult!7062)

(declare-fun e!403357 () SeekEntryResult!7062)

(assert (=> b!718479 (= e!403358 e!403357)))

(declare-fun lt!319377 () (_ BitVec 64))

(assert (=> b!718479 (= lt!319377 (select (arr!19455 a!3186) (index!30617 lt!319378)))))

(declare-fun c!79082 () Bool)

(assert (=> b!718479 (= c!79082 (= lt!319377 k!2102))))

(declare-fun b!718480 () Bool)

(assert (=> b!718480 (= e!403359 (MissingZero!7062 (index!30617 lt!319378)))))

(declare-fun b!718481 () Bool)

(declare-fun c!79081 () Bool)

(assert (=> b!718481 (= c!79081 (= lt!319377 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!718481 (= e!403357 e!403359)))

(declare-fun b!718482 () Bool)

(assert (=> b!718482 (= e!403357 (Found!7062 (index!30617 lt!319378)))))

(declare-fun b!718483 () Bool)

(assert (=> b!718483 (= e!403358 Undefined!7062)))

(declare-fun d!98981 () Bool)

(declare-fun lt!319379 () SeekEntryResult!7062)

(assert (=> d!98981 (and (or (is-Undefined!7062 lt!319379) (not (is-Found!7062 lt!319379)) (and (bvsge (index!30616 lt!319379) #b00000000000000000000000000000000) (bvslt (index!30616 lt!319379) (size!19876 a!3186)))) (or (is-Undefined!7062 lt!319379) (is-Found!7062 lt!319379) (not (is-MissingZero!7062 lt!319379)) (and (bvsge (index!30615 lt!319379) #b00000000000000000000000000000000) (bvslt (index!30615 lt!319379) (size!19876 a!3186)))) (or (is-Undefined!7062 lt!319379) (is-Found!7062 lt!319379) (is-MissingZero!7062 lt!319379) (not (is-MissingVacant!7062 lt!319379)) (and (bvsge (index!30618 lt!319379) #b00000000000000000000000000000000) (bvslt (index!30618 lt!319379) (size!19876 a!3186)))) (or (is-Undefined!7062 lt!319379) (ite (is-Found!7062 lt!319379) (= (select (arr!19455 a!3186) (index!30616 lt!319379)) k!2102) (ite (is-MissingZero!7062 lt!319379) (= (select (arr!19455 a!3186) (index!30615 lt!319379)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7062 lt!319379) (= (select (arr!19455 a!3186) (index!30618 lt!319379)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!98981 (= lt!319379 e!403358)))

(declare-fun c!79080 () Bool)

(assert (=> d!98981 (= c!79080 (and (is-Intermediate!7062 lt!319378) (undefined!7874 lt!319378)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40663 (_ BitVec 32)) SeekEntryResult!7062)

(assert (=> d!98981 (= lt!319378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!98981 (validMask!0 mask!3328)))

(assert (=> d!98981 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!319379)))

(assert (= (and d!98981 c!79080) b!718483))

(assert (= (and d!98981 (not c!79080)) b!718479))

(assert (= (and b!718479 c!79082) b!718482))

(assert (= (and b!718479 (not c!79082)) b!718481))

(assert (= (and b!718481 c!79081) b!718480))

(assert (= (and b!718481 (not c!79081)) b!718478))

(declare-fun m!674165 () Bool)

(assert (=> b!718478 m!674165))

(declare-fun m!674167 () Bool)

(assert (=> b!718479 m!674167))

(declare-fun m!674169 () Bool)

(assert (=> d!98981 m!674169))

(declare-fun m!674171 () Bool)

(assert (=> d!98981 m!674171))

(assert (=> d!98981 m!674075))

(declare-fun m!674173 () Bool)

(assert (=> d!98981 m!674173))

(assert (=> d!98981 m!674171))

(declare-fun m!674175 () Bool)

(assert (=> d!98981 m!674175))

(declare-fun m!674177 () Bool)

(assert (=> d!98981 m!674177))

(assert (=> b!718336 d!98981))

(declare-fun b!718496 () Bool)

(declare-fun e!403371 () Bool)

(declare-fun call!34743 () Bool)

(assert (=> b!718496 (= e!403371 call!34743)))

(declare-fun d!98991 () Bool)

(declare-fun res!481062 () Bool)

(declare-fun e!403370 () Bool)

(assert (=> d!98991 (=> res!481062 e!403370)))

(assert (=> d!98991 (= res!481062 (bvsge #b00000000000000000000000000000000 (size!19876 a!3186)))))

(assert (=> d!98991 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!403370)))

(declare-fun b!718497 () Bool)

(declare-fun e!403369 () Bool)

(assert (=> b!718497 (= e!403369 call!34743)))

(declare-fun b!718498 () Bool)

(assert (=> b!718498 (= e!403370 e!403371)))

(declare-fun c!79086 () Bool)

(assert (=> b!718498 (= c!79086 (validKeyInArray!0 (select (arr!19455 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!718499 () Bool)

(assert (=> b!718499 (= e!403371 e!403369)))

(declare-fun lt!319395 () (_ BitVec 64))

(assert (=> b!718499 (= lt!319395 (select (arr!19455 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24640 0))(
  ( (Unit!24641) )
))
(declare-fun lt!319396 () Unit!24640)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40663 (_ BitVec 64) (_ BitVec 32)) Unit!24640)

(assert (=> b!718499 (= lt!319396 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319395 #b00000000000000000000000000000000))))

(assert (=> b!718499 (arrayContainsKey!0 a!3186 lt!319395 #b00000000000000000000000000000000)))

(declare-fun lt!319397 () Unit!24640)

(assert (=> b!718499 (= lt!319397 lt!319396)))

(declare-fun res!481061 () Bool)

(assert (=> b!718499 (= res!481061 (= (seekEntryOrOpen!0 (select (arr!19455 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7062 #b00000000000000000000000000000000)))))

(assert (=> b!718499 (=> (not res!481061) (not e!403369))))

(declare-fun bm!34740 () Bool)

(assert (=> bm!34740 (= call!34743 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!98991 (not res!481062)) b!718498))

(assert (= (and b!718498 c!79086) b!718499))

(assert (= (and b!718498 (not c!79086)) b!718496))

(assert (= (and b!718499 res!481061) b!718497))

(assert (= (or b!718497 b!718496) bm!34740))

(assert (=> b!718498 m!674135))

(assert (=> b!718498 m!674135))

(assert (=> b!718498 m!674139))

(assert (=> b!718499 m!674135))

(declare-fun m!674191 () Bool)

(assert (=> b!718499 m!674191))

(declare-fun m!674193 () Bool)

(assert (=> b!718499 m!674193))

(assert (=> b!718499 m!674135))

(declare-fun m!674195 () Bool)

(assert (=> b!718499 m!674195))

(declare-fun m!674197 () Bool)

(assert (=> bm!34740 m!674197))

(assert (=> b!718341 d!98991))

(push 1)

(assert (not b!718415))

(assert (not b!718499))

(assert (not bm!34740))

(assert (not b!718498))

(assert (not d!98981))

(assert (not b!718416))

(assert (not b!718478))

(assert (not b!718414))

(assert (not b!718424))

(assert (not bm!34731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

