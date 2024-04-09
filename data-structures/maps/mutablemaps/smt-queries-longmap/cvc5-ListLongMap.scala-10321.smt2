; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121396 () Bool)

(assert start!121396)

(declare-fun b!1410246 () Bool)

(declare-fun res!947754 () Bool)

(declare-fun e!798088 () Bool)

(assert (=> b!1410246 (=> (not res!947754) (not e!798088))))

(declare-datatypes ((array!96366 0))(
  ( (array!96367 (arr!46519 (Array (_ BitVec 32) (_ BitVec 64))) (size!47070 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96366)

(declare-datatypes ((List!33218 0))(
  ( (Nil!33215) (Cons!33214 (h!34483 (_ BitVec 64)) (t!47919 List!33218)) )
))
(declare-fun arrayNoDuplicates!0 (array!96366 (_ BitVec 32) List!33218) Bool)

(assert (=> b!1410246 (= res!947754 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33215))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!798087 () Bool)

(declare-fun b!1410247 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10852 0))(
  ( (MissingZero!10852 (index!45784 (_ BitVec 32))) (Found!10852 (index!45785 (_ BitVec 32))) (Intermediate!10852 (undefined!11664 Bool) (index!45786 (_ BitVec 32)) (x!127388 (_ BitVec 32))) (Undefined!10852) (MissingVacant!10852 (index!45787 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96366 (_ BitVec 32)) SeekEntryResult!10852)

(assert (=> b!1410247 (= e!798087 (= (seekEntryOrOpen!0 (select (arr!46519 a!2901) j!112) a!2901 mask!2840) (Found!10852 j!112)))))

(declare-fun b!1410248 () Bool)

(declare-fun e!798086 () Bool)

(assert (=> b!1410248 (= e!798088 (not e!798086))))

(declare-fun res!947749 () Bool)

(assert (=> b!1410248 (=> res!947749 e!798086)))

(declare-fun lt!621057 () SeekEntryResult!10852)

(assert (=> b!1410248 (= res!947749 (or (not (is-Intermediate!10852 lt!621057)) (undefined!11664 lt!621057)))))

(assert (=> b!1410248 e!798087))

(declare-fun res!947747 () Bool)

(assert (=> b!1410248 (=> (not res!947747) (not e!798087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96366 (_ BitVec 32)) Bool)

(assert (=> b!1410248 (= res!947747 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47628 0))(
  ( (Unit!47629) )
))
(declare-fun lt!621056 () Unit!47628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96366 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47628)

(assert (=> b!1410248 (= lt!621056 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621055 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96366 (_ BitVec 32)) SeekEntryResult!10852)

(assert (=> b!1410248 (= lt!621057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621055 (select (arr!46519 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410248 (= lt!621055 (toIndex!0 (select (arr!46519 a!2901) j!112) mask!2840))))

(declare-fun b!1410249 () Bool)

(declare-fun res!947751 () Bool)

(assert (=> b!1410249 (=> (not res!947751) (not e!798088))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410249 (= res!947751 (validKeyInArray!0 (select (arr!46519 a!2901) i!1037)))))

(declare-fun b!1410250 () Bool)

(declare-fun res!947750 () Bool)

(assert (=> b!1410250 (=> (not res!947750) (not e!798088))))

(assert (=> b!1410250 (= res!947750 (validKeyInArray!0 (select (arr!46519 a!2901) j!112)))))

(declare-fun b!1410251 () Bool)

(declare-fun res!947753 () Bool)

(assert (=> b!1410251 (=> (not res!947753) (not e!798088))))

(assert (=> b!1410251 (= res!947753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!947748 () Bool)

(assert (=> start!121396 (=> (not res!947748) (not e!798088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121396 (= res!947748 (validMask!0 mask!2840))))

(assert (=> start!121396 e!798088))

(assert (=> start!121396 true))

(declare-fun array_inv!35464 (array!96366) Bool)

(assert (=> start!121396 (array_inv!35464 a!2901)))

(declare-fun b!1410252 () Bool)

(declare-fun res!947752 () Bool)

(assert (=> b!1410252 (=> (not res!947752) (not e!798088))))

(assert (=> b!1410252 (= res!947752 (and (= (size!47070 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47070 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47070 a!2901)) (not (= i!1037 j!112))))))

(declare-fun lt!621058 () SeekEntryResult!10852)

(declare-fun b!1410253 () Bool)

(assert (=> b!1410253 (= e!798086 (or (= lt!621057 lt!621058) (not (is-Intermediate!10852 lt!621058)) (bvslt (x!127388 lt!621057) #b00000000000000000000000000000000) (bvsgt (x!127388 lt!621057) #b01111111111111111111111111111110) (bvslt lt!621055 #b00000000000000000000000000000000) (bvsge lt!621055 (size!47070 a!2901)) (and (bvsge (index!45786 lt!621057) #b00000000000000000000000000000000) (bvslt (index!45786 lt!621057) (size!47070 a!2901)))))))

(assert (=> b!1410253 (= lt!621058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901)) mask!2840))))

(assert (= (and start!121396 res!947748) b!1410252))

(assert (= (and b!1410252 res!947752) b!1410249))

(assert (= (and b!1410249 res!947751) b!1410250))

(assert (= (and b!1410250 res!947750) b!1410251))

(assert (= (and b!1410251 res!947753) b!1410246))

(assert (= (and b!1410246 res!947754) b!1410248))

(assert (= (and b!1410248 res!947747) b!1410247))

(assert (= (and b!1410248 (not res!947749)) b!1410253))

(declare-fun m!1299977 () Bool)

(assert (=> b!1410246 m!1299977))

(declare-fun m!1299979 () Bool)

(assert (=> b!1410253 m!1299979))

(declare-fun m!1299981 () Bool)

(assert (=> b!1410253 m!1299981))

(assert (=> b!1410253 m!1299981))

(declare-fun m!1299983 () Bool)

(assert (=> b!1410253 m!1299983))

(assert (=> b!1410253 m!1299983))

(assert (=> b!1410253 m!1299981))

(declare-fun m!1299985 () Bool)

(assert (=> b!1410253 m!1299985))

(declare-fun m!1299987 () Bool)

(assert (=> b!1410247 m!1299987))

(assert (=> b!1410247 m!1299987))

(declare-fun m!1299989 () Bool)

(assert (=> b!1410247 m!1299989))

(declare-fun m!1299991 () Bool)

(assert (=> b!1410251 m!1299991))

(assert (=> b!1410248 m!1299987))

(declare-fun m!1299993 () Bool)

(assert (=> b!1410248 m!1299993))

(assert (=> b!1410248 m!1299987))

(assert (=> b!1410248 m!1299987))

(declare-fun m!1299995 () Bool)

(assert (=> b!1410248 m!1299995))

(declare-fun m!1299997 () Bool)

(assert (=> b!1410248 m!1299997))

(declare-fun m!1299999 () Bool)

(assert (=> b!1410248 m!1299999))

(assert (=> b!1410250 m!1299987))

(assert (=> b!1410250 m!1299987))

(declare-fun m!1300001 () Bool)

(assert (=> b!1410250 m!1300001))

(declare-fun m!1300003 () Bool)

(assert (=> start!121396 m!1300003))

(declare-fun m!1300005 () Bool)

(assert (=> start!121396 m!1300005))

(declare-fun m!1300007 () Bool)

(assert (=> b!1410249 m!1300007))

(assert (=> b!1410249 m!1300007))

(declare-fun m!1300009 () Bool)

(assert (=> b!1410249 m!1300009))

(push 1)

(assert (not b!1410247))

(assert (not b!1410250))

(assert (not b!1410253))

(assert (not b!1410248))

(assert (not b!1410249))

(assert (not b!1410246))

(assert (not start!121396))

(assert (not b!1410251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1410335 () Bool)

(declare-fun e!798141 () Bool)

(declare-fun contains!9824 (List!33218 (_ BitVec 64)) Bool)

(assert (=> b!1410335 (= e!798141 (contains!9824 Nil!33215 (select (arr!46519 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410336 () Bool)

(declare-fun e!798142 () Bool)

(declare-fun e!798143 () Bool)

(assert (=> b!1410336 (= e!798142 e!798143)))

(declare-fun res!947823 () Bool)

(assert (=> b!1410336 (=> (not res!947823) (not e!798143))))

(assert (=> b!1410336 (= res!947823 (not e!798141))))

(declare-fun res!947822 () Bool)

(assert (=> b!1410336 (=> (not res!947822) (not e!798141))))

(assert (=> b!1410336 (= res!947822 (validKeyInArray!0 (select (arr!46519 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410337 () Bool)

(declare-fun e!798140 () Bool)

(declare-fun call!67061 () Bool)

(assert (=> b!1410337 (= e!798140 call!67061)))

(declare-fun bm!67058 () Bool)

(declare-fun c!130729 () Bool)

(assert (=> bm!67058 (= call!67061 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130729 (Cons!33214 (select (arr!46519 a!2901) #b00000000000000000000000000000000) Nil!33215) Nil!33215)))))

(declare-fun b!1410338 () Bool)

(assert (=> b!1410338 (= e!798143 e!798140)))

(assert (=> b!1410338 (= c!130729 (validKeyInArray!0 (select (arr!46519 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410339 () Bool)

(assert (=> b!1410339 (= e!798140 call!67061)))

(declare-fun d!151823 () Bool)

(declare-fun res!947824 () Bool)

(assert (=> d!151823 (=> res!947824 e!798142)))

(assert (=> d!151823 (= res!947824 (bvsge #b00000000000000000000000000000000 (size!47070 a!2901)))))

(assert (=> d!151823 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33215) e!798142)))

(assert (= (and d!151823 (not res!947824)) b!1410336))

(assert (= (and b!1410336 res!947822) b!1410335))

(assert (= (and b!1410336 res!947823) b!1410338))

(assert (= (and b!1410338 c!130729) b!1410337))

(assert (= (and b!1410338 (not c!130729)) b!1410339))

(assert (= (or b!1410337 b!1410339) bm!67058))

(declare-fun m!1300087 () Bool)

(assert (=> b!1410335 m!1300087))

(assert (=> b!1410335 m!1300087))

(declare-fun m!1300089 () Bool)

(assert (=> b!1410335 m!1300089))

(assert (=> b!1410336 m!1300087))

(assert (=> b!1410336 m!1300087))

(declare-fun m!1300091 () Bool)

(assert (=> b!1410336 m!1300091))

(assert (=> bm!67058 m!1300087))

(declare-fun m!1300093 () Bool)

(assert (=> bm!67058 m!1300093))

(assert (=> b!1410338 m!1300087))

(assert (=> b!1410338 m!1300087))

(assert (=> b!1410338 m!1300091))

(assert (=> b!1410246 d!151823))

(declare-fun d!151825 () Bool)

(declare-fun lt!621110 () SeekEntryResult!10852)

(assert (=> d!151825 (and (or (is-Undefined!10852 lt!621110) (not (is-Found!10852 lt!621110)) (and (bvsge (index!45785 lt!621110) #b00000000000000000000000000000000) (bvslt (index!45785 lt!621110) (size!47070 a!2901)))) (or (is-Undefined!10852 lt!621110) (is-Found!10852 lt!621110) (not (is-MissingZero!10852 lt!621110)) (and (bvsge (index!45784 lt!621110) #b00000000000000000000000000000000) (bvslt (index!45784 lt!621110) (size!47070 a!2901)))) (or (is-Undefined!10852 lt!621110) (is-Found!10852 lt!621110) (is-MissingZero!10852 lt!621110) (not (is-MissingVacant!10852 lt!621110)) (and (bvsge (index!45787 lt!621110) #b00000000000000000000000000000000) (bvslt (index!45787 lt!621110) (size!47070 a!2901)))) (or (is-Undefined!10852 lt!621110) (ite (is-Found!10852 lt!621110) (= (select (arr!46519 a!2901) (index!45785 lt!621110)) (select (arr!46519 a!2901) j!112)) (ite (is-MissingZero!10852 lt!621110) (= (select (arr!46519 a!2901) (index!45784 lt!621110)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10852 lt!621110) (= (select (arr!46519 a!2901) (index!45787 lt!621110)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!798162 () SeekEntryResult!10852)

(assert (=> d!151825 (= lt!621110 e!798162)))

(declare-fun c!130742 () Bool)

(declare-fun lt!621112 () SeekEntryResult!10852)

(assert (=> d!151825 (= c!130742 (and (is-Intermediate!10852 lt!621112) (undefined!11664 lt!621112)))))

(assert (=> d!151825 (= lt!621112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46519 a!2901) j!112) mask!2840) (select (arr!46519 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151825 (validMask!0 mask!2840)))

(assert (=> d!151825 (= (seekEntryOrOpen!0 (select (arr!46519 a!2901) j!112) a!2901 mask!2840) lt!621110)))

(declare-fun b!1410368 () Bool)

(declare-fun e!798164 () SeekEntryResult!10852)

(assert (=> b!1410368 (= e!798164 (Found!10852 (index!45786 lt!621112)))))

(declare-fun b!1410369 () Bool)

(assert (=> b!1410369 (= e!798162 e!798164)))

(declare-fun lt!621111 () (_ BitVec 64))

(assert (=> b!1410369 (= lt!621111 (select (arr!46519 a!2901) (index!45786 lt!621112)))))

(declare-fun c!130741 () Bool)

(assert (=> b!1410369 (= c!130741 (= lt!621111 (select (arr!46519 a!2901) j!112)))))

(declare-fun e!798163 () SeekEntryResult!10852)

(declare-fun b!1410370 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96366 (_ BitVec 32)) SeekEntryResult!10852)

(assert (=> b!1410370 (= e!798163 (seekKeyOrZeroReturnVacant!0 (x!127388 lt!621112) (index!45786 lt!621112) (index!45786 lt!621112) (select (arr!46519 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410371 () Bool)

(declare-fun c!130740 () Bool)

(assert (=> b!1410371 (= c!130740 (= lt!621111 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410371 (= e!798164 e!798163)))

(declare-fun b!1410372 () Bool)

(assert (=> b!1410372 (= e!798163 (MissingZero!10852 (index!45786 lt!621112)))))

(declare-fun b!1410373 () Bool)

(assert (=> b!1410373 (= e!798162 Undefined!10852)))

(assert (= (and d!151825 c!130742) b!1410373))

(assert (= (and d!151825 (not c!130742)) b!1410369))

(assert (= (and b!1410369 c!130741) b!1410368))

(assert (= (and b!1410369 (not c!130741)) b!1410371))

(assert (= (and b!1410371 c!130740) b!1410372))

(assert (= (and b!1410371 (not c!130740)) b!1410370))

(assert (=> d!151825 m!1300003))

(declare-fun m!1300109 () Bool)

(assert (=> d!151825 m!1300109))

(assert (=> d!151825 m!1299987))

(assert (=> d!151825 m!1299993))

(declare-fun m!1300111 () Bool)

(assert (=> d!151825 m!1300111))

(declare-fun m!1300113 () Bool)

(assert (=> d!151825 m!1300113))

(assert (=> d!151825 m!1299993))

(assert (=> d!151825 m!1299987))

(declare-fun m!1300115 () Bool)

(assert (=> d!151825 m!1300115))

(declare-fun m!1300117 () Bool)

(assert (=> b!1410369 m!1300117))

(assert (=> b!1410370 m!1299987))

(declare-fun m!1300119 () Bool)

(assert (=> b!1410370 m!1300119))

(assert (=> b!1410247 d!151825))

(declare-fun b!1410409 () Bool)

(declare-fun e!798186 () Bool)

(declare-fun e!798188 () Bool)

(assert (=> b!1410409 (= e!798186 e!798188)))

(declare-fun c!130754 () Bool)

(assert (=> b!1410409 (= c!130754 (validKeyInArray!0 (select (arr!46519 a!2901) j!112)))))

(declare-fun b!1410410 () Bool)

(declare-fun e!798187 () Bool)

(assert (=> b!1410410 (= e!798188 e!798187)))

(declare-fun lt!621128 () (_ BitVec 64))

(assert (=> b!1410410 (= lt!621128 (select (arr!46519 a!2901) j!112))))

(declare-fun lt!621129 () Unit!47628)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96366 (_ BitVec 64) (_ BitVec 32)) Unit!47628)

(assert (=> b!1410410 (= lt!621129 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621128 j!112))))

(declare-fun arrayContainsKey!0 (array!96366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1410410 (arrayContainsKey!0 a!2901 lt!621128 #b00000000000000000000000000000000)))

(declare-fun lt!621130 () Unit!47628)

(assert (=> b!1410410 (= lt!621130 lt!621129)))

(declare-fun res!947848 () Bool)

(assert (=> b!1410410 (= res!947848 (= (seekEntryOrOpen!0 (select (arr!46519 a!2901) j!112) a!2901 mask!2840) (Found!10852 j!112)))))

(assert (=> b!1410410 (=> (not res!947848) (not e!798187))))

(declare-fun d!151839 () Bool)

(declare-fun res!947847 () Bool)

(assert (=> d!151839 (=> res!947847 e!798186)))

(assert (=> d!151839 (= res!947847 (bvsge j!112 (size!47070 a!2901)))))

(assert (=> d!151839 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!798186)))

(declare-fun call!67068 () Bool)

(declare-fun bm!67065 () Bool)

(assert (=> bm!67065 (= call!67068 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1410411 () Bool)

(assert (=> b!1410411 (= e!798187 call!67068)))

(declare-fun b!1410412 () Bool)

(assert (=> b!1410412 (= e!798188 call!67068)))

(assert (= (and d!151839 (not res!947847)) b!1410409))

(assert (= (and b!1410409 c!130754) b!1410410))

(assert (= (and b!1410409 (not c!130754)) b!1410412))

(assert (= (and b!1410410 res!947848) b!1410411))

(assert (= (or b!1410411 b!1410412) bm!67065))

(assert (=> b!1410409 m!1299987))

(assert (=> b!1410409 m!1299987))

(assert (=> b!1410409 m!1300001))

(assert (=> b!1410410 m!1299987))

(declare-fun m!1300131 () Bool)

(assert (=> b!1410410 m!1300131))

(declare-fun m!1300133 () Bool)

(assert (=> b!1410410 m!1300133))

(assert (=> b!1410410 m!1299987))

(assert (=> b!1410410 m!1299989))

(declare-fun m!1300135 () Bool)

(assert (=> bm!67065 m!1300135))

(assert (=> b!1410248 d!151839))

(declare-fun d!151845 () Bool)

(assert (=> d!151845 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!621139 () Unit!47628)

(declare-fun choose!38 (array!96366 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47628)

(assert (=> d!151845 (= lt!621139 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151845 (validMask!0 mask!2840)))

(assert (=> d!151845 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!621139)))

(declare-fun bs!41113 () Bool)

(assert (= bs!41113 d!151845))

(assert (=> bs!41113 m!1299999))

(declare-fun m!1300137 () Bool)

(assert (=> bs!41113 m!1300137))

(assert (=> bs!41113 m!1300003))

(assert (=> b!1410248 d!151845))

(declare-fun b!1410471 () Bool)

(declare-fun e!798224 () SeekEntryResult!10852)

(declare-fun e!798222 () SeekEntryResult!10852)

(assert (=> b!1410471 (= e!798224 e!798222)))

(declare-fun c!130775 () Bool)

(declare-fun lt!621164 () (_ BitVec 64))

(assert (=> b!1410471 (= c!130775 (or (= lt!621164 (select (arr!46519 a!2901) j!112)) (= (bvadd lt!621164 lt!621164) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1410472 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410472 (= e!798222 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!621055 #b00000000000000000000000000000000 mask!2840) (select (arr!46519 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410473 () Bool)

(declare-fun e!798226 () Bool)

(declare-fun lt!621163 () SeekEntryResult!10852)

(assert (=> b!1410473 (= e!798226 (bvsge (x!127388 lt!621163) #b01111111111111111111111111111110))))

(declare-fun b!1410474 () Bool)

(assert (=> b!1410474 (= e!798224 (Intermediate!10852 true lt!621055 #b00000000000000000000000000000000))))

(declare-fun d!151849 () Bool)

(assert (=> d!151849 e!798226))

(declare-fun c!130774 () Bool)

(assert (=> d!151849 (= c!130774 (and (is-Intermediate!10852 lt!621163) (undefined!11664 lt!621163)))))

(assert (=> d!151849 (= lt!621163 e!798224)))

(declare-fun c!130776 () Bool)

(assert (=> d!151849 (= c!130776 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151849 (= lt!621164 (select (arr!46519 a!2901) lt!621055))))

(assert (=> d!151849 (validMask!0 mask!2840)))

(assert (=> d!151849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621055 (select (arr!46519 a!2901) j!112) a!2901 mask!2840) lt!621163)))

(declare-fun b!1410475 () Bool)

(assert (=> b!1410475 (= e!798222 (Intermediate!10852 false lt!621055 #b00000000000000000000000000000000))))

(declare-fun b!1410476 () Bool)

(assert (=> b!1410476 (and (bvsge (index!45786 lt!621163) #b00000000000000000000000000000000) (bvslt (index!45786 lt!621163) (size!47070 a!2901)))))

(declare-fun res!947871 () Bool)

(assert (=> b!1410476 (= res!947871 (= (select (arr!46519 a!2901) (index!45786 lt!621163)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!798225 () Bool)

(assert (=> b!1410476 (=> res!947871 e!798225)))

(declare-fun b!1410477 () Bool)

(assert (=> b!1410477 (and (bvsge (index!45786 lt!621163) #b00000000000000000000000000000000) (bvslt (index!45786 lt!621163) (size!47070 a!2901)))))

(assert (=> b!1410477 (= e!798225 (= (select (arr!46519 a!2901) (index!45786 lt!621163)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410478 () Bool)

(declare-fun e!798223 () Bool)

(assert (=> b!1410478 (= e!798226 e!798223)))

(declare-fun res!947872 () Bool)

(assert (=> b!1410478 (= res!947872 (and (is-Intermediate!10852 lt!621163) (not (undefined!11664 lt!621163)) (bvslt (x!127388 lt!621163) #b01111111111111111111111111111110) (bvsge (x!127388 lt!621163) #b00000000000000000000000000000000) (bvsge (x!127388 lt!621163) #b00000000000000000000000000000000)))))

(assert (=> b!1410478 (=> (not res!947872) (not e!798223))))

(declare-fun b!1410479 () Bool)

(assert (=> b!1410479 (and (bvsge (index!45786 lt!621163) #b00000000000000000000000000000000) (bvslt (index!45786 lt!621163) (size!47070 a!2901)))))

(declare-fun res!947870 () Bool)

(assert (=> b!1410479 (= res!947870 (= (select (arr!46519 a!2901) (index!45786 lt!621163)) (select (arr!46519 a!2901) j!112)))))

(assert (=> b!1410479 (=> res!947870 e!798225)))

(assert (=> b!1410479 (= e!798223 e!798225)))

(assert (= (and d!151849 c!130776) b!1410474))

(assert (= (and d!151849 (not c!130776)) b!1410471))

(assert (= (and b!1410471 c!130775) b!1410475))

(assert (= (and b!1410471 (not c!130775)) b!1410472))

(assert (= (and d!151849 c!130774) b!1410473))

(assert (= (and d!151849 (not c!130774)) b!1410478))

(assert (= (and b!1410478 res!947872) b!1410479))

(assert (= (and b!1410479 (not res!947870)) b!1410476))

(assert (= (and b!1410476 (not res!947871)) b!1410477))

(declare-fun m!1300167 () Bool)

(assert (=> b!1410476 m!1300167))

(declare-fun m!1300169 () Bool)

(assert (=> d!151849 m!1300169))

(assert (=> d!151849 m!1300003))

(assert (=> b!1410477 m!1300167))

(declare-fun m!1300171 () Bool)

(assert (=> b!1410472 m!1300171))

(assert (=> b!1410472 m!1300171))

(assert (=> b!1410472 m!1299987))

(declare-fun m!1300173 () Bool)

(assert (=> b!1410472 m!1300173))

(assert (=> b!1410479 m!1300167))

(assert (=> b!1410248 d!151849))

(declare-fun d!151865 () Bool)

(declare-fun lt!621176 () (_ BitVec 32))

(declare-fun lt!621175 () (_ BitVec 32))

(assert (=> d!151865 (= lt!621176 (bvmul (bvxor lt!621175 (bvlshr lt!621175 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151865 (= lt!621175 ((_ extract 31 0) (bvand (bvxor (select (arr!46519 a!2901) j!112) (bvlshr (select (arr!46519 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151865 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947873 (let ((h!34488 ((_ extract 31 0) (bvand (bvxor (select (arr!46519 a!2901) j!112) (bvlshr (select (arr!46519 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127396 (bvmul (bvxor h!34488 (bvlshr h!34488 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127396 (bvlshr x!127396 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947873 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947873 #b00000000000000000000000000000000))))))

(assert (=> d!151865 (= (toIndex!0 (select (arr!46519 a!2901) j!112) mask!2840) (bvand (bvxor lt!621176 (bvlshr lt!621176 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1410248 d!151865))

(declare-fun b!1410492 () Bool)

(declare-fun e!798235 () SeekEntryResult!10852)

(declare-fun e!798233 () SeekEntryResult!10852)

(assert (=> b!1410492 (= e!798235 e!798233)))

(declare-fun lt!621178 () (_ BitVec 64))

(declare-fun c!130784 () Bool)

(assert (=> b!1410492 (= c!130784 (or (= lt!621178 (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!621178 lt!621178) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1410493 () Bool)

(assert (=> b!1410493 (= e!798233 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901)) mask!2840))))

(declare-fun b!1410494 () Bool)

(declare-fun e!798237 () Bool)

(declare-fun lt!621177 () SeekEntryResult!10852)

(assert (=> b!1410494 (= e!798237 (bvsge (x!127388 lt!621177) #b01111111111111111111111111111110))))

(declare-fun b!1410495 () Bool)

(assert (=> b!1410495 (= e!798235 (Intermediate!10852 true (toIndex!0 (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!151867 () Bool)

(assert (=> d!151867 e!798237))

(declare-fun c!130783 () Bool)

(assert (=> d!151867 (= c!130783 (and (is-Intermediate!10852 lt!621177) (undefined!11664 lt!621177)))))

(assert (=> d!151867 (= lt!621177 e!798235)))

(declare-fun c!130785 () Bool)

(assert (=> d!151867 (= c!130785 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151867 (= lt!621178 (select (arr!46519 (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901))) (toIndex!0 (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151867 (validMask!0 mask!2840)))

(assert (=> d!151867 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901)) mask!2840) lt!621177)))

(declare-fun b!1410496 () Bool)

(assert (=> b!1410496 (= e!798233 (Intermediate!10852 false (toIndex!0 (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410497 () Bool)

(assert (=> b!1410497 (and (bvsge (index!45786 lt!621177) #b00000000000000000000000000000000) (bvslt (index!45786 lt!621177) (size!47070 (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901)))))))

(declare-fun res!947875 () Bool)

(assert (=> b!1410497 (= res!947875 (= (select (arr!46519 (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901))) (index!45786 lt!621177)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!798236 () Bool)

(assert (=> b!1410497 (=> res!947875 e!798236)))

(declare-fun b!1410498 () Bool)

(assert (=> b!1410498 (and (bvsge (index!45786 lt!621177) #b00000000000000000000000000000000) (bvslt (index!45786 lt!621177) (size!47070 (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901)))))))

(assert (=> b!1410498 (= e!798236 (= (select (arr!46519 (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901))) (index!45786 lt!621177)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410499 () Bool)

(declare-fun e!798234 () Bool)

(assert (=> b!1410499 (= e!798237 e!798234)))

(declare-fun res!947876 () Bool)

(assert (=> b!1410499 (= res!947876 (and (is-Intermediate!10852 lt!621177) (not (undefined!11664 lt!621177)) (bvslt (x!127388 lt!621177) #b01111111111111111111111111111110) (bvsge (x!127388 lt!621177) #b00000000000000000000000000000000) (bvsge (x!127388 lt!621177) #b00000000000000000000000000000000)))))

(assert (=> b!1410499 (=> (not res!947876) (not e!798234))))

(declare-fun b!1410500 () Bool)

(assert (=> b!1410500 (and (bvsge (index!45786 lt!621177) #b00000000000000000000000000000000) (bvslt (index!45786 lt!621177) (size!47070 (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901)))))))

(declare-fun res!947874 () Bool)

(assert (=> b!1410500 (= res!947874 (= (select (arr!46519 (array!96367 (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47070 a!2901))) (index!45786 lt!621177)) (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1410500 (=> res!947874 e!798236)))

(assert (=> b!1410500 (= e!798234 e!798236)))

(assert (= (and d!151867 c!130785) b!1410495))

(assert (= (and d!151867 (not c!130785)) b!1410492))

(assert (= (and b!1410492 c!130784) b!1410496))

(assert (= (and b!1410492 (not c!130784)) b!1410493))

(assert (= (and d!151867 c!130783) b!1410494))

(assert (= (and d!151867 (not c!130783)) b!1410499))

(assert (= (and b!1410499 res!947876) b!1410500))

(assert (= (and b!1410500 (not res!947874)) b!1410497))

(assert (= (and b!1410497 (not res!947875)) b!1410498))

(declare-fun m!1300175 () Bool)

(assert (=> b!1410497 m!1300175))

(assert (=> d!151867 m!1299983))

(declare-fun m!1300177 () Bool)

(assert (=> d!151867 m!1300177))

(assert (=> d!151867 m!1300003))

(assert (=> b!1410498 m!1300175))

(assert (=> b!1410493 m!1299983))

(declare-fun m!1300179 () Bool)

(assert (=> b!1410493 m!1300179))

(assert (=> b!1410493 m!1300179))

(assert (=> b!1410493 m!1299981))

(declare-fun m!1300181 () Bool)

(assert (=> b!1410493 m!1300181))

(assert (=> b!1410500 m!1300175))

(assert (=> b!1410253 d!151867))

(declare-fun d!151869 () Bool)

(declare-fun lt!621180 () (_ BitVec 32))

(declare-fun lt!621179 () (_ BitVec 32))

(assert (=> d!151869 (= lt!621180 (bvmul (bvxor lt!621179 (bvlshr lt!621179 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151869 (= lt!621179 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151869 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947873 (let ((h!34488 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127396 (bvmul (bvxor h!34488 (bvlshr h!34488 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127396 (bvlshr x!127396 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947873 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947873 #b00000000000000000000000000000000))))))

(assert (=> d!151869 (= (toIndex!0 (select (store (arr!46519 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!621180 (bvlshr lt!621180 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1410253 d!151869))

(declare-fun d!151871 () Bool)

(assert (=> d!151871 (= (validKeyInArray!0 (select (arr!46519 a!2901) i!1037)) (and (not (= (select (arr!46519 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46519 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1410249 d!151871))

(declare-fun d!151877 () Bool)

(assert (=> d!151877 (= (validKeyInArray!0 (select (arr!46519 a!2901) j!112)) (and (not (= (select (arr!46519 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46519 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1410250 d!151877))

(declare-fun d!151879 () Bool)

(assert (=> d!151879 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121396 d!151879))

(declare-fun d!151889 () Bool)

(assert (=> d!151889 (= (array_inv!35464 a!2901) (bvsge (size!47070 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121396 d!151889))

(declare-fun b!1410520 () Bool)

(declare-fun e!798249 () Bool)

(declare-fun e!798251 () Bool)

(assert (=> b!1410520 (= e!798249 e!798251)))

(declare-fun c!130793 () Bool)

(assert (=> b!1410520 (= c!130793 (validKeyInArray!0 (select (arr!46519 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410521 () Bool)

(declare-fun e!798250 () Bool)

(assert (=> b!1410521 (= e!798251 e!798250)))

(declare-fun lt!621191 () (_ BitVec 64))

(assert (=> b!1410521 (= lt!621191 (select (arr!46519 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!621192 () Unit!47628)

(assert (=> b!1410521 (= lt!621192 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621191 #b00000000000000000000000000000000))))

(assert (=> b!1410521 (arrayContainsKey!0 a!2901 lt!621191 #b00000000000000000000000000000000)))

(declare-fun lt!621193 () Unit!47628)

(assert (=> b!1410521 (= lt!621193 lt!621192)))

(declare-fun res!947883 () Bool)

(assert (=> b!1410521 (= res!947883 (= (seekEntryOrOpen!0 (select (arr!46519 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10852 #b00000000000000000000000000000000)))))

(assert (=> b!1410521 (=> (not res!947883) (not e!798250))))

(declare-fun d!151891 () Bool)

(declare-fun res!947882 () Bool)

(assert (=> d!151891 (=> res!947882 e!798249)))

(assert (=> d!151891 (= res!947882 (bvsge #b00000000000000000000000000000000 (size!47070 a!2901)))))

(assert (=> d!151891 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!798249)))

(declare-fun bm!67068 () Bool)

(declare-fun call!67071 () Bool)

(assert (=> bm!67068 (= call!67071 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1410522 () Bool)

(assert (=> b!1410522 (= e!798250 call!67071)))

(declare-fun b!1410523 () Bool)

(assert (=> b!1410523 (= e!798251 call!67071)))

(assert (= (and d!151891 (not res!947882)) b!1410520))

(assert (= (and b!1410520 c!130793) b!1410521))

(assert (= (and b!1410520 (not c!130793)) b!1410523))

(assert (= (and b!1410521 res!947883) b!1410522))

(assert (= (or b!1410522 b!1410523) bm!67068))

(assert (=> b!1410520 m!1300087))

(assert (=> b!1410520 m!1300087))

(assert (=> b!1410520 m!1300091))

(assert (=> b!1410521 m!1300087))

(declare-fun m!1300211 () Bool)

(assert (=> b!1410521 m!1300211))

(declare-fun m!1300213 () Bool)

(assert (=> b!1410521 m!1300213))

(assert (=> b!1410521 m!1300087))

(declare-fun m!1300215 () Bool)

(assert (=> b!1410521 m!1300215))

(declare-fun m!1300217 () Bool)

(assert (=> bm!67068 m!1300217))

(assert (=> b!1410251 d!151891))

(push 1)

(assert (not bm!67065))

(assert (not b!1410338))

(assert (not b!1410410))

(assert (not bm!67058))

(assert (not d!151825))

(assert (not b!1410520))

(assert (not d!151849))

(assert (not b!1410493))

(assert (not b!1410409))

(assert (not d!151867))

(assert (not bm!67068))

(assert (not b!1410336))

(assert (not b!1410521))

(assert (not b!1410472))

(assert (not b!1410335))

(assert (not b!1410370))

(assert (not d!151845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

