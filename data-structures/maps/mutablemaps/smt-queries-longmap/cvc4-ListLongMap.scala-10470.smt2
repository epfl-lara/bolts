; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123134 () Bool)

(assert start!123134)

(declare-fun b!1427497 () Bool)

(declare-fun res!962642 () Bool)

(declare-fun e!806266 () Bool)

(assert (=> b!1427497 (=> (not res!962642) (not e!806266))))

(declare-datatypes ((array!97315 0))(
  ( (array!97316 (arr!46968 (Array (_ BitVec 32) (_ BitVec 64))) (size!47519 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97315)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427497 (= res!962642 (validKeyInArray!0 (select (arr!46968 a!2831) i!982)))))

(declare-fun b!1427498 () Bool)

(declare-fun res!962639 () Bool)

(assert (=> b!1427498 (=> (not res!962639) (not e!806266))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97315 (_ BitVec 32)) Bool)

(assert (=> b!1427498 (= res!962639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427499 () Bool)

(declare-fun res!962643 () Bool)

(assert (=> b!1427499 (=> (not res!962643) (not e!806266))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1427499 (= res!962643 (validKeyInArray!0 (select (arr!46968 a!2831) j!81)))))

(declare-fun res!962644 () Bool)

(assert (=> start!123134 (=> (not res!962644) (not e!806266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123134 (= res!962644 (validMask!0 mask!2608))))

(assert (=> start!123134 e!806266))

(assert (=> start!123134 true))

(declare-fun array_inv!35913 (array!97315) Bool)

(assert (=> start!123134 (array_inv!35913 a!2831)))

(declare-fun b!1427500 () Bool)

(declare-fun e!806270 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1427500 (= e!806270 (not (or (= (select (arr!46968 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (select (arr!46968 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!806267 () Bool)

(assert (=> b!1427500 e!806267))

(declare-fun res!962646 () Bool)

(assert (=> b!1427500 (=> (not res!962646) (not e!806267))))

(assert (=> b!1427500 (= res!962646 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48232 0))(
  ( (Unit!48233) )
))
(declare-fun lt!628566 () Unit!48232)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48232)

(assert (=> b!1427500 (= lt!628566 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427501 () Bool)

(declare-fun e!806268 () Bool)

(assert (=> b!1427501 (= e!806268 e!806270)))

(declare-fun res!962649 () Bool)

(assert (=> b!1427501 (=> (not res!962649) (not e!806270))))

(declare-fun lt!628564 () (_ BitVec 64))

(declare-fun lt!628563 () array!97315)

(declare-datatypes ((SeekEntryResult!11269 0))(
  ( (MissingZero!11269 (index!47467 (_ BitVec 32))) (Found!11269 (index!47468 (_ BitVec 32))) (Intermediate!11269 (undefined!12081 Bool) (index!47469 (_ BitVec 32)) (x!129102 (_ BitVec 32))) (Undefined!11269) (MissingVacant!11269 (index!47470 (_ BitVec 32))) )
))
(declare-fun lt!628567 () SeekEntryResult!11269)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97315 (_ BitVec 32)) SeekEntryResult!11269)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427501 (= res!962649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628564 mask!2608) lt!628564 lt!628563 mask!2608) lt!628567))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1427501 (= lt!628567 (Intermediate!11269 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427501 (= lt!628564 (select (store (arr!46968 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427501 (= lt!628563 (array!97316 (store (arr!46968 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47519 a!2831)))))

(declare-fun b!1427502 () Bool)

(assert (=> b!1427502 (= e!806266 e!806268)))

(declare-fun res!962641 () Bool)

(assert (=> b!1427502 (=> (not res!962641) (not e!806268))))

(declare-fun lt!628565 () SeekEntryResult!11269)

(assert (=> b!1427502 (= res!962641 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46968 a!2831) j!81) mask!2608) (select (arr!46968 a!2831) j!81) a!2831 mask!2608) lt!628565))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1427502 (= lt!628565 (Intermediate!11269 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427503 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97315 (_ BitVec 32)) SeekEntryResult!11269)

(assert (=> b!1427503 (= e!806267 (= (seekEntryOrOpen!0 (select (arr!46968 a!2831) j!81) a!2831 mask!2608) (Found!11269 j!81)))))

(declare-fun b!1427504 () Bool)

(declare-fun res!962638 () Bool)

(assert (=> b!1427504 (=> (not res!962638) (not e!806270))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1427504 (= res!962638 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628564 lt!628563 mask!2608) lt!628567))))

(declare-fun b!1427505 () Bool)

(declare-fun res!962637 () Bool)

(assert (=> b!1427505 (=> (not res!962637) (not e!806266))))

(declare-datatypes ((List!33658 0))(
  ( (Nil!33655) (Cons!33654 (h!34962 (_ BitVec 64)) (t!48359 List!33658)) )
))
(declare-fun arrayNoDuplicates!0 (array!97315 (_ BitVec 32) List!33658) Bool)

(assert (=> b!1427505 (= res!962637 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33655))))

(declare-fun b!1427506 () Bool)

(declare-fun res!962648 () Bool)

(assert (=> b!1427506 (=> (not res!962648) (not e!806266))))

(assert (=> b!1427506 (= res!962648 (and (= (size!47519 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47519 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47519 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427507 () Bool)

(declare-fun res!962645 () Bool)

(assert (=> b!1427507 (=> (not res!962645) (not e!806270))))

(assert (=> b!1427507 (= res!962645 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46968 a!2831) j!81) a!2831 mask!2608) lt!628565))))

(declare-fun b!1427508 () Bool)

(declare-fun res!962647 () Bool)

(assert (=> b!1427508 (=> (not res!962647) (not e!806270))))

(assert (=> b!1427508 (= res!962647 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427509 () Bool)

(declare-fun res!962640 () Bool)

(assert (=> b!1427509 (=> (not res!962640) (not e!806266))))

(assert (=> b!1427509 (= res!962640 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47519 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47519 a!2831))))))

(assert (= (and start!123134 res!962644) b!1427506))

(assert (= (and b!1427506 res!962648) b!1427497))

(assert (= (and b!1427497 res!962642) b!1427499))

(assert (= (and b!1427499 res!962643) b!1427498))

(assert (= (and b!1427498 res!962639) b!1427505))

(assert (= (and b!1427505 res!962637) b!1427509))

(assert (= (and b!1427509 res!962640) b!1427502))

(assert (= (and b!1427502 res!962641) b!1427501))

(assert (= (and b!1427501 res!962649) b!1427507))

(assert (= (and b!1427507 res!962645) b!1427504))

(assert (= (and b!1427504 res!962638) b!1427508))

(assert (= (and b!1427508 res!962647) b!1427500))

(assert (= (and b!1427500 res!962646) b!1427503))

(declare-fun m!1317925 () Bool)

(assert (=> b!1427500 m!1317925))

(declare-fun m!1317927 () Bool)

(assert (=> b!1427500 m!1317927))

(declare-fun m!1317929 () Bool)

(assert (=> b!1427500 m!1317929))

(declare-fun m!1317931 () Bool)

(assert (=> b!1427503 m!1317931))

(assert (=> b!1427503 m!1317931))

(declare-fun m!1317933 () Bool)

(assert (=> b!1427503 m!1317933))

(declare-fun m!1317935 () Bool)

(assert (=> b!1427505 m!1317935))

(assert (=> b!1427499 m!1317931))

(assert (=> b!1427499 m!1317931))

(declare-fun m!1317937 () Bool)

(assert (=> b!1427499 m!1317937))

(declare-fun m!1317939 () Bool)

(assert (=> b!1427504 m!1317939))

(declare-fun m!1317941 () Bool)

(assert (=> b!1427497 m!1317941))

(assert (=> b!1427497 m!1317941))

(declare-fun m!1317943 () Bool)

(assert (=> b!1427497 m!1317943))

(declare-fun m!1317945 () Bool)

(assert (=> b!1427501 m!1317945))

(assert (=> b!1427501 m!1317945))

(declare-fun m!1317947 () Bool)

(assert (=> b!1427501 m!1317947))

(declare-fun m!1317949 () Bool)

(assert (=> b!1427501 m!1317949))

(declare-fun m!1317951 () Bool)

(assert (=> b!1427501 m!1317951))

(assert (=> b!1427502 m!1317931))

(assert (=> b!1427502 m!1317931))

(declare-fun m!1317953 () Bool)

(assert (=> b!1427502 m!1317953))

(assert (=> b!1427502 m!1317953))

(assert (=> b!1427502 m!1317931))

(declare-fun m!1317955 () Bool)

(assert (=> b!1427502 m!1317955))

(assert (=> b!1427507 m!1317931))

(assert (=> b!1427507 m!1317931))

(declare-fun m!1317957 () Bool)

(assert (=> b!1427507 m!1317957))

(declare-fun m!1317959 () Bool)

(assert (=> start!123134 m!1317959))

(declare-fun m!1317961 () Bool)

(assert (=> start!123134 m!1317961))

(declare-fun m!1317963 () Bool)

(assert (=> b!1427498 m!1317963))

(push 1)

(assert (not b!1427498))

(assert (not b!1427504))

(assert (not b!1427507))

(assert (not b!1427497))

(assert (not b!1427502))

(assert (not b!1427503))

(assert (not b!1427500))

(assert (not b!1427501))

(assert (not b!1427499))

(assert (not start!123134))

(assert (not b!1427505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1427572 () Bool)

(declare-fun e!806313 () Bool)

(declare-fun call!67371 () Bool)

(assert (=> b!1427572 (= e!806313 call!67371)))

(declare-fun b!1427574 () Bool)

(declare-fun e!806315 () Bool)

(assert (=> b!1427574 (= e!806313 e!806315)))

(declare-fun lt!628592 () (_ BitVec 64))

(assert (=> b!1427574 (= lt!628592 (select (arr!46968 a!2831) j!81))))

(declare-fun lt!628593 () Unit!48232)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97315 (_ BitVec 64) (_ BitVec 32)) Unit!48232)

(assert (=> b!1427574 (= lt!628593 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628592 j!81))))

(declare-fun arrayContainsKey!0 (array!97315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1427574 (arrayContainsKey!0 a!2831 lt!628592 #b00000000000000000000000000000000)))

(declare-fun lt!628594 () Unit!48232)

(assert (=> b!1427574 (= lt!628594 lt!628593)))

(declare-fun res!962679 () Bool)

(assert (=> b!1427574 (= res!962679 (= (seekEntryOrOpen!0 (select (arr!46968 a!2831) j!81) a!2831 mask!2608) (Found!11269 j!81)))))

(assert (=> b!1427574 (=> (not res!962679) (not e!806315))))

(declare-fun bm!67368 () Bool)

(assert (=> bm!67368 (= call!67371 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1427575 () Bool)

(declare-fun e!806314 () Bool)

(assert (=> b!1427575 (= e!806314 e!806313)))

(declare-fun c!131939 () Bool)

(assert (=> b!1427575 (= c!131939 (validKeyInArray!0 (select (arr!46968 a!2831) j!81)))))

(declare-fun b!1427573 () Bool)

(assert (=> b!1427573 (= e!806315 call!67371)))

(declare-fun d!153301 () Bool)

(declare-fun res!962680 () Bool)

(assert (=> d!153301 (=> res!962680 e!806314)))

(assert (=> d!153301 (= res!962680 (bvsge j!81 (size!47519 a!2831)))))

(assert (=> d!153301 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806314)))

(assert (= (and d!153301 (not res!962680)) b!1427575))

(assert (= (and b!1427575 c!131939) b!1427574))

(assert (= (and b!1427575 (not c!131939)) b!1427572))

(assert (= (and b!1427574 res!962679) b!1427573))

(assert (= (or b!1427573 b!1427572) bm!67368))

(assert (=> b!1427574 m!1317931))

(declare-fun m!1317989 () Bool)

(assert (=> b!1427574 m!1317989))

(declare-fun m!1317991 () Bool)

(assert (=> b!1427574 m!1317991))

(assert (=> b!1427574 m!1317931))

(assert (=> b!1427574 m!1317933))

(declare-fun m!1317993 () Bool)

(assert (=> bm!67368 m!1317993))

(assert (=> b!1427575 m!1317931))

(assert (=> b!1427575 m!1317931))

(assert (=> b!1427575 m!1317937))

(assert (=> b!1427500 d!153301))

(declare-fun d!153305 () Bool)

(assert (=> d!153305 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628609 () Unit!48232)

(declare-fun choose!38 (array!97315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48232)

(assert (=> d!153305 (= lt!628609 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153305 (validMask!0 mask!2608)))

(assert (=> d!153305 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628609)))

(declare-fun bs!41604 () Bool)

(assert (= bs!41604 d!153305))

(assert (=> bs!41604 m!1317927))

(declare-fun m!1318003 () Bool)

(assert (=> bs!41604 m!1318003))

(assert (=> bs!41604 m!1317959))

(assert (=> b!1427500 d!153305))

(declare-fun b!1427640 () Bool)

(declare-fun e!806356 () Bool)

(declare-fun call!67374 () Bool)

(assert (=> b!1427640 (= e!806356 call!67374)))

(declare-fun d!153311 () Bool)

(declare-fun res!962708 () Bool)

(declare-fun e!806354 () Bool)

(assert (=> d!153311 (=> res!962708 e!806354)))

(assert (=> d!153311 (= res!962708 (bvsge #b00000000000000000000000000000000 (size!47519 a!2831)))))

(assert (=> d!153311 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33655) e!806354)))

(declare-fun b!1427641 () Bool)

(declare-fun e!806357 () Bool)

(assert (=> b!1427641 (= e!806357 e!806356)))

(declare-fun c!131960 () Bool)

(assert (=> b!1427641 (= c!131960 (validKeyInArray!0 (select (arr!46968 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67371 () Bool)

(assert (=> bm!67371 (= call!67374 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131960 (Cons!33654 (select (arr!46968 a!2831) #b00000000000000000000000000000000) Nil!33655) Nil!33655)))))

(declare-fun b!1427642 () Bool)

(declare-fun e!806355 () Bool)

(declare-fun contains!9864 (List!33658 (_ BitVec 64)) Bool)

(assert (=> b!1427642 (= e!806355 (contains!9864 Nil!33655 (select (arr!46968 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427643 () Bool)

(assert (=> b!1427643 (= e!806354 e!806357)))

(declare-fun res!962707 () Bool)

(assert (=> b!1427643 (=> (not res!962707) (not e!806357))))

(assert (=> b!1427643 (= res!962707 (not e!806355))))

(declare-fun res!962706 () Bool)

(assert (=> b!1427643 (=> (not res!962706) (not e!806355))))

(assert (=> b!1427643 (= res!962706 (validKeyInArray!0 (select (arr!46968 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427644 () Bool)

(assert (=> b!1427644 (= e!806356 call!67374)))

(assert (= (and d!153311 (not res!962708)) b!1427643))

(assert (= (and b!1427643 res!962706) b!1427642))

(assert (= (and b!1427643 res!962707) b!1427641))

(assert (= (and b!1427641 c!131960) b!1427644))

(assert (= (and b!1427641 (not c!131960)) b!1427640))

(assert (= (or b!1427644 b!1427640) bm!67371))

(declare-fun m!1318025 () Bool)

(assert (=> b!1427641 m!1318025))

(assert (=> b!1427641 m!1318025))

(declare-fun m!1318027 () Bool)

(assert (=> b!1427641 m!1318027))

(assert (=> bm!67371 m!1318025))

(declare-fun m!1318029 () Bool)

(assert (=> bm!67371 m!1318029))

(assert (=> b!1427642 m!1318025))

(assert (=> b!1427642 m!1318025))

(declare-fun m!1318031 () Bool)

(assert (=> b!1427642 m!1318031))

(assert (=> b!1427643 m!1318025))

(assert (=> b!1427643 m!1318025))

(assert (=> b!1427643 m!1318027))

(assert (=> b!1427505 d!153311))

(declare-fun d!153323 () Bool)

(assert (=> d!153323 (= (validKeyInArray!0 (select (arr!46968 a!2831) j!81)) (and (not (= (select (arr!46968 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46968 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1427499 d!153323))

(declare-fun b!1427675 () Bool)

(declare-fun e!806375 () SeekEntryResult!11269)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427675 (= e!806375 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628564 lt!628563 mask!2608))))

(declare-fun b!1427676 () Bool)

(assert (=> b!1427676 (= e!806375 (Intermediate!11269 false index!585 x!605))))

(declare-fun b!1427677 () Bool)

(declare-fun e!806378 () Bool)

(declare-fun lt!628634 () SeekEntryResult!11269)

(assert (=> b!1427677 (= e!806378 (bvsge (x!129102 lt!628634) #b01111111111111111111111111111110))))

(declare-fun b!1427678 () Bool)

(assert (=> b!1427678 (and (bvsge (index!47469 lt!628634) #b00000000000000000000000000000000) (bvslt (index!47469 lt!628634) (size!47519 lt!628563)))))

(declare-fun e!806376 () Bool)

(assert (=> b!1427678 (= e!806376 (= (select (arr!46968 lt!628563) (index!47469 lt!628634)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153325 () Bool)

(assert (=> d!153325 e!806378))

(declare-fun c!131973 () Bool)

(assert (=> d!153325 (= c!131973 (and (is-Intermediate!11269 lt!628634) (undefined!12081 lt!628634)))))

(declare-fun e!806377 () SeekEntryResult!11269)

(assert (=> d!153325 (= lt!628634 e!806377)))

(declare-fun c!131974 () Bool)

(assert (=> d!153325 (= c!131974 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628635 () (_ BitVec 64))

(assert (=> d!153325 (= lt!628635 (select (arr!46968 lt!628563) index!585))))

(assert (=> d!153325 (validMask!0 mask!2608)))

(assert (=> d!153325 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628564 lt!628563 mask!2608) lt!628634)))

(declare-fun b!1427679 () Bool)

(assert (=> b!1427679 (= e!806377 e!806375)))

(declare-fun c!131975 () Bool)

(assert (=> b!1427679 (= c!131975 (or (= lt!628635 lt!628564) (= (bvadd lt!628635 lt!628635) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427680 () Bool)

(assert (=> b!1427680 (and (bvsge (index!47469 lt!628634) #b00000000000000000000000000000000) (bvslt (index!47469 lt!628634) (size!47519 lt!628563)))))

(declare-fun res!962715 () Bool)

(assert (=> b!1427680 (= res!962715 (= (select (arr!46968 lt!628563) (index!47469 lt!628634)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427680 (=> res!962715 e!806376)))

(declare-fun b!1427681 () Bool)

(assert (=> b!1427681 (= e!806377 (Intermediate!11269 true index!585 x!605))))

(declare-fun b!1427682 () Bool)

(assert (=> b!1427682 (and (bvsge (index!47469 lt!628634) #b00000000000000000000000000000000) (bvslt (index!47469 lt!628634) (size!47519 lt!628563)))))

(declare-fun res!962716 () Bool)

(assert (=> b!1427682 (= res!962716 (= (select (arr!46968 lt!628563) (index!47469 lt!628634)) lt!628564))))

(assert (=> b!1427682 (=> res!962716 e!806376)))

(declare-fun e!806374 () Bool)

(assert (=> b!1427682 (= e!806374 e!806376)))

(declare-fun b!1427683 () Bool)

(assert (=> b!1427683 (= e!806378 e!806374)))

(declare-fun res!962717 () Bool)

(assert (=> b!1427683 (= res!962717 (and (is-Intermediate!11269 lt!628634) (not (undefined!12081 lt!628634)) (bvslt (x!129102 lt!628634) #b01111111111111111111111111111110) (bvsge (x!129102 lt!628634) #b00000000000000000000000000000000) (bvsge (x!129102 lt!628634) x!605)))))

(assert (=> b!1427683 (=> (not res!962717) (not e!806374))))

(assert (= (and d!153325 c!131974) b!1427681))

(assert (= (and d!153325 (not c!131974)) b!1427679))

(assert (= (and b!1427679 c!131975) b!1427676))

(assert (= (and b!1427679 (not c!131975)) b!1427675))

(assert (= (and d!153325 c!131973) b!1427677))

(assert (= (and d!153325 (not c!131973)) b!1427683))

(assert (= (and b!1427683 res!962717) b!1427682))

(assert (= (and b!1427682 (not res!962716)) b!1427680))

(assert (= (and b!1427680 (not res!962715)) b!1427678))

(declare-fun m!1318033 () Bool)

(assert (=> b!1427682 m!1318033))

(assert (=> b!1427678 m!1318033))

(assert (=> b!1427680 m!1318033))

(declare-fun m!1318035 () Bool)

(assert (=> d!153325 m!1318035))

(assert (=> d!153325 m!1317959))

(declare-fun m!1318037 () Bool)

(assert (=> b!1427675 m!1318037))

(assert (=> b!1427675 m!1318037))

(declare-fun m!1318039 () Bool)

(assert (=> b!1427675 m!1318039))

(assert (=> b!1427504 d!153325))

(declare-fun b!1427688 () Bool)

(declare-fun e!806381 () Bool)

(declare-fun call!67375 () Bool)

(assert (=> b!1427688 (= e!806381 call!67375)))

(declare-fun b!1427690 () Bool)

(declare-fun e!806383 () Bool)

(assert (=> b!1427690 (= e!806381 e!806383)))

(declare-fun lt!628642 () (_ BitVec 64))

(assert (=> b!1427690 (= lt!628642 (select (arr!46968 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628643 () Unit!48232)

(assert (=> b!1427690 (= lt!628643 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628642 #b00000000000000000000000000000000))))

(assert (=> b!1427690 (arrayContainsKey!0 a!2831 lt!628642 #b00000000000000000000000000000000)))

(declare-fun lt!628644 () Unit!48232)

(assert (=> b!1427690 (= lt!628644 lt!628643)))

(declare-fun res!962718 () Bool)

(assert (=> b!1427690 (= res!962718 (= (seekEntryOrOpen!0 (select (arr!46968 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11269 #b00000000000000000000000000000000)))))

(assert (=> b!1427690 (=> (not res!962718) (not e!806383))))

(declare-fun bm!67372 () Bool)

(assert (=> bm!67372 (= call!67375 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1427691 () Bool)

(declare-fun e!806382 () Bool)

(assert (=> b!1427691 (= e!806382 e!806381)))

(declare-fun c!131978 () Bool)

(assert (=> b!1427691 (= c!131978 (validKeyInArray!0 (select (arr!46968 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427689 () Bool)

(assert (=> b!1427689 (= e!806383 call!67375)))

(declare-fun d!153333 () Bool)

(declare-fun res!962719 () Bool)

(assert (=> d!153333 (=> res!962719 e!806382)))

(assert (=> d!153333 (= res!962719 (bvsge #b00000000000000000000000000000000 (size!47519 a!2831)))))

(assert (=> d!153333 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!806382)))

(assert (= (and d!153333 (not res!962719)) b!1427691))

(assert (= (and b!1427691 c!131978) b!1427690))

(assert (= (and b!1427691 (not c!131978)) b!1427688))

(assert (= (and b!1427690 res!962718) b!1427689))

(assert (= (or b!1427689 b!1427688) bm!67372))

(assert (=> b!1427690 m!1318025))

(declare-fun m!1318041 () Bool)

(assert (=> b!1427690 m!1318041))

(declare-fun m!1318043 () Bool)

(assert (=> b!1427690 m!1318043))

(assert (=> b!1427690 m!1318025))

(declare-fun m!1318045 () Bool)

(assert (=> b!1427690 m!1318045))

(declare-fun m!1318047 () Bool)

(assert (=> bm!67372 m!1318047))

(assert (=> b!1427691 m!1318025))

(assert (=> b!1427691 m!1318025))

(assert (=> b!1427691 m!1318027))

(assert (=> b!1427498 d!153333))

(declare-fun d!153335 () Bool)

(declare-fun lt!628664 () SeekEntryResult!11269)

(assert (=> d!153335 (and (or (is-Undefined!11269 lt!628664) (not (is-Found!11269 lt!628664)) (and (bvsge (index!47468 lt!628664) #b00000000000000000000000000000000) (bvslt (index!47468 lt!628664) (size!47519 a!2831)))) (or (is-Undefined!11269 lt!628664) (is-Found!11269 lt!628664) (not (is-MissingZero!11269 lt!628664)) (and (bvsge (index!47467 lt!628664) #b00000000000000000000000000000000) (bvslt (index!47467 lt!628664) (size!47519 a!2831)))) (or (is-Undefined!11269 lt!628664) (is-Found!11269 lt!628664) (is-MissingZero!11269 lt!628664) (not (is-MissingVacant!11269 lt!628664)) (and (bvsge (index!47470 lt!628664) #b00000000000000000000000000000000) (bvslt (index!47470 lt!628664) (size!47519 a!2831)))) (or (is-Undefined!11269 lt!628664) (ite (is-Found!11269 lt!628664) (= (select (arr!46968 a!2831) (index!47468 lt!628664)) (select (arr!46968 a!2831) j!81)) (ite (is-MissingZero!11269 lt!628664) (= (select (arr!46968 a!2831) (index!47467 lt!628664)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11269 lt!628664) (= (select (arr!46968 a!2831) (index!47470 lt!628664)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!806422 () SeekEntryResult!11269)

(assert (=> d!153335 (= lt!628664 e!806422)))

(declare-fun c!132002 () Bool)

(declare-fun lt!628666 () SeekEntryResult!11269)

(assert (=> d!153335 (= c!132002 (and (is-Intermediate!11269 lt!628666) (undefined!12081 lt!628666)))))

(assert (=> d!153335 (= lt!628666 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46968 a!2831) j!81) mask!2608) (select (arr!46968 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153335 (validMask!0 mask!2608)))

(assert (=> d!153335 (= (seekEntryOrOpen!0 (select (arr!46968 a!2831) j!81) a!2831 mask!2608) lt!628664)))

(declare-fun e!806421 () SeekEntryResult!11269)

(declare-fun b!1427752 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97315 (_ BitVec 32)) SeekEntryResult!11269)

(assert (=> b!1427752 (= e!806421 (seekKeyOrZeroReturnVacant!0 (x!129102 lt!628666) (index!47469 lt!628666) (index!47469 lt!628666) (select (arr!46968 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427753 () Bool)

(declare-fun e!806420 () SeekEntryResult!11269)

(assert (=> b!1427753 (= e!806420 (Found!11269 (index!47469 lt!628666)))))

(declare-fun b!1427754 () Bool)

(assert (=> b!1427754 (= e!806422 e!806420)))

(declare-fun lt!628665 () (_ BitVec 64))

(assert (=> b!1427754 (= lt!628665 (select (arr!46968 a!2831) (index!47469 lt!628666)))))

(declare-fun c!132003 () Bool)

(assert (=> b!1427754 (= c!132003 (= lt!628665 (select (arr!46968 a!2831) j!81)))))

(declare-fun b!1427755 () Bool)

(assert (=> b!1427755 (= e!806421 (MissingZero!11269 (index!47469 lt!628666)))))

(declare-fun b!1427756 () Bool)

(assert (=> b!1427756 (= e!806422 Undefined!11269)))

(declare-fun b!1427757 () Bool)

(declare-fun c!132004 () Bool)

(assert (=> b!1427757 (= c!132004 (= lt!628665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427757 (= e!806420 e!806421)))

(assert (= (and d!153335 c!132002) b!1427756))

(assert (= (and d!153335 (not c!132002)) b!1427754))

(assert (= (and b!1427754 c!132003) b!1427753))

(assert (= (and b!1427754 (not c!132003)) b!1427757))

(assert (= (and b!1427757 c!132004) b!1427755))

(assert (= (and b!1427757 (not c!132004)) b!1427752))

(declare-fun m!1318091 () Bool)

(assert (=> d!153335 m!1318091))

(declare-fun m!1318095 () Bool)

(assert (=> d!153335 m!1318095))

(assert (=> d!153335 m!1317959))

(assert (=> d!153335 m!1317931))

(assert (=> d!153335 m!1317953))

(assert (=> d!153335 m!1317953))

(assert (=> d!153335 m!1317931))

(assert (=> d!153335 m!1317955))

(declare-fun m!1318097 () Bool)

(assert (=> d!153335 m!1318097))

(assert (=> b!1427752 m!1317931))

(declare-fun m!1318099 () Bool)

(assert (=> b!1427752 m!1318099))

(declare-fun m!1318101 () Bool)

(assert (=> b!1427754 m!1318101))

(assert (=> b!1427503 d!153335))

(declare-fun d!153357 () Bool)

(assert (=> d!153357 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123134 d!153357))

(declare-fun d!153361 () Bool)

(assert (=> d!153361 (= (array_inv!35913 a!2831) (bvsge (size!47519 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123134 d!153361))

(declare-fun d!153363 () Bool)

(assert (=> d!153363 (= (validKeyInArray!0 (select (arr!46968 a!2831) i!982)) (and (not (= (select (arr!46968 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46968 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1427497 d!153363))

(declare-fun b!1427788 () Bool)

(declare-fun e!806443 () SeekEntryResult!11269)

(assert (=> b!1427788 (= e!806443 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46968 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46968 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427789 () Bool)

(assert (=> b!1427789 (= e!806443 (Intermediate!11269 false (toIndex!0 (select (arr!46968 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427790 () Bool)

(declare-fun e!806446 () Bool)

(declare-fun lt!628680 () SeekEntryResult!11269)

(assert (=> b!1427790 (= e!806446 (bvsge (x!129102 lt!628680) #b01111111111111111111111111111110))))

(declare-fun b!1427791 () Bool)

(assert (=> b!1427791 (and (bvsge (index!47469 lt!628680) #b00000000000000000000000000000000) (bvslt (index!47469 lt!628680) (size!47519 a!2831)))))

(declare-fun e!806444 () Bool)

(assert (=> b!1427791 (= e!806444 (= (select (arr!46968 a!2831) (index!47469 lt!628680)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153367 () Bool)

(assert (=> d!153367 e!806446))

(declare-fun c!132014 () Bool)

(assert (=> d!153367 (= c!132014 (and (is-Intermediate!11269 lt!628680) (undefined!12081 lt!628680)))))

(declare-fun e!806445 () SeekEntryResult!11269)

(assert (=> d!153367 (= lt!628680 e!806445)))

(declare-fun c!132015 () Bool)

(assert (=> d!153367 (= c!132015 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628681 () (_ BitVec 64))

(assert (=> d!153367 (= lt!628681 (select (arr!46968 a!2831) (toIndex!0 (select (arr!46968 a!2831) j!81) mask!2608)))))

(assert (=> d!153367 (validMask!0 mask!2608)))

(assert (=> d!153367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46968 a!2831) j!81) mask!2608) (select (arr!46968 a!2831) j!81) a!2831 mask!2608) lt!628680)))

(declare-fun b!1427792 () Bool)

(assert (=> b!1427792 (= e!806445 e!806443)))

(declare-fun c!132016 () Bool)

(assert (=> b!1427792 (= c!132016 (or (= lt!628681 (select (arr!46968 a!2831) j!81)) (= (bvadd lt!628681 lt!628681) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427793 () Bool)

(assert (=> b!1427793 (and (bvsge (index!47469 lt!628680) #b00000000000000000000000000000000) (bvslt (index!47469 lt!628680) (size!47519 a!2831)))))

(declare-fun res!962746 () Bool)

(assert (=> b!1427793 (= res!962746 (= (select (arr!46968 a!2831) (index!47469 lt!628680)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427793 (=> res!962746 e!806444)))

(declare-fun b!1427794 () Bool)

(assert (=> b!1427794 (= e!806445 (Intermediate!11269 true (toIndex!0 (select (arr!46968 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427795 () Bool)

(assert (=> b!1427795 (and (bvsge (index!47469 lt!628680) #b00000000000000000000000000000000) (bvslt (index!47469 lt!628680) (size!47519 a!2831)))))

