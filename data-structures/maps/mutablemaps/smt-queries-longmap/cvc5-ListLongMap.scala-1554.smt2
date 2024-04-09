; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29400 () Bool)

(assert start!29400)

(declare-fun b!297546 () Bool)

(declare-fun res!156972 () Bool)

(declare-fun e!188031 () Bool)

(assert (=> b!297546 (=> (not res!156972) (not e!188031))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15065 0))(
  ( (array!15066 (arr!7138 (Array (_ BitVec 32) (_ BitVec 64))) (size!7490 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15065)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!297546 (= res!156972 (and (= (size!7490 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7490 a!3312))))))

(declare-fun b!297547 () Bool)

(declare-datatypes ((Unit!9279 0))(
  ( (Unit!9280) )
))
(declare-fun e!188032 () Unit!9279)

(declare-fun e!188036 () Unit!9279)

(assert (=> b!297547 (= e!188032 e!188036)))

(declare-fun c!47873 () Bool)

(declare-datatypes ((SeekEntryResult!2298 0))(
  ( (MissingZero!2298 (index!11362 (_ BitVec 32))) (Found!2298 (index!11363 (_ BitVec 32))) (Intermediate!2298 (undefined!3110 Bool) (index!11364 (_ BitVec 32)) (x!29549 (_ BitVec 32))) (Undefined!2298) (MissingVacant!2298 (index!11365 (_ BitVec 32))) )
))
(declare-fun lt!147951 () SeekEntryResult!2298)

(assert (=> b!297547 (= c!47873 (is-Intermediate!2298 lt!147951))))

(declare-fun b!297548 () Bool)

(declare-fun res!156966 () Bool)

(assert (=> b!297548 (=> (not res!156966) (not e!188031))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297548 (= res!156966 (validKeyInArray!0 k!2524))))

(declare-fun b!297549 () Bool)

(declare-fun Unit!9281 () Unit!9279)

(assert (=> b!297549 (= e!188032 Unit!9281)))

(assert (=> b!297549 false))

(declare-fun b!297550 () Bool)

(declare-fun res!156965 () Bool)

(declare-fun e!188033 () Bool)

(assert (=> b!297550 (=> (not res!156965) (not e!188033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15065 (_ BitVec 32)) Bool)

(assert (=> b!297550 (= res!156965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297551 () Bool)

(declare-fun res!156968 () Bool)

(assert (=> b!297551 (=> (not res!156968) (not e!188031))))

(declare-fun arrayContainsKey!0 (array!15065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297551 (= res!156968 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297552 () Bool)

(assert (=> b!297552 (= e!188031 e!188033)))

(declare-fun res!156969 () Bool)

(assert (=> b!297552 (=> (not res!156969) (not e!188033))))

(declare-fun lt!147948 () Bool)

(declare-fun lt!147947 () SeekEntryResult!2298)

(assert (=> b!297552 (= res!156969 (or lt!147948 (= lt!147947 (MissingVacant!2298 i!1256))))))

(assert (=> b!297552 (= lt!147948 (= lt!147947 (MissingZero!2298 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15065 (_ BitVec 32)) SeekEntryResult!2298)

(assert (=> b!297552 (= lt!147947 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297553 () Bool)

(declare-fun lt!147949 () array!15065)

(declare-fun e!188035 () Bool)

(assert (=> b!297553 (= e!188035 (not (= (seekEntryOrOpen!0 k!2524 lt!147949 mask!3809) (Found!2298 i!1256))))))

(declare-fun res!156967 () Bool)

(assert (=> start!29400 (=> (not res!156967) (not e!188031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29400 (= res!156967 (validMask!0 mask!3809))))

(assert (=> start!29400 e!188031))

(assert (=> start!29400 true))

(declare-fun array_inv!5092 (array!15065) Bool)

(assert (=> start!29400 (array_inv!5092 a!3312)))

(declare-fun b!297554 () Bool)

(declare-fun e!188030 () Bool)

(assert (=> b!297554 (= e!188033 e!188030)))

(declare-fun res!156970 () Bool)

(assert (=> b!297554 (=> (not res!156970) (not e!188030))))

(assert (=> b!297554 (= res!156970 lt!147948)))

(declare-fun lt!147950 () (_ BitVec 32))

(declare-fun lt!147952 () SeekEntryResult!2298)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15065 (_ BitVec 32)) SeekEntryResult!2298)

(assert (=> b!297554 (= lt!147952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147950 k!2524 lt!147949 mask!3809))))

(assert (=> b!297554 (= lt!147949 (array!15066 (store (arr!7138 a!3312) i!1256 k!2524) (size!7490 a!3312)))))

(assert (=> b!297554 (= lt!147951 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147950 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297554 (= lt!147950 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297555 () Bool)

(assert (=> b!297555 (= e!188030 e!188035)))

(declare-fun res!156971 () Bool)

(assert (=> b!297555 (=> (not res!156971) (not e!188035))))

(assert (=> b!297555 (= res!156971 (= lt!147952 lt!147951))))

(declare-fun lt!147953 () Unit!9279)

(assert (=> b!297555 (= lt!147953 e!188032)))

(declare-fun c!47874 () Bool)

(assert (=> b!297555 (= c!47874 (or (and (is-Intermediate!2298 lt!147951) (undefined!3110 lt!147951)) (and (is-Intermediate!2298 lt!147951) (= (select (arr!7138 a!3312) (index!11364 lt!147951)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2298 lt!147951) (= (select (arr!7138 a!3312) (index!11364 lt!147951)) k!2524))))))

(declare-fun b!297556 () Bool)

(assert (=> b!297556 false))

(declare-fun Unit!9282 () Unit!9279)

(assert (=> b!297556 (= e!188036 Unit!9282)))

(declare-fun b!297557 () Bool)

(assert (=> b!297557 (and (= lt!147952 lt!147951) (= (select (store (arr!7138 a!3312) i!1256 k!2524) (index!11364 lt!147951)) k!2524))))

(declare-fun lt!147946 () Unit!9279)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15065 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9279)

(assert (=> b!297557 (= lt!147946 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147950 (index!11364 lt!147951) (x!29549 lt!147951) mask!3809))))

(assert (=> b!297557 (and (= (select (arr!7138 a!3312) (index!11364 lt!147951)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11364 lt!147951) i!1256))))

(declare-fun Unit!9283 () Unit!9279)

(assert (=> b!297557 (= e!188036 Unit!9283)))

(assert (= (and start!29400 res!156967) b!297546))

(assert (= (and b!297546 res!156972) b!297548))

(assert (= (and b!297548 res!156966) b!297551))

(assert (= (and b!297551 res!156968) b!297552))

(assert (= (and b!297552 res!156969) b!297550))

(assert (= (and b!297550 res!156965) b!297554))

(assert (= (and b!297554 res!156970) b!297555))

(assert (= (and b!297555 c!47874) b!297549))

(assert (= (and b!297555 (not c!47874)) b!297547))

(assert (= (and b!297547 c!47873) b!297557))

(assert (= (and b!297547 (not c!47873)) b!297556))

(assert (= (and b!297555 res!156971) b!297553))

(declare-fun m!310271 () Bool)

(assert (=> b!297555 m!310271))

(declare-fun m!310273 () Bool)

(assert (=> b!297553 m!310273))

(declare-fun m!310275 () Bool)

(assert (=> b!297552 m!310275))

(declare-fun m!310277 () Bool)

(assert (=> start!29400 m!310277))

(declare-fun m!310279 () Bool)

(assert (=> start!29400 m!310279))

(declare-fun m!310281 () Bool)

(assert (=> b!297550 m!310281))

(declare-fun m!310283 () Bool)

(assert (=> b!297557 m!310283))

(declare-fun m!310285 () Bool)

(assert (=> b!297557 m!310285))

(declare-fun m!310287 () Bool)

(assert (=> b!297557 m!310287))

(assert (=> b!297557 m!310271))

(declare-fun m!310289 () Bool)

(assert (=> b!297551 m!310289))

(declare-fun m!310291 () Bool)

(assert (=> b!297548 m!310291))

(declare-fun m!310293 () Bool)

(assert (=> b!297554 m!310293))

(assert (=> b!297554 m!310283))

(declare-fun m!310295 () Bool)

(assert (=> b!297554 m!310295))

(declare-fun m!310297 () Bool)

(assert (=> b!297554 m!310297))

(push 1)

(assert (not start!29400))

(assert (not b!297548))

(assert (not b!297553))

(assert (not b!297551))

(assert (not b!297557))

(assert (not b!297554))

(assert (not b!297550))

(assert (not b!297552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!297653 () Bool)

(declare-fun e!188094 () Bool)

(declare-fun e!188096 () Bool)

(assert (=> b!297653 (= e!188094 e!188096)))

(declare-fun c!47895 () Bool)

(assert (=> b!297653 (= c!47895 (validKeyInArray!0 (select (arr!7138 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!297654 () Bool)

(declare-fun call!25761 () Bool)

(assert (=> b!297654 (= e!188096 call!25761)))

(declare-fun b!297655 () Bool)

(declare-fun e!188095 () Bool)

(assert (=> b!297655 (= e!188095 call!25761)))

(declare-fun b!297656 () Bool)

(assert (=> b!297656 (= e!188096 e!188095)))

(declare-fun lt!148018 () (_ BitVec 64))

(assert (=> b!297656 (= lt!148018 (select (arr!7138 a!3312) #b00000000000000000000000000000000))))

(declare-fun lt!148017 () Unit!9279)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15065 (_ BitVec 64) (_ BitVec 32)) Unit!9279)

(assert (=> b!297656 (= lt!148017 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148018 #b00000000000000000000000000000000))))

(assert (=> b!297656 (arrayContainsKey!0 a!3312 lt!148018 #b00000000000000000000000000000000)))

(declare-fun lt!148019 () Unit!9279)

(assert (=> b!297656 (= lt!148019 lt!148017)))

(declare-fun res!157028 () Bool)

(assert (=> b!297656 (= res!157028 (= (seekEntryOrOpen!0 (select (arr!7138 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2298 #b00000000000000000000000000000000)))))

(assert (=> b!297656 (=> (not res!157028) (not e!188095))))

(declare-fun d!67105 () Bool)

(declare-fun res!157029 () Bool)

(assert (=> d!67105 (=> res!157029 e!188094)))

(assert (=> d!67105 (= res!157029 (bvsge #b00000000000000000000000000000000 (size!7490 a!3312)))))

(assert (=> d!67105 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188094)))

(declare-fun bm!25758 () Bool)

(assert (=> bm!25758 (= call!25761 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67105 (not res!157029)) b!297653))

(assert (= (and b!297653 c!47895) b!297656))

(assert (= (and b!297653 (not c!47895)) b!297654))

(assert (= (and b!297656 res!157028) b!297655))

(assert (= (or b!297655 b!297654) bm!25758))

(declare-fun m!310359 () Bool)

(assert (=> b!297653 m!310359))

(assert (=> b!297653 m!310359))

(declare-fun m!310361 () Bool)

(assert (=> b!297653 m!310361))

(assert (=> b!297656 m!310359))

(declare-fun m!310363 () Bool)

(assert (=> b!297656 m!310363))

(declare-fun m!310365 () Bool)

(assert (=> b!297656 m!310365))

(assert (=> b!297656 m!310359))

(declare-fun m!310367 () Bool)

(assert (=> b!297656 m!310367))

(declare-fun m!310369 () Bool)

(assert (=> bm!25758 m!310369))

(assert (=> b!297550 d!67105))

(declare-fun d!67107 () Bool)

(assert (=> d!67107 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!297548 d!67107))

(declare-fun b!297701 () Bool)

(declare-fun lt!148037 () SeekEntryResult!2298)

(assert (=> b!297701 (and (bvsge (index!11364 lt!148037) #b00000000000000000000000000000000) (bvslt (index!11364 lt!148037) (size!7490 lt!147949)))))

(declare-fun res!157048 () Bool)

(assert (=> b!297701 (= res!157048 (= (select (arr!7138 lt!147949) (index!11364 lt!148037)) k!2524))))

(declare-fun e!188129 () Bool)

(assert (=> b!297701 (=> res!157048 e!188129)))

(declare-fun e!188125 () Bool)

(assert (=> b!297701 (= e!188125 e!188129)))

(declare-fun b!297702 () Bool)

(declare-fun e!188127 () Bool)

(assert (=> b!297702 (= e!188127 e!188125)))

(declare-fun res!157047 () Bool)

(assert (=> b!297702 (= res!157047 (and (is-Intermediate!2298 lt!148037) (not (undefined!3110 lt!148037)) (bvslt (x!29549 lt!148037) #b01111111111111111111111111111110) (bvsge (x!29549 lt!148037) #b00000000000000000000000000000000) (bvsge (x!29549 lt!148037) #b00000000000000000000000000000000)))))

(assert (=> b!297702 (=> (not res!157047) (not e!188125))))

(declare-fun b!297703 () Bool)

(declare-fun e!188128 () SeekEntryResult!2298)

(assert (=> b!297703 (= e!188128 (Intermediate!2298 false lt!147950 #b00000000000000000000000000000000))))

(declare-fun b!297704 () Bool)

(assert (=> b!297704 (and (bvsge (index!11364 lt!148037) #b00000000000000000000000000000000) (bvslt (index!11364 lt!148037) (size!7490 lt!147949)))))

(declare-fun res!157046 () Bool)

(assert (=> b!297704 (= res!157046 (= (select (arr!7138 lt!147949) (index!11364 lt!148037)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297704 (=> res!157046 e!188129)))

(declare-fun b!297705 () Bool)

(declare-fun e!188126 () SeekEntryResult!2298)

(assert (=> b!297705 (= e!188126 (Intermediate!2298 true lt!147950 #b00000000000000000000000000000000))))

(declare-fun d!67111 () Bool)

(assert (=> d!67111 e!188127))

(declare-fun c!47911 () Bool)

(assert (=> d!67111 (= c!47911 (and (is-Intermediate!2298 lt!148037) (undefined!3110 lt!148037)))))

(assert (=> d!67111 (= lt!148037 e!188126)))

(declare-fun c!47910 () Bool)

(assert (=> d!67111 (= c!47910 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148036 () (_ BitVec 64))

(assert (=> d!67111 (= lt!148036 (select (arr!7138 lt!147949) lt!147950))))

(assert (=> d!67111 (validMask!0 mask!3809)))

(assert (=> d!67111 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147950 k!2524 lt!147949 mask!3809) lt!148037)))

(declare-fun b!297706 () Bool)

(assert (=> b!297706 (= e!188127 (bvsge (x!29549 lt!148037) #b01111111111111111111111111111110))))

(declare-fun b!297707 () Bool)

(assert (=> b!297707 (= e!188126 e!188128)))

(declare-fun c!47912 () Bool)

(assert (=> b!297707 (= c!47912 (or (= lt!148036 k!2524) (= (bvadd lt!148036 lt!148036) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297708 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297708 (= e!188128 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147950 #b00000000000000000000000000000000 mask!3809) k!2524 lt!147949 mask!3809))))

(declare-fun b!297709 () Bool)

(assert (=> b!297709 (and (bvsge (index!11364 lt!148037) #b00000000000000000000000000000000) (bvslt (index!11364 lt!148037) (size!7490 lt!147949)))))

(assert (=> b!297709 (= e!188129 (= (select (arr!7138 lt!147949) (index!11364 lt!148037)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67111 c!47910) b!297705))

(assert (= (and d!67111 (not c!47910)) b!297707))

(assert (= (and b!297707 c!47912) b!297703))

(assert (= (and b!297707 (not c!47912)) b!297708))

(assert (= (and d!67111 c!47911) b!297706))

(assert (= (and d!67111 (not c!47911)) b!297702))

(assert (= (and b!297702 res!157047) b!297701))

(assert (= (and b!297701 (not res!157048)) b!297704))

(assert (= (and b!297704 (not res!157046)) b!297709))

(declare-fun m!310399 () Bool)

(assert (=> b!297704 m!310399))

(declare-fun m!310401 () Bool)

(assert (=> d!67111 m!310401))

(assert (=> d!67111 m!310277))

(assert (=> b!297709 m!310399))

(assert (=> b!297701 m!310399))

(declare-fun m!310403 () Bool)

(assert (=> b!297708 m!310403))

(assert (=> b!297708 m!310403))

(declare-fun m!310405 () Bool)

(assert (=> b!297708 m!310405))

(assert (=> b!297554 d!67111))

(declare-fun b!297710 () Bool)

(declare-fun lt!148039 () SeekEntryResult!2298)

(assert (=> b!297710 (and (bvsge (index!11364 lt!148039) #b00000000000000000000000000000000) (bvslt (index!11364 lt!148039) (size!7490 a!3312)))))

(declare-fun res!157051 () Bool)

(assert (=> b!297710 (= res!157051 (= (select (arr!7138 a!3312) (index!11364 lt!148039)) k!2524))))

(declare-fun e!188134 () Bool)

(assert (=> b!297710 (=> res!157051 e!188134)))

(declare-fun e!188130 () Bool)

(assert (=> b!297710 (= e!188130 e!188134)))

(declare-fun b!297711 () Bool)

(declare-fun e!188132 () Bool)

(assert (=> b!297711 (= e!188132 e!188130)))

(declare-fun res!157050 () Bool)

(assert (=> b!297711 (= res!157050 (and (is-Intermediate!2298 lt!148039) (not (undefined!3110 lt!148039)) (bvslt (x!29549 lt!148039) #b01111111111111111111111111111110) (bvsge (x!29549 lt!148039) #b00000000000000000000000000000000) (bvsge (x!29549 lt!148039) #b00000000000000000000000000000000)))))

(assert (=> b!297711 (=> (not res!157050) (not e!188130))))

(declare-fun b!297712 () Bool)

(declare-fun e!188133 () SeekEntryResult!2298)

(assert (=> b!297712 (= e!188133 (Intermediate!2298 false lt!147950 #b00000000000000000000000000000000))))

(declare-fun b!297713 () Bool)

(assert (=> b!297713 (and (bvsge (index!11364 lt!148039) #b00000000000000000000000000000000) (bvslt (index!11364 lt!148039) (size!7490 a!3312)))))

(declare-fun res!157049 () Bool)

(assert (=> b!297713 (= res!157049 (= (select (arr!7138 a!3312) (index!11364 lt!148039)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297713 (=> res!157049 e!188134)))

(declare-fun b!297714 () Bool)

(declare-fun e!188131 () SeekEntryResult!2298)

(assert (=> b!297714 (= e!188131 (Intermediate!2298 true lt!147950 #b00000000000000000000000000000000))))

(declare-fun d!67119 () Bool)

(assert (=> d!67119 e!188132))

(declare-fun c!47914 () Bool)

(assert (=> d!67119 (= c!47914 (and (is-Intermediate!2298 lt!148039) (undefined!3110 lt!148039)))))

(assert (=> d!67119 (= lt!148039 e!188131)))

(declare-fun c!47913 () Bool)

(assert (=> d!67119 (= c!47913 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148038 () (_ BitVec 64))

(assert (=> d!67119 (= lt!148038 (select (arr!7138 a!3312) lt!147950))))

(assert (=> d!67119 (validMask!0 mask!3809)))

(assert (=> d!67119 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147950 k!2524 a!3312 mask!3809) lt!148039)))

(declare-fun b!297715 () Bool)

(assert (=> b!297715 (= e!188132 (bvsge (x!29549 lt!148039) #b01111111111111111111111111111110))))

(declare-fun b!297716 () Bool)

(assert (=> b!297716 (= e!188131 e!188133)))

(declare-fun c!47915 () Bool)

(assert (=> b!297716 (= c!47915 (or (= lt!148038 k!2524) (= (bvadd lt!148038 lt!148038) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297717 () Bool)

(assert (=> b!297717 (= e!188133 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147950 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!297718 () Bool)

(assert (=> b!297718 (and (bvsge (index!11364 lt!148039) #b00000000000000000000000000000000) (bvslt (index!11364 lt!148039) (size!7490 a!3312)))))

(assert (=> b!297718 (= e!188134 (= (select (arr!7138 a!3312) (index!11364 lt!148039)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67119 c!47913) b!297714))

(assert (= (and d!67119 (not c!47913)) b!297716))

(assert (= (and b!297716 c!47915) b!297712))

(assert (= (and b!297716 (not c!47915)) b!297717))

(assert (= (and d!67119 c!47914) b!297715))

(assert (= (and d!67119 (not c!47914)) b!297711))

(assert (= (and b!297711 res!157050) b!297710))

(assert (= (and b!297710 (not res!157051)) b!297713))

(assert (= (and b!297713 (not res!157049)) b!297718))

(declare-fun m!310407 () Bool)

(assert (=> b!297713 m!310407))

(declare-fun m!310409 () Bool)

(assert (=> d!67119 m!310409))

(assert (=> d!67119 m!310277))

(assert (=> b!297718 m!310407))

(assert (=> b!297710 m!310407))

(assert (=> b!297717 m!310403))

(assert (=> b!297717 m!310403))

(declare-fun m!310411 () Bool)

(assert (=> b!297717 m!310411))

(assert (=> b!297554 d!67119))

(declare-fun d!67121 () Bool)

(declare-fun lt!148054 () (_ BitVec 32))

(declare-fun lt!148053 () (_ BitVec 32))

(assert (=> d!67121 (= lt!148054 (bvmul (bvxor lt!148053 (bvlshr lt!148053 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67121 (= lt!148053 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67121 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157052 (let ((h!5321 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29554 (bvmul (bvxor h!5321 (bvlshr h!5321 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29554 (bvlshr x!29554 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157052 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157052 #b00000000000000000000000000000000))))))

(assert (=> d!67121 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!148054 (bvlshr lt!148054 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!297554 d!67121))

(declare-fun b!297753 () Bool)

(declare-fun e!188155 () SeekEntryResult!2298)

(declare-fun e!188154 () SeekEntryResult!2298)

(assert (=> b!297753 (= e!188155 e!188154)))

(declare-fun lt!148066 () (_ BitVec 64))

(declare-fun lt!148064 () SeekEntryResult!2298)

(assert (=> b!297753 (= lt!148066 (select (arr!7138 a!3312) (index!11364 lt!148064)))))

(declare-fun c!47934 () Bool)

(assert (=> b!297753 (= c!47934 (= lt!148066 k!2524))))

(declare-fun b!297754 () Bool)

(declare-fun e!188153 () SeekEntryResult!2298)

(assert (=> b!297754 (= e!188153 (MissingZero!2298 (index!11364 lt!148064)))))

(declare-fun b!297755 () Bool)

(declare-fun c!47932 () Bool)

(assert (=> b!297755 (= c!47932 (= lt!148066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297755 (= e!188154 e!188153)))

(declare-fun d!67125 () Bool)

(declare-fun lt!148065 () SeekEntryResult!2298)

(assert (=> d!67125 (and (or (is-Undefined!2298 lt!148065) (not (is-Found!2298 lt!148065)) (and (bvsge (index!11363 lt!148065) #b00000000000000000000000000000000) (bvslt (index!11363 lt!148065) (size!7490 a!3312)))) (or (is-Undefined!2298 lt!148065) (is-Found!2298 lt!148065) (not (is-MissingZero!2298 lt!148065)) (and (bvsge (index!11362 lt!148065) #b00000000000000000000000000000000) (bvslt (index!11362 lt!148065) (size!7490 a!3312)))) (or (is-Undefined!2298 lt!148065) (is-Found!2298 lt!148065) (is-MissingZero!2298 lt!148065) (not (is-MissingVacant!2298 lt!148065)) (and (bvsge (index!11365 lt!148065) #b00000000000000000000000000000000) (bvslt (index!11365 lt!148065) (size!7490 a!3312)))) (or (is-Undefined!2298 lt!148065) (ite (is-Found!2298 lt!148065) (= (select (arr!7138 a!3312) (index!11363 lt!148065)) k!2524) (ite (is-MissingZero!2298 lt!148065) (= (select (arr!7138 a!3312) (index!11362 lt!148065)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2298 lt!148065) (= (select (arr!7138 a!3312) (index!11365 lt!148065)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67125 (= lt!148065 e!188155)))

(declare-fun c!47933 () Bool)

(assert (=> d!67125 (= c!47933 (and (is-Intermediate!2298 lt!148064) (undefined!3110 lt!148064)))))

(assert (=> d!67125 (= lt!148064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67125 (validMask!0 mask!3809)))

(assert (=> d!67125 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!148065)))

(declare-fun b!297756 () Bool)

(assert (=> b!297756 (= e!188155 Undefined!2298)))

(declare-fun b!297757 () Bool)

(assert (=> b!297757 (= e!188154 (Found!2298 (index!11364 lt!148064)))))

(declare-fun b!297758 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15065 (_ BitVec 32)) SeekEntryResult!2298)

(assert (=> b!297758 (= e!188153 (seekKeyOrZeroReturnVacant!0 (x!29549 lt!148064) (index!11364 lt!148064) (index!11364 lt!148064) k!2524 a!3312 mask!3809))))

(assert (= (and d!67125 c!47933) b!297756))

(assert (= (and d!67125 (not c!47933)) b!297753))

(assert (= (and b!297753 c!47934) b!297757))

(assert (= (and b!297753 (not c!47934)) b!297755))

(assert (= (and b!297755 c!47932) b!297754))

(assert (= (and b!297755 (not c!47932)) b!297758))

(declare-fun m!310435 () Bool)

(assert (=> b!297753 m!310435))

(assert (=> d!67125 m!310277))

(declare-fun m!310437 () Bool)

(assert (=> d!67125 m!310437))

(assert (=> d!67125 m!310297))

(declare-fun m!310439 () Bool)

(assert (=> d!67125 m!310439))

(declare-fun m!310441 () Bool)

(assert (=> d!67125 m!310441))

(declare-fun m!310443 () Bool)

(assert (=> d!67125 m!310443))

(assert (=> d!67125 m!310297))

(declare-fun m!310445 () Bool)

(assert (=> b!297758 m!310445))

(assert (=> b!297552 d!67125))

(declare-fun b!297759 () Bool)

(declare-fun e!188158 () SeekEntryResult!2298)

(declare-fun e!188157 () SeekEntryResult!2298)

(assert (=> b!297759 (= e!188158 e!188157)))

(declare-fun lt!148073 () (_ BitVec 64))

(declare-fun lt!148071 () SeekEntryResult!2298)

(assert (=> b!297759 (= lt!148073 (select (arr!7138 lt!147949) (index!11364 lt!148071)))))

(declare-fun c!47937 () Bool)

(assert (=> b!297759 (= c!47937 (= lt!148073 k!2524))))

(declare-fun b!297760 () Bool)

(declare-fun e!188156 () SeekEntryResult!2298)

(assert (=> b!297760 (= e!188156 (MissingZero!2298 (index!11364 lt!148071)))))

(declare-fun b!297761 () Bool)

(declare-fun c!47935 () Bool)

(assert (=> b!297761 (= c!47935 (= lt!148073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297761 (= e!188157 e!188156)))

(declare-fun d!67129 () Bool)

(declare-fun lt!148072 () SeekEntryResult!2298)

(assert (=> d!67129 (and (or (is-Undefined!2298 lt!148072) (not (is-Found!2298 lt!148072)) (and (bvsge (index!11363 lt!148072) #b00000000000000000000000000000000) (bvslt (index!11363 lt!148072) (size!7490 lt!147949)))) (or (is-Undefined!2298 lt!148072) (is-Found!2298 lt!148072) (not (is-MissingZero!2298 lt!148072)) (and (bvsge (index!11362 lt!148072) #b00000000000000000000000000000000) (bvslt (index!11362 lt!148072) (size!7490 lt!147949)))) (or (is-Undefined!2298 lt!148072) (is-Found!2298 lt!148072) (is-MissingZero!2298 lt!148072) (not (is-MissingVacant!2298 lt!148072)) (and (bvsge (index!11365 lt!148072) #b00000000000000000000000000000000) (bvslt (index!11365 lt!148072) (size!7490 lt!147949)))) (or (is-Undefined!2298 lt!148072) (ite (is-Found!2298 lt!148072) (= (select (arr!7138 lt!147949) (index!11363 lt!148072)) k!2524) (ite (is-MissingZero!2298 lt!148072) (= (select (arr!7138 lt!147949) (index!11362 lt!148072)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2298 lt!148072) (= (select (arr!7138 lt!147949) (index!11365 lt!148072)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67129 (= lt!148072 e!188158)))

(declare-fun c!47936 () Bool)

(assert (=> d!67129 (= c!47936 (and (is-Intermediate!2298 lt!148071) (undefined!3110 lt!148071)))))

(assert (=> d!67129 (= lt!148071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 lt!147949 mask!3809))))

(assert (=> d!67129 (validMask!0 mask!3809)))

(assert (=> d!67129 (= (seekEntryOrOpen!0 k!2524 lt!147949 mask!3809) lt!148072)))

(declare-fun b!297762 () Bool)

(assert (=> b!297762 (= e!188158 Undefined!2298)))

(declare-fun b!297763 () Bool)

(assert (=> b!297763 (= e!188157 (Found!2298 (index!11364 lt!148071)))))

(declare-fun b!297764 () Bool)

(assert (=> b!297764 (= e!188156 (seekKeyOrZeroReturnVacant!0 (x!29549 lt!148071) (index!11364 lt!148071) (index!11364 lt!148071) k!2524 lt!147949 mask!3809))))

(assert (= (and d!67129 c!47936) b!297762))

(assert (= (and d!67129 (not c!47936)) b!297759))

(assert (= (and b!297759 c!47937) b!297763))

(assert (= (and b!297759 (not c!47937)) b!297761))

(assert (= (and b!297761 c!47935) b!297760))

(assert (= (and b!297761 (not c!47935)) b!297764))

(declare-fun m!310447 () Bool)

(assert (=> b!297759 m!310447))

(assert (=> d!67129 m!310277))

(declare-fun m!310449 () Bool)

(assert (=> d!67129 m!310449))

(assert (=> d!67129 m!310297))

(declare-fun m!310451 () Bool)

(assert (=> d!67129 m!310451))

(declare-fun m!310453 () Bool)

(assert (=> d!67129 m!310453))

(declare-fun m!310455 () Bool)

(assert (=> d!67129 m!310455))

(assert (=> d!67129 m!310297))

(declare-fun m!310457 () Bool)

(assert (=> b!297764 m!310457))

(assert (=> b!297553 d!67129))

(declare-fun d!67131 () Bool)

(assert (=> d!67131 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29400 d!67131))

(declare-fun d!67137 () Bool)

(assert (=> d!67137 (= (array_inv!5092 a!3312) (bvsge (size!7490 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29400 d!67137))

(declare-fun d!67141 () Bool)

(declare-fun res!157076 () Bool)

(declare-fun e!188189 () Bool)

(assert (=> d!67141 (=> res!157076 e!188189)))

(assert (=> d!67141 (= res!157076 (= (select (arr!7138 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67141 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!188189)))

(declare-fun b!297813 () Bool)

(declare-fun e!188190 () Bool)

(assert (=> b!297813 (= e!188189 e!188190)))

(declare-fun res!157077 () Bool)

(assert (=> b!297813 (=> (not res!157077) (not e!188190))))

(assert (=> b!297813 (= res!157077 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7490 a!3312)))))

(declare-fun b!297814 () Bool)

(assert (=> b!297814 (= e!188190 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67141 (not res!157076)) b!297813))

(assert (= (and b!297813 res!157077) b!297814))

(assert (=> d!67141 m!310359))

(declare-fun m!310473 () Bool)

(assert (=> b!297814 m!310473))

(assert (=> b!297551 d!67141))

(declare-fun d!67145 () Bool)

(declare-fun e!188196 () Bool)

(assert (=> d!67145 e!188196))

(declare-fun res!157082 () Bool)

(assert (=> d!67145 (=> (not res!157082) (not e!188196))))

(assert (=> d!67145 (= res!157082 (and (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7490 a!3312))))))

(declare-fun lt!148093 () Unit!9279)

(declare-fun choose!42 (array!15065 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9279)

(assert (=> d!67145 (= lt!148093 (choose!42 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147950 (index!11364 lt!147951) (x!29549 lt!147951) mask!3809))))

(assert (=> d!67145 (validMask!0 mask!3809)))

(assert (=> d!67145 (= (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147950 (index!11364 lt!147951) (x!29549 lt!147951) mask!3809) lt!148093)))

(declare-fun b!297821 () Bool)

(assert (=> b!297821 (= e!188196 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147950 k!2524 (array!15066 (store (arr!7138 a!3312) i!1256 k!2524) (size!7490 a!3312)) mask!3809) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147950 k!2524 a!3312 mask!3809)))))

(assert (= (and d!67145 res!157082) b!297821))

(declare-fun m!310487 () Bool)

(assert (=> d!67145 m!310487))

(assert (=> d!67145 m!310277))

(assert (=> b!297821 m!310283))

(declare-fun m!310489 () Bool)

(assert (=> b!297821 m!310489))

(assert (=> b!297821 m!310295))

(assert (=> b!297557 d!67145))

(push 1)

(assert (not b!297653))

(assert (not d!67145))

(assert (not b!297656))

(assert (not d!67119))

(assert (not d!67111))

(assert (not b!297708))

(assert (not b!297758))

(assert (not bm!25758))

(assert (not d!67129))

(assert (not b!297821))

(assert (not b!297764))

(assert (not b!297717))

(assert (not d!67125))

(assert (not b!297814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

