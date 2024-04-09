; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121696 () Bool)

(assert start!121696)

(declare-fun b!1413370 () Bool)

(declare-fun e!799893 () Bool)

(declare-fun e!799896 () Bool)

(assert (=> b!1413370 (= e!799893 (not e!799896))))

(declare-fun res!950478 () Bool)

(assert (=> b!1413370 (=> res!950478 e!799896)))

(declare-datatypes ((SeekEntryResult!10942 0))(
  ( (MissingZero!10942 (index!46147 (_ BitVec 32))) (Found!10942 (index!46148 (_ BitVec 32))) (Intermediate!10942 (undefined!11754 Bool) (index!46149 (_ BitVec 32)) (x!127736 (_ BitVec 32))) (Undefined!10942) (MissingVacant!10942 (index!46150 (_ BitVec 32))) )
))
(declare-fun lt!622986 () SeekEntryResult!10942)

(assert (=> b!1413370 (= res!950478 (or (not (is-Intermediate!10942 lt!622986)) (undefined!11754 lt!622986)))))

(declare-fun e!799898 () Bool)

(assert (=> b!1413370 e!799898))

(declare-fun res!950477 () Bool)

(assert (=> b!1413370 (=> (not res!950477) (not e!799898))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96552 0))(
  ( (array!96553 (arr!46609 (Array (_ BitVec 32) (_ BitVec 64))) (size!47160 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96552)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96552 (_ BitVec 32)) Bool)

(assert (=> b!1413370 (= res!950477 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47808 0))(
  ( (Unit!47809) )
))
(declare-fun lt!622987 () Unit!47808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47808)

(assert (=> b!1413370 (= lt!622987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622988 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96552 (_ BitVec 32)) SeekEntryResult!10942)

(assert (=> b!1413370 (= lt!622986 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622988 (select (arr!46609 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413370 (= lt!622988 (toIndex!0 (select (arr!46609 a!2901) j!112) mask!2840))))

(declare-fun b!1413371 () Bool)

(declare-fun res!950470 () Bool)

(assert (=> b!1413371 (=> (not res!950470) (not e!799893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413371 (= res!950470 (validKeyInArray!0 (select (arr!46609 a!2901) j!112)))))

(declare-fun b!1413372 () Bool)

(declare-fun e!799895 () Bool)

(assert (=> b!1413372 (= e!799896 e!799895)))

(declare-fun res!950474 () Bool)

(assert (=> b!1413372 (=> res!950474 e!799895)))

(declare-fun lt!622989 () SeekEntryResult!10942)

(assert (=> b!1413372 (= res!950474 (or (= lt!622986 lt!622989) (not (is-Intermediate!10942 lt!622989))))))

(declare-fun lt!622990 () array!96552)

(declare-fun lt!622985 () (_ BitVec 64))

(assert (=> b!1413372 (= lt!622989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622985 mask!2840) lt!622985 lt!622990 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1413372 (= lt!622985 (select (store (arr!46609 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413372 (= lt!622990 (array!96553 (store (arr!46609 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47160 a!2901)))))

(declare-fun b!1413373 () Bool)

(declare-fun res!950476 () Bool)

(assert (=> b!1413373 (=> (not res!950476) (not e!799893))))

(assert (=> b!1413373 (= res!950476 (and (= (size!47160 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47160 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47160 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413374 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96552 (_ BitVec 32)) SeekEntryResult!10942)

(assert (=> b!1413374 (= e!799898 (= (seekEntryOrOpen!0 (select (arr!46609 a!2901) j!112) a!2901 mask!2840) (Found!10942 j!112)))))

(declare-fun b!1413375 () Bool)

(assert (=> b!1413375 (= e!799895 (and (bvsge (x!127736 lt!622986) #b00000000000000000000000000000000) (bvsle (x!127736 lt!622986) #b01111111111111111111111111111110)))))

(declare-fun e!799894 () Bool)

(assert (=> b!1413375 e!799894))

(declare-fun res!950471 () Bool)

(assert (=> b!1413375 (=> (not res!950471) (not e!799894))))

(assert (=> b!1413375 (= res!950471 (and (not (undefined!11754 lt!622989)) (= (index!46149 lt!622989) i!1037) (bvslt (x!127736 lt!622989) (x!127736 lt!622986)) (= (select (store (arr!46609 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46149 lt!622989)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622984 () Unit!47808)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47808)

(assert (=> b!1413375 (= lt!622984 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622988 (x!127736 lt!622986) (index!46149 lt!622986) (x!127736 lt!622989) (index!46149 lt!622989) (undefined!11754 lt!622989) mask!2840))))

(declare-fun b!1413377 () Bool)

(declare-fun res!950469 () Bool)

(assert (=> b!1413377 (=> (not res!950469) (not e!799893))))

(assert (=> b!1413377 (= res!950469 (validKeyInArray!0 (select (arr!46609 a!2901) i!1037)))))

(declare-fun b!1413378 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96552 (_ BitVec 32)) SeekEntryResult!10942)

(assert (=> b!1413378 (= e!799894 (= (seekEntryOrOpen!0 lt!622985 lt!622990 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127736 lt!622989) (index!46149 lt!622989) (index!46149 lt!622989) (select (arr!46609 a!2901) j!112) lt!622990 mask!2840)))))

(declare-fun b!1413379 () Bool)

(declare-fun res!950472 () Bool)

(assert (=> b!1413379 (=> (not res!950472) (not e!799893))))

(declare-datatypes ((List!33308 0))(
  ( (Nil!33305) (Cons!33304 (h!34579 (_ BitVec 64)) (t!48009 List!33308)) )
))
(declare-fun arrayNoDuplicates!0 (array!96552 (_ BitVec 32) List!33308) Bool)

(assert (=> b!1413379 (= res!950472 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33305))))

(declare-fun res!950473 () Bool)

(assert (=> start!121696 (=> (not res!950473) (not e!799893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121696 (= res!950473 (validMask!0 mask!2840))))

(assert (=> start!121696 e!799893))

(assert (=> start!121696 true))

(declare-fun array_inv!35554 (array!96552) Bool)

(assert (=> start!121696 (array_inv!35554 a!2901)))

(declare-fun b!1413376 () Bool)

(declare-fun res!950475 () Bool)

(assert (=> b!1413376 (=> (not res!950475) (not e!799893))))

(assert (=> b!1413376 (= res!950475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121696 res!950473) b!1413373))

(assert (= (and b!1413373 res!950476) b!1413377))

(assert (= (and b!1413377 res!950469) b!1413371))

(assert (= (and b!1413371 res!950470) b!1413376))

(assert (= (and b!1413376 res!950475) b!1413379))

(assert (= (and b!1413379 res!950472) b!1413370))

(assert (= (and b!1413370 res!950477) b!1413374))

(assert (= (and b!1413370 (not res!950478)) b!1413372))

(assert (= (and b!1413372 (not res!950474)) b!1413375))

(assert (= (and b!1413375 res!950471) b!1413378))

(declare-fun m!1303859 () Bool)

(assert (=> b!1413370 m!1303859))

(declare-fun m!1303861 () Bool)

(assert (=> b!1413370 m!1303861))

(assert (=> b!1413370 m!1303859))

(declare-fun m!1303863 () Bool)

(assert (=> b!1413370 m!1303863))

(declare-fun m!1303865 () Bool)

(assert (=> b!1413370 m!1303865))

(assert (=> b!1413370 m!1303859))

(declare-fun m!1303867 () Bool)

(assert (=> b!1413370 m!1303867))

(declare-fun m!1303869 () Bool)

(assert (=> b!1413377 m!1303869))

(assert (=> b!1413377 m!1303869))

(declare-fun m!1303871 () Bool)

(assert (=> b!1413377 m!1303871))

(declare-fun m!1303873 () Bool)

(assert (=> b!1413376 m!1303873))

(declare-fun m!1303875 () Bool)

(assert (=> b!1413375 m!1303875))

(declare-fun m!1303877 () Bool)

(assert (=> b!1413375 m!1303877))

(declare-fun m!1303879 () Bool)

(assert (=> b!1413375 m!1303879))

(declare-fun m!1303881 () Bool)

(assert (=> start!121696 m!1303881))

(declare-fun m!1303883 () Bool)

(assert (=> start!121696 m!1303883))

(declare-fun m!1303885 () Bool)

(assert (=> b!1413372 m!1303885))

(assert (=> b!1413372 m!1303885))

(declare-fun m!1303887 () Bool)

(assert (=> b!1413372 m!1303887))

(assert (=> b!1413372 m!1303875))

(declare-fun m!1303889 () Bool)

(assert (=> b!1413372 m!1303889))

(assert (=> b!1413371 m!1303859))

(assert (=> b!1413371 m!1303859))

(declare-fun m!1303891 () Bool)

(assert (=> b!1413371 m!1303891))

(assert (=> b!1413374 m!1303859))

(assert (=> b!1413374 m!1303859))

(declare-fun m!1303893 () Bool)

(assert (=> b!1413374 m!1303893))

(declare-fun m!1303895 () Bool)

(assert (=> b!1413379 m!1303895))

(declare-fun m!1303897 () Bool)

(assert (=> b!1413378 m!1303897))

(assert (=> b!1413378 m!1303859))

(assert (=> b!1413378 m!1303859))

(declare-fun m!1303899 () Bool)

(assert (=> b!1413378 m!1303899))

(push 1)

(assert (not b!1413375))

(assert (not b!1413374))

(assert (not b!1413378))

(assert (not start!121696))

(assert (not b!1413371))

(assert (not b!1413376))

(assert (not b!1413377))

(assert (not b!1413379))

(assert (not b!1413370))

(assert (not b!1413372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152063 () Bool)

(assert (=> d!152063 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121696 d!152063))

(declare-fun d!152071 () Bool)

(assert (=> d!152071 (= (array_inv!35554 a!2901) (bvsge (size!47160 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121696 d!152071))

(declare-fun b!1413545 () Bool)

(declare-fun e!800004 () Bool)

(declare-fun e!800005 () Bool)

(assert (=> b!1413545 (= e!800004 e!800005)))

(declare-fun c!130959 () Bool)

(assert (=> b!1413545 (= c!130959 (validKeyInArray!0 (select (arr!46609 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1413546 () Bool)

(declare-fun e!800003 () Bool)

(assert (=> b!1413546 (= e!800005 e!800003)))

(declare-fun lt!623091 () (_ BitVec 64))

(assert (=> b!1413546 (= lt!623091 (select (arr!46609 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623090 () Unit!47808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96552 (_ BitVec 64) (_ BitVec 32)) Unit!47808)

(assert (=> b!1413546 (= lt!623090 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623091 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1413546 (arrayContainsKey!0 a!2901 lt!623091 #b00000000000000000000000000000000)))

(declare-fun lt!623092 () Unit!47808)

(assert (=> b!1413546 (= lt!623092 lt!623090)))

(declare-fun res!950579 () Bool)

(assert (=> b!1413546 (= res!950579 (= (seekEntryOrOpen!0 (select (arr!46609 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10942 #b00000000000000000000000000000000)))))

(assert (=> b!1413546 (=> (not res!950579) (not e!800003))))

(declare-fun b!1413547 () Bool)

(declare-fun call!67108 () Bool)

(assert (=> b!1413547 (= e!800005 call!67108)))

(declare-fun bm!67105 () Bool)

(assert (=> bm!67105 (= call!67108 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1413548 () Bool)

(assert (=> b!1413548 (= e!800003 call!67108)))

(declare-fun d!152073 () Bool)

(declare-fun res!950580 () Bool)

(assert (=> d!152073 (=> res!950580 e!800004)))

(assert (=> d!152073 (= res!950580 (bvsge #b00000000000000000000000000000000 (size!47160 a!2901)))))

(assert (=> d!152073 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800004)))

(assert (= (and d!152073 (not res!950580)) b!1413545))

(assert (= (and b!1413545 c!130959) b!1413546))

(assert (= (and b!1413545 (not c!130959)) b!1413547))

(assert (= (and b!1413546 res!950579) b!1413548))

(assert (= (or b!1413548 b!1413547) bm!67105))

(declare-fun m!1304043 () Bool)

(assert (=> b!1413545 m!1304043))

(assert (=> b!1413545 m!1304043))

(declare-fun m!1304045 () Bool)

(assert (=> b!1413545 m!1304045))

(assert (=> b!1413546 m!1304043))

(declare-fun m!1304047 () Bool)

(assert (=> b!1413546 m!1304047))

(declare-fun m!1304051 () Bool)

(assert (=> b!1413546 m!1304051))

(assert (=> b!1413546 m!1304043))

(declare-fun m!1304053 () Bool)

(assert (=> b!1413546 m!1304053))

(declare-fun m!1304055 () Bool)

(assert (=> bm!67105 m!1304055))

(assert (=> b!1413376 d!152073))

(declare-fun d!152087 () Bool)

(assert (=> d!152087 (= (validKeyInArray!0 (select (arr!46609 a!2901) j!112)) (and (not (= (select (arr!46609 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46609 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413371 d!152087))

(declare-fun d!152091 () Bool)

(assert (=> d!152091 (= (validKeyInArray!0 (select (arr!46609 a!2901) i!1037)) (and (not (= (select (arr!46609 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46609 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413377 d!152091))

(declare-fun d!152093 () Bool)

(assert (=> d!152093 (and (not (undefined!11754 lt!622989)) (= (index!46149 lt!622989) i!1037) (bvslt (x!127736 lt!622989) (x!127736 lt!622986)))))

(declare-fun lt!623099 () Unit!47808)

(declare-fun choose!62 (array!96552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47808)

(assert (=> d!152093 (= lt!623099 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622988 (x!127736 lt!622986) (index!46149 lt!622986) (x!127736 lt!622989) (index!46149 lt!622989) (undefined!11754 lt!622989) mask!2840))))

(assert (=> d!152093 (validMask!0 mask!2840)))

(assert (=> d!152093 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622988 (x!127736 lt!622986) (index!46149 lt!622986) (x!127736 lt!622989) (index!46149 lt!622989) (undefined!11754 lt!622989) mask!2840) lt!623099)))

(declare-fun bs!41213 () Bool)

(assert (= bs!41213 d!152093))

(declare-fun m!1304059 () Bool)

(assert (=> bs!41213 m!1304059))

(assert (=> bs!41213 m!1303881))

(assert (=> b!1413375 d!152093))

(declare-fun b!1413549 () Bool)

(declare-fun e!800007 () Bool)

(declare-fun e!800008 () Bool)

(assert (=> b!1413549 (= e!800007 e!800008)))

(declare-fun c!130960 () Bool)

(assert (=> b!1413549 (= c!130960 (validKeyInArray!0 (select (arr!46609 a!2901) j!112)))))

(declare-fun b!1413550 () Bool)

(declare-fun e!800006 () Bool)

(assert (=> b!1413550 (= e!800008 e!800006)))

(declare-fun lt!623101 () (_ BitVec 64))

(assert (=> b!1413550 (= lt!623101 (select (arr!46609 a!2901) j!112))))

(declare-fun lt!623100 () Unit!47808)

(assert (=> b!1413550 (= lt!623100 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623101 j!112))))

(assert (=> b!1413550 (arrayContainsKey!0 a!2901 lt!623101 #b00000000000000000000000000000000)))

(declare-fun lt!623102 () Unit!47808)

(assert (=> b!1413550 (= lt!623102 lt!623100)))

(declare-fun res!950581 () Bool)

(assert (=> b!1413550 (= res!950581 (= (seekEntryOrOpen!0 (select (arr!46609 a!2901) j!112) a!2901 mask!2840) (Found!10942 j!112)))))

(assert (=> b!1413550 (=> (not res!950581) (not e!800006))))

(declare-fun b!1413551 () Bool)

(declare-fun call!67109 () Bool)

(assert (=> b!1413551 (= e!800008 call!67109)))

(declare-fun bm!67106 () Bool)

(assert (=> bm!67106 (= call!67109 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1413552 () Bool)

(assert (=> b!1413552 (= e!800006 call!67109)))

(declare-fun d!152095 () Bool)

(declare-fun res!950582 () Bool)

(assert (=> d!152095 (=> res!950582 e!800007)))

(assert (=> d!152095 (= res!950582 (bvsge j!112 (size!47160 a!2901)))))

(assert (=> d!152095 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800007)))

(assert (= (and d!152095 (not res!950582)) b!1413549))

(assert (= (and b!1413549 c!130960) b!1413550))

(assert (= (and b!1413549 (not c!130960)) b!1413551))

(assert (= (and b!1413550 res!950581) b!1413552))

(assert (= (or b!1413552 b!1413551) bm!67106))

(assert (=> b!1413549 m!1303859))

(assert (=> b!1413549 m!1303859))

(assert (=> b!1413549 m!1303891))

(assert (=> b!1413550 m!1303859))

(declare-fun m!1304061 () Bool)

(assert (=> b!1413550 m!1304061))

(declare-fun m!1304063 () Bool)

(assert (=> b!1413550 m!1304063))

(assert (=> b!1413550 m!1303859))

(assert (=> b!1413550 m!1303893))

(declare-fun m!1304065 () Bool)

(assert (=> bm!67106 m!1304065))

(assert (=> b!1413370 d!152095))

(declare-fun d!152097 () Bool)

(assert (=> d!152097 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623105 () Unit!47808)

(declare-fun choose!38 (array!96552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47808)

(assert (=> d!152097 (= lt!623105 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152097 (validMask!0 mask!2840)))

(assert (=> d!152097 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623105)))

(declare-fun bs!41214 () Bool)

(assert (= bs!41214 d!152097))

(assert (=> bs!41214 m!1303865))

(declare-fun m!1304067 () Bool)

(assert (=> bs!41214 m!1304067))

(assert (=> bs!41214 m!1303881))

(assert (=> b!1413370 d!152097))

(declare-fun e!800048 () SeekEntryResult!10942)

(declare-fun b!1413622 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413622 (= e!800048 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!622988 #b00000000000000000000000000000000 mask!2840) (select (arr!46609 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1413623 () Bool)

(declare-fun e!800049 () SeekEntryResult!10942)

(assert (=> b!1413623 (= e!800049 (Intermediate!10942 true lt!622988 #b00000000000000000000000000000000))))

(declare-fun b!1413624 () Bool)

(assert (=> b!1413624 (= e!800048 (Intermediate!10942 false lt!622988 #b00000000000000000000000000000000))))

(declare-fun b!1413625 () Bool)

(declare-fun lt!623131 () SeekEntryResult!10942)

(assert (=> b!1413625 (and (bvsge (index!46149 lt!623131) #b00000000000000000000000000000000) (bvslt (index!46149 lt!623131) (size!47160 a!2901)))))

(declare-fun res!950600 () Bool)

(assert (=> b!1413625 (= res!950600 (= (select (arr!46609 a!2901) (index!46149 lt!623131)) (select (arr!46609 a!2901) j!112)))))

(declare-fun e!800046 () Bool)

(assert (=> b!1413625 (=> res!950600 e!800046)))

(declare-fun e!800050 () Bool)

(assert (=> b!1413625 (= e!800050 e!800046)))

(declare-fun d!152099 () Bool)

(declare-fun e!800047 () Bool)

(assert (=> d!152099 e!800047))

(declare-fun c!130990 () Bool)

(assert (=> d!152099 (= c!130990 (and (is-Intermediate!10942 lt!623131) (undefined!11754 lt!623131)))))

(assert (=> d!152099 (= lt!623131 e!800049)))

(declare-fun c!130989 () Bool)

(assert (=> d!152099 (= c!130989 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623132 () (_ BitVec 64))

(assert (=> d!152099 (= lt!623132 (select (arr!46609 a!2901) lt!622988))))

(assert (=> d!152099 (validMask!0 mask!2840)))

(assert (=> d!152099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622988 (select (arr!46609 a!2901) j!112) a!2901 mask!2840) lt!623131)))

(declare-fun b!1413626 () Bool)

(assert (=> b!1413626 (= e!800049 e!800048)))

(declare-fun c!130988 () Bool)

(assert (=> b!1413626 (= c!130988 (or (= lt!623132 (select (arr!46609 a!2901) j!112)) (= (bvadd lt!623132 lt!623132) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1413627 () Bool)

(assert (=> b!1413627 (= e!800047 (bvsge (x!127736 lt!623131) #b01111111111111111111111111111110))))

(declare-fun b!1413628 () Bool)

(assert (=> b!1413628 (and (bvsge (index!46149 lt!623131) #b00000000000000000000000000000000) (bvslt (index!46149 lt!623131) (size!47160 a!2901)))))

(declare-fun res!950599 () Bool)

(assert (=> b!1413628 (= res!950599 (= (select (arr!46609 a!2901) (index!46149 lt!623131)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413628 (=> res!950599 e!800046)))

(declare-fun b!1413629 () Bool)

(assert (=> b!1413629 (and (bvsge (index!46149 lt!623131) #b00000000000000000000000000000000) (bvslt (index!46149 lt!623131) (size!47160 a!2901)))))

(assert (=> b!1413629 (= e!800046 (= (select (arr!46609 a!2901) (index!46149 lt!623131)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1413630 () Bool)

(assert (=> b!1413630 (= e!800047 e!800050)))

(declare-fun res!950601 () Bool)

(assert (=> b!1413630 (= res!950601 (and (is-Intermediate!10942 lt!623131) (not (undefined!11754 lt!623131)) (bvslt (x!127736 lt!623131) #b01111111111111111111111111111110) (bvsge (x!127736 lt!623131) #b00000000000000000000000000000000) (bvsge (x!127736 lt!623131) #b00000000000000000000000000000000)))))

(assert (=> b!1413630 (=> (not res!950601) (not e!800050))))

(assert (= (and d!152099 c!130989) b!1413623))

(assert (= (and d!152099 (not c!130989)) b!1413626))

(assert (= (and b!1413626 c!130988) b!1413624))

(assert (= (and b!1413626 (not c!130988)) b!1413622))

(assert (= (and d!152099 c!130990) b!1413627))

(assert (= (and d!152099 (not c!130990)) b!1413630))

(assert (= (and b!1413630 res!950601) b!1413625))

(assert (= (and b!1413625 (not res!950600)) b!1413628))

(assert (= (and b!1413628 (not res!950599)) b!1413629))

(declare-fun m!1304097 () Bool)

(assert (=> b!1413628 m!1304097))

(declare-fun m!1304099 () Bool)

(assert (=> b!1413622 m!1304099))

(assert (=> b!1413622 m!1304099))

(assert (=> b!1413622 m!1303859))

(declare-fun m!1304101 () Bool)

(assert (=> b!1413622 m!1304101))

(assert (=> b!1413629 m!1304097))

(declare-fun m!1304103 () Bool)

(assert (=> d!152099 m!1304103))

(assert (=> d!152099 m!1303881))

(assert (=> b!1413625 m!1304097))

(assert (=> b!1413370 d!152099))

(declare-fun d!152113 () Bool)

(declare-fun lt!623138 () (_ BitVec 32))

(declare-fun lt!623137 () (_ BitVec 32))

(assert (=> d!152113 (= lt!623138 (bvmul (bvxor lt!623137 (bvlshr lt!623137 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152113 (= lt!623137 ((_ extract 31 0) (bvand (bvxor (select (arr!46609 a!2901) j!112) (bvlshr (select (arr!46609 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152113 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950602 (let ((h!34584 ((_ extract 31 0) (bvand (bvxor (select (arr!46609 a!2901) j!112) (bvlshr (select (arr!46609 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127747 (bvmul (bvxor h!34584 (bvlshr h!34584 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127747 (bvlshr x!127747 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950602 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950602 #b00000000000000000000000000000000))))))

(assert (=> d!152113 (= (toIndex!0 (select (arr!46609 a!2901) j!112) mask!2840) (bvand (bvxor lt!623138 (bvlshr lt!623138 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413370 d!152113))

(declare-fun b!1413641 () Bool)

(declare-fun e!800061 () Bool)

(declare-fun e!800059 () Bool)

(assert (=> b!1413641 (= e!800061 e!800059)))

(declare-fun c!130993 () Bool)

(assert (=> b!1413641 (= c!130993 (validKeyInArray!0 (select (arr!46609 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1413642 () Bool)

(declare-fun e!800060 () Bool)

(assert (=> b!1413642 (= e!800060 e!800061)))

(declare-fun res!950609 () Bool)

(assert (=> b!1413642 (=> (not res!950609) (not e!800061))))

(declare-fun e!800062 () Bool)

(assert (=> b!1413642 (= res!950609 (not e!800062))))

(declare-fun res!950610 () Bool)

(assert (=> b!1413642 (=> (not res!950610) (not e!800062))))

(assert (=> b!1413642 (= res!950610 (validKeyInArray!0 (select (arr!46609 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152115 () Bool)

(declare-fun res!950611 () Bool)

(assert (=> d!152115 (=> res!950611 e!800060)))

(assert (=> d!152115 (= res!950611 (bvsge #b00000000000000000000000000000000 (size!47160 a!2901)))))

(assert (=> d!152115 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33305) e!800060)))

(declare-fun b!1413643 () Bool)

(declare-fun call!67112 () Bool)

(assert (=> b!1413643 (= e!800059 call!67112)))

(declare-fun bm!67109 () Bool)

(assert (=> bm!67109 (= call!67112 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130993 (Cons!33304 (select (arr!46609 a!2901) #b00000000000000000000000000000000) Nil!33305) Nil!33305)))))

(declare-fun b!1413644 () Bool)

(assert (=> b!1413644 (= e!800059 call!67112)))

(declare-fun b!1413645 () Bool)

(declare-fun contains!9829 (List!33308 (_ BitVec 64)) Bool)

(assert (=> b!1413645 (= e!800062 (contains!9829 Nil!33305 (select (arr!46609 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!152115 (not res!950611)) b!1413642))

(assert (= (and b!1413642 res!950610) b!1413645))

(assert (= (and b!1413642 res!950609) b!1413641))

(assert (= (and b!1413641 c!130993) b!1413643))

(assert (= (and b!1413641 (not c!130993)) b!1413644))

(assert (= (or b!1413643 b!1413644) bm!67109))

(assert (=> b!1413641 m!1304043))

(assert (=> b!1413641 m!1304043))

(assert (=> b!1413641 m!1304045))

(assert (=> b!1413642 m!1304043))

(assert (=> b!1413642 m!1304043))

(assert (=> b!1413642 m!1304045))

(assert (=> bm!67109 m!1304043))

(declare-fun m!1304105 () Bool)

(assert (=> bm!67109 m!1304105))

(assert (=> b!1413645 m!1304043))

(assert (=> b!1413645 m!1304043))

(declare-fun m!1304107 () Bool)

(assert (=> b!1413645 m!1304107))

(assert (=> b!1413379 d!152115))

(declare-fun d!152117 () Bool)

(declare-fun lt!623159 () SeekEntryResult!10942)

(assert (=> d!152117 (and (or (is-Undefined!10942 lt!623159) (not (is-Found!10942 lt!623159)) (and (bvsge (index!46148 lt!623159) #b00000000000000000000000000000000) (bvslt (index!46148 lt!623159) (size!47160 a!2901)))) (or (is-Undefined!10942 lt!623159) (is-Found!10942 lt!623159) (not (is-MissingZero!10942 lt!623159)) (and (bvsge (index!46147 lt!623159) #b00000000000000000000000000000000) (bvslt (index!46147 lt!623159) (size!47160 a!2901)))) (or (is-Undefined!10942 lt!623159) (is-Found!10942 lt!623159) (is-MissingZero!10942 lt!623159) (not (is-MissingVacant!10942 lt!623159)) (and (bvsge (index!46150 lt!623159) #b00000000000000000000000000000000) (bvslt (index!46150 lt!623159) (size!47160 a!2901)))) (or (is-Undefined!10942 lt!623159) (ite (is-Found!10942 lt!623159) (= (select (arr!46609 a!2901) (index!46148 lt!623159)) (select (arr!46609 a!2901) j!112)) (ite (is-MissingZero!10942 lt!623159) (= (select (arr!46609 a!2901) (index!46147 lt!623159)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10942 lt!623159) (= (select (arr!46609 a!2901) (index!46150 lt!623159)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800084 () SeekEntryResult!10942)

(assert (=> d!152117 (= lt!623159 e!800084)))

(declare-fun c!131017 () Bool)

(declare-fun lt!623158 () SeekEntryResult!10942)

(assert (=> d!152117 (= c!131017 (and (is-Intermediate!10942 lt!623158) (undefined!11754 lt!623158)))))

(assert (=> d!152117 (= lt!623158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46609 a!2901) j!112) mask!2840) (select (arr!46609 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152117 (validMask!0 mask!2840)))

(assert (=> d!152117 (= (seekEntryOrOpen!0 (select (arr!46609 a!2901) j!112) a!2901 mask!2840) lt!623159)))

(declare-fun b!1413688 () Bool)

(declare-fun e!800085 () SeekEntryResult!10942)

(assert (=> b!1413688 (= e!800085 (seekKeyOrZeroReturnVacant!0 (x!127736 lt!623158) (index!46149 lt!623158) (index!46149 lt!623158) (select (arr!46609 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1413689 () Bool)

(declare-fun c!131016 () Bool)

(declare-fun lt!623160 () (_ BitVec 64))

(assert (=> b!1413689 (= c!131016 (= lt!623160 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800086 () SeekEntryResult!10942)

(assert (=> b!1413689 (= e!800086 e!800085)))

(declare-fun b!1413690 () Bool)

(assert (=> b!1413690 (= e!800086 (Found!10942 (index!46149 lt!623158)))))

(declare-fun b!1413691 () Bool)

(assert (=> b!1413691 (= e!800084 e!800086)))

(assert (=> b!1413691 (= lt!623160 (select (arr!46609 a!2901) (index!46149 lt!623158)))))

(declare-fun c!131015 () Bool)

(assert (=> b!1413691 (= c!131015 (= lt!623160 (select (arr!46609 a!2901) j!112)))))

(declare-fun b!1413692 () Bool)

(assert (=> b!1413692 (= e!800085 (MissingZero!10942 (index!46149 lt!623158)))))

(declare-fun b!1413693 () Bool)

(assert (=> b!1413693 (= e!800084 Undefined!10942)))

(assert (= (and d!152117 c!131017) b!1413693))

(assert (= (and d!152117 (not c!131017)) b!1413691))

(assert (= (and b!1413691 c!131015) b!1413690))

(assert (= (and b!1413691 (not c!131015)) b!1413689))

(assert (= (and b!1413689 c!131016) b!1413692))

(assert (= (and b!1413689 (not c!131016)) b!1413688))

(assert (=> d!152117 m!1303861))

(assert (=> d!152117 m!1303859))

(declare-fun m!1304119 () Bool)

(assert (=> d!152117 m!1304119))

(declare-fun m!1304121 () Bool)

(assert (=> d!152117 m!1304121))

(assert (=> d!152117 m!1303859))

(assert (=> d!152117 m!1303861))

(declare-fun m!1304123 () Bool)

(assert (=> d!152117 m!1304123))

(declare-fun m!1304125 () Bool)

(assert (=> d!152117 m!1304125))

(assert (=> d!152117 m!1303881))

(assert (=> b!1413688 m!1303859))

(declare-fun m!1304127 () Bool)

(assert (=> b!1413688 m!1304127))

(declare-fun m!1304129 () Bool)

(assert (=> b!1413691 m!1304129))

(assert (=> b!1413374 d!152117))

(declare-fun b!1413694 () Bool)

(declare-fun e!800089 () SeekEntryResult!10942)

