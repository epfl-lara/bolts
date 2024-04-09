; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119864 () Bool)

(assert start!119864)

(declare-fun b!1395464 () Bool)

(declare-fun res!934817 () Bool)

(declare-fun e!790045 () Bool)

(assert (=> b!1395464 (=> (not res!934817) (not e!790045))))

(declare-datatypes ((array!95413 0))(
  ( (array!95414 (arr!46059 (Array (_ BitVec 32) (_ BitVec 64))) (size!46610 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95413)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395464 (= res!934817 (validKeyInArray!0 (select (arr!46059 a!2901) j!112)))))

(declare-fun b!1395465 () Bool)

(declare-fun e!790048 () Bool)

(declare-fun e!790047 () Bool)

(assert (=> b!1395465 (= e!790048 e!790047)))

(declare-fun res!934818 () Bool)

(assert (=> b!1395465 (=> res!934818 e!790047)))

(declare-fun lt!612964 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10398 0))(
  ( (MissingZero!10398 (index!43962 (_ BitVec 32))) (Found!10398 (index!43963 (_ BitVec 32))) (Intermediate!10398 (undefined!11210 Bool) (index!43964 (_ BitVec 32)) (x!125627 (_ BitVec 32))) (Undefined!10398) (MissingVacant!10398 (index!43965 (_ BitVec 32))) )
))
(declare-fun lt!612962 () SeekEntryResult!10398)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95413 (_ BitVec 32)) SeekEntryResult!10398)

