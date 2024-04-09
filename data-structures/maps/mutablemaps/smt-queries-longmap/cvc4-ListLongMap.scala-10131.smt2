; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119486 () Bool)

(assert start!119486)

(declare-fun b!1391991 () Bool)

(declare-fun res!931826 () Bool)

(declare-fun e!788263 () Bool)

(assert (=> b!1391991 (=> (not res!931826) (not e!788263))))

(declare-datatypes ((array!95188 0))(
  ( (array!95189 (arr!45951 (Array (_ BitVec 32) (_ BitVec 64))) (size!46502 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95188)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95188 (_ BitVec 32)) Bool)

(assert (=> b!1391991 (= res!931826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391992 () Bool)

(declare-fun res!931827 () Bool)

(assert (=> b!1391992 (=> (not res!931827) (not e!788263))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391992 (= res!931827 (validKeyInArray!0 (select (arr!45951 a!2901) i!1037)))))

(declare-fun e!788261 () Bool)

(declare-fun b!1391993 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10290 0))(
  ( (MissingZero!10290 (index!43530 (_ BitVec 32))) (Found!10290 (index!43531 (_ BitVec 32))) (Intermediate!10290 (undefined!11102 Bool) (index!43532 (_ BitVec 32)) (x!125213 (_ BitVec 32))) (Undefined!10290) (MissingVacant!10290 (index!43533 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95188 (_ BitVec 32)) SeekEntryResult!10290)

(assert (=> b!1391993 (= e!788261 (= (seekEntryOrOpen!0 (select (arr!45951 a!2901) j!112) a!2901 mask!2840) (Found!10290 j!112)))))

(declare-fun b!1391994 () Bool)

(declare-fun res!931824 () Bool)

(assert (=> b!1391994 (=> (not res!931824) (not e!788263))))

(assert (=> b!1391994 (= res!931824 (and (= (size!46502 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46502 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46502 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!931823 () Bool)

(assert (=> start!119486 (=> (not res!931823) (not e!788263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119486 (= res!931823 (validMask!0 mask!2840))))

(assert (=> start!119486 e!788263))

(assert (=> start!119486 true))

(declare-fun array_inv!34896 (array!95188) Bool)

(assert (=> start!119486 (array_inv!34896 a!2901)))

(declare-fun b!1391995 () Bool)

(declare-fun res!931822 () Bool)

(assert (=> b!1391995 (=> (not res!931822) (not e!788263))))

(assert (=> b!1391995 (= res!931822 (validKeyInArray!0 (select (arr!45951 a!2901) j!112)))))

(declare-fun b!1391996 () Bool)

(declare-fun e!788262 () Bool)

(declare-fun lt!611394 () (_ BitVec 32))

(assert (=> b!1391996 (= e!788262 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!611394 #b00000000000000000000000000000000) (bvslt lt!611394 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391996 (= lt!611394 (toIndex!0 (select (store (arr!45951 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391997 () Bool)

(declare-fun res!931821 () Bool)

(assert (=> b!1391997 (=> (not res!931821) (not e!788263))))

(declare-datatypes ((List!32650 0))(
  ( (Nil!32647) (Cons!32646 (h!33873 (_ BitVec 64)) (t!47351 List!32650)) )
))
(declare-fun arrayNoDuplicates!0 (array!95188 (_ BitVec 32) List!32650) Bool)

(assert (=> b!1391997 (= res!931821 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32647))))

(declare-fun b!1391998 () Bool)

(assert (=> b!1391998 (= e!788263 (not e!788262))))

(declare-fun res!931825 () Bool)

(assert (=> b!1391998 (=> res!931825 e!788262)))

(declare-fun lt!611393 () SeekEntryResult!10290)

(assert (=> b!1391998 (= res!931825 (or (not (is-Intermediate!10290 lt!611393)) (undefined!11102 lt!611393)))))

(assert (=> b!1391998 e!788261))

(declare-fun res!931820 () Bool)

(assert (=> b!1391998 (=> (not res!931820) (not e!788261))))

(assert (=> b!1391998 (= res!931820 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46534 0))(
  ( (Unit!46535) )
))
(declare-fun lt!611395 () Unit!46534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46534)

(assert (=> b!1391998 (= lt!611395 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95188 (_ BitVec 32)) SeekEntryResult!10290)

(assert (=> b!1391998 (= lt!611393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45951 a!2901) j!112) mask!2840) (select (arr!45951 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119486 res!931823) b!1391994))

(assert (= (and b!1391994 res!931824) b!1391992))

(assert (= (and b!1391992 res!931827) b!1391995))

(assert (= (and b!1391995 res!931822) b!1391991))

(assert (= (and b!1391991 res!931826) b!1391997))

(assert (= (and b!1391997 res!931821) b!1391998))

(assert (= (and b!1391998 res!931820) b!1391993))

(assert (= (and b!1391998 (not res!931825)) b!1391996))

(declare-fun m!1277847 () Bool)

(assert (=> b!1391993 m!1277847))

(assert (=> b!1391993 m!1277847))

(declare-fun m!1277849 () Bool)

(assert (=> b!1391993 m!1277849))

(declare-fun m!1277851 () Bool)

(assert (=> b!1391991 m!1277851))

(declare-fun m!1277853 () Bool)

(assert (=> start!119486 m!1277853))

(declare-fun m!1277855 () Bool)

(assert (=> start!119486 m!1277855))

(declare-fun m!1277857 () Bool)

(assert (=> b!1391997 m!1277857))

(declare-fun m!1277859 () Bool)

(assert (=> b!1391996 m!1277859))

(declare-fun m!1277861 () Bool)

(assert (=> b!1391996 m!1277861))

(assert (=> b!1391996 m!1277861))

(declare-fun m!1277863 () Bool)

(assert (=> b!1391996 m!1277863))

(assert (=> b!1391995 m!1277847))

(assert (=> b!1391995 m!1277847))

(declare-fun m!1277865 () Bool)

(assert (=> b!1391995 m!1277865))

(declare-fun m!1277867 () Bool)

(assert (=> b!1391992 m!1277867))

(assert (=> b!1391992 m!1277867))

(declare-fun m!1277869 () Bool)

(assert (=> b!1391992 m!1277869))

(assert (=> b!1391998 m!1277847))

(declare-fun m!1277871 () Bool)

(assert (=> b!1391998 m!1277871))

(assert (=> b!1391998 m!1277847))

(declare-fun m!1277873 () Bool)

(assert (=> b!1391998 m!1277873))

(assert (=> b!1391998 m!1277871))

(assert (=> b!1391998 m!1277847))

(declare-fun m!1277875 () Bool)

(assert (=> b!1391998 m!1277875))

(declare-fun m!1277877 () Bool)

(assert (=> b!1391998 m!1277877))

(push 1)

(assert (not b!1391992))

(assert (not b!1391996))

(assert (not start!119486))

(assert (not b!1391997))

(assert (not b!1391998))

(assert (not b!1391991))

(assert (not b!1391993))

(assert (not b!1391995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1392050 () Bool)

(declare-fun e!788301 () SeekEntryResult!10290)

(assert (=> b!1392050 (= e!788301 Undefined!10290)))

(declare-fun b!1392052 () Bool)

(declare-fun e!788302 () SeekEntryResult!10290)

(declare-fun lt!611432 () SeekEntryResult!10290)

(assert (=> b!1392052 (= e!788302 (Found!10290 (index!43532 lt!611432)))))

(declare-fun b!1392053 () Bool)

(assert (=> b!1392053 (= e!788301 e!788302)))

(declare-fun lt!611433 () (_ BitVec 64))

(assert (=> b!1392053 (= lt!611433 (select (arr!45951 a!2901) (index!43532 lt!611432)))))

(declare-fun c!129554 () Bool)

(assert (=> b!1392053 (= c!129554 (= lt!611433 (select (arr!45951 a!2901) j!112)))))

(declare-fun b!1392054 () Bool)

(declare-fun e!788303 () SeekEntryResult!10290)

(assert (=> b!1392054 (= e!788303 (MissingZero!10290 (index!43532 lt!611432)))))

(declare-fun b!1392055 () Bool)

(declare-fun c!129553 () Bool)

(assert (=> b!1392055 (= c!129553 (= lt!611433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392055 (= e!788302 e!788303)))

(declare-fun b!1392051 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95188 (_ BitVec 32)) SeekEntryResult!10290)

(assert (=> b!1392051 (= e!788303 (seekKeyOrZeroReturnVacant!0 (x!125213 lt!611432) (index!43532 lt!611432) (index!43532 lt!611432) (select (arr!45951 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!150361 () Bool)

(declare-fun lt!611434 () SeekEntryResult!10290)

(assert (=> d!150361 (and (or (is-Undefined!10290 lt!611434) (not (is-Found!10290 lt!611434)) (and (bvsge (index!43531 lt!611434) #b00000000000000000000000000000000) (bvslt (index!43531 lt!611434) (size!46502 a!2901)))) (or (is-Undefined!10290 lt!611434) (is-Found!10290 lt!611434) (not (is-MissingZero!10290 lt!611434)) (and (bvsge (index!43530 lt!611434) #b00000000000000000000000000000000) (bvslt (index!43530 lt!611434) (size!46502 a!2901)))) (or (is-Undefined!10290 lt!611434) (is-Found!10290 lt!611434) (is-MissingZero!10290 lt!611434) (not (is-MissingVacant!10290 lt!611434)) (and (bvsge (index!43533 lt!611434) #b00000000000000000000000000000000) (bvslt (index!43533 lt!611434) (size!46502 a!2901)))) (or (is-Undefined!10290 lt!611434) (ite (is-Found!10290 lt!611434) (= (select (arr!45951 a!2901) (index!43531 lt!611434)) (select (arr!45951 a!2901) j!112)) (ite (is-MissingZero!10290 lt!611434) (= (select (arr!45951 a!2901) (index!43530 lt!611434)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10290 lt!611434) (= (select (arr!45951 a!2901) (index!43533 lt!611434)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150361 (= lt!611434 e!788301)))

(declare-fun c!129552 () Bool)

(assert (=> d!150361 (= c!129552 (and (is-Intermediate!10290 lt!611432) (undefined!11102 lt!611432)))))

(assert (=> d!150361 (= lt!611432 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45951 a!2901) j!112) mask!2840) (select (arr!45951 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150361 (validMask!0 mask!2840)))

(assert (=> d!150361 (= (seekEntryOrOpen!0 (select (arr!45951 a!2901) j!112) a!2901 mask!2840) lt!611434)))

(assert (= (and d!150361 c!129552) b!1392050))

(assert (= (and d!150361 (not c!129552)) b!1392053))

(assert (= (and b!1392053 c!129554) b!1392052))

(assert (= (and b!1392053 (not c!129554)) b!1392055))

(assert (= (and b!1392055 c!129553) b!1392054))

(assert (= (and b!1392055 (not c!129553)) b!1392051))

(declare-fun m!1277903 () Bool)

(assert (=> b!1392053 m!1277903))

(assert (=> b!1392051 m!1277847))

(declare-fun m!1277905 () Bool)

(assert (=> b!1392051 m!1277905))

(assert (=> d!150361 m!1277847))

(assert (=> d!150361 m!1277871))

(declare-fun m!1277907 () Bool)

(assert (=> d!150361 m!1277907))

(assert (=> d!150361 m!1277871))

(assert (=> d!150361 m!1277847))

(assert (=> d!150361 m!1277875))

(declare-fun m!1277909 () Bool)

(assert (=> d!150361 m!1277909))

(declare-fun m!1277911 () Bool)

(assert (=> d!150361 m!1277911))

(assert (=> d!150361 m!1277853))

(assert (=> b!1391993 d!150361))

(declare-fun d!150373 () Bool)

(assert (=> d!150373 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119486 d!150373))

(declare-fun d!150375 () Bool)

(assert (=> d!150375 (= (array_inv!34896 a!2901) (bvsge (size!46502 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119486 d!150375))

(declare-fun d!150377 () Bool)

(assert (=> d!150377 (= (validKeyInArray!0 (select (arr!45951 a!2901) j!112)) (and (not (= (select (arr!45951 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45951 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391995 d!150377))

(declare-fun bm!66768 () Bool)

(declare-fun call!66771 () Bool)

(assert (=> bm!66768 (= call!66771 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392118 () Bool)

(declare-fun e!788340 () Bool)

(declare-fun e!788341 () Bool)

(assert (=> b!1392118 (= e!788340 e!788341)))

(declare-fun lt!611463 () (_ BitVec 64))

(assert (=> b!1392118 (= lt!611463 (select (arr!45951 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611462 () Unit!46534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95188 (_ BitVec 64) (_ BitVec 32)) Unit!46534)

(assert (=> b!1392118 (= lt!611462 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611463 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1392118 (arrayContainsKey!0 a!2901 lt!611463 #b00000000000000000000000000000000)))

(declare-fun lt!611461 () Unit!46534)

(assert (=> b!1392118 (= lt!611461 lt!611462)))

(declare-fun res!931873 () Bool)

(assert (=> b!1392118 (= res!931873 (= (seekEntryOrOpen!0 (select (arr!45951 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10290 #b00000000000000000000000000000000)))))

(assert (=> b!1392118 (=> (not res!931873) (not e!788341))))

(declare-fun b!1392119 () Bool)

(declare-fun e!788342 () Bool)

(assert (=> b!1392119 (= e!788342 e!788340)))

(declare-fun c!129575 () Bool)

(assert (=> b!1392119 (= c!129575 (validKeyInArray!0 (select (arr!45951 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392120 () Bool)

(assert (=> b!1392120 (= e!788340 call!66771)))

(declare-fun b!1392121 () Bool)

(assert (=> b!1392121 (= e!788341 call!66771)))

(declare-fun d!150379 () Bool)

(declare-fun res!931874 () Bool)

(assert (=> d!150379 (=> res!931874 e!788342)))

(assert (=> d!150379 (= res!931874 (bvsge #b00000000000000000000000000000000 (size!46502 a!2901)))))

(assert (=> d!150379 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!788342)))

(assert (= (and d!150379 (not res!931874)) b!1392119))

(assert (= (and b!1392119 c!129575) b!1392118))

(assert (= (and b!1392119 (not c!129575)) b!1392120))

(assert (= (and b!1392118 res!931873) b!1392121))

(assert (= (or b!1392121 b!1392120) bm!66768))

(declare-fun m!1277929 () Bool)

(assert (=> bm!66768 m!1277929))

(declare-fun m!1277931 () Bool)

(assert (=> b!1392118 m!1277931))

(declare-fun m!1277933 () Bool)

(assert (=> b!1392118 m!1277933))

(declare-fun m!1277935 () Bool)

(assert (=> b!1392118 m!1277935))

(assert (=> b!1392118 m!1277931))

(declare-fun m!1277937 () Bool)

(assert (=> b!1392118 m!1277937))

(assert (=> b!1392119 m!1277931))

(assert (=> b!1392119 m!1277931))

(declare-fun m!1277939 () Bool)

(assert (=> b!1392119 m!1277939))

(assert (=> b!1391991 d!150379))

(declare-fun d!150393 () Bool)

(declare-fun lt!611469 () (_ BitVec 32))

(declare-fun lt!611468 () (_ BitVec 32))

(assert (=> d!150393 (= lt!611469 (bvmul (bvxor lt!611468 (bvlshr lt!611468 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150393 (= lt!611468 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45951 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45951 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150393 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931875 (let ((h!33876 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45951 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45951 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125218 (bvmul (bvxor h!33876 (bvlshr h!33876 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125218 (bvlshr x!125218 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931875 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931875 #b00000000000000000000000000000000))))))

(assert (=> d!150393 (= (toIndex!0 (select (store (arr!45951 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!611469 (bvlshr lt!611469 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1391996 d!150393))

(declare-fun bm!66769 () Bool)

(declare-fun call!66772 () Bool)

(assert (=> bm!66769 (= call!66772 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392122 () Bool)

(declare-fun e!788343 () Bool)

(declare-fun e!788344 () Bool)

(assert (=> b!1392122 (= e!788343 e!788344)))

(declare-fun lt!611472 () (_ BitVec 64))

(assert (=> b!1392122 (= lt!611472 (select (arr!45951 a!2901) j!112))))

(declare-fun lt!611471 () Unit!46534)

(assert (=> b!1392122 (= lt!611471 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611472 j!112))))

(assert (=> b!1392122 (arrayContainsKey!0 a!2901 lt!611472 #b00000000000000000000000000000000)))

(declare-fun lt!611470 () Unit!46534)

(assert (=> b!1392122 (= lt!611470 lt!611471)))

(declare-fun res!931876 () Bool)

(assert (=> b!1392122 (= res!931876 (= (seekEntryOrOpen!0 (select (arr!45951 a!2901) j!112) a!2901 mask!2840) (Found!10290 j!112)))))

(assert (=> b!1392122 (=> (not res!931876) (not e!788344))))

(declare-fun b!1392123 () Bool)

(declare-fun e!788345 () Bool)

(assert (=> b!1392123 (= e!788345 e!788343)))

(declare-fun c!129576 () Bool)

(assert (=> b!1392123 (= c!129576 (validKeyInArray!0 (select (arr!45951 a!2901) j!112)))))

(declare-fun b!1392124 () Bool)

(assert (=> b!1392124 (= e!788343 call!66772)))

(declare-fun b!1392125 () Bool)

(assert (=> b!1392125 (= e!788344 call!66772)))

(declare-fun d!150395 () Bool)

(declare-fun res!931877 () Bool)

(assert (=> d!150395 (=> res!931877 e!788345)))

(assert (=> d!150395 (= res!931877 (bvsge j!112 (size!46502 a!2901)))))

(assert (=> d!150395 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!788345)))

(assert (= (and d!150395 (not res!931877)) b!1392123))

(assert (= (and b!1392123 c!129576) b!1392122))

(assert (= (and b!1392123 (not c!129576)) b!1392124))

(assert (= (and b!1392122 res!931876) b!1392125))

(assert (= (or b!1392125 b!1392124) bm!66769))

(declare-fun m!1277941 () Bool)

(assert (=> bm!66769 m!1277941))

(assert (=> b!1392122 m!1277847))

(declare-fun m!1277943 () Bool)

(assert (=> b!1392122 m!1277943))

(declare-fun m!1277945 () Bool)

(assert (=> b!1392122 m!1277945))

(assert (=> b!1392122 m!1277847))

(assert (=> b!1392122 m!1277849))

(assert (=> b!1392123 m!1277847))

(assert (=> b!1392123 m!1277847))

(assert (=> b!1392123 m!1277865))

(assert (=> b!1391998 d!150395))

(declare-fun d!150397 () Bool)

(assert (=> d!150397 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611481 () Unit!46534)

(declare-fun choose!38 (array!95188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46534)

(assert (=> d!150397 (= lt!611481 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150397 (validMask!0 mask!2840)))

(assert (=> d!150397 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611481)))

(declare-fun bs!40495 () Bool)

(assert (= bs!40495 d!150397))

(assert (=> bs!40495 m!1277877))

(declare-fun m!1277947 () Bool)

(assert (=> bs!40495 m!1277947))

(assert (=> bs!40495 m!1277853))

(assert (=> b!1391998 d!150397))

(declare-fun b!1392190 () Bool)

(declare-fun lt!611506 () SeekEntryResult!10290)

(assert (=> b!1392190 (and (bvsge (index!43532 lt!611506) #b00000000000000000000000000000000) (bvslt (index!43532 lt!611506) (size!46502 a!2901)))))

(declare-fun e!788383 () Bool)

(assert (=> b!1392190 (= e!788383 (= (select (arr!45951 a!2901) (index!43532 lt!611506)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!150399 () Bool)

(declare-fun e!788382 () Bool)

(assert (=> d!150399 e!788382))

(declare-fun c!129605 () Bool)

(assert (=> d!150399 (= c!129605 (and (is-Intermediate!10290 lt!611506) (undefined!11102 lt!611506)))))

(declare-fun e!788385 () SeekEntryResult!10290)

(assert (=> d!150399 (= lt!611506 e!788385)))

(declare-fun c!129604 () Bool)

(assert (=> d!150399 (= c!129604 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611507 () (_ BitVec 64))

(assert (=> d!150399 (= lt!611507 (select (arr!45951 a!2901) (toIndex!0 (select (arr!45951 a!2901) j!112) mask!2840)))))

(assert (=> d!150399 (validMask!0 mask!2840)))

(assert (=> d!150399 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45951 a!2901) j!112) mask!2840) (select (arr!45951 a!2901) j!112) a!2901 mask!2840) lt!611506)))

(declare-fun b!1392191 () Bool)

(assert (=> b!1392191 (= e!788385 (Intermediate!10290 true (toIndex!0 (select (arr!45951 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392192 () Bool)

(declare-fun e!788386 () SeekEntryResult!10290)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392192 (= e!788386 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45951 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45951 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392193 () Bool)

(declare-fun e!788384 () Bool)

(assert (=> b!1392193 (= e!788382 e!788384)))

(declare-fun res!931891 () Bool)

(assert (=> b!1392193 (= res!931891 (and (is-Intermediate!10290 lt!611506) (not (undefined!11102 lt!611506)) (bvslt (x!125213 lt!611506) #b01111111111111111111111111111110) (bvsge (x!125213 lt!611506) #b00000000000000000000000000000000) (bvsge (x!125213 lt!611506) #b00000000000000000000000000000000)))))

(assert (=> b!1392193 (=> (not res!931891) (not e!788384))))

(declare-fun b!1392194 () Bool)

(assert (=> b!1392194 (= e!788386 (Intermediate!10290 false (toIndex!0 (select (arr!45951 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392195 () Bool)

(assert (=> b!1392195 (= e!788385 e!788386)))

(declare-fun c!129603 () Bool)

(assert (=> b!1392195 (= c!129603 (or (= lt!611507 (select (arr!45951 a!2901) j!112)) (= (bvadd lt!611507 lt!611507) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1392196 () Bool)

(assert (=> b!1392196 (and (bvsge (index!43532 lt!611506) #b00000000000000000000000000000000) (bvslt (index!43532 lt!611506) (size!46502 a!2901)))))

(declare-fun res!931892 () Bool)

(assert (=> b!1392196 (= res!931892 (= (select (arr!45951 a!2901) (index!43532 lt!611506)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392196 (=> res!931892 e!788383)))

(declare-fun b!1392197 () Bool)

(assert (=> b!1392197 (and (bvsge (index!43532 lt!611506) #b00000000000000000000000000000000) (bvslt (index!43532 lt!611506) (size!46502 a!2901)))))

(declare-fun res!931890 () Bool)

(assert (=> b!1392197 (= res!931890 (= (select (arr!45951 a!2901) (index!43532 lt!611506)) (select (arr!45951 a!2901) j!112)))))

(assert (=> b!1392197 (=> res!931890 e!788383)))

(assert (=> b!1392197 (= e!788384 e!788383)))

(declare-fun b!1392198 () Bool)

(assert (=> b!1392198 (= e!788382 (bvsge (x!125213 lt!611506) #b01111111111111111111111111111110))))

(assert (= (and d!150399 c!129604) b!1392191))

(assert (= (and d!150399 (not c!129604)) b!1392195))

(assert (= (and b!1392195 c!129603) b!1392194))

(assert (= (and b!1392195 (not c!129603)) b!1392192))

(assert (= (and d!150399 c!129605) b!1392198))

(assert (= (and d!150399 (not c!129605)) b!1392193))

(assert (= (and b!1392193 res!931891) b!1392197))

(assert (= (and b!1392197 (not res!931890)) b!1392196))

(assert (= (and b!1392196 (not res!931892)) b!1392190))

(assert (=> d!150399 m!1277871))

(declare-fun m!1277989 () Bool)

(assert (=> d!150399 m!1277989))

(assert (=> d!150399 m!1277853))

(declare-fun m!1277991 () Bool)

(assert (=> b!1392197 m!1277991))

(assert (=> b!1392192 m!1277871))

(declare-fun m!1277993 () Bool)

(assert (=> b!1392192 m!1277993))

(assert (=> b!1392192 m!1277993))

(assert (=> b!1392192 m!1277847))

(declare-fun m!1277995 () Bool)

(assert (=> b!1392192 m!1277995))

(assert (=> b!1392196 m!1277991))

(assert (=> b!1392190 m!1277991))

(assert (=> b!1391998 d!150399))

(declare-fun d!150415 () Bool)

(declare-fun lt!611509 () (_ BitVec 32))

(declare-fun lt!611508 () (_ BitVec 32))

(assert (=> d!150415 (= lt!611509 (bvmul (bvxor lt!611508 (bvlshr lt!611508 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150415 (= lt!611508 ((_ extract 31 0) (bvand (bvxor (select (arr!45951 a!2901) j!112) (bvlshr (select (arr!45951 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150415 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931875 (let ((h!33876 ((_ extract 31 0) (bvand (bvxor (select (arr!45951 a!2901) j!112) (bvlshr (select (arr!45951 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125218 (bvmul (bvxor h!33876 (bvlshr h!33876 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125218 (bvlshr x!125218 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931875 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931875 #b00000000000000000000000000000000))))))

(assert (=> d!150415 (= (toIndex!0 (select (arr!45951 a!2901) j!112) mask!2840) (bvand (bvxor lt!611509 (bvlshr lt!611509 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1391998 d!150415))

(declare-fun b!1392222 () Bool)

(declare-fun e!788407 () Bool)

(declare-fun contains!9783 (List!32650 (_ BitVec 64)) Bool)

(assert (=> b!1392222 (= e!788407 (contains!9783 Nil!32647 (select (arr!45951 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392223 () Bool)

(declare-fun e!788405 () Bool)

(declare-fun call!66780 () Bool)

(assert (=> b!1392223 (= e!788405 call!66780)))

(declare-fun b!1392224 () Bool)

(declare-fun e!788406 () Bool)

(declare-fun e!788408 () Bool)

(assert (=> b!1392224 (= e!788406 e!788408)))

(declare-fun res!931906 () Bool)

(assert (=> b!1392224 (=> (not res!931906) (not e!788408))))

(assert (=> b!1392224 (= res!931906 (not e!788407))))

(declare-fun res!931908 () Bool)

(assert (=> b!1392224 (=> (not res!931908) (not e!788407))))

(assert (=> b!1392224 (= res!931908 (validKeyInArray!0 (select (arr!45951 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392226 () Bool)

(assert (=> b!1392226 (= e!788405 call!66780)))

(declare-fun bm!66777 () Bool)

(declare-fun c!129611 () Bool)

(assert (=> bm!66777 (= call!66780 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129611 (Cons!32646 (select (arr!45951 a!2901) #b00000000000000000000000000000000) Nil!32647) Nil!32647)))))

(declare-fun b!1392225 () Bool)

(assert (=> b!1392225 (= e!788408 e!788405)))

(assert (=> b!1392225 (= c!129611 (validKeyInArray!0 (select (arr!45951 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150417 () Bool)

(declare-fun res!931907 () Bool)

(assert (=> d!150417 (=> res!931907 e!788406)))

(assert (=> d!150417 (= res!931907 (bvsge #b00000000000000000000000000000000 (size!46502 a!2901)))))

(assert (=> d!150417 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32647) e!788406)))

(assert (= (and d!150417 (not res!931907)) b!1392224))

(assert (= (and b!1392224 res!931908) b!1392222))

(assert (= (and b!1392224 res!931906) b!1392225))

(assert (= (and b!1392225 c!129611) b!1392223))

(assert (= (and b!1392225 (not c!129611)) b!1392226))

(assert (= (or b!1392223 b!1392226) bm!66777))

(assert (=> b!1392222 m!1277931))

(assert (=> b!1392222 m!1277931))

(declare-fun m!1278001 () Bool)

(assert (=> b!1392222 m!1278001))

(assert (=> b!1392224 m!1277931))

(assert (=> b!1392224 m!1277931))

(assert (=> b!1392224 m!1277939))

(assert (=> bm!66777 m!1277931))

(declare-fun m!1278003 () Bool)

(assert (=> bm!66777 m!1278003))

(assert (=> b!1392225 m!1277931))

(assert (=> b!1392225 m!1277931))

(assert (=> b!1392225 m!1277939))

(assert (=> b!1391997 d!150417))

(declare-fun d!150421 () Bool)

(assert (=> d!150421 (= (validKeyInArray!0 (select (arr!45951 a!2901) i!1037)) (and (not (= (select (arr!45951 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45951 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391992 d!150421))

(push 1)

(assert (not bm!66769))

(assert (not b!1392192))

(assert (not d!150399))

(assert (not b!1392224))

(assert (not bm!66768))

(assert (not b!1392222))

(assert (not b!1392051))

(assert (not b!1392122))

(assert (not b!1392123))

(assert (not b!1392118))

(assert (not d!150361))

(assert (not b!1392119))

(assert (not b!1392225))

(assert (not bm!66777))

(assert (not d!150397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

