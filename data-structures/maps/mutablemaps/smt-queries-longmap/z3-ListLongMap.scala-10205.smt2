; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120258 () Bool)

(assert start!120258)

(declare-fun b!1399285 () Bool)

(declare-fun res!938149 () Bool)

(declare-fun e!792215 () Bool)

(assert (=> b!1399285 (=> (not res!938149) (not e!792215))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95648 0))(
  ( (array!95649 (arr!46172 (Array (_ BitVec 32) (_ BitVec 64))) (size!46723 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95648)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399285 (= res!938149 (and (= (size!46723 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46723 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46723 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399286 () Bool)

(declare-fun e!792216 () Bool)

(declare-datatypes ((SeekEntryResult!10511 0))(
  ( (MissingZero!10511 (index!44417 (_ BitVec 32))) (Found!10511 (index!44418 (_ BitVec 32))) (Intermediate!10511 (undefined!11323 Bool) (index!44419 (_ BitVec 32)) (x!126065 (_ BitVec 32))) (Undefined!10511) (MissingVacant!10511 (index!44420 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95648 (_ BitVec 32)) SeekEntryResult!10511)

(assert (=> b!1399286 (= e!792216 (= (seekEntryOrOpen!0 (select (arr!46172 a!2901) j!112) a!2901 mask!2840) (Found!10511 j!112)))))

(declare-fun b!1399287 () Bool)

(declare-fun e!792213 () Bool)

(assert (=> b!1399287 (= e!792215 (not e!792213))))

(declare-fun res!938143 () Bool)

(assert (=> b!1399287 (=> res!938143 e!792213)))

(declare-fun lt!615454 () SeekEntryResult!10511)

(get-info :version)

(assert (=> b!1399287 (= res!938143 (or (not ((_ is Intermediate!10511) lt!615454)) (undefined!11323 lt!615454)))))

(assert (=> b!1399287 e!792216))

(declare-fun res!938145 () Bool)

(assert (=> b!1399287 (=> (not res!938145) (not e!792216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95648 (_ BitVec 32)) Bool)

(assert (=> b!1399287 (= res!938145 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46976 0))(
  ( (Unit!46977) )
))
(declare-fun lt!615448 () Unit!46976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46976)

(assert (=> b!1399287 (= lt!615448 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615450 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95648 (_ BitVec 32)) SeekEntryResult!10511)

(assert (=> b!1399287 (= lt!615454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615450 (select (arr!46172 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399287 (= lt!615450 (toIndex!0 (select (arr!46172 a!2901) j!112) mask!2840))))

(declare-fun e!792217 () Bool)

(declare-fun lt!615449 () array!95648)

(declare-fun lt!615452 () (_ BitVec 64))

(declare-fun lt!615453 () SeekEntryResult!10511)

(declare-fun b!1399288 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95648 (_ BitVec 32)) SeekEntryResult!10511)

(assert (=> b!1399288 (= e!792217 (= (seekEntryOrOpen!0 lt!615452 lt!615449 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126065 lt!615453) (index!44419 lt!615453) (index!44419 lt!615453) (select (arr!46172 a!2901) j!112) lt!615449 mask!2840)))))

(declare-fun b!1399289 () Bool)

(declare-fun res!938146 () Bool)

(assert (=> b!1399289 (=> (not res!938146) (not e!792215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399289 (= res!938146 (validKeyInArray!0 (select (arr!46172 a!2901) i!1037)))))

(declare-fun b!1399290 () Bool)

(declare-fun res!938142 () Bool)

(assert (=> b!1399290 (=> (not res!938142) (not e!792215))))

(declare-datatypes ((List!32871 0))(
  ( (Nil!32868) (Cons!32867 (h!34112 (_ BitVec 64)) (t!47572 List!32871)) )
))
(declare-fun arrayNoDuplicates!0 (array!95648 (_ BitVec 32) List!32871) Bool)

(assert (=> b!1399290 (= res!938142 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32868))))

(declare-fun b!1399291 () Bool)

(declare-fun res!938151 () Bool)

(assert (=> b!1399291 (=> (not res!938151) (not e!792215))))

(assert (=> b!1399291 (= res!938151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399292 () Bool)

(declare-fun e!792218 () Bool)

(assert (=> b!1399292 (= e!792213 e!792218)))

(declare-fun res!938150 () Bool)

(assert (=> b!1399292 (=> res!938150 e!792218)))

(assert (=> b!1399292 (= res!938150 (or (= lt!615454 lt!615453) (not ((_ is Intermediate!10511) lt!615453))))))

(assert (=> b!1399292 (= lt!615453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615452 mask!2840) lt!615452 lt!615449 mask!2840))))

(assert (=> b!1399292 (= lt!615452 (select (store (arr!46172 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399292 (= lt!615449 (array!95649 (store (arr!46172 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46723 a!2901)))))

(declare-fun b!1399293 () Bool)

(declare-fun res!938147 () Bool)

(assert (=> b!1399293 (=> (not res!938147) (not e!792215))))

(assert (=> b!1399293 (= res!938147 (validKeyInArray!0 (select (arr!46172 a!2901) j!112)))))

(declare-fun res!938148 () Bool)

(assert (=> start!120258 (=> (not res!938148) (not e!792215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120258 (= res!938148 (validMask!0 mask!2840))))

(assert (=> start!120258 e!792215))

(assert (=> start!120258 true))

(declare-fun array_inv!35117 (array!95648) Bool)

(assert (=> start!120258 (array_inv!35117 a!2901)))

(declare-fun b!1399294 () Bool)

(assert (=> b!1399294 (= e!792218 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> b!1399294 e!792217))

(declare-fun res!938144 () Bool)

(assert (=> b!1399294 (=> (not res!938144) (not e!792217))))

(assert (=> b!1399294 (= res!938144 (and (not (undefined!11323 lt!615453)) (= (index!44419 lt!615453) i!1037) (bvslt (x!126065 lt!615453) (x!126065 lt!615454)) (= (select (store (arr!46172 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44419 lt!615453)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615451 () Unit!46976)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46976)

(assert (=> b!1399294 (= lt!615451 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615450 (x!126065 lt!615454) (index!44419 lt!615454) (x!126065 lt!615453) (index!44419 lt!615453) (undefined!11323 lt!615453) mask!2840))))

(assert (= (and start!120258 res!938148) b!1399285))

(assert (= (and b!1399285 res!938149) b!1399289))

(assert (= (and b!1399289 res!938146) b!1399293))

(assert (= (and b!1399293 res!938147) b!1399291))

(assert (= (and b!1399291 res!938151) b!1399290))

(assert (= (and b!1399290 res!938142) b!1399287))

(assert (= (and b!1399287 res!938145) b!1399286))

(assert (= (and b!1399287 (not res!938143)) b!1399292))

(assert (= (and b!1399292 (not res!938150)) b!1399294))

(assert (= (and b!1399294 res!938144) b!1399288))

(declare-fun m!1286651 () Bool)

(assert (=> b!1399291 m!1286651))

(declare-fun m!1286653 () Bool)

(assert (=> b!1399290 m!1286653))

(declare-fun m!1286655 () Bool)

(assert (=> b!1399293 m!1286655))

(assert (=> b!1399293 m!1286655))

(declare-fun m!1286657 () Bool)

(assert (=> b!1399293 m!1286657))

(declare-fun m!1286659 () Bool)

(assert (=> start!120258 m!1286659))

(declare-fun m!1286661 () Bool)

(assert (=> start!120258 m!1286661))

(declare-fun m!1286663 () Bool)

(assert (=> b!1399292 m!1286663))

(assert (=> b!1399292 m!1286663))

(declare-fun m!1286665 () Bool)

(assert (=> b!1399292 m!1286665))

(declare-fun m!1286667 () Bool)

(assert (=> b!1399292 m!1286667))

(declare-fun m!1286669 () Bool)

(assert (=> b!1399292 m!1286669))

(assert (=> b!1399294 m!1286667))

(declare-fun m!1286671 () Bool)

(assert (=> b!1399294 m!1286671))

(declare-fun m!1286673 () Bool)

(assert (=> b!1399294 m!1286673))

(assert (=> b!1399287 m!1286655))

(declare-fun m!1286675 () Bool)

(assert (=> b!1399287 m!1286675))

(declare-fun m!1286677 () Bool)

(assert (=> b!1399287 m!1286677))

(assert (=> b!1399287 m!1286655))

(declare-fun m!1286679 () Bool)

(assert (=> b!1399287 m!1286679))

(assert (=> b!1399287 m!1286655))

(declare-fun m!1286681 () Bool)

(assert (=> b!1399287 m!1286681))

(assert (=> b!1399286 m!1286655))

(assert (=> b!1399286 m!1286655))

(declare-fun m!1286683 () Bool)

(assert (=> b!1399286 m!1286683))

(declare-fun m!1286685 () Bool)

(assert (=> b!1399289 m!1286685))

(assert (=> b!1399289 m!1286685))

(declare-fun m!1286687 () Bool)

(assert (=> b!1399289 m!1286687))

(declare-fun m!1286689 () Bool)

(assert (=> b!1399288 m!1286689))

(assert (=> b!1399288 m!1286655))

(assert (=> b!1399288 m!1286655))

(declare-fun m!1286691 () Bool)

(assert (=> b!1399288 m!1286691))

(check-sat (not b!1399286) (not b!1399292) (not b!1399289) (not b!1399291) (not start!120258) (not b!1399288) (not b!1399290) (not b!1399287) (not b!1399294) (not b!1399293))
(check-sat)
(get-model)

(declare-fun d!150967 () Bool)

(assert (=> d!150967 (= (validKeyInArray!0 (select (arr!46172 a!2901) i!1037)) (and (not (= (select (arr!46172 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46172 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1399289 d!150967))

(declare-fun d!150969 () Bool)

(declare-fun res!938190 () Bool)

(declare-fun e!792248 () Bool)

(assert (=> d!150969 (=> res!938190 e!792248)))

(assert (=> d!150969 (= res!938190 (bvsge #b00000000000000000000000000000000 (size!46723 a!2901)))))

(assert (=> d!150969 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32868) e!792248)))

(declare-fun bm!66885 () Bool)

(declare-fun call!66888 () Bool)

(declare-fun c!130034 () Bool)

(assert (=> bm!66885 (= call!66888 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130034 (Cons!32867 (select (arr!46172 a!2901) #b00000000000000000000000000000000) Nil!32868) Nil!32868)))))

(declare-fun b!1399335 () Bool)

(declare-fun e!792245 () Bool)

(assert (=> b!1399335 (= e!792248 e!792245)))

(declare-fun res!938188 () Bool)

(assert (=> b!1399335 (=> (not res!938188) (not e!792245))))

(declare-fun e!792247 () Bool)

(assert (=> b!1399335 (= res!938188 (not e!792247))))

(declare-fun res!938189 () Bool)

(assert (=> b!1399335 (=> (not res!938189) (not e!792247))))

(assert (=> b!1399335 (= res!938189 (validKeyInArray!0 (select (arr!46172 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1399336 () Bool)

(declare-fun e!792246 () Bool)

(assert (=> b!1399336 (= e!792246 call!66888)))

(declare-fun b!1399337 () Bool)

(assert (=> b!1399337 (= e!792246 call!66888)))

(declare-fun b!1399338 () Bool)

(assert (=> b!1399338 (= e!792245 e!792246)))

(assert (=> b!1399338 (= c!130034 (validKeyInArray!0 (select (arr!46172 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1399339 () Bool)

(declare-fun contains!9799 (List!32871 (_ BitVec 64)) Bool)

(assert (=> b!1399339 (= e!792247 (contains!9799 Nil!32868 (select (arr!46172 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150969 (not res!938190)) b!1399335))

(assert (= (and b!1399335 res!938189) b!1399339))

(assert (= (and b!1399335 res!938188) b!1399338))

(assert (= (and b!1399338 c!130034) b!1399337))

(assert (= (and b!1399338 (not c!130034)) b!1399336))

(assert (= (or b!1399337 b!1399336) bm!66885))

(declare-fun m!1286735 () Bool)

(assert (=> bm!66885 m!1286735))

(declare-fun m!1286737 () Bool)

(assert (=> bm!66885 m!1286737))

(assert (=> b!1399335 m!1286735))

(assert (=> b!1399335 m!1286735))

(declare-fun m!1286739 () Bool)

(assert (=> b!1399335 m!1286739))

(assert (=> b!1399338 m!1286735))

(assert (=> b!1399338 m!1286735))

(assert (=> b!1399338 m!1286739))

(assert (=> b!1399339 m!1286735))

(assert (=> b!1399339 m!1286735))

(declare-fun m!1286741 () Bool)

(assert (=> b!1399339 m!1286741))

(assert (=> b!1399290 d!150969))

(declare-fun d!150973 () Bool)

(assert (=> d!150973 (= (validKeyInArray!0 (select (arr!46172 a!2901) j!112)) (and (not (= (select (arr!46172 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46172 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1399293 d!150973))

(declare-fun b!1399368 () Bool)

(declare-fun c!130047 () Bool)

(declare-fun lt!615498 () (_ BitVec 64))

(assert (=> b!1399368 (= c!130047 (= lt!615498 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!792269 () SeekEntryResult!10511)

(declare-fun e!792267 () SeekEntryResult!10511)

(assert (=> b!1399368 (= e!792269 e!792267)))

(declare-fun b!1399369 () Bool)

(declare-fun e!792268 () SeekEntryResult!10511)

(assert (=> b!1399369 (= e!792268 e!792269)))

(declare-fun lt!615499 () SeekEntryResult!10511)

(assert (=> b!1399369 (= lt!615498 (select (arr!46172 lt!615449) (index!44419 lt!615499)))))

(declare-fun c!130046 () Bool)

(assert (=> b!1399369 (= c!130046 (= lt!615498 lt!615452))))

(declare-fun b!1399370 () Bool)

(assert (=> b!1399370 (= e!792269 (Found!10511 (index!44419 lt!615499)))))

(declare-fun b!1399371 () Bool)

(assert (=> b!1399371 (= e!792267 (MissingZero!10511 (index!44419 lt!615499)))))

(declare-fun d!150975 () Bool)

(declare-fun lt!615497 () SeekEntryResult!10511)

(assert (=> d!150975 (and (or ((_ is Undefined!10511) lt!615497) (not ((_ is Found!10511) lt!615497)) (and (bvsge (index!44418 lt!615497) #b00000000000000000000000000000000) (bvslt (index!44418 lt!615497) (size!46723 lt!615449)))) (or ((_ is Undefined!10511) lt!615497) ((_ is Found!10511) lt!615497) (not ((_ is MissingZero!10511) lt!615497)) (and (bvsge (index!44417 lt!615497) #b00000000000000000000000000000000) (bvslt (index!44417 lt!615497) (size!46723 lt!615449)))) (or ((_ is Undefined!10511) lt!615497) ((_ is Found!10511) lt!615497) ((_ is MissingZero!10511) lt!615497) (not ((_ is MissingVacant!10511) lt!615497)) (and (bvsge (index!44420 lt!615497) #b00000000000000000000000000000000) (bvslt (index!44420 lt!615497) (size!46723 lt!615449)))) (or ((_ is Undefined!10511) lt!615497) (ite ((_ is Found!10511) lt!615497) (= (select (arr!46172 lt!615449) (index!44418 lt!615497)) lt!615452) (ite ((_ is MissingZero!10511) lt!615497) (= (select (arr!46172 lt!615449) (index!44417 lt!615497)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10511) lt!615497) (= (select (arr!46172 lt!615449) (index!44420 lt!615497)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150975 (= lt!615497 e!792268)))

(declare-fun c!130045 () Bool)

(assert (=> d!150975 (= c!130045 (and ((_ is Intermediate!10511) lt!615499) (undefined!11323 lt!615499)))))

(assert (=> d!150975 (= lt!615499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615452 mask!2840) lt!615452 lt!615449 mask!2840))))

(assert (=> d!150975 (validMask!0 mask!2840)))

(assert (=> d!150975 (= (seekEntryOrOpen!0 lt!615452 lt!615449 mask!2840) lt!615497)))

(declare-fun b!1399372 () Bool)

(assert (=> b!1399372 (= e!792267 (seekKeyOrZeroReturnVacant!0 (x!126065 lt!615499) (index!44419 lt!615499) (index!44419 lt!615499) lt!615452 lt!615449 mask!2840))))

(declare-fun b!1399373 () Bool)

(assert (=> b!1399373 (= e!792268 Undefined!10511)))

(assert (= (and d!150975 c!130045) b!1399373))

(assert (= (and d!150975 (not c!130045)) b!1399369))

(assert (= (and b!1399369 c!130046) b!1399370))

(assert (= (and b!1399369 (not c!130046)) b!1399368))

(assert (= (and b!1399368 c!130047) b!1399371))

(assert (= (and b!1399368 (not c!130047)) b!1399372))

(declare-fun m!1286763 () Bool)

(assert (=> b!1399369 m!1286763))

(assert (=> d!150975 m!1286663))

(declare-fun m!1286765 () Bool)

(assert (=> d!150975 m!1286765))

(declare-fun m!1286767 () Bool)

(assert (=> d!150975 m!1286767))

(assert (=> d!150975 m!1286659))

(assert (=> d!150975 m!1286663))

(assert (=> d!150975 m!1286665))

(declare-fun m!1286769 () Bool)

(assert (=> d!150975 m!1286769))

(declare-fun m!1286771 () Bool)

(assert (=> b!1399372 m!1286771))

(assert (=> b!1399288 d!150975))

(declare-fun b!1399426 () Bool)

(declare-fun c!130069 () Bool)

(declare-fun lt!615517 () (_ BitVec 64))

(assert (=> b!1399426 (= c!130069 (= lt!615517 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!792299 () SeekEntryResult!10511)

(declare-fun e!792298 () SeekEntryResult!10511)

(assert (=> b!1399426 (= e!792299 e!792298)))

(declare-fun b!1399427 () Bool)

(declare-fun e!792297 () SeekEntryResult!10511)

(assert (=> b!1399427 (= e!792297 Undefined!10511)))

(declare-fun b!1399428 () Bool)

(assert (=> b!1399428 (= e!792298 (MissingVacant!10511 (index!44419 lt!615453)))))

(declare-fun b!1399429 () Bool)

(assert (=> b!1399429 (= e!792299 (Found!10511 (index!44419 lt!615453)))))

(declare-fun b!1399430 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399430 (= e!792298 (seekKeyOrZeroReturnVacant!0 (bvadd (x!126065 lt!615453) #b00000000000000000000000000000001) (nextIndex!0 (index!44419 lt!615453) (x!126065 lt!615453) mask!2840) (index!44419 lt!615453) (select (arr!46172 a!2901) j!112) lt!615449 mask!2840))))

(declare-fun lt!615516 () SeekEntryResult!10511)

(declare-fun d!150993 () Bool)

(assert (=> d!150993 (and (or ((_ is Undefined!10511) lt!615516) (not ((_ is Found!10511) lt!615516)) (and (bvsge (index!44418 lt!615516) #b00000000000000000000000000000000) (bvslt (index!44418 lt!615516) (size!46723 lt!615449)))) (or ((_ is Undefined!10511) lt!615516) ((_ is Found!10511) lt!615516) (not ((_ is MissingVacant!10511) lt!615516)) (not (= (index!44420 lt!615516) (index!44419 lt!615453))) (and (bvsge (index!44420 lt!615516) #b00000000000000000000000000000000) (bvslt (index!44420 lt!615516) (size!46723 lt!615449)))) (or ((_ is Undefined!10511) lt!615516) (ite ((_ is Found!10511) lt!615516) (= (select (arr!46172 lt!615449) (index!44418 lt!615516)) (select (arr!46172 a!2901) j!112)) (and ((_ is MissingVacant!10511) lt!615516) (= (index!44420 lt!615516) (index!44419 lt!615453)) (= (select (arr!46172 lt!615449) (index!44420 lt!615516)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!150993 (= lt!615516 e!792297)))

(declare-fun c!130070 () Bool)

(assert (=> d!150993 (= c!130070 (bvsge (x!126065 lt!615453) #b01111111111111111111111111111110))))

(assert (=> d!150993 (= lt!615517 (select (arr!46172 lt!615449) (index!44419 lt!615453)))))

(assert (=> d!150993 (validMask!0 mask!2840)))

(assert (=> d!150993 (= (seekKeyOrZeroReturnVacant!0 (x!126065 lt!615453) (index!44419 lt!615453) (index!44419 lt!615453) (select (arr!46172 a!2901) j!112) lt!615449 mask!2840) lt!615516)))

(declare-fun b!1399425 () Bool)

(assert (=> b!1399425 (= e!792297 e!792299)))

(declare-fun c!130071 () Bool)

(assert (=> b!1399425 (= c!130071 (= lt!615517 (select (arr!46172 a!2901) j!112)))))

(assert (= (and d!150993 c!130070) b!1399427))

(assert (= (and d!150993 (not c!130070)) b!1399425))

(assert (= (and b!1399425 c!130071) b!1399429))

(assert (= (and b!1399425 (not c!130071)) b!1399426))

(assert (= (and b!1399426 c!130069) b!1399428))

(assert (= (and b!1399426 (not c!130069)) b!1399430))

(declare-fun m!1286781 () Bool)

(assert (=> b!1399430 m!1286781))

(assert (=> b!1399430 m!1286781))

(assert (=> b!1399430 m!1286655))

(declare-fun m!1286783 () Bool)

(assert (=> b!1399430 m!1286783))

(declare-fun m!1286785 () Bool)

(assert (=> d!150993 m!1286785))

(declare-fun m!1286787 () Bool)

(assert (=> d!150993 m!1286787))

(declare-fun m!1286789 () Bool)

(assert (=> d!150993 m!1286789))

(assert (=> d!150993 m!1286659))

(assert (=> b!1399288 d!150993))

(declare-fun d!150997 () Bool)

(assert (=> d!150997 (and (not (undefined!11323 lt!615453)) (= (index!44419 lt!615453) i!1037) (bvslt (x!126065 lt!615453) (x!126065 lt!615454)))))

(declare-fun lt!615533 () Unit!46976)

(declare-fun choose!62 (array!95648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46976)

(assert (=> d!150997 (= lt!615533 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615450 (x!126065 lt!615454) (index!44419 lt!615454) (x!126065 lt!615453) (index!44419 lt!615453) (undefined!11323 lt!615453) mask!2840))))

(assert (=> d!150997 (validMask!0 mask!2840)))

(assert (=> d!150997 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615450 (x!126065 lt!615454) (index!44419 lt!615454) (x!126065 lt!615453) (index!44419 lt!615453) (undefined!11323 lt!615453) mask!2840) lt!615533)))

(declare-fun bs!40737 () Bool)

(assert (= bs!40737 d!150997))

(declare-fun m!1286811 () Bool)

(assert (=> bs!40737 m!1286811))

(assert (=> bs!40737 m!1286659))

(assert (=> b!1399294 d!150997))

(declare-fun b!1399497 () Bool)

(declare-fun lt!615548 () SeekEntryResult!10511)

(assert (=> b!1399497 (and (bvsge (index!44419 lt!615548) #b00000000000000000000000000000000) (bvslt (index!44419 lt!615548) (size!46723 lt!615449)))))

(declare-fun res!938229 () Bool)

(assert (=> b!1399497 (= res!938229 (= (select (arr!46172 lt!615449) (index!44419 lt!615548)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!792342 () Bool)

(assert (=> b!1399497 (=> res!938229 e!792342)))

(declare-fun e!792343 () SeekEntryResult!10511)

(declare-fun b!1399498 () Bool)

(assert (=> b!1399498 (= e!792343 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!615452 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!615452 lt!615449 mask!2840))))

(declare-fun d!151007 () Bool)

(declare-fun e!792340 () Bool)

(assert (=> d!151007 e!792340))

(declare-fun c!130098 () Bool)

(assert (=> d!151007 (= c!130098 (and ((_ is Intermediate!10511) lt!615548) (undefined!11323 lt!615548)))))

(declare-fun e!792339 () SeekEntryResult!10511)

(assert (=> d!151007 (= lt!615548 e!792339)))

(declare-fun c!130097 () Bool)

(assert (=> d!151007 (= c!130097 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!615547 () (_ BitVec 64))

(assert (=> d!151007 (= lt!615547 (select (arr!46172 lt!615449) (toIndex!0 lt!615452 mask!2840)))))

(assert (=> d!151007 (validMask!0 mask!2840)))

(assert (=> d!151007 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615452 mask!2840) lt!615452 lt!615449 mask!2840) lt!615548)))

(declare-fun b!1399499 () Bool)

(assert (=> b!1399499 (and (bvsge (index!44419 lt!615548) #b00000000000000000000000000000000) (bvslt (index!44419 lt!615548) (size!46723 lt!615449)))))

(assert (=> b!1399499 (= e!792342 (= (select (arr!46172 lt!615449) (index!44419 lt!615548)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1399500 () Bool)

(assert (=> b!1399500 (= e!792339 (Intermediate!10511 true (toIndex!0 lt!615452 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1399501 () Bool)

(assert (=> b!1399501 (= e!792339 e!792343)))

(declare-fun c!130096 () Bool)

(assert (=> b!1399501 (= c!130096 (or (= lt!615547 lt!615452) (= (bvadd lt!615547 lt!615547) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1399502 () Bool)

(assert (=> b!1399502 (and (bvsge (index!44419 lt!615548) #b00000000000000000000000000000000) (bvslt (index!44419 lt!615548) (size!46723 lt!615449)))))

(declare-fun res!938227 () Bool)

(assert (=> b!1399502 (= res!938227 (= (select (arr!46172 lt!615449) (index!44419 lt!615548)) lt!615452))))

(assert (=> b!1399502 (=> res!938227 e!792342)))

(declare-fun e!792341 () Bool)

(assert (=> b!1399502 (= e!792341 e!792342)))

(declare-fun b!1399503 () Bool)

(assert (=> b!1399503 (= e!792340 (bvsge (x!126065 lt!615548) #b01111111111111111111111111111110))))

(declare-fun b!1399504 () Bool)

(assert (=> b!1399504 (= e!792343 (Intermediate!10511 false (toIndex!0 lt!615452 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1399505 () Bool)

(assert (=> b!1399505 (= e!792340 e!792341)))

(declare-fun res!938228 () Bool)

(assert (=> b!1399505 (= res!938228 (and ((_ is Intermediate!10511) lt!615548) (not (undefined!11323 lt!615548)) (bvslt (x!126065 lt!615548) #b01111111111111111111111111111110) (bvsge (x!126065 lt!615548) #b00000000000000000000000000000000) (bvsge (x!126065 lt!615548) #b00000000000000000000000000000000)))))

(assert (=> b!1399505 (=> (not res!938228) (not e!792341))))

(assert (= (and d!151007 c!130097) b!1399500))

(assert (= (and d!151007 (not c!130097)) b!1399501))

(assert (= (and b!1399501 c!130096) b!1399504))

(assert (= (and b!1399501 (not c!130096)) b!1399498))

(assert (= (and d!151007 c!130098) b!1399503))

(assert (= (and d!151007 (not c!130098)) b!1399505))

(assert (= (and b!1399505 res!938228) b!1399502))

(assert (= (and b!1399502 (not res!938227)) b!1399497))

(assert (= (and b!1399497 (not res!938229)) b!1399499))

(declare-fun m!1286833 () Bool)

(assert (=> b!1399499 m!1286833))

(assert (=> b!1399497 m!1286833))

(assert (=> b!1399502 m!1286833))

(assert (=> b!1399498 m!1286663))

(declare-fun m!1286835 () Bool)

(assert (=> b!1399498 m!1286835))

(assert (=> b!1399498 m!1286835))

(declare-fun m!1286841 () Bool)

(assert (=> b!1399498 m!1286841))

(assert (=> d!151007 m!1286663))

(declare-fun m!1286845 () Bool)

(assert (=> d!151007 m!1286845))

(assert (=> d!151007 m!1286659))

(assert (=> b!1399292 d!151007))

(declare-fun d!151013 () Bool)

(declare-fun lt!615561 () (_ BitVec 32))

(declare-fun lt!615560 () (_ BitVec 32))

(assert (=> d!151013 (= lt!615561 (bvmul (bvxor lt!615560 (bvlshr lt!615560 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151013 (= lt!615560 ((_ extract 31 0) (bvand (bvxor lt!615452 (bvlshr lt!615452 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151013 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!938230 (let ((h!34115 ((_ extract 31 0) (bvand (bvxor lt!615452 (bvlshr lt!615452 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126073 (bvmul (bvxor h!34115 (bvlshr h!34115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126073 (bvlshr x!126073 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!938230 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!938230 #b00000000000000000000000000000000))))))

(assert (=> d!151013 (= (toIndex!0 lt!615452 mask!2840) (bvand (bvxor lt!615561 (bvlshr lt!615561 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1399292 d!151013))

(declare-fun b!1399559 () Bool)

(declare-fun e!792374 () Bool)

(declare-fun e!792375 () Bool)

(assert (=> b!1399559 (= e!792374 e!792375)))

(declare-fun c!130119 () Bool)

(assert (=> b!1399559 (= c!130119 (validKeyInArray!0 (select (arr!46172 a!2901) j!112)))))

(declare-fun b!1399560 () Bool)

(declare-fun e!792376 () Bool)

(declare-fun call!66898 () Bool)

(assert (=> b!1399560 (= e!792376 call!66898)))

(declare-fun bm!66895 () Bool)

(assert (=> bm!66895 (= call!66898 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!151017 () Bool)

(declare-fun res!938245 () Bool)

(assert (=> d!151017 (=> res!938245 e!792374)))

(assert (=> d!151017 (= res!938245 (bvsge j!112 (size!46723 a!2901)))))

(assert (=> d!151017 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!792374)))

(declare-fun b!1399561 () Bool)

(assert (=> b!1399561 (= e!792375 call!66898)))

(declare-fun b!1399562 () Bool)

(assert (=> b!1399562 (= e!792375 e!792376)))

(declare-fun lt!615582 () (_ BitVec 64))

(assert (=> b!1399562 (= lt!615582 (select (arr!46172 a!2901) j!112))))

(declare-fun lt!615581 () Unit!46976)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95648 (_ BitVec 64) (_ BitVec 32)) Unit!46976)

(assert (=> b!1399562 (= lt!615581 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615582 j!112))))

(declare-fun arrayContainsKey!0 (array!95648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1399562 (arrayContainsKey!0 a!2901 lt!615582 #b00000000000000000000000000000000)))

(declare-fun lt!615580 () Unit!46976)

(assert (=> b!1399562 (= lt!615580 lt!615581)))

(declare-fun res!938246 () Bool)

(assert (=> b!1399562 (= res!938246 (= (seekEntryOrOpen!0 (select (arr!46172 a!2901) j!112) a!2901 mask!2840) (Found!10511 j!112)))))

(assert (=> b!1399562 (=> (not res!938246) (not e!792376))))

(assert (= (and d!151017 (not res!938245)) b!1399559))

(assert (= (and b!1399559 c!130119) b!1399562))

(assert (= (and b!1399559 (not c!130119)) b!1399561))

(assert (= (and b!1399562 res!938246) b!1399560))

(assert (= (or b!1399560 b!1399561) bm!66895))

(assert (=> b!1399559 m!1286655))

(assert (=> b!1399559 m!1286655))

(assert (=> b!1399559 m!1286657))

(declare-fun m!1286859 () Bool)

(assert (=> bm!66895 m!1286859))

(assert (=> b!1399562 m!1286655))

(declare-fun m!1286861 () Bool)

(assert (=> b!1399562 m!1286861))

(declare-fun m!1286863 () Bool)

(assert (=> b!1399562 m!1286863))

(assert (=> b!1399562 m!1286655))

(assert (=> b!1399562 m!1286683))

(assert (=> b!1399287 d!151017))

(declare-fun d!151025 () Bool)

(assert (=> d!151025 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!615595 () Unit!46976)

(declare-fun choose!38 (array!95648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46976)

(assert (=> d!151025 (= lt!615595 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151025 (validMask!0 mask!2840)))

(assert (=> d!151025 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!615595)))

(declare-fun bs!40738 () Bool)

(assert (= bs!40738 d!151025))

(assert (=> bs!40738 m!1286677))

(declare-fun m!1286875 () Bool)

(assert (=> bs!40738 m!1286875))

(assert (=> bs!40738 m!1286659))

(assert (=> b!1399287 d!151025))

(declare-fun b!1399577 () Bool)

(declare-fun lt!615597 () SeekEntryResult!10511)

(assert (=> b!1399577 (and (bvsge (index!44419 lt!615597) #b00000000000000000000000000000000) (bvslt (index!44419 lt!615597) (size!46723 a!2901)))))

(declare-fun res!938253 () Bool)

(assert (=> b!1399577 (= res!938253 (= (select (arr!46172 a!2901) (index!44419 lt!615597)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!792389 () Bool)

(assert (=> b!1399577 (=> res!938253 e!792389)))

(declare-fun e!792390 () SeekEntryResult!10511)

(declare-fun b!1399578 () Bool)

(assert (=> b!1399578 (= e!792390 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!615450 #b00000000000000000000000000000000 mask!2840) (select (arr!46172 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!151029 () Bool)

(declare-fun e!792387 () Bool)

(assert (=> d!151029 e!792387))

(declare-fun c!130127 () Bool)

(assert (=> d!151029 (= c!130127 (and ((_ is Intermediate!10511) lt!615597) (undefined!11323 lt!615597)))))

(declare-fun e!792386 () SeekEntryResult!10511)

(assert (=> d!151029 (= lt!615597 e!792386)))

(declare-fun c!130126 () Bool)

(assert (=> d!151029 (= c!130126 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!615596 () (_ BitVec 64))

(assert (=> d!151029 (= lt!615596 (select (arr!46172 a!2901) lt!615450))))

(assert (=> d!151029 (validMask!0 mask!2840)))

(assert (=> d!151029 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615450 (select (arr!46172 a!2901) j!112) a!2901 mask!2840) lt!615597)))

(declare-fun b!1399579 () Bool)

(assert (=> b!1399579 (and (bvsge (index!44419 lt!615597) #b00000000000000000000000000000000) (bvslt (index!44419 lt!615597) (size!46723 a!2901)))))

(assert (=> b!1399579 (= e!792389 (= (select (arr!46172 a!2901) (index!44419 lt!615597)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1399580 () Bool)

(assert (=> b!1399580 (= e!792386 (Intermediate!10511 true lt!615450 #b00000000000000000000000000000000))))

(declare-fun b!1399581 () Bool)

(assert (=> b!1399581 (= e!792386 e!792390)))

(declare-fun c!130125 () Bool)

(assert (=> b!1399581 (= c!130125 (or (= lt!615596 (select (arr!46172 a!2901) j!112)) (= (bvadd lt!615596 lt!615596) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1399582 () Bool)

(assert (=> b!1399582 (and (bvsge (index!44419 lt!615597) #b00000000000000000000000000000000) (bvslt (index!44419 lt!615597) (size!46723 a!2901)))))

(declare-fun res!938251 () Bool)

(assert (=> b!1399582 (= res!938251 (= (select (arr!46172 a!2901) (index!44419 lt!615597)) (select (arr!46172 a!2901) j!112)))))

(assert (=> b!1399582 (=> res!938251 e!792389)))

(declare-fun e!792388 () Bool)

(assert (=> b!1399582 (= e!792388 e!792389)))

(declare-fun b!1399583 () Bool)

(assert (=> b!1399583 (= e!792387 (bvsge (x!126065 lt!615597) #b01111111111111111111111111111110))))

(declare-fun b!1399584 () Bool)

(assert (=> b!1399584 (= e!792390 (Intermediate!10511 false lt!615450 #b00000000000000000000000000000000))))

(declare-fun b!1399585 () Bool)

(assert (=> b!1399585 (= e!792387 e!792388)))

(declare-fun res!938252 () Bool)

(assert (=> b!1399585 (= res!938252 (and ((_ is Intermediate!10511) lt!615597) (not (undefined!11323 lt!615597)) (bvslt (x!126065 lt!615597) #b01111111111111111111111111111110) (bvsge (x!126065 lt!615597) #b00000000000000000000000000000000) (bvsge (x!126065 lt!615597) #b00000000000000000000000000000000)))))

(assert (=> b!1399585 (=> (not res!938252) (not e!792388))))

(assert (= (and d!151029 c!130126) b!1399580))

(assert (= (and d!151029 (not c!130126)) b!1399581))

(assert (= (and b!1399581 c!130125) b!1399584))

(assert (= (and b!1399581 (not c!130125)) b!1399578))

(assert (= (and d!151029 c!130127) b!1399583))

(assert (= (and d!151029 (not c!130127)) b!1399585))

(assert (= (and b!1399585 res!938252) b!1399582))

(assert (= (and b!1399582 (not res!938251)) b!1399577))

(assert (= (and b!1399577 (not res!938253)) b!1399579))

(declare-fun m!1286879 () Bool)

(assert (=> b!1399579 m!1286879))

(assert (=> b!1399577 m!1286879))

(assert (=> b!1399582 m!1286879))

(declare-fun m!1286881 () Bool)

(assert (=> b!1399578 m!1286881))

(assert (=> b!1399578 m!1286881))

(assert (=> b!1399578 m!1286655))

(declare-fun m!1286883 () Bool)

(assert (=> b!1399578 m!1286883))

(declare-fun m!1286885 () Bool)

(assert (=> d!151029 m!1286885))

(assert (=> d!151029 m!1286659))

(assert (=> b!1399287 d!151029))

(declare-fun d!151033 () Bool)

(declare-fun lt!615600 () (_ BitVec 32))

(declare-fun lt!615599 () (_ BitVec 32))

(assert (=> d!151033 (= lt!615600 (bvmul (bvxor lt!615599 (bvlshr lt!615599 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151033 (= lt!615599 ((_ extract 31 0) (bvand (bvxor (select (arr!46172 a!2901) j!112) (bvlshr (select (arr!46172 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151033 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!938230 (let ((h!34115 ((_ extract 31 0) (bvand (bvxor (select (arr!46172 a!2901) j!112) (bvlshr (select (arr!46172 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126073 (bvmul (bvxor h!34115 (bvlshr h!34115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126073 (bvlshr x!126073 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!938230 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!938230 #b00000000000000000000000000000000))))))

(assert (=> d!151033 (= (toIndex!0 (select (arr!46172 a!2901) j!112) mask!2840) (bvand (bvxor lt!615600 (bvlshr lt!615600 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1399287 d!151033))

(declare-fun d!151035 () Bool)

(assert (=> d!151035 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120258 d!151035))

(declare-fun d!151041 () Bool)

(assert (=> d!151041 (= (array_inv!35117 a!2901) (bvsge (size!46723 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120258 d!151041))

(declare-fun b!1399605 () Bool)

(declare-fun e!792406 () Bool)

(declare-fun e!792407 () Bool)

(assert (=> b!1399605 (= e!792406 e!792407)))

(declare-fun c!130132 () Bool)

(assert (=> b!1399605 (= c!130132 (validKeyInArray!0 (select (arr!46172 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1399606 () Bool)

(declare-fun e!792408 () Bool)

(declare-fun call!66905 () Bool)

(assert (=> b!1399606 (= e!792408 call!66905)))

(declare-fun bm!66902 () Bool)

(assert (=> bm!66902 (= call!66905 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!151043 () Bool)

(declare-fun res!938265 () Bool)

(assert (=> d!151043 (=> res!938265 e!792406)))

(assert (=> d!151043 (= res!938265 (bvsge #b00000000000000000000000000000000 (size!46723 a!2901)))))

(assert (=> d!151043 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!792406)))

(declare-fun b!1399607 () Bool)

(assert (=> b!1399607 (= e!792407 call!66905)))

(declare-fun b!1399608 () Bool)

(assert (=> b!1399608 (= e!792407 e!792408)))

(declare-fun lt!615606 () (_ BitVec 64))

(assert (=> b!1399608 (= lt!615606 (select (arr!46172 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!615605 () Unit!46976)

(assert (=> b!1399608 (= lt!615605 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615606 #b00000000000000000000000000000000))))

(assert (=> b!1399608 (arrayContainsKey!0 a!2901 lt!615606 #b00000000000000000000000000000000)))

(declare-fun lt!615604 () Unit!46976)

(assert (=> b!1399608 (= lt!615604 lt!615605)))

(declare-fun res!938266 () Bool)

(assert (=> b!1399608 (= res!938266 (= (seekEntryOrOpen!0 (select (arr!46172 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10511 #b00000000000000000000000000000000)))))

(assert (=> b!1399608 (=> (not res!938266) (not e!792408))))

(assert (= (and d!151043 (not res!938265)) b!1399605))

(assert (= (and b!1399605 c!130132) b!1399608))

(assert (= (and b!1399605 (not c!130132)) b!1399607))

(assert (= (and b!1399608 res!938266) b!1399606))

(assert (= (or b!1399606 b!1399607) bm!66902))

(assert (=> b!1399605 m!1286735))

(assert (=> b!1399605 m!1286735))

(assert (=> b!1399605 m!1286739))

(declare-fun m!1286899 () Bool)

(assert (=> bm!66902 m!1286899))

(assert (=> b!1399608 m!1286735))

(declare-fun m!1286901 () Bool)

(assert (=> b!1399608 m!1286901))

(declare-fun m!1286903 () Bool)

(assert (=> b!1399608 m!1286903))

(assert (=> b!1399608 m!1286735))

(declare-fun m!1286905 () Bool)

(assert (=> b!1399608 m!1286905))

(assert (=> b!1399291 d!151043))

(declare-fun b!1399609 () Bool)

(declare-fun c!130135 () Bool)

(declare-fun lt!615608 () (_ BitVec 64))

(assert (=> b!1399609 (= c!130135 (= lt!615608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!792411 () SeekEntryResult!10511)

(declare-fun e!792409 () SeekEntryResult!10511)

(assert (=> b!1399609 (= e!792411 e!792409)))

(declare-fun b!1399610 () Bool)

(declare-fun e!792410 () SeekEntryResult!10511)

(assert (=> b!1399610 (= e!792410 e!792411)))

(declare-fun lt!615609 () SeekEntryResult!10511)

(assert (=> b!1399610 (= lt!615608 (select (arr!46172 a!2901) (index!44419 lt!615609)))))

(declare-fun c!130134 () Bool)

(assert (=> b!1399610 (= c!130134 (= lt!615608 (select (arr!46172 a!2901) j!112)))))

(declare-fun b!1399611 () Bool)

(assert (=> b!1399611 (= e!792411 (Found!10511 (index!44419 lt!615609)))))

(declare-fun b!1399612 () Bool)

(assert (=> b!1399612 (= e!792409 (MissingZero!10511 (index!44419 lt!615609)))))

(declare-fun d!151045 () Bool)

(declare-fun lt!615607 () SeekEntryResult!10511)

(assert (=> d!151045 (and (or ((_ is Undefined!10511) lt!615607) (not ((_ is Found!10511) lt!615607)) (and (bvsge (index!44418 lt!615607) #b00000000000000000000000000000000) (bvslt (index!44418 lt!615607) (size!46723 a!2901)))) (or ((_ is Undefined!10511) lt!615607) ((_ is Found!10511) lt!615607) (not ((_ is MissingZero!10511) lt!615607)) (and (bvsge (index!44417 lt!615607) #b00000000000000000000000000000000) (bvslt (index!44417 lt!615607) (size!46723 a!2901)))) (or ((_ is Undefined!10511) lt!615607) ((_ is Found!10511) lt!615607) ((_ is MissingZero!10511) lt!615607) (not ((_ is MissingVacant!10511) lt!615607)) (and (bvsge (index!44420 lt!615607) #b00000000000000000000000000000000) (bvslt (index!44420 lt!615607) (size!46723 a!2901)))) (or ((_ is Undefined!10511) lt!615607) (ite ((_ is Found!10511) lt!615607) (= (select (arr!46172 a!2901) (index!44418 lt!615607)) (select (arr!46172 a!2901) j!112)) (ite ((_ is MissingZero!10511) lt!615607) (= (select (arr!46172 a!2901) (index!44417 lt!615607)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10511) lt!615607) (= (select (arr!46172 a!2901) (index!44420 lt!615607)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151045 (= lt!615607 e!792410)))

(declare-fun c!130133 () Bool)

(assert (=> d!151045 (= c!130133 (and ((_ is Intermediate!10511) lt!615609) (undefined!11323 lt!615609)))))

(assert (=> d!151045 (= lt!615609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46172 a!2901) j!112) mask!2840) (select (arr!46172 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151045 (validMask!0 mask!2840)))

(assert (=> d!151045 (= (seekEntryOrOpen!0 (select (arr!46172 a!2901) j!112) a!2901 mask!2840) lt!615607)))

(declare-fun b!1399613 () Bool)

(assert (=> b!1399613 (= e!792409 (seekKeyOrZeroReturnVacant!0 (x!126065 lt!615609) (index!44419 lt!615609) (index!44419 lt!615609) (select (arr!46172 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1399614 () Bool)

(assert (=> b!1399614 (= e!792410 Undefined!10511)))

(assert (= (and d!151045 c!130133) b!1399614))

(assert (= (and d!151045 (not c!130133)) b!1399610))

(assert (= (and b!1399610 c!130134) b!1399611))

(assert (= (and b!1399610 (not c!130134)) b!1399609))

(assert (= (and b!1399609 c!130135) b!1399612))

(assert (= (and b!1399609 (not c!130135)) b!1399613))

(declare-fun m!1286907 () Bool)

(assert (=> b!1399610 m!1286907))

(assert (=> d!151045 m!1286655))

(assert (=> d!151045 m!1286681))

(declare-fun m!1286909 () Bool)

(assert (=> d!151045 m!1286909))

(declare-fun m!1286911 () Bool)

(assert (=> d!151045 m!1286911))

(assert (=> d!151045 m!1286659))

(assert (=> d!151045 m!1286681))

(assert (=> d!151045 m!1286655))

(declare-fun m!1286913 () Bool)

(assert (=> d!151045 m!1286913))

(declare-fun m!1286915 () Bool)

(assert (=> d!151045 m!1286915))

(assert (=> b!1399613 m!1286655))

(declare-fun m!1286917 () Bool)

(assert (=> b!1399613 m!1286917))

(assert (=> b!1399286 d!151045))

(check-sat (not b!1399498) (not b!1399335) (not b!1399339) (not d!151025) (not b!1399338) (not b!1399372) (not b!1399578) (not d!151029) (not bm!66885) (not bm!66902) (not b!1399613) (not b!1399608) (not b!1399605) (not d!150997) (not d!151007) (not b!1399559) (not bm!66895) (not d!150975) (not b!1399562) (not d!150993) (not d!151045) (not b!1399430))
(check-sat)