(assert (=> b!1395465 (= res!934818 (= lt!612962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612964 (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901)) mask!2840)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395465 (= lt!612964 (toIndex!0 (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1395466 () Bool)

(assert (=> b!1395466 (= e!790047 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!612964 #b00000000000000000000000000000000) (bvslt lt!612964 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(declare-fun e!790049 () Bool)

(declare-fun b!1395467 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95413 (_ BitVec 32)) SeekEntryResult!10398)

(assert (=> b!1395467 (= e!790049 (= (seekEntryOrOpen!0 (select (arr!46059 a!2901) j!112) a!2901 mask!2840) (Found!10398 j!112)))))

(declare-fun b!1395468 () Bool)

(declare-fun res!934823 () Bool)

(assert (=> b!1395468 (=> (not res!934823) (not e!790045))))

(declare-datatypes ((List!32758 0))(
  ( (Nil!32755) (Cons!32754 (h!33990 (_ BitVec 64)) (t!47459 List!32758)) )
))
(declare-fun arrayNoDuplicates!0 (array!95413 (_ BitVec 32) List!32758) Bool)

(assert (=> b!1395468 (= res!934823 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32755))))

(declare-fun b!1395469 () Bool)

(declare-fun res!934822 () Bool)

(assert (=> b!1395469 (=> (not res!934822) (not e!790045))))

(assert (=> b!1395469 (= res!934822 (validKeyInArray!0 (select (arr!46059 a!2901) i!1037)))))

(declare-fun b!1395470 () Bool)

(assert (=> b!1395470 (= e!790045 (not e!790048))))

(declare-fun res!934824 () Bool)

(assert (=> b!1395470 (=> res!934824 e!790048)))

(assert (=> b!1395470 (= res!934824 (or (not (is-Intermediate!10398 lt!612962)) (undefined!11210 lt!612962)))))

(assert (=> b!1395470 e!790049))

(declare-fun res!934816 () Bool)

(assert (=> b!1395470 (=> (not res!934816) (not e!790049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95413 (_ BitVec 32)) Bool)

(assert (=> b!1395470 (= res!934816 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46750 0))(
  ( (Unit!46751) )
))
(declare-fun lt!612963 () Unit!46750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46750)

(assert (=> b!1395470 (= lt!612963 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395470 (= lt!612962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46059 a!2901) j!112) mask!2840) (select (arr!46059 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!934820 () Bool)

(assert (=> start!119864 (=> (not res!934820) (not e!790045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119864 (= res!934820 (validMask!0 mask!2840))))

(assert (=> start!119864 e!790045))

(assert (=> start!119864 true))

(declare-fun array_inv!35004 (array!95413) Bool)

(assert (=> start!119864 (array_inv!35004 a!2901)))

(declare-fun b!1395471 () Bool)

(declare-fun res!934821 () Bool)

(assert (=> b!1395471 (=> (not res!934821) (not e!790045))))

(assert (=> b!1395471 (= res!934821 (and (= (size!46610 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46610 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46610 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395472 () Bool)

(declare-fun res!934819 () Bool)

(assert (=> b!1395472 (=> (not res!934819) (not e!790045))))

(assert (=> b!1395472 (= res!934819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119864 res!934820) b!1395471))

(assert (= (and b!1395471 res!934821) b!1395469))

(assert (= (and b!1395469 res!934822) b!1395464))

(assert (= (and b!1395464 res!934817) b!1395472))

(assert (= (and b!1395472 res!934819) b!1395468))

(assert (= (and b!1395468 res!934823) b!1395470))

(assert (= (and b!1395470 res!934816) b!1395467))

(assert (= (and b!1395470 (not res!934824)) b!1395465))

(assert (= (and b!1395465 (not res!934818)) b!1395466))

(declare-fun m!1282039 () Bool)

(assert (=> b!1395470 m!1282039))

(declare-fun m!1282041 () Bool)

(assert (=> b!1395470 m!1282041))

(assert (=> b!1395470 m!1282039))

(declare-fun m!1282043 () Bool)

(assert (=> b!1395470 m!1282043))

(assert (=> b!1395470 m!1282041))

(assert (=> b!1395470 m!1282039))

(declare-fun m!1282045 () Bool)

(assert (=> b!1395470 m!1282045))

(declare-fun m!1282047 () Bool)

(assert (=> b!1395470 m!1282047))

(assert (=> b!1395464 m!1282039))

(assert (=> b!1395464 m!1282039))

(declare-fun m!1282049 () Bool)

(assert (=> b!1395464 m!1282049))

(assert (=> b!1395467 m!1282039))

(assert (=> b!1395467 m!1282039))

(declare-fun m!1282051 () Bool)

(assert (=> b!1395467 m!1282051))

(declare-fun m!1282053 () Bool)

(assert (=> start!119864 m!1282053))

(declare-fun m!1282055 () Bool)

(assert (=> start!119864 m!1282055))

(declare-fun m!1282057 () Bool)

(assert (=> b!1395472 m!1282057))

(declare-fun m!1282059 () Bool)

(assert (=> b!1395465 m!1282059))

(declare-fun m!1282061 () Bool)

(assert (=> b!1395465 m!1282061))

(assert (=> b!1395465 m!1282061))

(declare-fun m!1282063 () Bool)

(assert (=> b!1395465 m!1282063))

(assert (=> b!1395465 m!1282061))

(declare-fun m!1282065 () Bool)

(assert (=> b!1395465 m!1282065))

(declare-fun m!1282067 () Bool)

(assert (=> b!1395469 m!1282067))

(assert (=> b!1395469 m!1282067))

(declare-fun m!1282069 () Bool)

(assert (=> b!1395469 m!1282069))

(declare-fun m!1282071 () Bool)

(assert (=> b!1395468 m!1282071))

(push 1)

(assert (not b!1395469))

(assert (not start!119864))

(assert (not b!1395465))

(assert (not b!1395472))

(assert (not b!1395467))

(assert (not b!1395468))

(assert (not b!1395464))

(assert (not b!1395470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1395497 () Bool)

(declare-fun e!790068 () Bool)

(declare-fun call!66829 () Bool)

(assert (=> b!1395497 (= e!790068 call!66829)))

(declare-fun d!150653 () Bool)

(declare-fun res!934837 () Bool)

(declare-fun e!790070 () Bool)

(assert (=> d!150653 (=> res!934837 e!790070)))

(assert (=> d!150653 (= res!934837 (bvsge #b00000000000000000000000000000000 (size!46610 a!2901)))))

(assert (=> d!150653 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!790070)))

(declare-fun bm!66826 () Bool)

(assert (=> bm!66826 (= call!66829 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395498 () Bool)

(declare-fun e!790069 () Bool)

(assert (=> b!1395498 (= e!790069 e!790068)))

(declare-fun lt!612985 () (_ BitVec 64))

(assert (=> b!1395498 (= lt!612985 (select (arr!46059 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!612987 () Unit!46750)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95413 (_ BitVec 64) (_ BitVec 32)) Unit!46750)

(assert (=> b!1395498 (= lt!612987 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612985 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1395498 (arrayContainsKey!0 a!2901 lt!612985 #b00000000000000000000000000000000)))

(declare-fun lt!612986 () Unit!46750)

(assert (=> b!1395498 (= lt!612986 lt!612987)))

(declare-fun res!934838 () Bool)

(assert (=> b!1395498 (= res!934838 (= (seekEntryOrOpen!0 (select (arr!46059 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10398 #b00000000000000000000000000000000)))))

(assert (=> b!1395498 (=> (not res!934838) (not e!790068))))

(declare-fun b!1395499 () Bool)

(assert (=> b!1395499 (= e!790070 e!790069)))

(declare-fun c!129786 () Bool)

(assert (=> b!1395499 (= c!129786 (validKeyInArray!0 (select (arr!46059 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395500 () Bool)

(assert (=> b!1395500 (= e!790069 call!66829)))

(assert (= (and d!150653 (not res!934837)) b!1395499))

(assert (= (and b!1395499 c!129786) b!1395498))

(assert (= (and b!1395499 (not c!129786)) b!1395500))

(assert (= (and b!1395498 res!934838) b!1395497))

(assert (= (or b!1395497 b!1395500) bm!66826))

(declare-fun m!1282091 () Bool)

(assert (=> bm!66826 m!1282091))

(declare-fun m!1282093 () Bool)

(assert (=> b!1395498 m!1282093))

(declare-fun m!1282095 () Bool)

(assert (=> b!1395498 m!1282095))

(declare-fun m!1282097 () Bool)

(assert (=> b!1395498 m!1282097))

(assert (=> b!1395498 m!1282093))

(declare-fun m!1282101 () Bool)

(assert (=> b!1395498 m!1282101))

(assert (=> b!1395499 m!1282093))

(assert (=> b!1395499 m!1282093))

(declare-fun m!1282103 () Bool)

(assert (=> b!1395499 m!1282103))

(assert (=> b!1395472 d!150653))

(declare-fun b!1395501 () Bool)

(declare-fun e!790071 () Bool)

(declare-fun call!66830 () Bool)

(assert (=> b!1395501 (= e!790071 call!66830)))

(declare-fun d!150663 () Bool)

(declare-fun res!934839 () Bool)

(declare-fun e!790073 () Bool)

(assert (=> d!150663 (=> res!934839 e!790073)))

(assert (=> d!150663 (= res!934839 (bvsge j!112 (size!46610 a!2901)))))

(assert (=> d!150663 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!790073)))

(declare-fun bm!66827 () Bool)

(assert (=> bm!66827 (= call!66830 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395502 () Bool)

(declare-fun e!790072 () Bool)

(assert (=> b!1395502 (= e!790072 e!790071)))

(declare-fun lt!612989 () (_ BitVec 64))

(assert (=> b!1395502 (= lt!612989 (select (arr!46059 a!2901) j!112))))

(declare-fun lt!612991 () Unit!46750)

(assert (=> b!1395502 (= lt!612991 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612989 j!112))))

(assert (=> b!1395502 (arrayContainsKey!0 a!2901 lt!612989 #b00000000000000000000000000000000)))

(declare-fun lt!612990 () Unit!46750)

(assert (=> b!1395502 (= lt!612990 lt!612991)))

(declare-fun res!934840 () Bool)

(assert (=> b!1395502 (= res!934840 (= (seekEntryOrOpen!0 (select (arr!46059 a!2901) j!112) a!2901 mask!2840) (Found!10398 j!112)))))

(assert (=> b!1395502 (=> (not res!934840) (not e!790071))))

(declare-fun b!1395503 () Bool)

(assert (=> b!1395503 (= e!790073 e!790072)))

(declare-fun c!129787 () Bool)

(assert (=> b!1395503 (= c!129787 (validKeyInArray!0 (select (arr!46059 a!2901) j!112)))))

(declare-fun b!1395504 () Bool)

(assert (=> b!1395504 (= e!790072 call!66830)))

(assert (= (and d!150663 (not res!934839)) b!1395503))

(assert (= (and b!1395503 c!129787) b!1395502))

(assert (= (and b!1395503 (not c!129787)) b!1395504))

(assert (= (and b!1395502 res!934840) b!1395501))

(assert (= (or b!1395501 b!1395504) bm!66827))

(declare-fun m!1282105 () Bool)

(assert (=> bm!66827 m!1282105))

(assert (=> b!1395502 m!1282039))

(declare-fun m!1282107 () Bool)

(assert (=> b!1395502 m!1282107))

(declare-fun m!1282109 () Bool)

(assert (=> b!1395502 m!1282109))

(assert (=> b!1395502 m!1282039))

(assert (=> b!1395502 m!1282051))

(assert (=> b!1395503 m!1282039))

(assert (=> b!1395503 m!1282039))

(assert (=> b!1395503 m!1282049))

(assert (=> b!1395470 d!150663))

(declare-fun d!150665 () Bool)

(assert (=> d!150665 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612994 () Unit!46750)

(declare-fun choose!38 (array!95413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46750)

(assert (=> d!150665 (= lt!612994 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150665 (validMask!0 mask!2840)))

(assert (=> d!150665 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!612994)))

(declare-fun bs!40611 () Bool)

(assert (= bs!40611 d!150665))

(assert (=> bs!40611 m!1282047))

(declare-fun m!1282111 () Bool)

(assert (=> bs!40611 m!1282111))

(assert (=> bs!40611 m!1282053))

(assert (=> b!1395470 d!150665))

(declare-fun b!1395562 () Bool)

(declare-fun e!790110 () SeekEntryResult!10398)

(assert (=> b!1395562 (= e!790110 (Intermediate!10398 false (toIndex!0 (select (arr!46059 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395563 () Bool)

(declare-fun lt!613019 () SeekEntryResult!10398)

(assert (=> b!1395563 (and (bvsge (index!43964 lt!613019) #b00000000000000000000000000000000) (bvslt (index!43964 lt!613019) (size!46610 a!2901)))))

(declare-fun res!934864 () Bool)

(assert (=> b!1395563 (= res!934864 (= (select (arr!46059 a!2901) (index!43964 lt!613019)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!790109 () Bool)

(assert (=> b!1395563 (=> res!934864 e!790109)))

(declare-fun b!1395564 () Bool)

(declare-fun e!790108 () SeekEntryResult!10398)

(assert (=> b!1395564 (= e!790108 e!790110)))

(declare-fun c!129808 () Bool)

(declare-fun lt!613017 () (_ BitVec 64))

(assert (=> b!1395564 (= c!129808 (or (= lt!613017 (select (arr!46059 a!2901) j!112)) (= (bvadd lt!613017 lt!613017) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1395565 () Bool)

(assert (=> b!1395565 (= e!790108 (Intermediate!10398 true (toIndex!0 (select (arr!46059 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!150669 () Bool)

(declare-fun e!790111 () Bool)

(assert (=> d!150669 e!790111))

(declare-fun c!129806 () Bool)

(assert (=> d!150669 (= c!129806 (and (is-Intermediate!10398 lt!613019) (undefined!11210 lt!613019)))))

(assert (=> d!150669 (= lt!613019 e!790108)))

(declare-fun c!129807 () Bool)

(assert (=> d!150669 (= c!129807 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150669 (= lt!613017 (select (arr!46059 a!2901) (toIndex!0 (select (arr!46059 a!2901) j!112) mask!2840)))))

(assert (=> d!150669 (validMask!0 mask!2840)))

(assert (=> d!150669 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46059 a!2901) j!112) mask!2840) (select (arr!46059 a!2901) j!112) a!2901 mask!2840) lt!613019)))

(declare-fun b!1395566 () Bool)

(assert (=> b!1395566 (and (bvsge (index!43964 lt!613019) #b00000000000000000000000000000000) (bvslt (index!43964 lt!613019) (size!46610 a!2901)))))

(assert (=> b!1395566 (= e!790109 (= (select (arr!46059 a!2901) (index!43964 lt!613019)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1395567 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395567 (= e!790110 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46059 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46059 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395568 () Bool)

(assert (=> b!1395568 (and (bvsge (index!43964 lt!613019) #b00000000000000000000000000000000) (bvslt (index!43964 lt!613019) (size!46610 a!2901)))))

(declare-fun res!934865 () Bool)

(assert (=> b!1395568 (= res!934865 (= (select (arr!46059 a!2901) (index!43964 lt!613019)) (select (arr!46059 a!2901) j!112)))))

(assert (=> b!1395568 (=> res!934865 e!790109)))

(declare-fun e!790112 () Bool)

(assert (=> b!1395568 (= e!790112 e!790109)))

(declare-fun b!1395569 () Bool)

(assert (=> b!1395569 (= e!790111 (bvsge (x!125627 lt!613019) #b01111111111111111111111111111110))))

(declare-fun b!1395570 () Bool)

(assert (=> b!1395570 (= e!790111 e!790112)))

(declare-fun res!934863 () Bool)

(assert (=> b!1395570 (= res!934863 (and (is-Intermediate!10398 lt!613019) (not (undefined!11210 lt!613019)) (bvslt (x!125627 lt!613019) #b01111111111111111111111111111110) (bvsge (x!125627 lt!613019) #b00000000000000000000000000000000) (bvsge (x!125627 lt!613019) #b00000000000000000000000000000000)))))

(assert (=> b!1395570 (=> (not res!934863) (not e!790112))))

(assert (= (and d!150669 c!129807) b!1395565))

(assert (= (and d!150669 (not c!129807)) b!1395564))

(assert (= (and b!1395564 c!129808) b!1395562))

(assert (= (and b!1395564 (not c!129808)) b!1395567))

(assert (= (and d!150669 c!129806) b!1395569))

(assert (= (and d!150669 (not c!129806)) b!1395570))

(assert (= (and b!1395570 res!934863) b!1395568))

(assert (= (and b!1395568 (not res!934865)) b!1395563))

(assert (= (and b!1395563 (not res!934864)) b!1395566))

(declare-fun m!1282129 () Bool)

(assert (=> b!1395568 m!1282129))

(assert (=> b!1395566 m!1282129))

(assert (=> b!1395567 m!1282041))

(declare-fun m!1282131 () Bool)

(assert (=> b!1395567 m!1282131))

(assert (=> b!1395567 m!1282131))

(assert (=> b!1395567 m!1282039))

(declare-fun m!1282133 () Bool)

(assert (=> b!1395567 m!1282133))

(assert (=> d!150669 m!1282041))

(declare-fun m!1282135 () Bool)

(assert (=> d!150669 m!1282135))

(assert (=> d!150669 m!1282053))

(assert (=> b!1395563 m!1282129))

(assert (=> b!1395470 d!150669))

(declare-fun d!150679 () Bool)

(declare-fun lt!613030 () (_ BitVec 32))

(declare-fun lt!613029 () (_ BitVec 32))

(assert (=> d!150679 (= lt!613030 (bvmul (bvxor lt!613029 (bvlshr lt!613029 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150679 (= lt!613029 ((_ extract 31 0) (bvand (bvxor (select (arr!46059 a!2901) j!112) (bvlshr (select (arr!46059 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150679 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934866 (let ((h!33992 ((_ extract 31 0) (bvand (bvxor (select (arr!46059 a!2901) j!112) (bvlshr (select (arr!46059 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125631 (bvmul (bvxor h!33992 (bvlshr h!33992 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125631 (bvlshr x!125631 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934866 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934866 #b00000000000000000000000000000000))))))

(assert (=> d!150679 (= (toIndex!0 (select (arr!46059 a!2901) j!112) mask!2840) (bvand (bvxor lt!613030 (bvlshr lt!613030 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1395470 d!150679))

(declare-fun b!1395571 () Bool)

(declare-fun e!790115 () SeekEntryResult!10398)

(assert (=> b!1395571 (= e!790115 (Intermediate!10398 false lt!612964 #b00000000000000000000000000000000))))

(declare-fun b!1395572 () Bool)

(declare-fun lt!613032 () SeekEntryResult!10398)

(assert (=> b!1395572 (and (bvsge (index!43964 lt!613032) #b00000000000000000000000000000000) (bvslt (index!43964 lt!613032) (size!46610 (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901)))))))

(declare-fun res!934868 () Bool)

(assert (=> b!1395572 (= res!934868 (= (select (arr!46059 (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901))) (index!43964 lt!613032)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!790114 () Bool)

(assert (=> b!1395572 (=> res!934868 e!790114)))

(declare-fun b!1395573 () Bool)

(declare-fun e!790113 () SeekEntryResult!10398)

(assert (=> b!1395573 (= e!790113 e!790115)))

(declare-fun lt!613031 () (_ BitVec 64))

(declare-fun c!129811 () Bool)

(assert (=> b!1395573 (= c!129811 (or (= lt!613031 (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!613031 lt!613031) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1395574 () Bool)

(assert (=> b!1395574 (= e!790113 (Intermediate!10398 true lt!612964 #b00000000000000000000000000000000))))

(declare-fun d!150681 () Bool)

(declare-fun e!790116 () Bool)

(assert (=> d!150681 e!790116))

(declare-fun c!129809 () Bool)

(assert (=> d!150681 (= c!129809 (and (is-Intermediate!10398 lt!613032) (undefined!11210 lt!613032)))))

(assert (=> d!150681 (= lt!613032 e!790113)))

(declare-fun c!129810 () Bool)

(assert (=> d!150681 (= c!129810 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150681 (= lt!613031 (select (arr!46059 (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901))) lt!612964))))

(assert (=> d!150681 (validMask!0 mask!2840)))

(assert (=> d!150681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612964 (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901)) mask!2840) lt!613032)))

(declare-fun b!1395575 () Bool)

(assert (=> b!1395575 (and (bvsge (index!43964 lt!613032) #b00000000000000000000000000000000) (bvslt (index!43964 lt!613032) (size!46610 (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901)))))))

(assert (=> b!1395575 (= e!790114 (= (select (arr!46059 (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901))) (index!43964 lt!613032)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1395576 () Bool)

(assert (=> b!1395576 (= e!790115 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!612964 #b00000000000000000000000000000000 mask!2840) (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901)) mask!2840))))

(declare-fun b!1395577 () Bool)

(assert (=> b!1395577 (and (bvsge (index!43964 lt!613032) #b00000000000000000000000000000000) (bvslt (index!43964 lt!613032) (size!46610 (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901)))))))

(declare-fun res!934869 () Bool)

(assert (=> b!1395577 (= res!934869 (= (select (arr!46059 (array!95414 (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46610 a!2901))) (index!43964 lt!613032)) (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1395577 (=> res!934869 e!790114)))

(declare-fun e!790117 () Bool)

(assert (=> b!1395577 (= e!790117 e!790114)))

(declare-fun b!1395578 () Bool)

(assert (=> b!1395578 (= e!790116 (bvsge (x!125627 lt!613032) #b01111111111111111111111111111110))))

(declare-fun b!1395579 () Bool)

(assert (=> b!1395579 (= e!790116 e!790117)))

(declare-fun res!934867 () Bool)

(assert (=> b!1395579 (= res!934867 (and (is-Intermediate!10398 lt!613032) (not (undefined!11210 lt!613032)) (bvslt (x!125627 lt!613032) #b01111111111111111111111111111110) (bvsge (x!125627 lt!613032) #b00000000000000000000000000000000) (bvsge (x!125627 lt!613032) #b00000000000000000000000000000000)))))

(assert (=> b!1395579 (=> (not res!934867) (not e!790117))))

(assert (= (and d!150681 c!129810) b!1395574))

(assert (= (and d!150681 (not c!129810)) b!1395573))

(assert (= (and b!1395573 c!129811) b!1395571))

(assert (= (and b!1395573 (not c!129811)) b!1395576))

(assert (= (and d!150681 c!129809) b!1395578))

(assert (= (and d!150681 (not c!129809)) b!1395579))

(assert (= (and b!1395579 res!934867) b!1395577))

(assert (= (and b!1395577 (not res!934869)) b!1395572))

(assert (= (and b!1395572 (not res!934868)) b!1395575))

(declare-fun m!1282137 () Bool)

(assert (=> b!1395577 m!1282137))

(assert (=> b!1395575 m!1282137))

(declare-fun m!1282139 () Bool)

(assert (=> b!1395576 m!1282139))

(assert (=> b!1395576 m!1282139))

(assert (=> b!1395576 m!1282061))

(declare-fun m!1282141 () Bool)

(assert (=> b!1395576 m!1282141))

(declare-fun m!1282143 () Bool)

(assert (=> d!150681 m!1282143))

(assert (=> d!150681 m!1282053))

(assert (=> b!1395572 m!1282137))

(assert (=> b!1395465 d!150681))

(declare-fun d!150683 () Bool)

(declare-fun lt!613034 () (_ BitVec 32))

(declare-fun lt!613033 () (_ BitVec 32))

(assert (=> d!150683 (= lt!613034 (bvmul (bvxor lt!613033 (bvlshr lt!613033 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150683 (= lt!613033 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150683 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934866 (let ((h!33992 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125631 (bvmul (bvxor h!33992 (bvlshr h!33992 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125631 (bvlshr x!125631 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934866 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934866 #b00000000000000000000000000000000))))))

(assert (=> d!150683 (= (toIndex!0 (select (store (arr!46059 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!613034 (bvlshr lt!613034 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1395465 d!150683))

(declare-fun d!150685 () Bool)

(assert (=> d!150685 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119864 d!150685))

(declare-fun d!150689 () Bool)

(assert (=> d!150689 (= (array_inv!35004 a!2901) (bvsge (size!46610 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119864 d!150689))

(declare-fun d!150691 () Bool)

(assert (=> d!150691 (= (validKeyInArray!0 (select (arr!46059 a!2901) i!1037)) (and (not (= (select (arr!46059 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46059 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1395469 d!150691))

(declare-fun d!150695 () Bool)

(assert (=> d!150695 (= (validKeyInArray!0 (select (arr!46059 a!2901) j!112)) (and (not (= (select (arr!46059 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46059 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1395464 d!150695))

(declare-fun b!1395675 () Bool)

(declare-fun e!790177 () SeekEntryResult!10398)

(declare-fun lt!613071 () SeekEntryResult!10398)

(assert (=> b!1395675 (= e!790177 (MissingZero!10398 (index!43964 lt!613071)))))

(declare-fun b!1395676 () Bool)

(declare-fun e!790178 () SeekEntryResult!10398)

(declare-fun e!790176 () SeekEntryResult!10398)

(assert (=> b!1395676 (= e!790178 e!790176)))

(declare-fun lt!613069 () (_ BitVec 64))

(assert (=> b!1395676 (= lt!613069 (select (arr!46059 a!2901) (index!43964 lt!613071)))))

(declare-fun c!129847 () Bool)

(assert (=> b!1395676 (= c!129847 (= lt!613069 (select (arr!46059 a!2901) j!112)))))

(declare-fun b!1395677 () Bool)

(declare-fun c!129845 () Bool)

(assert (=> b!1395677 (= c!129845 (= lt!613069 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395677 (= e!790176 e!790177)))

(declare-fun d!150697 () Bool)

(declare-fun lt!613070 () SeekEntryResult!10398)

(assert (=> d!150697 (and (or (is-Undefined!10398 lt!613070) (not (is-Found!10398 lt!613070)) (and (bvsge (index!43963 lt!613070) #b00000000000000000000000000000000) (bvslt (index!43963 lt!613070) (size!46610 a!2901)))) (or (is-Undefined!10398 lt!613070) (is-Found!10398 lt!613070) (not (is-MissingZero!10398 lt!613070)) (and (bvsge (index!43962 lt!613070) #b00000000000000000000000000000000) (bvslt (index!43962 lt!613070) (size!46610 a!2901)))) (or (is-Undefined!10398 lt!613070) (is-Found!10398 lt!613070) (is-MissingZero!10398 lt!613070) (not (is-MissingVacant!10398 lt!613070)) (and (bvsge (index!43965 lt!613070) #b00000000000000000000000000000000) (bvslt (index!43965 lt!613070) (size!46610 a!2901)))) (or (is-Undefined!10398 lt!613070) (ite (is-Found!10398 lt!613070) (= (select (arr!46059 a!2901) (index!43963 lt!613070)) (select (arr!46059 a!2901) j!112)) (ite (is-MissingZero!10398 lt!613070) (= (select (arr!46059 a!2901) (index!43962 lt!613070)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10398 lt!613070) (= (select (arr!46059 a!2901) (index!43965 lt!613070)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150697 (= lt!613070 e!790178)))

(declare-fun c!129846 () Bool)

(assert (=> d!150697 (= c!129846 (and (is-Intermediate!10398 lt!613071) (undefined!11210 lt!613071)))))

(assert (=> d!150697 (= lt!613071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46059 a!2901) j!112) mask!2840) (select (arr!46059 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150697 (validMask!0 mask!2840)))

(assert (=> d!150697 (= (seekEntryOrOpen!0 (select (arr!46059 a!2901) j!112) a!2901 mask!2840) lt!613070)))

(declare-fun b!1395678 () Bool)

(assert (=> b!1395678 (= e!790178 Undefined!10398)))

(declare-fun b!1395679 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95413 (_ BitVec 32)) SeekEntryResult!10398)

(assert (=> b!1395679 (= e!790177 (seekKeyOrZeroReturnVacant!0 (x!125627 lt!613071) (index!43964 lt!613071) (index!43964 lt!613071) (select (arr!46059 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395680 () Bool)

(assert (=> b!1395680 (= e!790176 (Found!10398 (index!43964 lt!613071)))))

(assert (= (and d!150697 c!129846) b!1395678))

(assert (= (and d!150697 (not c!129846)) b!1395676))

(assert (= (and b!1395676 c!129847) b!1395680))

(assert (= (and b!1395676 (not c!129847)) b!1395677))

(assert (= (and b!1395677 c!129845) b!1395675))

(assert (= (and b!1395677 (not c!129845)) b!1395679))

(declare-fun m!1282187 () Bool)

(assert (=> b!1395676 m!1282187))

(assert (=> d!150697 m!1282039))

(assert (=> d!150697 m!1282041))

(declare-fun m!1282189 () Bool)

(assert (=> d!150697 m!1282189))

(declare-fun m!1282191 () Bool)

(assert (=> d!150697 m!1282191))

(assert (=> d!150697 m!1282041))

(assert (=> d!150697 m!1282039))

(assert (=> d!150697 m!1282045))

(assert (=> d!150697 m!1282053))

(declare-fun m!1282193 () Bool)

(assert (=> d!150697 m!1282193))

(assert (=> b!1395679 m!1282039))

(declare-fun m!1282197 () Bool)

(assert (=> b!1395679 m!1282197))

(assert (=> b!1395467 d!150697))

(declare-fun b!1395705 () Bool)

(declare-fun e!790197 () Bool)

(declare-fun call!66843 () Bool)

(assert (=> b!1395705 (= e!790197 call!66843)))

(declare-fun bm!66840 () Bool)

(declare-fun c!129854 () Bool)

(assert (=> bm!66840 (= call!66843 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129854 (Cons!32754 (select (arr!46059 a!2901) #b00000000000000000000000000000000) Nil!32755) Nil!32755)))))

(declare-fun b!1395707 () Bool)

(declare-fun e!790199 () Bool)

(assert (=> b!1395707 (= e!790199 e!790197)))

(assert (=> b!1395707 (= c!129854 (validKeyInArray!0 (select (arr!46059 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150721 () Bool)

(declare-fun res!934912 () Bool)

(declare-fun e!790198 () Bool)

(assert (=> d!150721 (=> res!934912 e!790198)))

(assert (=> d!150721 (= res!934912 (bvsge #b00000000000000000000000000000000 (size!46610 a!2901)))))

(assert (=> d!150721 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32755) e!790198)))

(declare-fun b!1395706 () Bool)

(assert (=> b!1395706 (= e!790197 call!66843)))

(declare-fun b!1395708 () Bool)

(declare-fun e!790196 () Bool)

(declare-fun contains!9792 (List!32758 (_ BitVec 64)) Bool)

(assert (=> b!1395708 (= e!790196 (contains!9792 Nil!32755 (select (arr!46059 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395709 () Bool)

(assert (=> b!1395709 (= e!790198 e!790199)))

(declare-fun res!934913 () Bool)

(assert (=> b!1395709 (=> (not res!934913) (not e!790199))))

(assert (=> b!1395709 (= res!934913 (not e!790196))))

(declare-fun res!934914 () Bool)

(assert (=> b!1395709 (=> (not res!934914) (not e!790196))))

(assert (=> b!1395709 (= res!934914 (validKeyInArray!0 (select (arr!46059 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150721 (not res!934912)) b!1395709))

(assert (= (and b!1395709 res!934914) b!1395708))

(assert (= (and b!1395709 res!934913) b!1395707))

(assert (= (and b!1395707 c!129854) b!1395706))

(assert (= (and b!1395707 (not c!129854)) b!1395705))

(assert (= (or b!1395706 b!1395705) bm!66840))

(assert (=> bm!66840 m!1282093))

(declare-fun m!1282209 () Bool)

(assert (=> bm!66840 m!1282209))

(assert (=> b!1395707 m!1282093))

(assert (=> b!1395707 m!1282093))

(assert (=> b!1395707 m!1282103))

(assert (=> b!1395708 m!1282093))

(assert (=> b!1395708 m!1282093))

(declare-fun m!1282211 () Bool)

(assert (=> b!1395708 m!1282211))

(assert (=> b!1395709 m!1282093))

(assert (=> b!1395709 m!1282093))

(assert (=> b!1395709 m!1282103))

(assert (=> b!1395468 d!150721))

(push 1)

(assert (not bm!66840))

(assert (not b!1395576))

(assert (not b!1395499))

(assert (not b!1395707))

(assert (not bm!66827))

(assert (not b!1395709))

(assert (not b!1395567))

(assert (not b!1395708))

(assert (not d!150697))

(assert (not d!150665))

(assert (not b!1395503))

(assert (not bm!66826))

(assert (not b!1395679))

(assert (not d!150681))

(assert (not b!1395502))

(assert (not d!150669))

(assert (not b!1395498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

