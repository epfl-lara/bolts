; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121700 () Bool)

(assert start!121700)

(declare-fun res!950529 () Bool)

(declare-fun e!799933 () Bool)

(assert (=> start!121700 (=> (not res!950529) (not e!799933))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121700 (= res!950529 (validMask!0 mask!2840))))

(assert (=> start!121700 e!799933))

(assert (=> start!121700 true))

(declare-datatypes ((array!96556 0))(
  ( (array!96557 (arr!46611 (Array (_ BitVec 32) (_ BitVec 64))) (size!47162 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96556)

(declare-fun array_inv!35556 (array!96556) Bool)

(assert (=> start!121700 (array_inv!35556 a!2901)))

(declare-fun b!1413430 () Bool)

(declare-fun e!799932 () Bool)

(declare-datatypes ((SeekEntryResult!10944 0))(
  ( (MissingZero!10944 (index!46155 (_ BitVec 32))) (Found!10944 (index!46156 (_ BitVec 32))) (Intermediate!10944 (undefined!11756 Bool) (index!46157 (_ BitVec 32)) (x!127738 (_ BitVec 32))) (Undefined!10944) (MissingVacant!10944 (index!46158 (_ BitVec 32))) )
))
(declare-fun lt!623026 () SeekEntryResult!10944)

(assert (=> b!1413430 (= e!799932 (and (bvsge (x!127738 lt!623026) #b00000000000000000000000000000000) (bvsle (x!127738 lt!623026) #b01111111111111111111111111111110)))))

(declare-fun e!799929 () Bool)

(assert (=> b!1413430 e!799929))

(declare-fun res!950538 () Bool)

(assert (=> b!1413430 (=> (not res!950538) (not e!799929))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!623030 () SeekEntryResult!10944)

(assert (=> b!1413430 (= res!950538 (and (not (undefined!11756 lt!623030)) (= (index!46157 lt!623030) i!1037) (bvslt (x!127738 lt!623030) (x!127738 lt!623026)) (= (select (store (arr!46611 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46157 lt!623030)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!623029 () (_ BitVec 32))

(declare-datatypes ((Unit!47812 0))(
  ( (Unit!47813) )
))
(declare-fun lt!623031 () Unit!47812)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47812)

(assert (=> b!1413430 (= lt!623031 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623029 (x!127738 lt!623026) (index!46157 lt!623026) (x!127738 lt!623030) (index!46157 lt!623030) (undefined!11756 lt!623030) mask!2840))))

(declare-fun b!1413431 () Bool)

(declare-fun res!950530 () Bool)

(assert (=> b!1413431 (=> (not res!950530) (not e!799933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96556 (_ BitVec 32)) Bool)

(assert (=> b!1413431 (= res!950530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413432 () Bool)

(declare-fun e!799930 () Bool)

(assert (=> b!1413432 (= e!799930 e!799932)))

(declare-fun res!950535 () Bool)

(assert (=> b!1413432 (=> res!950535 e!799932)))

(assert (=> b!1413432 (= res!950535 (or (= lt!623026 lt!623030) (not (is-Intermediate!10944 lt!623030))))))

(declare-fun lt!623027 () array!96556)

(declare-fun lt!623032 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96556 (_ BitVec 32)) SeekEntryResult!10944)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413432 (= lt!623030 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623032 mask!2840) lt!623032 lt!623027 mask!2840))))

(assert (=> b!1413432 (= lt!623032 (select (store (arr!46611 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413432 (= lt!623027 (array!96557 (store (arr!46611 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47162 a!2901)))))

(declare-fun b!1413433 () Bool)

(declare-fun res!950532 () Bool)

(assert (=> b!1413433 (=> (not res!950532) (not e!799933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413433 (= res!950532 (validKeyInArray!0 (select (arr!46611 a!2901) j!112)))))

(declare-fun b!1413434 () Bool)

(declare-fun res!950531 () Bool)

(assert (=> b!1413434 (=> (not res!950531) (not e!799933))))

(assert (=> b!1413434 (= res!950531 (and (= (size!47162 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47162 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47162 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413435 () Bool)

(declare-fun res!950533 () Bool)

(assert (=> b!1413435 (=> (not res!950533) (not e!799933))))

(assert (=> b!1413435 (= res!950533 (validKeyInArray!0 (select (arr!46611 a!2901) i!1037)))))

(declare-fun b!1413436 () Bool)

(declare-fun res!950534 () Bool)

(assert (=> b!1413436 (=> (not res!950534) (not e!799933))))

(declare-datatypes ((List!33310 0))(
  ( (Nil!33307) (Cons!33306 (h!34581 (_ BitVec 64)) (t!48011 List!33310)) )
))
(declare-fun arrayNoDuplicates!0 (array!96556 (_ BitVec 32) List!33310) Bool)

(assert (=> b!1413436 (= res!950534 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33307))))

(declare-fun e!799931 () Bool)

(declare-fun b!1413437 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96556 (_ BitVec 32)) SeekEntryResult!10944)

(assert (=> b!1413437 (= e!799931 (= (seekEntryOrOpen!0 (select (arr!46611 a!2901) j!112) a!2901 mask!2840) (Found!10944 j!112)))))

(declare-fun b!1413438 () Bool)

(assert (=> b!1413438 (= e!799933 (not e!799930))))

(declare-fun res!950537 () Bool)

(assert (=> b!1413438 (=> res!950537 e!799930)))

(assert (=> b!1413438 (= res!950537 (or (not (is-Intermediate!10944 lt!623026)) (undefined!11756 lt!623026)))))

(assert (=> b!1413438 e!799931))

(declare-fun res!950536 () Bool)

(assert (=> b!1413438 (=> (not res!950536) (not e!799931))))

(assert (=> b!1413438 (= res!950536 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623028 () Unit!47812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47812)

(assert (=> b!1413438 (= lt!623028 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1413438 (= lt!623026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623029 (select (arr!46611 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1413438 (= lt!623029 (toIndex!0 (select (arr!46611 a!2901) j!112) mask!2840))))

(declare-fun b!1413439 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96556 (_ BitVec 32)) SeekEntryResult!10944)

(assert (=> b!1413439 (= e!799929 (= (seekEntryOrOpen!0 lt!623032 lt!623027 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127738 lt!623030) (index!46157 lt!623030) (index!46157 lt!623030) (select (arr!46611 a!2901) j!112) lt!623027 mask!2840)))))

(assert (= (and start!121700 res!950529) b!1413434))

(assert (= (and b!1413434 res!950531) b!1413435))

(assert (= (and b!1413435 res!950533) b!1413433))

(assert (= (and b!1413433 res!950532) b!1413431))

(assert (= (and b!1413431 res!950530) b!1413436))

(assert (= (and b!1413436 res!950534) b!1413438))

(assert (= (and b!1413438 res!950536) b!1413437))

(assert (= (and b!1413438 (not res!950537)) b!1413432))

(assert (= (and b!1413432 (not res!950535)) b!1413430))

(assert (= (and b!1413430 res!950538) b!1413439))

(declare-fun m!1303943 () Bool)

(assert (=> b!1413432 m!1303943))

(assert (=> b!1413432 m!1303943))

(declare-fun m!1303945 () Bool)

(assert (=> b!1413432 m!1303945))

(declare-fun m!1303947 () Bool)

(assert (=> b!1413432 m!1303947))

(declare-fun m!1303949 () Bool)

(assert (=> b!1413432 m!1303949))

(declare-fun m!1303951 () Bool)

(assert (=> b!1413435 m!1303951))

(assert (=> b!1413435 m!1303951))

(declare-fun m!1303953 () Bool)

(assert (=> b!1413435 m!1303953))

(declare-fun m!1303955 () Bool)

(assert (=> b!1413438 m!1303955))

(declare-fun m!1303957 () Bool)

(assert (=> b!1413438 m!1303957))

(assert (=> b!1413438 m!1303955))

(declare-fun m!1303959 () Bool)

(assert (=> b!1413438 m!1303959))

(assert (=> b!1413438 m!1303955))

(declare-fun m!1303961 () Bool)

(assert (=> b!1413438 m!1303961))

(declare-fun m!1303963 () Bool)

(assert (=> b!1413438 m!1303963))

(declare-fun m!1303965 () Bool)

(assert (=> b!1413439 m!1303965))

(assert (=> b!1413439 m!1303955))

(assert (=> b!1413439 m!1303955))

(declare-fun m!1303967 () Bool)

(assert (=> b!1413439 m!1303967))

(assert (=> b!1413433 m!1303955))

(assert (=> b!1413433 m!1303955))

(declare-fun m!1303969 () Bool)

(assert (=> b!1413433 m!1303969))

(assert (=> b!1413430 m!1303947))

(declare-fun m!1303971 () Bool)

(assert (=> b!1413430 m!1303971))

(declare-fun m!1303973 () Bool)

(assert (=> b!1413430 m!1303973))

(declare-fun m!1303975 () Bool)

(assert (=> b!1413436 m!1303975))

(declare-fun m!1303977 () Bool)

(assert (=> b!1413431 m!1303977))

(declare-fun m!1303979 () Bool)

(assert (=> start!121700 m!1303979))

(declare-fun m!1303981 () Bool)

(assert (=> start!121700 m!1303981))

(assert (=> b!1413437 m!1303955))

(assert (=> b!1413437 m!1303955))

(declare-fun m!1303983 () Bool)

(assert (=> b!1413437 m!1303983))

(push 1)

(assert (not b!1413430))

(assert (not b!1413431))

(assert (not b!1413432))

(assert (not b!1413438))

(assert (not b!1413433))

(assert (not b!1413439))

(assert (not start!121700))

(assert (not b!1413436))

(assert (not b!1413437))

(assert (not b!1413435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1413533 () Bool)

(declare-fun e!799994 () Bool)

(declare-fun call!67105 () Bool)

(assert (=> b!1413533 (= e!799994 call!67105)))

(declare-fun bm!67102 () Bool)

(assert (=> bm!67102 (= call!67105 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1413534 () Bool)

(declare-fun e!799995 () Bool)

(assert (=> b!1413534 (= e!799994 e!799995)))

(declare-fun lt!623077 () (_ BitVec 64))

(assert (=> b!1413534 (= lt!623077 (select (arr!46611 a!2901) j!112))))

(declare-fun lt!623079 () Unit!47812)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96556 (_ BitVec 64) (_ BitVec 32)) Unit!47812)

(assert (=> b!1413534 (= lt!623079 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623077 j!112))))

(declare-fun arrayContainsKey!0 (array!96556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1413534 (arrayContainsKey!0 a!2901 lt!623077 #b00000000000000000000000000000000)))

(declare-fun lt!623078 () Unit!47812)

(assert (=> b!1413534 (= lt!623078 lt!623079)))

(declare-fun res!950573 () Bool)

(assert (=> b!1413534 (= res!950573 (= (seekEntryOrOpen!0 (select (arr!46611 a!2901) j!112) a!2901 mask!2840) (Found!10944 j!112)))))

(assert (=> b!1413534 (=> (not res!950573) (not e!799995))))

(declare-fun b!1413535 () Bool)

(declare-fun e!799996 () Bool)

(assert (=> b!1413535 (= e!799996 e!799994)))

(declare-fun c!130956 () Bool)

(assert (=> b!1413535 (= c!130956 (validKeyInArray!0 (select (arr!46611 a!2901) j!112)))))

(declare-fun b!1413536 () Bool)

(assert (=> b!1413536 (= e!799995 call!67105)))

(declare-fun d!152067 () Bool)

(declare-fun res!950574 () Bool)

(assert (=> d!152067 (=> res!950574 e!799996)))

(assert (=> d!152067 (= res!950574 (bvsge j!112 (size!47162 a!2901)))))

(assert (=> d!152067 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!799996)))

(assert (= (and d!152067 (not res!950574)) b!1413535))

(assert (= (and b!1413535 c!130956) b!1413534))

(assert (= (and b!1413535 (not c!130956)) b!1413533))

(assert (= (and b!1413534 res!950573) b!1413536))

(assert (= (or b!1413536 b!1413533) bm!67102))

(declare-fun m!1304031 () Bool)

(assert (=> bm!67102 m!1304031))

(assert (=> b!1413534 m!1303955))

(declare-fun m!1304035 () Bool)

(assert (=> b!1413534 m!1304035))

(declare-fun m!1304039 () Bool)

(assert (=> b!1413534 m!1304039))

(assert (=> b!1413534 m!1303955))

(assert (=> b!1413534 m!1303983))

(assert (=> b!1413535 m!1303955))

(assert (=> b!1413535 m!1303955))

(assert (=> b!1413535 m!1303969))

(assert (=> b!1413438 d!152067))

(declare-fun d!152081 () Bool)

(assert (=> d!152081 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623096 () Unit!47812)

(declare-fun choose!38 (array!96556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47812)

(assert (=> d!152081 (= lt!623096 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152081 (validMask!0 mask!2840)))

(assert (=> d!152081 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623096)))

(declare-fun bs!41212 () Bool)

(assert (= bs!41212 d!152081))

(assert (=> bs!41212 m!1303963))

(declare-fun m!1304057 () Bool)

(assert (=> bs!41212 m!1304057))

(assert (=> bs!41212 m!1303979))

(assert (=> b!1413438 d!152081))

(declare-fun e!800026 () SeekEntryResult!10944)

(declare-fun b!1413577 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413577 (= e!800026 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623029 #b00000000000000000000000000000000 mask!2840) (select (arr!46611 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1413578 () Bool)

(declare-fun lt!623114 () SeekEntryResult!10944)

(assert (=> b!1413578 (and (bvsge (index!46157 lt!623114) #b00000000000000000000000000000000) (bvslt (index!46157 lt!623114) (size!47162 a!2901)))))

(declare-fun res!950591 () Bool)

(assert (=> b!1413578 (= res!950591 (= (select (arr!46611 a!2901) (index!46157 lt!623114)) (select (arr!46611 a!2901) j!112)))))

(declare-fun e!800023 () Bool)

(assert (=> b!1413578 (=> res!950591 e!800023)))

(declare-fun e!800022 () Bool)

(assert (=> b!1413578 (= e!800022 e!800023)))

(declare-fun b!1413579 () Bool)

(declare-fun e!800025 () SeekEntryResult!10944)

(assert (=> b!1413579 (= e!800025 e!800026)))

(declare-fun c!130972 () Bool)

(declare-fun lt!623113 () (_ BitVec 64))

(assert (=> b!1413579 (= c!130972 (or (= lt!623113 (select (arr!46611 a!2901) j!112)) (= (bvadd lt!623113 lt!623113) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!152089 () Bool)

(declare-fun e!800024 () Bool)

(assert (=> d!152089 e!800024))

(declare-fun c!130971 () Bool)

(assert (=> d!152089 (= c!130971 (and (is-Intermediate!10944 lt!623114) (undefined!11756 lt!623114)))))

(assert (=> d!152089 (= lt!623114 e!800025)))

(declare-fun c!130970 () Bool)

(assert (=> d!152089 (= c!130970 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152089 (= lt!623113 (select (arr!46611 a!2901) lt!623029))))

(assert (=> d!152089 (validMask!0 mask!2840)))

(assert (=> d!152089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623029 (select (arr!46611 a!2901) j!112) a!2901 mask!2840) lt!623114)))

(declare-fun b!1413580 () Bool)

(assert (=> b!1413580 (and (bvsge (index!46157 lt!623114) #b00000000000000000000000000000000) (bvslt (index!46157 lt!623114) (size!47162 a!2901)))))

(assert (=> b!1413580 (= e!800023 (= (select (arr!46611 a!2901) (index!46157 lt!623114)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1413581 () Bool)

(assert (=> b!1413581 (= e!800026 (Intermediate!10944 false lt!623029 #b00000000000000000000000000000000))))

(declare-fun b!1413582 () Bool)

(assert (=> b!1413582 (= e!800024 (bvsge (x!127738 lt!623114) #b01111111111111111111111111111110))))

(declare-fun b!1413583 () Bool)

(assert (=> b!1413583 (= e!800025 (Intermediate!10944 true lt!623029 #b00000000000000000000000000000000))))

(declare-fun b!1413584 () Bool)

(assert (=> b!1413584 (and (bvsge (index!46157 lt!623114) #b00000000000000000000000000000000) (bvslt (index!46157 lt!623114) (size!47162 a!2901)))))

(declare-fun res!950590 () Bool)

(assert (=> b!1413584 (= res!950590 (= (select (arr!46611 a!2901) (index!46157 lt!623114)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413584 (=> res!950590 e!800023)))

(declare-fun b!1413585 () Bool)

(assert (=> b!1413585 (= e!800024 e!800022)))

(declare-fun res!950589 () Bool)

(assert (=> b!1413585 (= res!950589 (and (is-Intermediate!10944 lt!623114) (not (undefined!11756 lt!623114)) (bvslt (x!127738 lt!623114) #b01111111111111111111111111111110) (bvsge (x!127738 lt!623114) #b00000000000000000000000000000000) (bvsge (x!127738 lt!623114) #b00000000000000000000000000000000)))))

(assert (=> b!1413585 (=> (not res!950589) (not e!800022))))

(assert (= (and d!152089 c!130970) b!1413583))

(assert (= (and d!152089 (not c!130970)) b!1413579))

(assert (= (and b!1413579 c!130972) b!1413581))

(assert (= (and b!1413579 (not c!130972)) b!1413577))

(assert (= (and d!152089 c!130971) b!1413582))

(assert (= (and d!152089 (not c!130971)) b!1413585))

(assert (= (and b!1413585 res!950589) b!1413578))

(assert (= (and b!1413578 (not res!950591)) b!1413584))

(assert (= (and b!1413584 (not res!950590)) b!1413580))

(declare-fun m!1304079 () Bool)

(assert (=> b!1413577 m!1304079))

(assert (=> b!1413577 m!1304079))

(assert (=> b!1413577 m!1303955))

(declare-fun m!1304081 () Bool)

(assert (=> b!1413577 m!1304081))

(declare-fun m!1304083 () Bool)

(assert (=> b!1413580 m!1304083))

(assert (=> b!1413584 m!1304083))

(declare-fun m!1304085 () Bool)

(assert (=> d!152089 m!1304085))

(assert (=> d!152089 m!1303979))

(assert (=> b!1413578 m!1304083))

(assert (=> b!1413438 d!152089))

(declare-fun d!152107 () Bool)

(declare-fun lt!623128 () (_ BitVec 32))

(declare-fun lt!623127 () (_ BitVec 32))

(assert (=> d!152107 (= lt!623128 (bvmul (bvxor lt!623127 (bvlshr lt!623127 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152107 (= lt!623127 ((_ extract 31 0) (bvand (bvxor (select (arr!46611 a!2901) j!112) (bvlshr (select (arr!46611 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152107 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950592 (let ((h!34583 ((_ extract 31 0) (bvand (bvxor (select (arr!46611 a!2901) j!112) (bvlshr (select (arr!46611 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127744 (bvmul (bvxor h!34583 (bvlshr h!34583 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127744 (bvlshr x!127744 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950592 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950592 #b00000000000000000000000000000000))))))

(assert (=> d!152107 (= (toIndex!0 (select (arr!46611 a!2901) j!112) mask!2840) (bvand (bvxor lt!623128 (bvlshr lt!623128 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413438 d!152107))

(declare-fun d!152109 () Bool)

(assert (=> d!152109 (= (validKeyInArray!0 (select (arr!46611 a!2901) j!112)) (and (not (= (select (arr!46611 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46611 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413433 d!152109))

(declare-fun b!1413658 () Bool)

(declare-fun c!131001 () Bool)

(declare-fun lt!623145 () (_ BitVec 64))

(assert (=> b!1413658 (= c!131001 (= lt!623145 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800069 () SeekEntryResult!10944)

(declare-fun e!800070 () SeekEntryResult!10944)

(assert (=> b!1413658 (= e!800069 e!800070)))

(declare-fun b!1413659 () Bool)

(declare-fun lt!623147 () SeekEntryResult!10944)

(assert (=> b!1413659 (= e!800070 (seekKeyOrZeroReturnVacant!0 (x!127738 lt!623147) (index!46157 lt!623147) (index!46157 lt!623147) lt!623032 lt!623027 mask!2840))))

(declare-fun b!1413660 () Bool)

(declare-fun e!800071 () SeekEntryResult!10944)

(assert (=> b!1413660 (= e!800071 Undefined!10944)))

(declare-fun b!1413661 () Bool)

(assert (=> b!1413661 (= e!800069 (Found!10944 (index!46157 lt!623147)))))

(declare-fun d!152111 () Bool)

(declare-fun lt!623146 () SeekEntryResult!10944)

(assert (=> d!152111 (and (or (is-Undefined!10944 lt!623146) (not (is-Found!10944 lt!623146)) (and (bvsge (index!46156 lt!623146) #b00000000000000000000000000000000) (bvslt (index!46156 lt!623146) (size!47162 lt!623027)))) (or (is-Undefined!10944 lt!623146) (is-Found!10944 lt!623146) (not (is-MissingZero!10944 lt!623146)) (and (bvsge (index!46155 lt!623146) #b00000000000000000000000000000000) (bvslt (index!46155 lt!623146) (size!47162 lt!623027)))) (or (is-Undefined!10944 lt!623146) (is-Found!10944 lt!623146) (is-MissingZero!10944 lt!623146) (not (is-MissingVacant!10944 lt!623146)) (and (bvsge (index!46158 lt!623146) #b00000000000000000000000000000000) (bvslt (index!46158 lt!623146) (size!47162 lt!623027)))) (or (is-Undefined!10944 lt!623146) (ite (is-Found!10944 lt!623146) (= (select (arr!46611 lt!623027) (index!46156 lt!623146)) lt!623032) (ite (is-MissingZero!10944 lt!623146) (= (select (arr!46611 lt!623027) (index!46155 lt!623146)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10944 lt!623146) (= (select (arr!46611 lt!623027) (index!46158 lt!623146)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152111 (= lt!623146 e!800071)))

(declare-fun c!131002 () Bool)

(assert (=> d!152111 (= c!131002 (and (is-Intermediate!10944 lt!623147) (undefined!11756 lt!623147)))))

(assert (=> d!152111 (= lt!623147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623032 mask!2840) lt!623032 lt!623027 mask!2840))))

(assert (=> d!152111 (validMask!0 mask!2840)))

(assert (=> d!152111 (= (seekEntryOrOpen!0 lt!623032 lt!623027 mask!2840) lt!623146)))

(declare-fun b!1413662 () Bool)

(assert (=> b!1413662 (= e!800071 e!800069)))

(assert (=> b!1413662 (= lt!623145 (select (arr!46611 lt!623027) (index!46157 lt!623147)))))

(declare-fun c!131000 () Bool)

(assert (=> b!1413662 (= c!131000 (= lt!623145 lt!623032))))

(declare-fun b!1413663 () Bool)

(assert (=> b!1413663 (= e!800070 (MissingZero!10944 (index!46157 lt!623147)))))

(assert (= (and d!152111 c!131002) b!1413660))

(assert (= (and d!152111 (not c!131002)) b!1413662))

(assert (= (and b!1413662 c!131000) b!1413661))

(assert (= (and b!1413662 (not c!131000)) b!1413658))

(assert (= (and b!1413658 c!131001) b!1413663))

(assert (= (and b!1413658 (not c!131001)) b!1413659))

(declare-fun m!1304109 () Bool)

(assert (=> b!1413659 m!1304109))

