; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122070 () Bool)

(assert start!122070)

(declare-fun b!1416345 () Bool)

(declare-fun res!952497 () Bool)

(declare-fun e!801637 () Bool)

(assert (=> b!1416345 (=> (not res!952497) (not e!801637))))

(declare-datatypes ((array!96674 0))(
  ( (array!96675 (arr!46664 (Array (_ BitVec 32) (_ BitVec 64))) (size!47215 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96674)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96674 (_ BitVec 32)) Bool)

(assert (=> b!1416345 (= res!952497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416346 () Bool)

(declare-fun e!801636 () Bool)

(assert (=> b!1416346 (= e!801637 (not e!801636))))

(declare-fun res!952503 () Bool)

(assert (=> b!1416346 (=> res!952503 e!801636)))

(declare-datatypes ((SeekEntryResult!10997 0))(
  ( (MissingZero!10997 (index!46379 (_ BitVec 32))) (Found!10997 (index!46380 (_ BitVec 32))) (Intermediate!10997 (undefined!11809 Bool) (index!46381 (_ BitVec 32)) (x!127983 (_ BitVec 32))) (Undefined!10997) (MissingVacant!10997 (index!46382 (_ BitVec 32))) )
))
(declare-fun lt!624898 () SeekEntryResult!10997)

(get-info :version)

(assert (=> b!1416346 (= res!952503 (or (not ((_ is Intermediate!10997) lt!624898)) (undefined!11809 lt!624898)))))

(declare-fun e!801638 () Bool)

(assert (=> b!1416346 e!801638))

(declare-fun res!952499 () Bool)

(assert (=> b!1416346 (=> (not res!952499) (not e!801638))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416346 (= res!952499 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47918 0))(
  ( (Unit!47919) )
))
(declare-fun lt!624896 () Unit!47918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96674 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47918)

(assert (=> b!1416346 (= lt!624896 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96674 (_ BitVec 32)) SeekEntryResult!10997)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416346 (= lt!624898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46664 a!2901) j!112) mask!2840) (select (arr!46664 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416347 () Bool)

(declare-fun lt!624897 () SeekEntryResult!10997)

(assert (=> b!1416347 (= e!801636 (or (= lt!624898 lt!624897) ((_ is Intermediate!10997) lt!624897)))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416347 (= lt!624897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901)) mask!2840))))

(declare-fun b!1416348 () Bool)

(declare-fun res!952502 () Bool)

(assert (=> b!1416348 (=> (not res!952502) (not e!801637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416348 (= res!952502 (validKeyInArray!0 (select (arr!46664 a!2901) j!112)))))

(declare-fun b!1416349 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96674 (_ BitVec 32)) SeekEntryResult!10997)

(assert (=> b!1416349 (= e!801638 (= (seekEntryOrOpen!0 (select (arr!46664 a!2901) j!112) a!2901 mask!2840) (Found!10997 j!112)))))

(declare-fun b!1416350 () Bool)

(declare-fun res!952498 () Bool)

(assert (=> b!1416350 (=> (not res!952498) (not e!801637))))

(assert (=> b!1416350 (= res!952498 (validKeyInArray!0 (select (arr!46664 a!2901) i!1037)))))

(declare-fun b!1416351 () Bool)

(declare-fun res!952496 () Bool)

(assert (=> b!1416351 (=> (not res!952496) (not e!801637))))

(declare-datatypes ((List!33363 0))(
  ( (Nil!33360) (Cons!33359 (h!34646 (_ BitVec 64)) (t!48064 List!33363)) )
))
(declare-fun arrayNoDuplicates!0 (array!96674 (_ BitVec 32) List!33363) Bool)

(assert (=> b!1416351 (= res!952496 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33360))))

(declare-fun res!952501 () Bool)

(assert (=> start!122070 (=> (not res!952501) (not e!801637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122070 (= res!952501 (validMask!0 mask!2840))))

(assert (=> start!122070 e!801637))

(assert (=> start!122070 true))

(declare-fun array_inv!35609 (array!96674) Bool)

(assert (=> start!122070 (array_inv!35609 a!2901)))

(declare-fun b!1416352 () Bool)

(declare-fun res!952500 () Bool)

(assert (=> b!1416352 (=> (not res!952500) (not e!801637))))

(assert (=> b!1416352 (= res!952500 (and (= (size!47215 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47215 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47215 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122070 res!952501) b!1416352))

(assert (= (and b!1416352 res!952500) b!1416350))

(assert (= (and b!1416350 res!952498) b!1416348))

(assert (= (and b!1416348 res!952502) b!1416345))

(assert (= (and b!1416345 res!952497) b!1416351))

(assert (= (and b!1416351 res!952496) b!1416346))

(assert (= (and b!1416346 res!952499) b!1416349))

(assert (= (and b!1416346 (not res!952503)) b!1416347))

(declare-fun m!1307127 () Bool)

(assert (=> b!1416349 m!1307127))

(assert (=> b!1416349 m!1307127))

(declare-fun m!1307129 () Bool)

(assert (=> b!1416349 m!1307129))

(declare-fun m!1307131 () Bool)

(assert (=> b!1416350 m!1307131))

(assert (=> b!1416350 m!1307131))

(declare-fun m!1307133 () Bool)

(assert (=> b!1416350 m!1307133))

(assert (=> b!1416346 m!1307127))

(declare-fun m!1307135 () Bool)

(assert (=> b!1416346 m!1307135))

(assert (=> b!1416346 m!1307127))

(declare-fun m!1307137 () Bool)

(assert (=> b!1416346 m!1307137))

(assert (=> b!1416346 m!1307135))

(assert (=> b!1416346 m!1307127))

(declare-fun m!1307139 () Bool)

(assert (=> b!1416346 m!1307139))

(declare-fun m!1307141 () Bool)

(assert (=> b!1416346 m!1307141))

(declare-fun m!1307143 () Bool)

(assert (=> b!1416347 m!1307143))

(declare-fun m!1307145 () Bool)

(assert (=> b!1416347 m!1307145))

(assert (=> b!1416347 m!1307145))

(declare-fun m!1307147 () Bool)

(assert (=> b!1416347 m!1307147))

(assert (=> b!1416347 m!1307147))

(assert (=> b!1416347 m!1307145))

(declare-fun m!1307149 () Bool)

(assert (=> b!1416347 m!1307149))

(declare-fun m!1307151 () Bool)

(assert (=> b!1416351 m!1307151))

(declare-fun m!1307153 () Bool)

(assert (=> b!1416345 m!1307153))

(declare-fun m!1307155 () Bool)

(assert (=> start!122070 m!1307155))

(declare-fun m!1307157 () Bool)

(assert (=> start!122070 m!1307157))

(assert (=> b!1416348 m!1307127))

(assert (=> b!1416348 m!1307127))

(declare-fun m!1307159 () Bool)

(assert (=> b!1416348 m!1307159))

(check-sat (not b!1416349) (not b!1416351) (not b!1416348) (not b!1416350) (not b!1416345) (not b!1416346) (not start!122070) (not b!1416347))
(check-sat)
(get-model)

(declare-fun d!152471 () Bool)

(assert (=> d!152471 (= (validKeyInArray!0 (select (arr!46664 a!2901) j!112)) (and (not (= (select (arr!46664 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46664 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1416348 d!152471))

(declare-fun b!1416389 () Bool)

(declare-fun e!801658 () SeekEntryResult!10997)

(declare-fun lt!624914 () SeekEntryResult!10997)

(assert (=> b!1416389 (= e!801658 (Found!10997 (index!46381 lt!624914)))))

(declare-fun b!1416390 () Bool)

(declare-fun e!801657 () SeekEntryResult!10997)

(assert (=> b!1416390 (= e!801657 e!801658)))

(declare-fun lt!624916 () (_ BitVec 64))

(assert (=> b!1416390 (= lt!624916 (select (arr!46664 a!2901) (index!46381 lt!624914)))))

(declare-fun c!131414 () Bool)

(assert (=> b!1416390 (= c!131414 (= lt!624916 (select (arr!46664 a!2901) j!112)))))

(declare-fun b!1416391 () Bool)

(declare-fun c!131413 () Bool)

(assert (=> b!1416391 (= c!131413 (= lt!624916 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!801659 () SeekEntryResult!10997)

(assert (=> b!1416391 (= e!801658 e!801659)))

(declare-fun b!1416393 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96674 (_ BitVec 32)) SeekEntryResult!10997)

(assert (=> b!1416393 (= e!801659 (seekKeyOrZeroReturnVacant!0 (x!127983 lt!624914) (index!46381 lt!624914) (index!46381 lt!624914) (select (arr!46664 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416394 () Bool)

(assert (=> b!1416394 (= e!801659 (MissingZero!10997 (index!46381 lt!624914)))))

(declare-fun d!152473 () Bool)

(declare-fun lt!624915 () SeekEntryResult!10997)

(assert (=> d!152473 (and (or ((_ is Undefined!10997) lt!624915) (not ((_ is Found!10997) lt!624915)) (and (bvsge (index!46380 lt!624915) #b00000000000000000000000000000000) (bvslt (index!46380 lt!624915) (size!47215 a!2901)))) (or ((_ is Undefined!10997) lt!624915) ((_ is Found!10997) lt!624915) (not ((_ is MissingZero!10997) lt!624915)) (and (bvsge (index!46379 lt!624915) #b00000000000000000000000000000000) (bvslt (index!46379 lt!624915) (size!47215 a!2901)))) (or ((_ is Undefined!10997) lt!624915) ((_ is Found!10997) lt!624915) ((_ is MissingZero!10997) lt!624915) (not ((_ is MissingVacant!10997) lt!624915)) (and (bvsge (index!46382 lt!624915) #b00000000000000000000000000000000) (bvslt (index!46382 lt!624915) (size!47215 a!2901)))) (or ((_ is Undefined!10997) lt!624915) (ite ((_ is Found!10997) lt!624915) (= (select (arr!46664 a!2901) (index!46380 lt!624915)) (select (arr!46664 a!2901) j!112)) (ite ((_ is MissingZero!10997) lt!624915) (= (select (arr!46664 a!2901) (index!46379 lt!624915)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10997) lt!624915) (= (select (arr!46664 a!2901) (index!46382 lt!624915)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152473 (= lt!624915 e!801657)))

(declare-fun c!131412 () Bool)

(assert (=> d!152473 (= c!131412 (and ((_ is Intermediate!10997) lt!624914) (undefined!11809 lt!624914)))))

(assert (=> d!152473 (= lt!624914 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46664 a!2901) j!112) mask!2840) (select (arr!46664 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152473 (validMask!0 mask!2840)))

(assert (=> d!152473 (= (seekEntryOrOpen!0 (select (arr!46664 a!2901) j!112) a!2901 mask!2840) lt!624915)))

(declare-fun b!1416392 () Bool)

(assert (=> b!1416392 (= e!801657 Undefined!10997)))

(assert (= (and d!152473 c!131412) b!1416392))

(assert (= (and d!152473 (not c!131412)) b!1416390))

(assert (= (and b!1416390 c!131414) b!1416389))

(assert (= (and b!1416390 (not c!131414)) b!1416391))

(assert (= (and b!1416391 c!131413) b!1416394))

(assert (= (and b!1416391 (not c!131413)) b!1416393))

(declare-fun m!1307195 () Bool)

(assert (=> b!1416390 m!1307195))

(assert (=> b!1416393 m!1307127))

(declare-fun m!1307197 () Bool)

(assert (=> b!1416393 m!1307197))

(assert (=> d!152473 m!1307135))

(assert (=> d!152473 m!1307127))

(assert (=> d!152473 m!1307139))

(assert (=> d!152473 m!1307155))

(declare-fun m!1307199 () Bool)

(assert (=> d!152473 m!1307199))

(declare-fun m!1307201 () Bool)

(assert (=> d!152473 m!1307201))

(assert (=> d!152473 m!1307127))

(assert (=> d!152473 m!1307135))

(declare-fun m!1307203 () Bool)

(assert (=> d!152473 m!1307203))

(assert (=> b!1416349 d!152473))

(declare-fun b!1416405 () Bool)

(declare-fun e!801671 () Bool)

(declare-fun call!67182 () Bool)

(assert (=> b!1416405 (= e!801671 call!67182)))

(declare-fun d!152479 () Bool)

(declare-fun res!952534 () Bool)

(declare-fun e!801669 () Bool)

(assert (=> d!152479 (=> res!952534 e!801669)))

(assert (=> d!152479 (= res!952534 (bvsge #b00000000000000000000000000000000 (size!47215 a!2901)))))

(assert (=> d!152479 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33360) e!801669)))

(declare-fun b!1416406 () Bool)

(declare-fun e!801670 () Bool)

(declare-fun contains!9839 (List!33363 (_ BitVec 64)) Bool)

(assert (=> b!1416406 (= e!801670 (contains!9839 Nil!33360 (select (arr!46664 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1416407 () Bool)

(declare-fun e!801668 () Bool)

(assert (=> b!1416407 (= e!801668 e!801671)))

(declare-fun c!131417 () Bool)

(assert (=> b!1416407 (= c!131417 (validKeyInArray!0 (select (arr!46664 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67179 () Bool)

(assert (=> bm!67179 (= call!67182 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131417 (Cons!33359 (select (arr!46664 a!2901) #b00000000000000000000000000000000) Nil!33360) Nil!33360)))))

(declare-fun b!1416408 () Bool)

(assert (=> b!1416408 (= e!801669 e!801668)))

(declare-fun res!952535 () Bool)

(assert (=> b!1416408 (=> (not res!952535) (not e!801668))))

(assert (=> b!1416408 (= res!952535 (not e!801670))))

(declare-fun res!952536 () Bool)

(assert (=> b!1416408 (=> (not res!952536) (not e!801670))))

(assert (=> b!1416408 (= res!952536 (validKeyInArray!0 (select (arr!46664 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1416409 () Bool)

(assert (=> b!1416409 (= e!801671 call!67182)))

(assert (= (and d!152479 (not res!952534)) b!1416408))

(assert (= (and b!1416408 res!952536) b!1416406))

(assert (= (and b!1416408 res!952535) b!1416407))

(assert (= (and b!1416407 c!131417) b!1416405))

(assert (= (and b!1416407 (not c!131417)) b!1416409))

(assert (= (or b!1416405 b!1416409) bm!67179))

(declare-fun m!1307205 () Bool)

(assert (=> b!1416406 m!1307205))

(assert (=> b!1416406 m!1307205))

(declare-fun m!1307207 () Bool)

(assert (=> b!1416406 m!1307207))

(assert (=> b!1416407 m!1307205))

(assert (=> b!1416407 m!1307205))

(declare-fun m!1307209 () Bool)

(assert (=> b!1416407 m!1307209))

(assert (=> bm!67179 m!1307205))

(declare-fun m!1307211 () Bool)

(assert (=> bm!67179 m!1307211))

(assert (=> b!1416408 m!1307205))

(assert (=> b!1416408 m!1307205))

(assert (=> b!1416408 m!1307209))

(assert (=> b!1416351 d!152479))

(declare-fun b!1416447 () Bool)

(declare-fun e!801697 () Bool)

(declare-fun call!67187 () Bool)

(assert (=> b!1416447 (= e!801697 call!67187)))

(declare-fun bm!67182 () Bool)

(assert (=> bm!67182 (= call!67187 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1416448 () Bool)

(declare-fun e!801696 () Bool)

(assert (=> b!1416448 (= e!801696 e!801697)))

(declare-fun lt!624933 () (_ BitVec 64))

(assert (=> b!1416448 (= lt!624933 (select (arr!46664 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!624934 () Unit!47918)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96674 (_ BitVec 64) (_ BitVec 32)) Unit!47918)

(assert (=> b!1416448 (= lt!624934 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!624933 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1416448 (arrayContainsKey!0 a!2901 lt!624933 #b00000000000000000000000000000000)))

(declare-fun lt!624932 () Unit!47918)

(assert (=> b!1416448 (= lt!624932 lt!624934)))

(declare-fun res!952548 () Bool)

(assert (=> b!1416448 (= res!952548 (= (seekEntryOrOpen!0 (select (arr!46664 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10997 #b00000000000000000000000000000000)))))

(assert (=> b!1416448 (=> (not res!952548) (not e!801697))))

(declare-fun b!1416449 () Bool)

(assert (=> b!1416449 (= e!801696 call!67187)))

(declare-fun b!1416446 () Bool)

(declare-fun e!801695 () Bool)

(assert (=> b!1416446 (= e!801695 e!801696)))

(declare-fun c!131431 () Bool)

(assert (=> b!1416446 (= c!131431 (validKeyInArray!0 (select (arr!46664 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152485 () Bool)

(declare-fun res!952547 () Bool)

(assert (=> d!152485 (=> res!952547 e!801695)))

(assert (=> d!152485 (= res!952547 (bvsge #b00000000000000000000000000000000 (size!47215 a!2901)))))

(assert (=> d!152485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!801695)))

(assert (= (and d!152485 (not res!952547)) b!1416446))

(assert (= (and b!1416446 c!131431) b!1416448))

(assert (= (and b!1416446 (not c!131431)) b!1416449))

(assert (= (and b!1416448 res!952548) b!1416447))

(assert (= (or b!1416447 b!1416449) bm!67182))

(declare-fun m!1307223 () Bool)

(assert (=> bm!67182 m!1307223))

(assert (=> b!1416448 m!1307205))

(declare-fun m!1307225 () Bool)

(assert (=> b!1416448 m!1307225))

(declare-fun m!1307227 () Bool)

(assert (=> b!1416448 m!1307227))

(assert (=> b!1416448 m!1307205))

(declare-fun m!1307229 () Bool)

(assert (=> b!1416448 m!1307229))

(assert (=> b!1416446 m!1307205))

(assert (=> b!1416446 m!1307205))

(assert (=> b!1416446 m!1307209))

(assert (=> b!1416345 d!152485))

(declare-fun d!152489 () Bool)

(assert (=> d!152489 (= (validKeyInArray!0 (select (arr!46664 a!2901) i!1037)) (and (not (= (select (arr!46664 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46664 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1416350 d!152489))

(declare-fun d!152491 () Bool)

(assert (=> d!152491 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!122070 d!152491))

(declare-fun d!152499 () Bool)

(assert (=> d!152499 (= (array_inv!35609 a!2901) (bvsge (size!47215 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!122070 d!152499))

(declare-fun e!801754 () SeekEntryResult!10997)

(declare-fun b!1416538 () Bool)

(assert (=> b!1416538 (= e!801754 (Intermediate!10997 true (toIndex!0 (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416539 () Bool)

(declare-fun e!801757 () Bool)

(declare-fun lt!624981 () SeekEntryResult!10997)

(assert (=> b!1416539 (= e!801757 (bvsge (x!127983 lt!624981) #b01111111111111111111111111111110))))

(declare-fun b!1416540 () Bool)

(declare-fun e!801756 () Bool)

(assert (=> b!1416540 (= e!801757 e!801756)))

(declare-fun res!952585 () Bool)

(assert (=> b!1416540 (= res!952585 (and ((_ is Intermediate!10997) lt!624981) (not (undefined!11809 lt!624981)) (bvslt (x!127983 lt!624981) #b01111111111111111111111111111110) (bvsge (x!127983 lt!624981) #b00000000000000000000000000000000) (bvsge (x!127983 lt!624981) #b00000000000000000000000000000000)))))

(assert (=> b!1416540 (=> (not res!952585) (not e!801756))))

(declare-fun b!1416541 () Bool)

(declare-fun e!801753 () SeekEntryResult!10997)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416541 (= e!801753 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901)) mask!2840))))

(declare-fun b!1416542 () Bool)

(assert (=> b!1416542 (and (bvsge (index!46381 lt!624981) #b00000000000000000000000000000000) (bvslt (index!46381 lt!624981) (size!47215 (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901)))))))

(declare-fun e!801755 () Bool)

(assert (=> b!1416542 (= e!801755 (= (select (arr!46664 (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901))) (index!46381 lt!624981)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1416543 () Bool)

(assert (=> b!1416543 (and (bvsge (index!46381 lt!624981) #b00000000000000000000000000000000) (bvslt (index!46381 lt!624981) (size!47215 (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901)))))))

(declare-fun res!952586 () Bool)

(assert (=> b!1416543 (= res!952586 (= (select (arr!46664 (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901))) (index!46381 lt!624981)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1416543 (=> res!952586 e!801755)))

(declare-fun d!152503 () Bool)

(assert (=> d!152503 e!801757))

(declare-fun c!131460 () Bool)

(assert (=> d!152503 (= c!131460 (and ((_ is Intermediate!10997) lt!624981) (undefined!11809 lt!624981)))))

(assert (=> d!152503 (= lt!624981 e!801754)))

(declare-fun c!131458 () Bool)

(assert (=> d!152503 (= c!131458 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!624980 () (_ BitVec 64))

(assert (=> d!152503 (= lt!624980 (select (arr!46664 (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901))) (toIndex!0 (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!152503 (validMask!0 mask!2840)))

(assert (=> d!152503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901)) mask!2840) lt!624981)))

(declare-fun b!1416537 () Bool)

(assert (=> b!1416537 (= e!801753 (Intermediate!10997 false (toIndex!0 (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416544 () Bool)

(assert (=> b!1416544 (and (bvsge (index!46381 lt!624981) #b00000000000000000000000000000000) (bvslt (index!46381 lt!624981) (size!47215 (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901)))))))

(declare-fun res!952587 () Bool)

(assert (=> b!1416544 (= res!952587 (= (select (arr!46664 (array!96675 (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47215 a!2901))) (index!46381 lt!624981)) (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1416544 (=> res!952587 e!801755)))

(assert (=> b!1416544 (= e!801756 e!801755)))

(declare-fun b!1416545 () Bool)

(assert (=> b!1416545 (= e!801754 e!801753)))

(declare-fun c!131459 () Bool)

(assert (=> b!1416545 (= c!131459 (or (= lt!624980 (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!624980 lt!624980) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!152503 c!131458) b!1416538))

(assert (= (and d!152503 (not c!131458)) b!1416545))

(assert (= (and b!1416545 c!131459) b!1416537))

(assert (= (and b!1416545 (not c!131459)) b!1416541))

(assert (= (and d!152503 c!131460) b!1416539))

(assert (= (and d!152503 (not c!131460)) b!1416540))

(assert (= (and b!1416540 res!952585) b!1416544))

(assert (= (and b!1416544 (not res!952587)) b!1416543))

(assert (= (and b!1416543 (not res!952586)) b!1416542))

(declare-fun m!1307279 () Bool)

(assert (=> b!1416543 m!1307279))

(assert (=> b!1416542 m!1307279))

(assert (=> b!1416541 m!1307147))

(declare-fun m!1307281 () Bool)

(assert (=> b!1416541 m!1307281))

(assert (=> b!1416541 m!1307281))

(assert (=> b!1416541 m!1307145))

(declare-fun m!1307283 () Bool)

(assert (=> b!1416541 m!1307283))

(assert (=> b!1416544 m!1307279))

(assert (=> d!152503 m!1307147))

(declare-fun m!1307289 () Bool)

(assert (=> d!152503 m!1307289))

(assert (=> d!152503 m!1307155))

(assert (=> b!1416347 d!152503))

(declare-fun d!152523 () Bool)

(declare-fun lt!624996 () (_ BitVec 32))

(declare-fun lt!624995 () (_ BitVec 32))

(assert (=> d!152523 (= lt!624996 (bvmul (bvxor lt!624995 (bvlshr lt!624995 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152523 (= lt!624995 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152523 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!952590 (let ((h!34649 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127989 (bvmul (bvxor h!34649 (bvlshr h!34649 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127989 (bvlshr x!127989 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!952590 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!952590 #b00000000000000000000000000000000))))))

(assert (=> d!152523 (= (toIndex!0 (select (store (arr!46664 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!624996 (bvlshr lt!624996 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1416347 d!152523))

(declare-fun b!1416569 () Bool)

(declare-fun e!801773 () Bool)

(declare-fun call!67197 () Bool)

(assert (=> b!1416569 (= e!801773 call!67197)))

(declare-fun bm!67194 () Bool)

(assert (=> bm!67194 (= call!67197 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1416570 () Bool)

(declare-fun e!801772 () Bool)

(assert (=> b!1416570 (= e!801772 e!801773)))

(declare-fun lt!624998 () (_ BitVec 64))

(assert (=> b!1416570 (= lt!624998 (select (arr!46664 a!2901) j!112))))

(declare-fun lt!624999 () Unit!47918)

(assert (=> b!1416570 (= lt!624999 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!624998 j!112))))

(assert (=> b!1416570 (arrayContainsKey!0 a!2901 lt!624998 #b00000000000000000000000000000000)))

(declare-fun lt!624997 () Unit!47918)

(assert (=> b!1416570 (= lt!624997 lt!624999)))

(declare-fun res!952598 () Bool)

(assert (=> b!1416570 (= res!952598 (= (seekEntryOrOpen!0 (select (arr!46664 a!2901) j!112) a!2901 mask!2840) (Found!10997 j!112)))))

(assert (=> b!1416570 (=> (not res!952598) (not e!801773))))

(declare-fun b!1416571 () Bool)

(assert (=> b!1416571 (= e!801772 call!67197)))

(declare-fun b!1416568 () Bool)

(declare-fun e!801771 () Bool)

(assert (=> b!1416568 (= e!801771 e!801772)))

(declare-fun c!131468 () Bool)

(assert (=> b!1416568 (= c!131468 (validKeyInArray!0 (select (arr!46664 a!2901) j!112)))))

(declare-fun d!152529 () Bool)

(declare-fun res!952597 () Bool)

(assert (=> d!152529 (=> res!952597 e!801771)))

(assert (=> d!152529 (= res!952597 (bvsge j!112 (size!47215 a!2901)))))

(assert (=> d!152529 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!801771)))

(assert (= (and d!152529 (not res!952597)) b!1416568))

(assert (= (and b!1416568 c!131468) b!1416570))

(assert (= (and b!1416568 (not c!131468)) b!1416571))

(assert (= (and b!1416570 res!952598) b!1416569))

(assert (= (or b!1416569 b!1416571) bm!67194))

(declare-fun m!1307299 () Bool)

(assert (=> bm!67194 m!1307299))

(assert (=> b!1416570 m!1307127))

(declare-fun m!1307301 () Bool)

(assert (=> b!1416570 m!1307301))

(declare-fun m!1307303 () Bool)

(assert (=> b!1416570 m!1307303))

(assert (=> b!1416570 m!1307127))

(assert (=> b!1416570 m!1307129))

(assert (=> b!1416568 m!1307127))

(assert (=> b!1416568 m!1307127))

(assert (=> b!1416568 m!1307159))

(assert (=> b!1416346 d!152529))

(declare-fun d!152531 () Bool)

(assert (=> d!152531 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!625004 () Unit!47918)

(declare-fun choose!38 (array!96674 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47918)

(assert (=> d!152531 (= lt!625004 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152531 (validMask!0 mask!2840)))

(assert (=> d!152531 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!625004)))

(declare-fun bs!41290 () Bool)

(assert (= bs!41290 d!152531))

(assert (=> bs!41290 m!1307141))

(declare-fun m!1307313 () Bool)

(assert (=> bs!41290 m!1307313))

(assert (=> bs!41290 m!1307155))

(assert (=> b!1416346 d!152531))

(declare-fun b!1416582 () Bool)

(declare-fun e!801780 () SeekEntryResult!10997)

(assert (=> b!1416582 (= e!801780 (Intermediate!10997 true (toIndex!0 (select (arr!46664 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416583 () Bool)

(declare-fun e!801783 () Bool)

(declare-fun lt!625006 () SeekEntryResult!10997)

(assert (=> b!1416583 (= e!801783 (bvsge (x!127983 lt!625006) #b01111111111111111111111111111110))))

(declare-fun b!1416584 () Bool)

(declare-fun e!801782 () Bool)

(assert (=> b!1416584 (= e!801783 e!801782)))

(declare-fun res!952603 () Bool)

(assert (=> b!1416584 (= res!952603 (and ((_ is Intermediate!10997) lt!625006) (not (undefined!11809 lt!625006)) (bvslt (x!127983 lt!625006) #b01111111111111111111111111111110) (bvsge (x!127983 lt!625006) #b00000000000000000000000000000000) (bvsge (x!127983 lt!625006) #b00000000000000000000000000000000)))))

(assert (=> b!1416584 (=> (not res!952603) (not e!801782))))

(declare-fun b!1416585 () Bool)

(declare-fun e!801779 () SeekEntryResult!10997)

(assert (=> b!1416585 (= e!801779 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46664 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46664 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416586 () Bool)

(assert (=> b!1416586 (and (bvsge (index!46381 lt!625006) #b00000000000000000000000000000000) (bvslt (index!46381 lt!625006) (size!47215 a!2901)))))

(declare-fun e!801781 () Bool)

(assert (=> b!1416586 (= e!801781 (= (select (arr!46664 a!2901) (index!46381 lt!625006)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1416587 () Bool)

(assert (=> b!1416587 (and (bvsge (index!46381 lt!625006) #b00000000000000000000000000000000) (bvslt (index!46381 lt!625006) (size!47215 a!2901)))))

(declare-fun res!952604 () Bool)

(assert (=> b!1416587 (= res!952604 (= (select (arr!46664 a!2901) (index!46381 lt!625006)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1416587 (=> res!952604 e!801781)))

(declare-fun d!152535 () Bool)

(assert (=> d!152535 e!801783))

(declare-fun c!131474 () Bool)

(assert (=> d!152535 (= c!131474 (and ((_ is Intermediate!10997) lt!625006) (undefined!11809 lt!625006)))))

(assert (=> d!152535 (= lt!625006 e!801780)))

(declare-fun c!131472 () Bool)

(assert (=> d!152535 (= c!131472 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!625005 () (_ BitVec 64))

(assert (=> d!152535 (= lt!625005 (select (arr!46664 a!2901) (toIndex!0 (select (arr!46664 a!2901) j!112) mask!2840)))))

(assert (=> d!152535 (validMask!0 mask!2840)))

(assert (=> d!152535 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46664 a!2901) j!112) mask!2840) (select (arr!46664 a!2901) j!112) a!2901 mask!2840) lt!625006)))

(declare-fun b!1416581 () Bool)

(assert (=> b!1416581 (= e!801779 (Intermediate!10997 false (toIndex!0 (select (arr!46664 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416588 () Bool)

(assert (=> b!1416588 (and (bvsge (index!46381 lt!625006) #b00000000000000000000000000000000) (bvslt (index!46381 lt!625006) (size!47215 a!2901)))))

(declare-fun res!952605 () Bool)

(assert (=> b!1416588 (= res!952605 (= (select (arr!46664 a!2901) (index!46381 lt!625006)) (select (arr!46664 a!2901) j!112)))))

(assert (=> b!1416588 (=> res!952605 e!801781)))

(assert (=> b!1416588 (= e!801782 e!801781)))

(declare-fun b!1416589 () Bool)

(assert (=> b!1416589 (= e!801780 e!801779)))

(declare-fun c!131473 () Bool)

(assert (=> b!1416589 (= c!131473 (or (= lt!625005 (select (arr!46664 a!2901) j!112)) (= (bvadd lt!625005 lt!625005) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!152535 c!131472) b!1416582))

(assert (= (and d!152535 (not c!131472)) b!1416589))

(assert (= (and b!1416589 c!131473) b!1416581))

(assert (= (and b!1416589 (not c!131473)) b!1416585))

(assert (= (and d!152535 c!131474) b!1416583))

(assert (= (and d!152535 (not c!131474)) b!1416584))

(assert (= (and b!1416584 res!952603) b!1416588))

(assert (= (and b!1416588 (not res!952605)) b!1416587))

(assert (= (and b!1416587 (not res!952604)) b!1416586))

(declare-fun m!1307315 () Bool)

(assert (=> b!1416587 m!1307315))

(assert (=> b!1416586 m!1307315))

(assert (=> b!1416585 m!1307135))

(declare-fun m!1307317 () Bool)

(assert (=> b!1416585 m!1307317))

(assert (=> b!1416585 m!1307317))

(assert (=> b!1416585 m!1307127))

(declare-fun m!1307319 () Bool)

(assert (=> b!1416585 m!1307319))

(assert (=> b!1416588 m!1307315))

(assert (=> d!152535 m!1307135))

(declare-fun m!1307321 () Bool)

(assert (=> d!152535 m!1307321))

(assert (=> d!152535 m!1307155))

(assert (=> b!1416346 d!152535))

(declare-fun d!152537 () Bool)

(declare-fun lt!625012 () (_ BitVec 32))

(declare-fun lt!625011 () (_ BitVec 32))

(assert (=> d!152537 (= lt!625012 (bvmul (bvxor lt!625011 (bvlshr lt!625011 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152537 (= lt!625011 ((_ extract 31 0) (bvand (bvxor (select (arr!46664 a!2901) j!112) (bvlshr (select (arr!46664 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152537 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!952590 (let ((h!34649 ((_ extract 31 0) (bvand (bvxor (select (arr!46664 a!2901) j!112) (bvlshr (select (arr!46664 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127989 (bvmul (bvxor h!34649 (bvlshr h!34649 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127989 (bvlshr x!127989 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!952590 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!952590 #b00000000000000000000000000000000))))))

(assert (=> d!152537 (= (toIndex!0 (select (arr!46664 a!2901) j!112) mask!2840) (bvand (bvxor lt!625012 (bvlshr lt!625012 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1416346 d!152537))

(check-sat (not b!1416406) (not d!152503) (not b!1416407) (not d!152535) (not b!1416570) (not b!1416448) (not b!1416446) (not bm!67179) (not b!1416393) (not d!152473) (not bm!67194) (not bm!67182) (not b!1416408) (not b!1416541) (not b!1416568) (not b!1416585) (not d!152531))
(check-sat)
