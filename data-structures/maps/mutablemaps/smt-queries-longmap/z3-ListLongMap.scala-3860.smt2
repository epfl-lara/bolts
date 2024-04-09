; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53100 () Bool)

(assert start!53100)

(declare-fun b!577486 () Bool)

(declare-fun res!365601 () Bool)

(declare-fun e!332146 () Bool)

(assert (=> b!577486 (=> (not res!365601) (not e!332146))))

(declare-datatypes ((array!36039 0))(
  ( (array!36040 (arr!17293 (Array (_ BitVec 32) (_ BitVec 64))) (size!17657 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36039)

(assert (=> b!577486 (= res!365601 (and (bvsle #b00000000000000000000000000000000 (size!17657 a!2986)) (bvslt (size!17657 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!577487 () Bool)

(declare-fun res!365603 () Bool)

(assert (=> b!577487 (=> (not res!365603) (not e!332146))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36039 (_ BitVec 32)) Bool)

(assert (=> b!577487 (= res!365603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577488 () Bool)

(declare-fun res!365596 () Bool)

(declare-fun e!332145 () Bool)

(assert (=> b!577488 (=> (not res!365596) (not e!332145))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577488 (= res!365596 (validKeyInArray!0 k0!1786))))

(declare-fun b!577489 () Bool)

(declare-fun res!365597 () Bool)

(assert (=> b!577489 (=> (not res!365597) (not e!332145))))

(declare-fun arrayContainsKey!0 (array!36039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577489 (= res!365597 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577490 () Bool)

(declare-fun res!365600 () Bool)

(assert (=> b!577490 (=> (not res!365600) (not e!332145))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!577490 (= res!365600 (validKeyInArray!0 (select (arr!17293 a!2986) j!136)))))

(declare-fun res!365602 () Bool)

(assert (=> start!53100 (=> (not res!365602) (not e!332145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53100 (= res!365602 (validMask!0 mask!3053))))

(assert (=> start!53100 e!332145))

(assert (=> start!53100 true))

(declare-fun array_inv!13067 (array!36039) Bool)

(assert (=> start!53100 (array_inv!13067 a!2986)))

(declare-fun b!577491 () Bool)

(assert (=> b!577491 (= e!332145 e!332146)))

(declare-fun res!365599 () Bool)

(assert (=> b!577491 (=> (not res!365599) (not e!332146))))

(declare-datatypes ((SeekEntryResult!5740 0))(
  ( (MissingZero!5740 (index!25187 (_ BitVec 32))) (Found!5740 (index!25188 (_ BitVec 32))) (Intermediate!5740 (undefined!6552 Bool) (index!25189 (_ BitVec 32)) (x!54124 (_ BitVec 32))) (Undefined!5740) (MissingVacant!5740 (index!25190 (_ BitVec 32))) )
))
(declare-fun lt!263999 () SeekEntryResult!5740)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577491 (= res!365599 (or (= lt!263999 (MissingZero!5740 i!1108)) (= lt!263999 (MissingVacant!5740 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36039 (_ BitVec 32)) SeekEntryResult!5740)

(assert (=> b!577491 (= lt!263999 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577492 () Bool)

(declare-datatypes ((List!11387 0))(
  ( (Nil!11384) (Cons!11383 (h!12428 (_ BitVec 64)) (t!17623 List!11387)) )
))
(declare-fun noDuplicate!227 (List!11387) Bool)

(assert (=> b!577492 (= e!332146 (not (noDuplicate!227 Nil!11384)))))

(declare-fun b!577493 () Bool)

(declare-fun res!365598 () Bool)

(assert (=> b!577493 (=> (not res!365598) (not e!332145))))

(assert (=> b!577493 (= res!365598 (and (= (size!17657 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17657 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17657 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53100 res!365602) b!577493))

(assert (= (and b!577493 res!365598) b!577490))

(assert (= (and b!577490 res!365600) b!577488))

(assert (= (and b!577488 res!365596) b!577489))

(assert (= (and b!577489 res!365597) b!577491))

(assert (= (and b!577491 res!365599) b!577487))

(assert (= (and b!577487 res!365603) b!577486))

(assert (= (and b!577486 res!365601) b!577492))

(declare-fun m!556351 () Bool)

(assert (=> b!577489 m!556351))

(declare-fun m!556353 () Bool)

(assert (=> b!577492 m!556353))

(declare-fun m!556355 () Bool)

(assert (=> b!577487 m!556355))

(declare-fun m!556357 () Bool)

(assert (=> b!577490 m!556357))

(assert (=> b!577490 m!556357))

(declare-fun m!556359 () Bool)

(assert (=> b!577490 m!556359))

(declare-fun m!556361 () Bool)

(assert (=> start!53100 m!556361))

(declare-fun m!556363 () Bool)

(assert (=> start!53100 m!556363))

(declare-fun m!556365 () Bool)

(assert (=> b!577491 m!556365))

(declare-fun m!556367 () Bool)

(assert (=> b!577488 m!556367))

(check-sat (not start!53100) (not b!577490) (not b!577487) (not b!577488) (not b!577492) (not b!577491) (not b!577489))
(check-sat)
(get-model)

(declare-fun d!85475 () Bool)

(assert (=> d!85475 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577488 d!85475))

(declare-fun d!85479 () Bool)

(declare-fun res!365636 () Bool)

(declare-fun e!332164 () Bool)

(assert (=> d!85479 (=> res!365636 e!332164)))

(assert (=> d!85479 (= res!365636 (= (select (arr!17293 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!85479 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!332164)))

(declare-fun b!577526 () Bool)

(declare-fun e!332165 () Bool)

(assert (=> b!577526 (= e!332164 e!332165)))

(declare-fun res!365637 () Bool)

(assert (=> b!577526 (=> (not res!365637) (not e!332165))))

(assert (=> b!577526 (= res!365637 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17657 a!2986)))))

(declare-fun b!577527 () Bool)

(assert (=> b!577527 (= e!332165 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85479 (not res!365636)) b!577526))

(assert (= (and b!577526 res!365637) b!577527))

(declare-fun m!556387 () Bool)

(assert (=> d!85479 m!556387))

(declare-fun m!556389 () Bool)

(assert (=> b!577527 m!556389))

(assert (=> b!577489 d!85479))

(declare-fun b!577556 () Bool)

(declare-fun e!332190 () Bool)

(declare-fun e!332189 () Bool)

(assert (=> b!577556 (= e!332190 e!332189)))

(declare-fun c!66317 () Bool)

(assert (=> b!577556 (= c!66317 (validKeyInArray!0 (select (arr!17293 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!577557 () Bool)

(declare-fun e!332191 () Bool)

(assert (=> b!577557 (= e!332189 e!332191)))

(declare-fun lt!264018 () (_ BitVec 64))

(assert (=> b!577557 (= lt!264018 (select (arr!17293 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!18126 0))(
  ( (Unit!18127) )
))
(declare-fun lt!264019 () Unit!18126)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36039 (_ BitVec 64) (_ BitVec 32)) Unit!18126)

(assert (=> b!577557 (= lt!264019 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!264018 #b00000000000000000000000000000000))))

(assert (=> b!577557 (arrayContainsKey!0 a!2986 lt!264018 #b00000000000000000000000000000000)))

(declare-fun lt!264020 () Unit!18126)

(assert (=> b!577557 (= lt!264020 lt!264019)))

(declare-fun res!365656 () Bool)

(assert (=> b!577557 (= res!365656 (= (seekEntryOrOpen!0 (select (arr!17293 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!5740 #b00000000000000000000000000000000)))))

(assert (=> b!577557 (=> (not res!365656) (not e!332191))))

(declare-fun d!85485 () Bool)

(declare-fun res!365657 () Bool)

(assert (=> d!85485 (=> res!365657 e!332190)))

(assert (=> d!85485 (= res!365657 (bvsge #b00000000000000000000000000000000 (size!17657 a!2986)))))

(assert (=> d!85485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!332190)))

(declare-fun b!577558 () Bool)

(declare-fun call!32762 () Bool)

(assert (=> b!577558 (= e!332189 call!32762)))

(declare-fun bm!32759 () Bool)

(assert (=> bm!32759 (= call!32762 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!577559 () Bool)

(assert (=> b!577559 (= e!332191 call!32762)))

(assert (= (and d!85485 (not res!365657)) b!577556))

(assert (= (and b!577556 c!66317) b!577557))

(assert (= (and b!577556 (not c!66317)) b!577558))

(assert (= (and b!577557 res!365656) b!577559))

(assert (= (or b!577559 b!577558) bm!32759))

(assert (=> b!577556 m!556387))

(assert (=> b!577556 m!556387))

(declare-fun m!556411 () Bool)

(assert (=> b!577556 m!556411))

(assert (=> b!577557 m!556387))

(declare-fun m!556413 () Bool)

(assert (=> b!577557 m!556413))

(declare-fun m!556415 () Bool)

(assert (=> b!577557 m!556415))

(assert (=> b!577557 m!556387))

(declare-fun m!556417 () Bool)

(assert (=> b!577557 m!556417))

(declare-fun m!556419 () Bool)

(assert (=> bm!32759 m!556419))

(assert (=> b!577487 d!85485))

(declare-fun d!85493 () Bool)

(declare-fun res!365662 () Bool)

(declare-fun e!332196 () Bool)

(assert (=> d!85493 (=> res!365662 e!332196)))

(get-info :version)

(assert (=> d!85493 (= res!365662 ((_ is Nil!11384) Nil!11384))))

(assert (=> d!85493 (= (noDuplicate!227 Nil!11384) e!332196)))

(declare-fun b!577564 () Bool)

(declare-fun e!332197 () Bool)

(assert (=> b!577564 (= e!332196 e!332197)))

(declare-fun res!365663 () Bool)

(assert (=> b!577564 (=> (not res!365663) (not e!332197))))

(declare-fun contains!2904 (List!11387 (_ BitVec 64)) Bool)

(assert (=> b!577564 (= res!365663 (not (contains!2904 (t!17623 Nil!11384) (h!12428 Nil!11384))))))

(declare-fun b!577565 () Bool)

(assert (=> b!577565 (= e!332197 (noDuplicate!227 (t!17623 Nil!11384)))))

(assert (= (and d!85493 (not res!365662)) b!577564))

(assert (= (and b!577564 res!365663) b!577565))

(declare-fun m!556421 () Bool)

(assert (=> b!577564 m!556421))

(declare-fun m!556423 () Bool)

(assert (=> b!577565 m!556423))

(assert (=> b!577492 d!85493))

(declare-fun b!577590 () Bool)

(declare-fun e!332214 () SeekEntryResult!5740)

(assert (=> b!577590 (= e!332214 Undefined!5740)))

(declare-fun b!577591 () Bool)

(declare-fun c!66328 () Bool)

(declare-fun lt!264038 () (_ BitVec 64))

(assert (=> b!577591 (= c!66328 (= lt!264038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!332213 () SeekEntryResult!5740)

(declare-fun e!332215 () SeekEntryResult!5740)

(assert (=> b!577591 (= e!332213 e!332215)))

(declare-fun b!577592 () Bool)

(declare-fun lt!264037 () SeekEntryResult!5740)

(assert (=> b!577592 (= e!332213 (Found!5740 (index!25189 lt!264037)))))

(declare-fun b!577593 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36039 (_ BitVec 32)) SeekEntryResult!5740)

(assert (=> b!577593 (= e!332215 (seekKeyOrZeroReturnVacant!0 (x!54124 lt!264037) (index!25189 lt!264037) (index!25189 lt!264037) k0!1786 a!2986 mask!3053))))

(declare-fun b!577594 () Bool)

(assert (=> b!577594 (= e!332215 (MissingZero!5740 (index!25189 lt!264037)))))

(declare-fun b!577595 () Bool)

(assert (=> b!577595 (= e!332214 e!332213)))

(assert (=> b!577595 (= lt!264038 (select (arr!17293 a!2986) (index!25189 lt!264037)))))

(declare-fun c!66327 () Bool)

(assert (=> b!577595 (= c!66327 (= lt!264038 k0!1786))))

(declare-fun d!85495 () Bool)

(declare-fun lt!264036 () SeekEntryResult!5740)

(assert (=> d!85495 (and (or ((_ is Undefined!5740) lt!264036) (not ((_ is Found!5740) lt!264036)) (and (bvsge (index!25188 lt!264036) #b00000000000000000000000000000000) (bvslt (index!25188 lt!264036) (size!17657 a!2986)))) (or ((_ is Undefined!5740) lt!264036) ((_ is Found!5740) lt!264036) (not ((_ is MissingZero!5740) lt!264036)) (and (bvsge (index!25187 lt!264036) #b00000000000000000000000000000000) (bvslt (index!25187 lt!264036) (size!17657 a!2986)))) (or ((_ is Undefined!5740) lt!264036) ((_ is Found!5740) lt!264036) ((_ is MissingZero!5740) lt!264036) (not ((_ is MissingVacant!5740) lt!264036)) (and (bvsge (index!25190 lt!264036) #b00000000000000000000000000000000) (bvslt (index!25190 lt!264036) (size!17657 a!2986)))) (or ((_ is Undefined!5740) lt!264036) (ite ((_ is Found!5740) lt!264036) (= (select (arr!17293 a!2986) (index!25188 lt!264036)) k0!1786) (ite ((_ is MissingZero!5740) lt!264036) (= (select (arr!17293 a!2986) (index!25187 lt!264036)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5740) lt!264036) (= (select (arr!17293 a!2986) (index!25190 lt!264036)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85495 (= lt!264036 e!332214)))

(declare-fun c!66329 () Bool)

(assert (=> d!85495 (= c!66329 (and ((_ is Intermediate!5740) lt!264037) (undefined!6552 lt!264037)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36039 (_ BitVec 32)) SeekEntryResult!5740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85495 (= lt!264037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!85495 (validMask!0 mask!3053)))

(assert (=> d!85495 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!264036)))

(assert (= (and d!85495 c!66329) b!577590))

(assert (= (and d!85495 (not c!66329)) b!577595))

(assert (= (and b!577595 c!66327) b!577592))

(assert (= (and b!577595 (not c!66327)) b!577591))

(assert (= (and b!577591 c!66328) b!577594))

(assert (= (and b!577591 (not c!66328)) b!577593))

(declare-fun m!556435 () Bool)

(assert (=> b!577593 m!556435))

(declare-fun m!556437 () Bool)

(assert (=> b!577595 m!556437))

(declare-fun m!556439 () Bool)

(assert (=> d!85495 m!556439))

(assert (=> d!85495 m!556361))

(declare-fun m!556441 () Bool)

(assert (=> d!85495 m!556441))

(declare-fun m!556443 () Bool)

(assert (=> d!85495 m!556443))

(assert (=> d!85495 m!556443))

(declare-fun m!556445 () Bool)

(assert (=> d!85495 m!556445))

(declare-fun m!556447 () Bool)

(assert (=> d!85495 m!556447))

(assert (=> b!577491 d!85495))

(declare-fun d!85509 () Bool)

(assert (=> d!85509 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53100 d!85509))

(declare-fun d!85517 () Bool)

(assert (=> d!85517 (= (array_inv!13067 a!2986) (bvsge (size!17657 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53100 d!85517))

(declare-fun d!85519 () Bool)

(assert (=> d!85519 (= (validKeyInArray!0 (select (arr!17293 a!2986) j!136)) (and (not (= (select (arr!17293 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17293 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577490 d!85519))

(check-sat (not b!577557) (not b!577527) (not b!577564) (not b!577556) (not b!577565) (not b!577593) (not d!85495) (not bm!32759))
(check-sat)
