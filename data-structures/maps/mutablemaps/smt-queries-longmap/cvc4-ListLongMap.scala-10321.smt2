; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121400 () Bool)

(assert start!121400)

(declare-fun b!1410294 () Bool)

(declare-fun res!947800 () Bool)

(declare-fun e!798113 () Bool)

(assert (=> b!1410294 (=> (not res!947800) (not e!798113))))

(declare-datatypes ((array!96370 0))(
  ( (array!96371 (arr!46521 (Array (_ BitVec 32) (_ BitVec 64))) (size!47072 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96370)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96370 (_ BitVec 32)) Bool)

(assert (=> b!1410294 (= res!947800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410295 () Bool)

(declare-fun res!947797 () Bool)

(assert (=> b!1410295 (=> (not res!947797) (not e!798113))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1410295 (= res!947797 (and (= (size!47072 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47072 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47072 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410297 () Bool)

(declare-fun res!947802 () Bool)

(assert (=> b!1410297 (=> (not res!947802) (not e!798113))))

(declare-datatypes ((List!33220 0))(
  ( (Nil!33217) (Cons!33216 (h!34485 (_ BitVec 64)) (t!47921 List!33220)) )
))
(declare-fun arrayNoDuplicates!0 (array!96370 (_ BitVec 32) List!33220) Bool)

(assert (=> b!1410297 (= res!947802 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33217))))

(declare-fun b!1410298 () Bool)

(declare-fun e!798112 () Bool)

(declare-datatypes ((SeekEntryResult!10854 0))(
  ( (MissingZero!10854 (index!45792 (_ BitVec 32))) (Found!10854 (index!45793 (_ BitVec 32))) (Intermediate!10854 (undefined!11666 Bool) (index!45794 (_ BitVec 32)) (x!127390 (_ BitVec 32))) (Undefined!10854) (MissingVacant!10854 (index!45795 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96370 (_ BitVec 32)) SeekEntryResult!10854)

(assert (=> b!1410298 (= e!798112 (= (seekEntryOrOpen!0 (select (arr!46521 a!2901) j!112) a!2901 mask!2840) (Found!10854 j!112)))))

(declare-fun lt!621081 () (_ BitVec 32))

(declare-fun lt!621079 () SeekEntryResult!10854)

(declare-fun e!798111 () Bool)

(declare-fun lt!621082 () SeekEntryResult!10854)

(declare-fun b!1410299 () Bool)

(assert (=> b!1410299 (= e!798111 (or (= lt!621082 lt!621079) (not (is-Intermediate!10854 lt!621079)) (bvslt (x!127390 lt!621082) #b00000000000000000000000000000000) (bvsgt (x!127390 lt!621082) #b01111111111111111111111111111110) (bvslt lt!621081 #b00000000000000000000000000000000) (bvsge lt!621081 (size!47072 a!2901)) (and (bvsge (index!45794 lt!621082) #b00000000000000000000000000000000) (bvslt (index!45794 lt!621082) (size!47072 a!2901)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96370 (_ BitVec 32)) SeekEntryResult!10854)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410299 (= lt!621079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901)) mask!2840))))

(declare-fun b!1410300 () Bool)

(assert (=> b!1410300 (= e!798113 (not e!798111))))

(declare-fun res!947799 () Bool)

(assert (=> b!1410300 (=> res!947799 e!798111)))

(assert (=> b!1410300 (= res!947799 (or (not (is-Intermediate!10854 lt!621082)) (undefined!11666 lt!621082)))))

(assert (=> b!1410300 e!798112))

(declare-fun res!947795 () Bool)

(assert (=> b!1410300 (=> (not res!947795) (not e!798112))))

(assert (=> b!1410300 (= res!947795 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47632 0))(
  ( (Unit!47633) )
))
(declare-fun lt!621080 () Unit!47632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47632)

(assert (=> b!1410300 (= lt!621080 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410300 (= lt!621082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621081 (select (arr!46521 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410300 (= lt!621081 (toIndex!0 (select (arr!46521 a!2901) j!112) mask!2840))))

(declare-fun b!1410301 () Bool)

(declare-fun res!947798 () Bool)

(assert (=> b!1410301 (=> (not res!947798) (not e!798113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410301 (= res!947798 (validKeyInArray!0 (select (arr!46521 a!2901) j!112)))))

(declare-fun b!1410296 () Bool)

(declare-fun res!947801 () Bool)

(assert (=> b!1410296 (=> (not res!947801) (not e!798113))))

(assert (=> b!1410296 (= res!947801 (validKeyInArray!0 (select (arr!46521 a!2901) i!1037)))))

(declare-fun res!947796 () Bool)

(assert (=> start!121400 (=> (not res!947796) (not e!798113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121400 (= res!947796 (validMask!0 mask!2840))))

(assert (=> start!121400 e!798113))

(assert (=> start!121400 true))

(declare-fun array_inv!35466 (array!96370) Bool)

(assert (=> start!121400 (array_inv!35466 a!2901)))

(assert (= (and start!121400 res!947796) b!1410295))

(assert (= (and b!1410295 res!947797) b!1410296))

(assert (= (and b!1410296 res!947801) b!1410301))

(assert (= (and b!1410301 res!947798) b!1410294))

(assert (= (and b!1410294 res!947800) b!1410297))

(assert (= (and b!1410297 res!947802) b!1410300))

(assert (= (and b!1410300 res!947795) b!1410298))

(assert (= (and b!1410300 (not res!947799)) b!1410299))

(declare-fun m!1300045 () Bool)

(assert (=> b!1410300 m!1300045))

(declare-fun m!1300047 () Bool)

(assert (=> b!1410300 m!1300047))

(assert (=> b!1410300 m!1300045))

(assert (=> b!1410300 m!1300045))

(declare-fun m!1300049 () Bool)

(assert (=> b!1410300 m!1300049))

(declare-fun m!1300051 () Bool)

(assert (=> b!1410300 m!1300051))

(declare-fun m!1300053 () Bool)

(assert (=> b!1410300 m!1300053))

(assert (=> b!1410301 m!1300045))

(assert (=> b!1410301 m!1300045))

(declare-fun m!1300055 () Bool)

(assert (=> b!1410301 m!1300055))

(declare-fun m!1300057 () Bool)

(assert (=> start!121400 m!1300057))

(declare-fun m!1300059 () Bool)

(assert (=> start!121400 m!1300059))

(declare-fun m!1300061 () Bool)

(assert (=> b!1410297 m!1300061))

(declare-fun m!1300063 () Bool)

(assert (=> b!1410299 m!1300063))

(declare-fun m!1300065 () Bool)

(assert (=> b!1410299 m!1300065))

(assert (=> b!1410299 m!1300065))

(declare-fun m!1300067 () Bool)

(assert (=> b!1410299 m!1300067))

(assert (=> b!1410299 m!1300067))

(assert (=> b!1410299 m!1300065))

(declare-fun m!1300069 () Bool)

(assert (=> b!1410299 m!1300069))

(declare-fun m!1300071 () Bool)

(assert (=> b!1410296 m!1300071))

(assert (=> b!1410296 m!1300071))

(declare-fun m!1300073 () Bool)

(assert (=> b!1410296 m!1300073))

(declare-fun m!1300075 () Bool)

(assert (=> b!1410294 m!1300075))

(assert (=> b!1410298 m!1300045))

(assert (=> b!1410298 m!1300045))

(declare-fun m!1300077 () Bool)

(assert (=> b!1410298 m!1300077))

(push 1)

(assert (not b!1410299))

(assert (not b!1410296))

(assert (not b!1410297))

(assert (not b!1410300))

(assert (not b!1410294))

(assert (not b!1410298))

(assert (not b!1410301))

(assert (not start!121400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151831 () Bool)

(assert (=> d!151831 (= (validKeyInArray!0 (select (arr!46521 a!2901) i!1037)) (and (not (= (select (arr!46521 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46521 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1410296 d!151831))

(declare-fun d!151833 () Bool)

(assert (=> d!151833 (= (validKeyInArray!0 (select (arr!46521 a!2901) j!112)) (and (not (= (select (arr!46521 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46521 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1410301 d!151833))

(declare-fun b!1410364 () Bool)

(declare-fun e!798161 () Bool)

(declare-fun e!798160 () Bool)

(assert (=> b!1410364 (= e!798161 e!798160)))

(declare-fun c!130739 () Bool)

(assert (=> b!1410364 (= c!130739 (validKeyInArray!0 (select (arr!46521 a!2901) j!112)))))

(declare-fun b!1410365 () Bool)

(declare-fun call!67065 () Bool)

(assert (=> b!1410365 (= e!798160 call!67065)))

(declare-fun b!1410366 () Bool)

(declare-fun e!798159 () Bool)

(assert (=> b!1410366 (= e!798160 e!798159)))

(declare-fun lt!621108 () (_ BitVec 64))

(assert (=> b!1410366 (= lt!621108 (select (arr!46521 a!2901) j!112))))

(declare-fun lt!621107 () Unit!47632)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96370 (_ BitVec 64) (_ BitVec 32)) Unit!47632)

(assert (=> b!1410366 (= lt!621107 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621108 j!112))))

(declare-fun arrayContainsKey!0 (array!96370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1410366 (arrayContainsKey!0 a!2901 lt!621108 #b00000000000000000000000000000000)))

(declare-fun lt!621109 () Unit!47632)

(assert (=> b!1410366 (= lt!621109 lt!621107)))

(declare-fun res!947832 () Bool)

(assert (=> b!1410366 (= res!947832 (= (seekEntryOrOpen!0 (select (arr!46521 a!2901) j!112) a!2901 mask!2840) (Found!10854 j!112)))))

(assert (=> b!1410366 (=> (not res!947832) (not e!798159))))

(declare-fun d!151835 () Bool)

(declare-fun res!947831 () Bool)

(assert (=> d!151835 (=> res!947831 e!798161)))

(assert (=> d!151835 (= res!947831 (bvsge j!112 (size!47072 a!2901)))))

(assert (=> d!151835 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!798161)))

(declare-fun bm!67062 () Bool)

(assert (=> bm!67062 (= call!67065 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1410367 () Bool)

(assert (=> b!1410367 (= e!798159 call!67065)))

(assert (= (and d!151835 (not res!947831)) b!1410364))

(assert (= (and b!1410364 c!130739) b!1410366))

(assert (= (and b!1410364 (not c!130739)) b!1410365))

(assert (= (and b!1410366 res!947832) b!1410367))

(assert (= (or b!1410367 b!1410365) bm!67062))

(assert (=> b!1410364 m!1300045))

(assert (=> b!1410364 m!1300045))

(assert (=> b!1410364 m!1300055))

(assert (=> b!1410366 m!1300045))

(declare-fun m!1300103 () Bool)

(assert (=> b!1410366 m!1300103))

(declare-fun m!1300105 () Bool)

(assert (=> b!1410366 m!1300105))

(assert (=> b!1410366 m!1300045))

(assert (=> b!1410366 m!1300077))

(declare-fun m!1300107 () Bool)

(assert (=> bm!67062 m!1300107))

(assert (=> b!1410300 d!151835))

(declare-fun d!151837 () Bool)

(assert (=> d!151837 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!621119 () Unit!47632)

(declare-fun choose!38 (array!96370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47632)

(assert (=> d!151837 (= lt!621119 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151837 (validMask!0 mask!2840)))

(assert (=> d!151837 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!621119)))

(declare-fun bs!41112 () Bool)

(assert (= bs!41112 d!151837))

(assert (=> bs!41112 m!1300053))

(declare-fun m!1300121 () Bool)

(assert (=> bs!41112 m!1300121))

(assert (=> bs!41112 m!1300057))

(assert (=> b!1410300 d!151837))

(declare-fun b!1410431 () Bool)

(declare-fun lt!621144 () SeekEntryResult!10854)

(assert (=> b!1410431 (and (bvsge (index!45794 lt!621144) #b00000000000000000000000000000000) (bvslt (index!45794 lt!621144) (size!47072 a!2901)))))

(declare-fun res!947857 () Bool)

(assert (=> b!1410431 (= res!947857 (= (select (arr!46521 a!2901) (index!45794 lt!621144)) (select (arr!46521 a!2901) j!112)))))

(declare-fun e!798199 () Bool)

(assert (=> b!1410431 (=> res!947857 e!798199)))

(declare-fun e!798201 () Bool)

(assert (=> b!1410431 (= e!798201 e!798199)))

(declare-fun b!1410432 () Bool)

(assert (=> b!1410432 (and (bvsge (index!45794 lt!621144) #b00000000000000000000000000000000) (bvslt (index!45794 lt!621144) (size!47072 a!2901)))))

(declare-fun res!947855 () Bool)

(assert (=> b!1410432 (= res!947855 (= (select (arr!46521 a!2901) (index!45794 lt!621144)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410432 (=> res!947855 e!798199)))

(declare-fun b!1410433 () Bool)

(assert (=> b!1410433 (and (bvsge (index!45794 lt!621144) #b00000000000000000000000000000000) (bvslt (index!45794 lt!621144) (size!47072 a!2901)))))

(assert (=> b!1410433 (= e!798199 (= (select (arr!46521 a!2901) (index!45794 lt!621144)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410434 () Bool)

(declare-fun e!798200 () Bool)

(assert (=> b!1410434 (= e!798200 (bvsge (x!127390 lt!621144) #b01111111111111111111111111111110))))

(declare-fun b!1410435 () Bool)

(declare-fun e!798203 () SeekEntryResult!10854)

(assert (=> b!1410435 (= e!798203 (Intermediate!10854 false lt!621081 #b00000000000000000000000000000000))))

(declare-fun b!1410436 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410436 (= e!798203 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!621081 #b00000000000000000000000000000000 mask!2840) (select (arr!46521 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!151841 () Bool)

(assert (=> d!151841 e!798200))

(declare-fun c!130763 () Bool)

(assert (=> d!151841 (= c!130763 (and (is-Intermediate!10854 lt!621144) (undefined!11666 lt!621144)))))

(declare-fun e!798202 () SeekEntryResult!10854)

(assert (=> d!151841 (= lt!621144 e!798202)))

(declare-fun c!130761 () Bool)

(assert (=> d!151841 (= c!130761 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!621145 () (_ BitVec 64))

(assert (=> d!151841 (= lt!621145 (select (arr!46521 a!2901) lt!621081))))

(assert (=> d!151841 (validMask!0 mask!2840)))

(assert (=> d!151841 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621081 (select (arr!46521 a!2901) j!112) a!2901 mask!2840) lt!621144)))

(declare-fun b!1410437 () Bool)

(assert (=> b!1410437 (= e!798202 (Intermediate!10854 true lt!621081 #b00000000000000000000000000000000))))

(declare-fun b!1410438 () Bool)

(assert (=> b!1410438 (= e!798200 e!798201)))

(declare-fun res!947856 () Bool)

(assert (=> b!1410438 (= res!947856 (and (is-Intermediate!10854 lt!621144) (not (undefined!11666 lt!621144)) (bvslt (x!127390 lt!621144) #b01111111111111111111111111111110) (bvsge (x!127390 lt!621144) #b00000000000000000000000000000000) (bvsge (x!127390 lt!621144) #b00000000000000000000000000000000)))))

(assert (=> b!1410438 (=> (not res!947856) (not e!798201))))

(declare-fun b!1410439 () Bool)

(assert (=> b!1410439 (= e!798202 e!798203)))

(declare-fun c!130762 () Bool)

(assert (=> b!1410439 (= c!130762 (or (= lt!621145 (select (arr!46521 a!2901) j!112)) (= (bvadd lt!621145 lt!621145) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151841 c!130761) b!1410437))

(assert (= (and d!151841 (not c!130761)) b!1410439))

(assert (= (and b!1410439 c!130762) b!1410435))

(assert (= (and b!1410439 (not c!130762)) b!1410436))

(assert (= (and d!151841 c!130763) b!1410434))

(assert (= (and d!151841 (not c!130763)) b!1410438))

(assert (= (and b!1410438 res!947856) b!1410431))

(assert (= (and b!1410431 (not res!947857)) b!1410432))

(assert (= (and b!1410432 (not res!947855)) b!1410433))

(declare-fun m!1300139 () Bool)

(assert (=> b!1410433 m!1300139))

(assert (=> b!1410431 m!1300139))

(declare-fun m!1300141 () Bool)

(assert (=> b!1410436 m!1300141))

(assert (=> b!1410436 m!1300141))

(assert (=> b!1410436 m!1300045))

(declare-fun m!1300143 () Bool)

(assert (=> b!1410436 m!1300143))

(declare-fun m!1300145 () Bool)

(assert (=> d!151841 m!1300145))

(assert (=> d!151841 m!1300057))

(assert (=> b!1410432 m!1300139))

(assert (=> b!1410300 d!151841))

(declare-fun d!151855 () Bool)

(declare-fun lt!621155 () (_ BitVec 32))

(declare-fun lt!621154 () (_ BitVec 32))

(assert (=> d!151855 (= lt!621155 (bvmul (bvxor lt!621154 (bvlshr lt!621154 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151855 (= lt!621154 ((_ extract 31 0) (bvand (bvxor (select (arr!46521 a!2901) j!112) (bvlshr (select (arr!46521 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151855 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947858 (let ((h!34487 ((_ extract 31 0) (bvand (bvxor (select (arr!46521 a!2901) j!112) (bvlshr (select (arr!46521 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127394 (bvmul (bvxor h!34487 (bvlshr h!34487 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127394 (bvlshr x!127394 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947858 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947858 #b00000000000000000000000000000000))))))

(assert (=> d!151855 (= (toIndex!0 (select (arr!46521 a!2901) j!112) mask!2840) (bvand (bvxor lt!621155 (bvlshr lt!621155 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1410300 d!151855))

(declare-fun b!1410448 () Bool)

(declare-fun e!798210 () Bool)

(declare-fun e!798209 () Bool)

(assert (=> b!1410448 (= e!798210 e!798209)))

(declare-fun c!130768 () Bool)

(assert (=> b!1410448 (= c!130768 (validKeyInArray!0 (select (arr!46521 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410449 () Bool)

(declare-fun call!67069 () Bool)

(assert (=> b!1410449 (= e!798209 call!67069)))

(declare-fun b!1410450 () Bool)

(declare-fun e!798208 () Bool)

(assert (=> b!1410450 (= e!798209 e!798208)))

(declare-fun lt!621157 () (_ BitVec 64))

(assert (=> b!1410450 (= lt!621157 (select (arr!46521 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!621156 () Unit!47632)

(assert (=> b!1410450 (= lt!621156 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621157 #b00000000000000000000000000000000))))

(assert (=> b!1410450 (arrayContainsKey!0 a!2901 lt!621157 #b00000000000000000000000000000000)))

(declare-fun lt!621158 () Unit!47632)

(assert (=> b!1410450 (= lt!621158 lt!621156)))

(declare-fun res!947860 () Bool)

(assert (=> b!1410450 (= res!947860 (= (seekEntryOrOpen!0 (select (arr!46521 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10854 #b00000000000000000000000000000000)))))

(assert (=> b!1410450 (=> (not res!947860) (not e!798208))))

(declare-fun d!151857 () Bool)

(declare-fun res!947859 () Bool)

(assert (=> d!151857 (=> res!947859 e!798210)))

(assert (=> d!151857 (= res!947859 (bvsge #b00000000000000000000000000000000 (size!47072 a!2901)))))

(assert (=> d!151857 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!798210)))

(declare-fun bm!67066 () Bool)

(assert (=> bm!67066 (= call!67069 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1410451 () Bool)

(assert (=> b!1410451 (= e!798208 call!67069)))

(assert (= (and d!151857 (not res!947859)) b!1410448))

(assert (= (and b!1410448 c!130768) b!1410450))

(assert (= (and b!1410448 (not c!130768)) b!1410449))

(assert (= (and b!1410450 res!947860) b!1410451))

(assert (= (or b!1410451 b!1410449) bm!67066))

(declare-fun m!1300147 () Bool)

(assert (=> b!1410448 m!1300147))

(assert (=> b!1410448 m!1300147))

(declare-fun m!1300149 () Bool)

(assert (=> b!1410448 m!1300149))

(assert (=> b!1410450 m!1300147))

(declare-fun m!1300151 () Bool)

(assert (=> b!1410450 m!1300151))

(declare-fun m!1300153 () Bool)

(assert (=> b!1410450 m!1300153))

(assert (=> b!1410450 m!1300147))

(declare-fun m!1300155 () Bool)

(assert (=> b!1410450 m!1300155))

(declare-fun m!1300157 () Bool)

(assert (=> bm!67066 m!1300157))

(assert (=> b!1410294 d!151857))

(declare-fun b!1410462 () Bool)

(declare-fun lt!621159 () SeekEntryResult!10854)

(assert (=> b!1410462 (and (bvsge (index!45794 lt!621159) #b00000000000000000000000000000000) (bvslt (index!45794 lt!621159) (size!47072 (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901)))))))

(declare-fun res!947869 () Bool)

(assert (=> b!1410462 (= res!947869 (= (select (arr!46521 (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901))) (index!45794 lt!621159)) (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!798217 () Bool)

(assert (=> b!1410462 (=> res!947869 e!798217)))

(declare-fun e!798219 () Bool)

(assert (=> b!1410462 (= e!798219 e!798217)))

(declare-fun b!1410463 () Bool)

(assert (=> b!1410463 (and (bvsge (index!45794 lt!621159) #b00000000000000000000000000000000) (bvslt (index!45794 lt!621159) (size!47072 (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901)))))))

(declare-fun res!947867 () Bool)

(assert (=> b!1410463 (= res!947867 (= (select (arr!46521 (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901))) (index!45794 lt!621159)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410463 (=> res!947867 e!798217)))

(declare-fun b!1410464 () Bool)

(assert (=> b!1410464 (and (bvsge (index!45794 lt!621159) #b00000000000000000000000000000000) (bvslt (index!45794 lt!621159) (size!47072 (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901)))))))

(assert (=> b!1410464 (= e!798217 (= (select (arr!46521 (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901))) (index!45794 lt!621159)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410465 () Bool)

(declare-fun e!798218 () Bool)

(assert (=> b!1410465 (= e!798218 (bvsge (x!127390 lt!621159) #b01111111111111111111111111111110))))

(declare-fun e!798221 () SeekEntryResult!10854)

(declare-fun b!1410466 () Bool)

(assert (=> b!1410466 (= e!798221 (Intermediate!10854 false (toIndex!0 (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410467 () Bool)

(assert (=> b!1410467 (= e!798221 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901)) mask!2840))))

(declare-fun d!151859 () Bool)

(assert (=> d!151859 e!798218))

(declare-fun c!130773 () Bool)

(assert (=> d!151859 (= c!130773 (and (is-Intermediate!10854 lt!621159) (undefined!11666 lt!621159)))))

(declare-fun e!798220 () SeekEntryResult!10854)

(assert (=> d!151859 (= lt!621159 e!798220)))

(declare-fun c!130771 () Bool)

(assert (=> d!151859 (= c!130771 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!621160 () (_ BitVec 64))

(assert (=> d!151859 (= lt!621160 (select (arr!46521 (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901))) (toIndex!0 (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151859 (validMask!0 mask!2840)))

(assert (=> d!151859 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96371 (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47072 a!2901)) mask!2840) lt!621159)))

(declare-fun b!1410468 () Bool)

(assert (=> b!1410468 (= e!798220 (Intermediate!10854 true (toIndex!0 (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410469 () Bool)

(assert (=> b!1410469 (= e!798218 e!798219)))

(declare-fun res!947868 () Bool)

(assert (=> b!1410469 (= res!947868 (and (is-Intermediate!10854 lt!621159) (not (undefined!11666 lt!621159)) (bvslt (x!127390 lt!621159) #b01111111111111111111111111111110) (bvsge (x!127390 lt!621159) #b00000000000000000000000000000000) (bvsge (x!127390 lt!621159) #b00000000000000000000000000000000)))))

(assert (=> b!1410469 (=> (not res!947868) (not e!798219))))

(declare-fun b!1410470 () Bool)

(assert (=> b!1410470 (= e!798220 e!798221)))

(declare-fun c!130772 () Bool)

(assert (=> b!1410470 (= c!130772 (or (= lt!621160 (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!621160 lt!621160) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151859 c!130771) b!1410468))

(assert (= (and d!151859 (not c!130771)) b!1410470))

(assert (= (and b!1410470 c!130772) b!1410466))

(assert (= (and b!1410470 (not c!130772)) b!1410467))

(assert (= (and d!151859 c!130773) b!1410465))

(assert (= (and d!151859 (not c!130773)) b!1410469))

(assert (= (and b!1410469 res!947868) b!1410462))

(assert (= (and b!1410462 (not res!947869)) b!1410463))

(assert (= (and b!1410463 (not res!947867)) b!1410464))

(declare-fun m!1300159 () Bool)

(assert (=> b!1410464 m!1300159))

(assert (=> b!1410462 m!1300159))

(assert (=> b!1410467 m!1300067))

(declare-fun m!1300161 () Bool)

(assert (=> b!1410467 m!1300161))

(assert (=> b!1410467 m!1300161))

(assert (=> b!1410467 m!1300065))

(declare-fun m!1300163 () Bool)

(assert (=> b!1410467 m!1300163))

(assert (=> d!151859 m!1300067))

(declare-fun m!1300165 () Bool)

(assert (=> d!151859 m!1300165))

(assert (=> d!151859 m!1300057))

(assert (=> b!1410463 m!1300159))

(assert (=> b!1410299 d!151859))

(declare-fun d!151861 () Bool)

(declare-fun lt!621162 () (_ BitVec 32))

(declare-fun lt!621161 () (_ BitVec 32))

(assert (=> d!151861 (= lt!621162 (bvmul (bvxor lt!621161 (bvlshr lt!621161 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151861 (= lt!621161 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151861 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947858 (let ((h!34487 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127394 (bvmul (bvxor h!34487 (bvlshr h!34487 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127394 (bvlshr x!127394 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947858 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947858 #b00000000000000000000000000000000))))))

(assert (=> d!151861 (= (toIndex!0 (select (store (arr!46521 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!621162 (bvlshr lt!621162 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1410299 d!151861))

(declare-fun d!151863 () Bool)

(assert (=> d!151863 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121400 d!151863))

(declare-fun d!151873 () Bool)

(assert (=> d!151873 (= (array_inv!35466 a!2901) (bvsge (size!47072 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121400 d!151873))

(declare-fun lt!621202 () SeekEntryResult!10854)

(declare-fun b!1410536 () Bool)

(declare-fun e!798260 () SeekEntryResult!10854)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96370 (_ BitVec 32)) SeekEntryResult!10854)

(assert (=> b!1410536 (= e!798260 (seekKeyOrZeroReturnVacant!0 (x!127390 lt!621202) (index!45794 lt!621202) (index!45794 lt!621202) (select (arr!46521 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410537 () Bool)

(declare-fun e!798259 () SeekEntryResult!10854)

(assert (=> b!1410537 (= e!798259 Undefined!10854)))

(declare-fun b!1410538 () Bool)

(declare-fun e!798258 () SeekEntryResult!10854)

(assert (=> b!1410538 (= e!798259 e!798258)))

(declare-fun lt!621200 () (_ BitVec 64))

(assert (=> b!1410538 (= lt!621200 (select (arr!46521 a!2901) (index!45794 lt!621202)))))

(declare-fun c!130801 () Bool)

(assert (=> b!1410538 (= c!130801 (= lt!621200 (select (arr!46521 a!2901) j!112)))))

(declare-fun b!1410539 () Bool)

(assert (=> b!1410539 (= e!798258 (Found!10854 (index!45794 lt!621202)))))

(declare-fun d!151875 () Bool)

(declare-fun lt!621201 () SeekEntryResult!10854)

(assert (=> d!151875 (and (or (is-Undefined!10854 lt!621201) (not (is-Found!10854 lt!621201)) (and (bvsge (index!45793 lt!621201) #b00000000000000000000000000000000) (bvslt (index!45793 lt!621201) (size!47072 a!2901)))) (or (is-Undefined!10854 lt!621201) (is-Found!10854 lt!621201) (not (is-MissingZero!10854 lt!621201)) (and (bvsge (index!45792 lt!621201) #b00000000000000000000000000000000) (bvslt (index!45792 lt!621201) (size!47072 a!2901)))) (or (is-Undefined!10854 lt!621201) (is-Found!10854 lt!621201) (is-MissingZero!10854 lt!621201) (not (is-MissingVacant!10854 lt!621201)) (and (bvsge (index!45795 lt!621201) #b00000000000000000000000000000000) (bvslt (index!45795 lt!621201) (size!47072 a!2901)))) (or (is-Undefined!10854 lt!621201) (ite (is-Found!10854 lt!621201) (= (select (arr!46521 a!2901) (index!45793 lt!621201)) (select (arr!46521 a!2901) j!112)) (ite (is-MissingZero!10854 lt!621201) (= (select (arr!46521 a!2901) (index!45792 lt!621201)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10854 lt!621201) (= (select (arr!46521 a!2901) (index!45795 lt!621201)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151875 (= lt!621201 e!798259)))

(declare-fun c!130800 () Bool)

(assert (=> d!151875 (= c!130800 (and (is-Intermediate!10854 lt!621202) (undefined!11666 lt!621202)))))

(assert (=> d!151875 (= lt!621202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46521 a!2901) j!112) mask!2840) (select (arr!46521 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151875 (validMask!0 mask!2840)))

(assert (=> d!151875 (= (seekEntryOrOpen!0 (select (arr!46521 a!2901) j!112) a!2901 mask!2840) lt!621201)))

(declare-fun b!1410540 () Bool)

(assert (=> b!1410540 (= e!798260 (MissingZero!10854 (index!45794 lt!621202)))))

(declare-fun b!1410541 () Bool)

(declare-fun c!130802 () Bool)

(assert (=> b!1410541 (= c!130802 (= lt!621200 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410541 (= e!798258 e!798260)))

(assert (= (and d!151875 c!130800) b!1410537))

(assert (= (and d!151875 (not c!130800)) b!1410538))

(assert (= (and b!1410538 c!130801) b!1410539))

(assert (= (and b!1410538 (not c!130801)) b!1410541))

(assert (= (and b!1410541 c!130802) b!1410540))

(assert (= (and b!1410541 (not c!130802)) b!1410536))

(assert (=> b!1410536 m!1300045))

(declare-fun m!1300219 () Bool)

(assert (=> b!1410536 m!1300219))

(declare-fun m!1300221 () Bool)

(assert (=> b!1410538 m!1300221))

(declare-fun m!1300223 () Bool)

(assert (=> d!151875 m!1300223))

(assert (=> d!151875 m!1300045))

(assert (=> d!151875 m!1300047))

