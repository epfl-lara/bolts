; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128116 () Bool)

(assert start!128116)

(declare-fun b!1504250 () Bool)

(declare-fun res!1025116 () Bool)

(declare-fun e!840872 () Bool)

(assert (=> b!1504250 (=> (not res!1025116) (not e!840872))))

(declare-datatypes ((array!100305 0))(
  ( (array!100306 (arr!48403 (Array (_ BitVec 32) (_ BitVec 64))) (size!48954 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100305)

(declare-datatypes ((List!35075 0))(
  ( (Nil!35072) (Cons!35071 (h!36469 (_ BitVec 64)) (t!49776 List!35075)) )
))
(declare-fun arrayNoDuplicates!0 (array!100305 (_ BitVec 32) List!35075) Bool)

(assert (=> b!1504250 (= res!1025116 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35072))))

(declare-fun b!1504251 () Bool)

(declare-fun res!1025115 () Bool)

(assert (=> b!1504251 (=> (not res!1025115) (not e!840872))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12620 0))(
  ( (MissingZero!12620 (index!52871 (_ BitVec 32))) (Found!12620 (index!52872 (_ BitVec 32))) (Intermediate!12620 (undefined!13432 Bool) (index!52873 (_ BitVec 32)) (x!134567 (_ BitVec 32))) (Undefined!12620) (MissingVacant!12620 (index!52874 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100305 (_ BitVec 32)) SeekEntryResult!12620)

(assert (=> b!1504251 (= res!1025115 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48403 a!2850) j!87) a!2850 mask!2661) (Found!12620 j!87)))))

(declare-fun res!1025112 () Bool)

(assert (=> start!128116 (=> (not res!1025112) (not e!840872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128116 (= res!1025112 (validMask!0 mask!2661))))

(assert (=> start!128116 e!840872))

(assert (=> start!128116 true))

(declare-fun array_inv!37348 (array!100305) Bool)

(assert (=> start!128116 (array_inv!37348 a!2850)))

(declare-fun b!1504252 () Bool)

(declare-fun res!1025111 () Bool)

(assert (=> b!1504252 (=> (not res!1025111) (not e!840872))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504252 (= res!1025111 (and (= (size!48954 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48954 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48954 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504253 () Bool)

(declare-fun res!1025114 () Bool)

(assert (=> b!1504253 (=> (not res!1025114) (not e!840872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100305 (_ BitVec 32)) Bool)

(assert (=> b!1504253 (= res!1025114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504254 () Bool)

(declare-fun res!1025118 () Bool)

(assert (=> b!1504254 (=> (not res!1025118) (not e!840872))))

(assert (=> b!1504254 (= res!1025118 (not (= (select (arr!48403 a!2850) index!625) (select (arr!48403 a!2850) j!87))))))

(declare-fun b!1504255 () Bool)

(declare-fun res!1025113 () Bool)

(assert (=> b!1504255 (=> (not res!1025113) (not e!840872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504255 (= res!1025113 (validKeyInArray!0 (select (arr!48403 a!2850) j!87)))))

(declare-fun lt!653623 () (_ BitVec 32))

(declare-fun b!1504256 () Bool)

(assert (=> b!1504256 (= e!840872 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (or (bvslt lt!653623 #b00000000000000000000000000000000) (bvsge lt!653623 (size!48954 a!2850)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504256 (= lt!653623 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504257 () Bool)

(declare-fun res!1025110 () Bool)

(assert (=> b!1504257 (=> (not res!1025110) (not e!840872))))

(assert (=> b!1504257 (= res!1025110 (validKeyInArray!0 (select (arr!48403 a!2850) i!996)))))

(declare-fun b!1504258 () Bool)

(declare-fun res!1025117 () Bool)

(assert (=> b!1504258 (=> (not res!1025117) (not e!840872))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504258 (= res!1025117 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48954 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48954 a!2850)) (= (select (arr!48403 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48403 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48954 a!2850))))))

(assert (= (and start!128116 res!1025112) b!1504252))

(assert (= (and b!1504252 res!1025111) b!1504257))

(assert (= (and b!1504257 res!1025110) b!1504255))

(assert (= (and b!1504255 res!1025113) b!1504253))

(assert (= (and b!1504253 res!1025114) b!1504250))

(assert (= (and b!1504250 res!1025116) b!1504258))

(assert (= (and b!1504258 res!1025117) b!1504251))

(assert (= (and b!1504251 res!1025115) b!1504254))

(assert (= (and b!1504254 res!1025118) b!1504256))

(declare-fun m!1387521 () Bool)

(assert (=> b!1504250 m!1387521))

(declare-fun m!1387523 () Bool)

(assert (=> b!1504256 m!1387523))

(declare-fun m!1387525 () Bool)

(assert (=> b!1504251 m!1387525))

(assert (=> b!1504251 m!1387525))

(declare-fun m!1387527 () Bool)

(assert (=> b!1504251 m!1387527))

(declare-fun m!1387529 () Bool)

(assert (=> b!1504257 m!1387529))

(assert (=> b!1504257 m!1387529))

(declare-fun m!1387531 () Bool)

(assert (=> b!1504257 m!1387531))

(declare-fun m!1387533 () Bool)

(assert (=> start!128116 m!1387533))

(declare-fun m!1387535 () Bool)

(assert (=> start!128116 m!1387535))

(declare-fun m!1387537 () Bool)

(assert (=> b!1504253 m!1387537))

(assert (=> b!1504255 m!1387525))

(assert (=> b!1504255 m!1387525))

(declare-fun m!1387539 () Bool)

(assert (=> b!1504255 m!1387539))

(declare-fun m!1387541 () Bool)

(assert (=> b!1504254 m!1387541))

(assert (=> b!1504254 m!1387525))

(declare-fun m!1387543 () Bool)

(assert (=> b!1504258 m!1387543))

(declare-fun m!1387545 () Bool)

(assert (=> b!1504258 m!1387545))

(declare-fun m!1387547 () Bool)

(assert (=> b!1504258 m!1387547))

(push 1)

(assert (not b!1504255))

(assert (not b!1504250))

(assert (not b!1504257))

(assert (not b!1504256))

(assert (not start!128116))

(assert (not b!1504253))

(assert (not b!1504251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157799 () Bool)

(assert (=> d!157799 (= (validKeyInArray!0 (select (arr!48403 a!2850) j!87)) (and (not (= (select (arr!48403 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48403 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504255 d!157799))

(declare-fun b!1504351 () Bool)

(declare-fun e!840910 () Bool)

(declare-fun call!68126 () Bool)

(assert (=> b!1504351 (= e!840910 call!68126)))

(declare-fun bm!68123 () Bool)

(declare-fun c!139120 () Bool)

(assert (=> bm!68123 (= call!68126 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139120 (Cons!35071 (select (arr!48403 a!2850) #b00000000000000000000000000000000) Nil!35072) Nil!35072)))))

(declare-fun d!157801 () Bool)

(declare-fun res!1025187 () Bool)

(declare-fun e!840912 () Bool)

(assert (=> d!157801 (=> res!1025187 e!840912)))

(assert (=> d!157801 (= res!1025187 (bvsge #b00000000000000000000000000000000 (size!48954 a!2850)))))

(assert (=> d!157801 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35072) e!840912)))

(declare-fun b!1504352 () Bool)

(declare-fun e!840913 () Bool)

(assert (=> b!1504352 (= e!840912 e!840913)))

(declare-fun res!1025186 () Bool)

(assert (=> b!1504352 (=> (not res!1025186) (not e!840913))))

(declare-fun e!840911 () Bool)

(assert (=> b!1504352 (= res!1025186 (not e!840911))))

(declare-fun res!1025185 () Bool)

(assert (=> b!1504352 (=> (not res!1025185) (not e!840911))))

(assert (=> b!1504352 (= res!1025185 (validKeyInArray!0 (select (arr!48403 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504353 () Bool)

(assert (=> b!1504353 (= e!840913 e!840910)))

(assert (=> b!1504353 (= c!139120 (validKeyInArray!0 (select (arr!48403 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504354 () Bool)

(assert (=> b!1504354 (= e!840910 call!68126)))

(declare-fun b!1504355 () Bool)

(declare-fun contains!9961 (List!35075 (_ BitVec 64)) Bool)

(assert (=> b!1504355 (= e!840911 (contains!9961 Nil!35072 (select (arr!48403 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157801 (not res!1025187)) b!1504352))

(assert (= (and b!1504352 res!1025185) b!1504355))

(assert (= (and b!1504352 res!1025186) b!1504353))

(assert (= (and b!1504353 c!139120) b!1504351))

(assert (= (and b!1504353 (not c!139120)) b!1504354))

(assert (= (or b!1504351 b!1504354) bm!68123))

(declare-fun m!1387613 () Bool)

(assert (=> bm!68123 m!1387613))

(declare-fun m!1387615 () Bool)

(assert (=> bm!68123 m!1387615))

(assert (=> b!1504352 m!1387613))

(assert (=> b!1504352 m!1387613))

(declare-fun m!1387617 () Bool)

(assert (=> b!1504352 m!1387617))

(assert (=> b!1504353 m!1387613))

(assert (=> b!1504353 m!1387613))

(assert (=> b!1504353 m!1387617))

(assert (=> b!1504355 m!1387613))

(assert (=> b!1504355 m!1387613))

(declare-fun m!1387619 () Bool)

(assert (=> b!1504355 m!1387619))

(assert (=> b!1504250 d!157801))

(declare-fun d!157813 () Bool)

(assert (=> d!157813 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128116 d!157813))

(declare-fun d!157829 () Bool)

(assert (=> d!157829 (= (array_inv!37348 a!2850) (bvsge (size!48954 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128116 d!157829))

(declare-fun b!1504408 () Bool)

(declare-fun e!840954 () Bool)

(declare-fun call!68139 () Bool)

(assert (=> b!1504408 (= e!840954 call!68139)))

(declare-fun b!1504409 () Bool)

(declare-fun e!840955 () Bool)

(assert (=> b!1504409 (= e!840955 e!840954)))

(declare-fun c!139133 () Bool)

(assert (=> b!1504409 (= c!139133 (validKeyInArray!0 (select (arr!48403 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504410 () Bool)

(declare-fun e!840956 () Bool)

(assert (=> b!1504410 (= e!840956 call!68139)))

(declare-fun d!157831 () Bool)

(declare-fun res!1025217 () Bool)

(assert (=> d!157831 (=> res!1025217 e!840955)))

(assert (=> d!157831 (= res!1025217 (bvsge #b00000000000000000000000000000000 (size!48954 a!2850)))))

(assert (=> d!157831 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840955)))

(declare-fun bm!68136 () Bool)

(assert (=> bm!68136 (= call!68139 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1504411 () Bool)

(assert (=> b!1504411 (= e!840954 e!840956)))

(declare-fun lt!653667 () (_ BitVec 64))

(assert (=> b!1504411 (= lt!653667 (select (arr!48403 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50216 0))(
  ( (Unit!50217) )
))
(declare-fun lt!653666 () Unit!50216)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100305 (_ BitVec 64) (_ BitVec 32)) Unit!50216)

(assert (=> b!1504411 (= lt!653666 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653667 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1504411 (arrayContainsKey!0 a!2850 lt!653667 #b00000000000000000000000000000000)))

(declare-fun lt!653668 () Unit!50216)

(assert (=> b!1504411 (= lt!653668 lt!653666)))

(declare-fun res!1025216 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100305 (_ BitVec 32)) SeekEntryResult!12620)

(assert (=> b!1504411 (= res!1025216 (= (seekEntryOrOpen!0 (select (arr!48403 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12620 #b00000000000000000000000000000000)))))

(assert (=> b!1504411 (=> (not res!1025216) (not e!840956))))

(assert (= (and d!157831 (not res!1025217)) b!1504409))

(assert (= (and b!1504409 c!139133) b!1504411))

(assert (= (and b!1504409 (not c!139133)) b!1504408))

(assert (= (and b!1504411 res!1025216) b!1504410))

(assert (= (or b!1504410 b!1504408) bm!68136))

(assert (=> b!1504409 m!1387613))

(assert (=> b!1504409 m!1387613))

(assert (=> b!1504409 m!1387617))

(declare-fun m!1387655 () Bool)

(assert (=> bm!68136 m!1387655))

(assert (=> b!1504411 m!1387613))

(declare-fun m!1387657 () Bool)

(assert (=> b!1504411 m!1387657))

(declare-fun m!1387659 () Bool)

(assert (=> b!1504411 m!1387659))

(assert (=> b!1504411 m!1387613))

(declare-fun m!1387661 () Bool)

(assert (=> b!1504411 m!1387661))

(assert (=> b!1504253 d!157831))

(declare-fun d!157835 () Bool)

(declare-fun lt!653675 () (_ BitVec 32))

(assert (=> d!157835 (and (bvsge lt!653675 #b00000000000000000000000000000000) (bvslt lt!653675 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157835 (= lt!653675 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157835 (validMask!0 mask!2661)))

(assert (=> d!157835 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653675)))

(declare-fun bs!43192 () Bool)

(assert (= bs!43192 d!157835))

(declare-fun m!1387663 () Bool)

(assert (=> bs!43192 m!1387663))

(assert (=> bs!43192 m!1387533))

(assert (=> b!1504256 d!157835))

(declare-fun b!1504442 () Bool)

(declare-fun e!840974 () SeekEntryResult!12620)

(declare-fun e!840972 () SeekEntryResult!12620)

(assert (=> b!1504442 (= e!840974 e!840972)))

(declare-fun lt!653683 () (_ BitVec 64))

(declare-fun c!139150 () Bool)

(assert (=> b!1504442 (= c!139150 (= lt!653683 (select (arr!48403 a!2850) j!87)))))

(declare-fun b!1504443 () Bool)

(declare-fun e!840973 () SeekEntryResult!12620)

(assert (=> b!1504443 (= e!840973 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48403 a!2850) j!87) a!2850 mask!2661))))

(declare-fun lt!653682 () SeekEntryResult!12620)

(declare-fun d!157839 () Bool)

(assert (=> d!157839 (and (or (is-Undefined!12620 lt!653682) (not (is-Found!12620 lt!653682)) (and (bvsge (index!52872 lt!653682) #b00000000000000000000000000000000) (bvslt (index!52872 lt!653682) (size!48954 a!2850)))) (or (is-Undefined!12620 lt!653682) (is-Found!12620 lt!653682) (not (is-MissingVacant!12620 lt!653682)) (not (= (index!52874 lt!653682) vacantBefore!10)) (and (bvsge (index!52874 lt!653682) #b00000000000000000000000000000000) (bvslt (index!52874 lt!653682) (size!48954 a!2850)))) (or (is-Undefined!12620 lt!653682) (ite (is-Found!12620 lt!653682) (= (select (arr!48403 a!2850) (index!52872 lt!653682)) (select (arr!48403 a!2850) j!87)) (and (is-MissingVacant!12620 lt!653682) (= (index!52874 lt!653682) vacantBefore!10) (= (select (arr!48403 a!2850) (index!52874 lt!653682)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157839 (= lt!653682 e!840974)))

(declare-fun c!139151 () Bool)

(assert (=> d!157839 (= c!139151 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157839 (= lt!653683 (select (arr!48403 a!2850) index!625))))

(assert (=> d!157839 (validMask!0 mask!2661)))

(assert (=> d!157839 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48403 a!2850) j!87) a!2850 mask!2661) lt!653682)))

(declare-fun b!1504444 () Bool)

(declare-fun c!139149 () Bool)

(assert (=> b!1504444 (= c!139149 (= lt!653683 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1504444 (= e!840972 e!840973)))

(declare-fun b!1504445 () Bool)

(assert (=> b!1504445 (= e!840972 (Found!12620 index!625))))

(declare-fun b!1504446 () Bool)

(assert (=> b!1504446 (= e!840974 Undefined!12620)))

(declare-fun b!1504447 () Bool)

(assert (=> b!1504447 (= e!840973 (MissingVacant!12620 vacantBefore!10))))

(assert (= (and d!157839 c!139151) b!1504446))

(assert (= (and d!157839 (not c!139151)) b!1504442))

(assert (= (and b!1504442 c!139150) b!1504445))

(assert (= (and b!1504442 (not c!139150)) b!1504444))

(assert (= (and b!1504444 c!139149) b!1504447))

(assert (= (and b!1504444 (not c!139149)) b!1504443))

(assert (=> b!1504443 m!1387523))

(assert (=> b!1504443 m!1387523))

(assert (=> b!1504443 m!1387525))

(declare-fun m!1387671 () Bool)

(assert (=> b!1504443 m!1387671))

(declare-fun m!1387673 () Bool)

(assert (=> d!157839 m!1387673))

(declare-fun m!1387675 () Bool)

(assert (=> d!157839 m!1387675))

(assert (=> d!157839 m!1387541))

(assert (=> d!157839 m!1387533))

(assert (=> b!1504251 d!157839))

(declare-fun d!157841 () Bool)

(assert (=> d!157841 (= (validKeyInArray!0 (select (arr!48403 a!2850) i!996)) (and (not (= (select (arr!48403 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48403 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504257 d!157841))

(push 1)

