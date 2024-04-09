; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128118 () Bool)

(assert start!128118)

(declare-fun res!1025145 () Bool)

(declare-fun e!840877 () Bool)

(assert (=> start!128118 (=> (not res!1025145) (not e!840877))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128118 (= res!1025145 (validMask!0 mask!2661))))

(assert (=> start!128118 e!840877))

(assert (=> start!128118 true))

(declare-datatypes ((array!100307 0))(
  ( (array!100308 (arr!48404 (Array (_ BitVec 32) (_ BitVec 64))) (size!48955 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100307)

(declare-fun array_inv!37349 (array!100307) Bool)

(assert (=> start!128118 (array_inv!37349 a!2850)))

(declare-fun b!1504277 () Bool)

(declare-fun res!1025138 () Bool)

(assert (=> b!1504277 (=> (not res!1025138) (not e!840877))))

(declare-datatypes ((List!35076 0))(
  ( (Nil!35073) (Cons!35072 (h!36470 (_ BitVec 64)) (t!49777 List!35076)) )
))
(declare-fun arrayNoDuplicates!0 (array!100307 (_ BitVec 32) List!35076) Bool)

(assert (=> b!1504277 (= res!1025138 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35073))))

(declare-fun lt!653626 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun b!1504278 () Bool)

(assert (=> b!1504278 (= e!840877 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (or (bvslt lt!653626 #b00000000000000000000000000000000) (bvsge lt!653626 (size!48955 a!2850)))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504278 (= lt!653626 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504279 () Bool)

(declare-fun res!1025143 () Bool)

(assert (=> b!1504279 (=> (not res!1025143) (not e!840877))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1504279 (= res!1025143 (not (= (select (arr!48404 a!2850) index!625) (select (arr!48404 a!2850) j!87))))))

(declare-fun b!1504280 () Bool)

(declare-fun res!1025142 () Bool)

(assert (=> b!1504280 (=> (not res!1025142) (not e!840877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504280 (= res!1025142 (validKeyInArray!0 (select (arr!48404 a!2850) j!87)))))

(declare-fun b!1504281 () Bool)

(declare-fun res!1025137 () Bool)

(assert (=> b!1504281 (=> (not res!1025137) (not e!840877))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504281 (= res!1025137 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48955 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48955 a!2850)) (= (select (arr!48404 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48404 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48955 a!2850))))))

(declare-fun b!1504282 () Bool)

(declare-fun res!1025141 () Bool)

(assert (=> b!1504282 (=> (not res!1025141) (not e!840877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100307 (_ BitVec 32)) Bool)

(assert (=> b!1504282 (= res!1025141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504283 () Bool)

(declare-fun res!1025144 () Bool)

(assert (=> b!1504283 (=> (not res!1025144) (not e!840877))))

(assert (=> b!1504283 (= res!1025144 (and (= (size!48955 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48955 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48955 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504284 () Bool)

(declare-fun res!1025140 () Bool)

(assert (=> b!1504284 (=> (not res!1025140) (not e!840877))))

(assert (=> b!1504284 (= res!1025140 (validKeyInArray!0 (select (arr!48404 a!2850) i!996)))))

(declare-fun b!1504285 () Bool)

(declare-fun res!1025139 () Bool)

(assert (=> b!1504285 (=> (not res!1025139) (not e!840877))))

(declare-datatypes ((SeekEntryResult!12621 0))(
  ( (MissingZero!12621 (index!52875 (_ BitVec 32))) (Found!12621 (index!52876 (_ BitVec 32))) (Intermediate!12621 (undefined!13433 Bool) (index!52877 (_ BitVec 32)) (x!134568 (_ BitVec 32))) (Undefined!12621) (MissingVacant!12621 (index!52878 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100307 (_ BitVec 32)) SeekEntryResult!12621)

(assert (=> b!1504285 (= res!1025139 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48404 a!2850) j!87) a!2850 mask!2661) (Found!12621 j!87)))))

(assert (= (and start!128118 res!1025145) b!1504283))

(assert (= (and b!1504283 res!1025144) b!1504284))

(assert (= (and b!1504284 res!1025140) b!1504280))

(assert (= (and b!1504280 res!1025142) b!1504282))

(assert (= (and b!1504282 res!1025141) b!1504277))

(assert (= (and b!1504277 res!1025138) b!1504281))

(assert (= (and b!1504281 res!1025137) b!1504285))

(assert (= (and b!1504285 res!1025139) b!1504279))

(assert (= (and b!1504279 res!1025143) b!1504278))

(declare-fun m!1387549 () Bool)

(assert (=> b!1504279 m!1387549))

(declare-fun m!1387551 () Bool)

(assert (=> b!1504279 m!1387551))

(declare-fun m!1387553 () Bool)

(assert (=> b!1504281 m!1387553))

(declare-fun m!1387555 () Bool)

(assert (=> b!1504281 m!1387555))

(declare-fun m!1387557 () Bool)

(assert (=> b!1504281 m!1387557))

(declare-fun m!1387559 () Bool)

(assert (=> b!1504284 m!1387559))

(assert (=> b!1504284 m!1387559))

(declare-fun m!1387561 () Bool)

(assert (=> b!1504284 m!1387561))

(declare-fun m!1387563 () Bool)

(assert (=> b!1504278 m!1387563))

(declare-fun m!1387565 () Bool)

(assert (=> b!1504282 m!1387565))

(declare-fun m!1387567 () Bool)

(assert (=> b!1504277 m!1387567))

(assert (=> b!1504280 m!1387551))

(assert (=> b!1504280 m!1387551))

(declare-fun m!1387569 () Bool)

(assert (=> b!1504280 m!1387569))

(assert (=> b!1504285 m!1387551))

(assert (=> b!1504285 m!1387551))

(declare-fun m!1387571 () Bool)

(assert (=> b!1504285 m!1387571))

(declare-fun m!1387573 () Bool)

(assert (=> start!128118 m!1387573))

(declare-fun m!1387575 () Bool)

(assert (=> start!128118 m!1387575))

(check-sat (not b!1504285) (not start!128118) (not b!1504278) (not b!1504284) (not b!1504280) (not b!1504282) (not b!1504277))
(check-sat)
(get-model)

(declare-fun d!157795 () Bool)

(declare-fun lt!653632 () (_ BitVec 32))

(assert (=> d!157795 (and (bvsge lt!653632 #b00000000000000000000000000000000) (bvslt lt!653632 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157795 (= lt!653632 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157795 (validMask!0 mask!2661)))

(assert (=> d!157795 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653632)))

(declare-fun bs!43190 () Bool)

(assert (= bs!43190 d!157795))

(declare-fun m!1387605 () Bool)

(assert (=> bs!43190 m!1387605))

(assert (=> bs!43190 m!1387573))

(assert (=> b!1504278 d!157795))

(declare-fun b!1504325 () Bool)

(declare-fun e!840892 () SeekEntryResult!12621)

(assert (=> b!1504325 (= e!840892 (MissingVacant!12621 vacantBefore!10))))

(declare-fun b!1504326 () Bool)

(declare-fun e!840891 () SeekEntryResult!12621)

(declare-fun e!840893 () SeekEntryResult!12621)

(assert (=> b!1504326 (= e!840891 e!840893)))

(declare-fun c!139113 () Bool)

(declare-fun lt!653638 () (_ BitVec 64))

(assert (=> b!1504326 (= c!139113 (= lt!653638 (select (arr!48404 a!2850) j!87)))))

(declare-fun b!1504327 () Bool)

(assert (=> b!1504327 (= e!840891 Undefined!12621)))

(declare-fun b!1504328 () Bool)

(assert (=> b!1504328 (= e!840892 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48404 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1504329 () Bool)

(declare-fun c!139114 () Bool)

(assert (=> b!1504329 (= c!139114 (= lt!653638 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1504329 (= e!840893 e!840892)))

(declare-fun b!1504330 () Bool)

(assert (=> b!1504330 (= e!840893 (Found!12621 index!625))))

(declare-fun d!157797 () Bool)

(declare-fun lt!653637 () SeekEntryResult!12621)

(get-info :version)

(assert (=> d!157797 (and (or ((_ is Undefined!12621) lt!653637) (not ((_ is Found!12621) lt!653637)) (and (bvsge (index!52876 lt!653637) #b00000000000000000000000000000000) (bvslt (index!52876 lt!653637) (size!48955 a!2850)))) (or ((_ is Undefined!12621) lt!653637) ((_ is Found!12621) lt!653637) (not ((_ is MissingVacant!12621) lt!653637)) (not (= (index!52878 lt!653637) vacantBefore!10)) (and (bvsge (index!52878 lt!653637) #b00000000000000000000000000000000) (bvslt (index!52878 lt!653637) (size!48955 a!2850)))) (or ((_ is Undefined!12621) lt!653637) (ite ((_ is Found!12621) lt!653637) (= (select (arr!48404 a!2850) (index!52876 lt!653637)) (select (arr!48404 a!2850) j!87)) (and ((_ is MissingVacant!12621) lt!653637) (= (index!52878 lt!653637) vacantBefore!10) (= (select (arr!48404 a!2850) (index!52878 lt!653637)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157797 (= lt!653637 e!840891)))

(declare-fun c!139115 () Bool)

(assert (=> d!157797 (= c!139115 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157797 (= lt!653638 (select (arr!48404 a!2850) index!625))))

(assert (=> d!157797 (validMask!0 mask!2661)))

(assert (=> d!157797 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48404 a!2850) j!87) a!2850 mask!2661) lt!653637)))

(assert (= (and d!157797 c!139115) b!1504327))

(assert (= (and d!157797 (not c!139115)) b!1504326))

(assert (= (and b!1504326 c!139113) b!1504330))

(assert (= (and b!1504326 (not c!139113)) b!1504329))

(assert (= (and b!1504329 c!139114) b!1504325))

(assert (= (and b!1504329 (not c!139114)) b!1504328))

(assert (=> b!1504328 m!1387563))

(assert (=> b!1504328 m!1387563))

(assert (=> b!1504328 m!1387551))

(declare-fun m!1387607 () Bool)

(assert (=> b!1504328 m!1387607))

(declare-fun m!1387609 () Bool)

(assert (=> d!157797 m!1387609))

(declare-fun m!1387611 () Bool)

(assert (=> d!157797 m!1387611))

(assert (=> d!157797 m!1387549))

(assert (=> d!157797 m!1387573))

(assert (=> b!1504285 d!157797))

(declare-fun d!157803 () Bool)

(assert (=> d!157803 (= (validKeyInArray!0 (select (arr!48404 a!2850) i!996)) (and (not (= (select (arr!48404 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48404 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504284 d!157803))

(declare-fun d!157807 () Bool)

(assert (=> d!157807 (= (validKeyInArray!0 (select (arr!48404 a!2850) j!87)) (and (not (= (select (arr!48404 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48404 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504280 d!157807))

(declare-fun bm!68124 () Bool)

(declare-fun call!68127 () Bool)

(declare-fun c!139121 () Bool)

(assert (=> bm!68124 (= call!68127 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139121 (Cons!35072 (select (arr!48404 a!2850) #b00000000000000000000000000000000) Nil!35073) Nil!35073)))))

(declare-fun b!1504357 () Bool)

(declare-fun e!840914 () Bool)

(assert (=> b!1504357 (= e!840914 call!68127)))

(declare-fun b!1504358 () Bool)

(assert (=> b!1504358 (= e!840914 call!68127)))

(declare-fun b!1504359 () Bool)

(declare-fun e!840915 () Bool)

(declare-fun e!840917 () Bool)

(assert (=> b!1504359 (= e!840915 e!840917)))

(declare-fun res!1025190 () Bool)

(assert (=> b!1504359 (=> (not res!1025190) (not e!840917))))

(declare-fun e!840916 () Bool)

(assert (=> b!1504359 (= res!1025190 (not e!840916))))

(declare-fun res!1025188 () Bool)

(assert (=> b!1504359 (=> (not res!1025188) (not e!840916))))

(assert (=> b!1504359 (= res!1025188 (validKeyInArray!0 (select (arr!48404 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504360 () Bool)

(assert (=> b!1504360 (= e!840917 e!840914)))

(assert (=> b!1504360 (= c!139121 (validKeyInArray!0 (select (arr!48404 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504356 () Bool)

(declare-fun contains!9960 (List!35076 (_ BitVec 64)) Bool)

(assert (=> b!1504356 (= e!840916 (contains!9960 Nil!35073 (select (arr!48404 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157809 () Bool)

(declare-fun res!1025189 () Bool)

(assert (=> d!157809 (=> res!1025189 e!840915)))

(assert (=> d!157809 (= res!1025189 (bvsge #b00000000000000000000000000000000 (size!48955 a!2850)))))

(assert (=> d!157809 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35073) e!840915)))

(assert (= (and d!157809 (not res!1025189)) b!1504359))

(assert (= (and b!1504359 res!1025188) b!1504356))

(assert (= (and b!1504359 res!1025190) b!1504360))

(assert (= (and b!1504360 c!139121) b!1504357))

(assert (= (and b!1504360 (not c!139121)) b!1504358))

(assert (= (or b!1504357 b!1504358) bm!68124))

(declare-fun m!1387621 () Bool)

(assert (=> bm!68124 m!1387621))

(declare-fun m!1387623 () Bool)

(assert (=> bm!68124 m!1387623))

(assert (=> b!1504359 m!1387621))

(assert (=> b!1504359 m!1387621))

(declare-fun m!1387625 () Bool)

(assert (=> b!1504359 m!1387625))

(assert (=> b!1504360 m!1387621))

(assert (=> b!1504360 m!1387621))

(assert (=> b!1504360 m!1387625))

(assert (=> b!1504356 m!1387621))

(assert (=> b!1504356 m!1387621))

(declare-fun m!1387627 () Bool)

(assert (=> b!1504356 m!1387627))

(assert (=> b!1504277 d!157809))

(declare-fun d!157817 () Bool)

(declare-fun res!1025205 () Bool)

(declare-fun e!840938 () Bool)

(assert (=> d!157817 (=> res!1025205 e!840938)))

(assert (=> d!157817 (= res!1025205 (bvsge #b00000000000000000000000000000000 (size!48955 a!2850)))))

(assert (=> d!157817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840938)))

(declare-fun b!1504384 () Bool)

(declare-fun e!840937 () Bool)

(declare-fun e!840936 () Bool)

(assert (=> b!1504384 (= e!840937 e!840936)))

(declare-fun lt!653649 () (_ BitVec 64))

(assert (=> b!1504384 (= lt!653649 (select (arr!48404 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50214 0))(
  ( (Unit!50215) )
))
(declare-fun lt!653650 () Unit!50214)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100307 (_ BitVec 64) (_ BitVec 32)) Unit!50214)

(assert (=> b!1504384 (= lt!653650 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653649 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1504384 (arrayContainsKey!0 a!2850 lt!653649 #b00000000000000000000000000000000)))

(declare-fun lt!653648 () Unit!50214)

(assert (=> b!1504384 (= lt!653648 lt!653650)))

(declare-fun res!1025204 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100307 (_ BitVec 32)) SeekEntryResult!12621)

(assert (=> b!1504384 (= res!1025204 (= (seekEntryOrOpen!0 (select (arr!48404 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12621 #b00000000000000000000000000000000)))))

(assert (=> b!1504384 (=> (not res!1025204) (not e!840936))))

(declare-fun b!1504385 () Bool)

(declare-fun call!68133 () Bool)

(assert (=> b!1504385 (= e!840937 call!68133)))

(declare-fun bm!68130 () Bool)

(assert (=> bm!68130 (= call!68133 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1504386 () Bool)

(assert (=> b!1504386 (= e!840936 call!68133)))

(declare-fun b!1504387 () Bool)

(assert (=> b!1504387 (= e!840938 e!840937)))

(declare-fun c!139127 () Bool)

(assert (=> b!1504387 (= c!139127 (validKeyInArray!0 (select (arr!48404 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157817 (not res!1025205)) b!1504387))

(assert (= (and b!1504387 c!139127) b!1504384))

(assert (= (and b!1504387 (not c!139127)) b!1504385))

(assert (= (and b!1504384 res!1025204) b!1504386))

(assert (= (or b!1504386 b!1504385) bm!68130))

(assert (=> b!1504384 m!1387621))

(declare-fun m!1387639 () Bool)

(assert (=> b!1504384 m!1387639))

(declare-fun m!1387641 () Bool)

(assert (=> b!1504384 m!1387641))

(assert (=> b!1504384 m!1387621))

(declare-fun m!1387643 () Bool)

(assert (=> b!1504384 m!1387643))

(declare-fun m!1387645 () Bool)

(assert (=> bm!68130 m!1387645))

(assert (=> b!1504387 m!1387621))

(assert (=> b!1504387 m!1387621))

(assert (=> b!1504387 m!1387625))

(assert (=> b!1504282 d!157817))

(declare-fun d!157827 () Bool)

(assert (=> d!157827 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128118 d!157827))

(declare-fun d!157837 () Bool)

(assert (=> d!157837 (= (array_inv!37349 a!2850) (bvsge (size!48955 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128118 d!157837))

(check-sat (not d!157797) (not d!157795) (not b!1504384) (not b!1504360) (not b!1504359) (not bm!68130) (not b!1504387) (not bm!68124) (not b!1504328) (not b!1504356))
(check-sat)
