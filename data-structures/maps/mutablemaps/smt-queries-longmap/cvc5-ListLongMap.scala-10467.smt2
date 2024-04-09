; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123058 () Bool)

(assert start!123058)

(declare-fun b!1426759 () Bool)

(declare-fun res!962101 () Bool)

(declare-fun e!805913 () Bool)

(assert (=> b!1426759 (=> (not res!962101) (not e!805913))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97290 0))(
  ( (array!97291 (arr!46957 (Array (_ BitVec 32) (_ BitVec 64))) (size!47508 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97290)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426759 (= res!962101 (and (= (size!47508 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47508 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47508 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426760 () Bool)

(declare-fun e!805914 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1426760 (= e!805914 (not (not (= (select (arr!46957 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!805915 () Bool)

(assert (=> b!1426760 e!805915))

(declare-fun res!962102 () Bool)

(assert (=> b!1426760 (=> (not res!962102) (not e!805915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97290 (_ BitVec 32)) Bool)

(assert (=> b!1426760 (= res!962102 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48210 0))(
  ( (Unit!48211) )
))
(declare-fun lt!628268 () Unit!48210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48210)

(assert (=> b!1426760 (= lt!628268 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426762 () Bool)

(declare-fun res!962111 () Bool)

(assert (=> b!1426762 (=> (not res!962111) (not e!805913))))

(assert (=> b!1426762 (= res!962111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426763 () Bool)

(declare-fun res!962107 () Bool)

(assert (=> b!1426763 (=> (not res!962107) (not e!805913))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426763 (= res!962107 (validKeyInArray!0 (select (arr!46957 a!2831) j!81)))))

(declare-fun b!1426764 () Bool)

(declare-fun e!805912 () Bool)

(assert (=> b!1426764 (= e!805913 e!805912)))

(declare-fun res!962110 () Bool)

(assert (=> b!1426764 (=> (not res!962110) (not e!805912))))

(declare-datatypes ((SeekEntryResult!11258 0))(
  ( (MissingZero!11258 (index!47423 (_ BitVec 32))) (Found!11258 (index!47424 (_ BitVec 32))) (Intermediate!11258 (undefined!12070 Bool) (index!47425 (_ BitVec 32)) (x!129061 (_ BitVec 32))) (Undefined!11258) (MissingVacant!11258 (index!47426 (_ BitVec 32))) )
))
(declare-fun lt!628270 () SeekEntryResult!11258)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97290 (_ BitVec 32)) SeekEntryResult!11258)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426764 (= res!962110 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46957 a!2831) j!81) mask!2608) (select (arr!46957 a!2831) j!81) a!2831 mask!2608) lt!628270))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1426764 (= lt!628270 (Intermediate!11258 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426765 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97290 (_ BitVec 32)) SeekEntryResult!11258)

(assert (=> b!1426765 (= e!805915 (= (seekEntryOrOpen!0 (select (arr!46957 a!2831) j!81) a!2831 mask!2608) (Found!11258 j!81)))))

(declare-fun b!1426766 () Bool)

(declare-fun res!962100 () Bool)

(assert (=> b!1426766 (=> (not res!962100) (not e!805913))))

(assert (=> b!1426766 (= res!962100 (validKeyInArray!0 (select (arr!46957 a!2831) i!982)))))

(declare-fun b!1426767 () Bool)

(declare-fun res!962106 () Bool)

(assert (=> b!1426767 (=> (not res!962106) (not e!805914))))

(declare-fun lt!628267 () array!97290)

(declare-fun lt!628266 () SeekEntryResult!11258)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!628269 () (_ BitVec 64))

(assert (=> b!1426767 (= res!962106 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628269 lt!628267 mask!2608) lt!628266))))

(declare-fun b!1426761 () Bool)

(declare-fun res!962112 () Bool)

(assert (=> b!1426761 (=> (not res!962112) (not e!805913))))

(assert (=> b!1426761 (= res!962112 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47508 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47508 a!2831))))))

(declare-fun res!962104 () Bool)

(assert (=> start!123058 (=> (not res!962104) (not e!805913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123058 (= res!962104 (validMask!0 mask!2608))))

(assert (=> start!123058 e!805913))

(assert (=> start!123058 true))

(declare-fun array_inv!35902 (array!97290) Bool)

(assert (=> start!123058 (array_inv!35902 a!2831)))

(declare-fun b!1426768 () Bool)

(declare-fun res!962109 () Bool)

(assert (=> b!1426768 (=> (not res!962109) (not e!805913))))

(declare-datatypes ((List!33647 0))(
  ( (Nil!33644) (Cons!33643 (h!34948 (_ BitVec 64)) (t!48348 List!33647)) )
))
(declare-fun arrayNoDuplicates!0 (array!97290 (_ BitVec 32) List!33647) Bool)

(assert (=> b!1426768 (= res!962109 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33644))))

(declare-fun b!1426769 () Bool)

(declare-fun res!962105 () Bool)

(assert (=> b!1426769 (=> (not res!962105) (not e!805914))))

(assert (=> b!1426769 (= res!962105 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46957 a!2831) j!81) a!2831 mask!2608) lt!628270))))

(declare-fun b!1426770 () Bool)

(assert (=> b!1426770 (= e!805912 e!805914)))

(declare-fun res!962108 () Bool)

(assert (=> b!1426770 (=> (not res!962108) (not e!805914))))

(assert (=> b!1426770 (= res!962108 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628269 mask!2608) lt!628269 lt!628267 mask!2608) lt!628266))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426770 (= lt!628266 (Intermediate!11258 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426770 (= lt!628269 (select (store (arr!46957 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426770 (= lt!628267 (array!97291 (store (arr!46957 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47508 a!2831)))))

(declare-fun b!1426771 () Bool)

(declare-fun res!962103 () Bool)

(assert (=> b!1426771 (=> (not res!962103) (not e!805914))))

(assert (=> b!1426771 (= res!962103 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123058 res!962104) b!1426759))

(assert (= (and b!1426759 res!962101) b!1426766))

(assert (= (and b!1426766 res!962100) b!1426763))

(assert (= (and b!1426763 res!962107) b!1426762))

(assert (= (and b!1426762 res!962111) b!1426768))

(assert (= (and b!1426768 res!962109) b!1426761))

(assert (= (and b!1426761 res!962112) b!1426764))

(assert (= (and b!1426764 res!962110) b!1426770))

(assert (= (and b!1426770 res!962108) b!1426769))

(assert (= (and b!1426769 res!962105) b!1426767))

(assert (= (and b!1426767 res!962106) b!1426771))

(assert (= (and b!1426771 res!962103) b!1426760))

(assert (= (and b!1426760 res!962102) b!1426765))

(declare-fun m!1317311 () Bool)

(assert (=> b!1426769 m!1317311))

(assert (=> b!1426769 m!1317311))

(declare-fun m!1317313 () Bool)

(assert (=> b!1426769 m!1317313))

(declare-fun m!1317315 () Bool)

(assert (=> b!1426770 m!1317315))

(assert (=> b!1426770 m!1317315))

(declare-fun m!1317317 () Bool)

(assert (=> b!1426770 m!1317317))

(declare-fun m!1317319 () Bool)

(assert (=> b!1426770 m!1317319))

(declare-fun m!1317321 () Bool)

(assert (=> b!1426770 m!1317321))

(declare-fun m!1317323 () Bool)

(assert (=> b!1426766 m!1317323))

(assert (=> b!1426766 m!1317323))

(declare-fun m!1317325 () Bool)

(assert (=> b!1426766 m!1317325))

(assert (=> b!1426765 m!1317311))

(assert (=> b!1426765 m!1317311))

(declare-fun m!1317327 () Bool)

(assert (=> b!1426765 m!1317327))

(declare-fun m!1317329 () Bool)

(assert (=> b!1426762 m!1317329))

(assert (=> b!1426764 m!1317311))

(assert (=> b!1426764 m!1317311))

(declare-fun m!1317331 () Bool)

(assert (=> b!1426764 m!1317331))

(assert (=> b!1426764 m!1317331))

(assert (=> b!1426764 m!1317311))

(declare-fun m!1317333 () Bool)

(assert (=> b!1426764 m!1317333))

(assert (=> b!1426763 m!1317311))

(assert (=> b!1426763 m!1317311))

(declare-fun m!1317335 () Bool)

(assert (=> b!1426763 m!1317335))

(declare-fun m!1317337 () Bool)

(assert (=> start!123058 m!1317337))

(declare-fun m!1317339 () Bool)

(assert (=> start!123058 m!1317339))

(declare-fun m!1317341 () Bool)

(assert (=> b!1426767 m!1317341))

(declare-fun m!1317343 () Bool)

(assert (=> b!1426768 m!1317343))

(declare-fun m!1317345 () Bool)

(assert (=> b!1426760 m!1317345))

(declare-fun m!1317347 () Bool)

(assert (=> b!1426760 m!1317347))

(declare-fun m!1317349 () Bool)

(assert (=> b!1426760 m!1317349))

(push 1)

(assert (not b!1426760))

(assert (not start!123058))

(assert (not b!1426763))

(assert (not b!1426764))

(assert (not b!1426762))

(assert (not b!1426768))

(assert (not b!1426766))

(assert (not b!1426767))

(assert (not b!1426770))

(assert (not b!1426769))

(assert (not b!1426765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1426968 () Bool)

(declare-fun e!806022 () SeekEntryResult!11258)

(declare-fun lt!628355 () SeekEntryResult!11258)

(assert (=> b!1426968 (= e!806022 (MissingZero!11258 (index!47425 lt!628355)))))

(declare-fun d!153207 () Bool)

(declare-fun lt!628354 () SeekEntryResult!11258)

(assert (=> d!153207 (and (or (is-Undefined!11258 lt!628354) (not (is-Found!11258 lt!628354)) (and (bvsge (index!47424 lt!628354) #b00000000000000000000000000000000) (bvslt (index!47424 lt!628354) (size!47508 a!2831)))) (or (is-Undefined!11258 lt!628354) (is-Found!11258 lt!628354) (not (is-MissingZero!11258 lt!628354)) (and (bvsge (index!47423 lt!628354) #b00000000000000000000000000000000) (bvslt (index!47423 lt!628354) (size!47508 a!2831)))) (or (is-Undefined!11258 lt!628354) (is-Found!11258 lt!628354) (is-MissingZero!11258 lt!628354) (not (is-MissingVacant!11258 lt!628354)) (and (bvsge (index!47426 lt!628354) #b00000000000000000000000000000000) (bvslt (index!47426 lt!628354) (size!47508 a!2831)))) (or (is-Undefined!11258 lt!628354) (ite (is-Found!11258 lt!628354) (= (select (arr!46957 a!2831) (index!47424 lt!628354)) (select (arr!46957 a!2831) j!81)) (ite (is-MissingZero!11258 lt!628354) (= (select (arr!46957 a!2831) (index!47423 lt!628354)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11258 lt!628354) (= (select (arr!46957 a!2831) (index!47426 lt!628354)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!806021 () SeekEntryResult!11258)

(assert (=> d!153207 (= lt!628354 e!806021)))

(declare-fun c!131858 () Bool)

(assert (=> d!153207 (= c!131858 (and (is-Intermediate!11258 lt!628355) (undefined!12070 lt!628355)))))

(assert (=> d!153207 (= lt!628355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46957 a!2831) j!81) mask!2608) (select (arr!46957 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153207 (validMask!0 mask!2608)))

(assert (=> d!153207 (= (seekEntryOrOpen!0 (select (arr!46957 a!2831) j!81) a!2831 mask!2608) lt!628354)))

(declare-fun b!1426969 () Bool)

(assert (=> b!1426969 (= e!806021 Undefined!11258)))

(declare-fun b!1426970 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97290 (_ BitVec 32)) SeekEntryResult!11258)

(assert (=> b!1426970 (= e!806022 (seekKeyOrZeroReturnVacant!0 (x!129061 lt!628355) (index!47425 lt!628355) (index!47425 lt!628355) (select (arr!46957 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1426971 () Bool)

(declare-fun e!806023 () SeekEntryResult!11258)

(assert (=> b!1426971 (= e!806023 (Found!11258 (index!47425 lt!628355)))))

(declare-fun b!1426972 () Bool)

(assert (=> b!1426972 (= e!806021 e!806023)))

(declare-fun lt!628353 () (_ BitVec 64))

(assert (=> b!1426972 (= lt!628353 (select (arr!46957 a!2831) (index!47425 lt!628355)))))

(declare-fun c!131857 () Bool)

(assert (=> b!1426972 (= c!131857 (= lt!628353 (select (arr!46957 a!2831) j!81)))))

(declare-fun b!1426973 () Bool)

(declare-fun c!131859 () Bool)

(assert (=> b!1426973 (= c!131859 (= lt!628353 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426973 (= e!806023 e!806022)))

(assert (= (and d!153207 c!131858) b!1426969))

(assert (= (and d!153207 (not c!131858)) b!1426972))

(assert (= (and b!1426972 c!131857) b!1426971))

(assert (= (and b!1426972 (not c!131857)) b!1426973))

(assert (= (and b!1426973 c!131859) b!1426968))

(assert (= (and b!1426973 (not c!131859)) b!1426970))

(declare-fun m!1317491 () Bool)

(assert (=> d!153207 m!1317491))

(assert (=> d!153207 m!1317311))

(assert (=> d!153207 m!1317331))

(assert (=> d!153207 m!1317337))

(declare-fun m!1317493 () Bool)

(assert (=> d!153207 m!1317493))

(assert (=> d!153207 m!1317331))

(assert (=> d!153207 m!1317311))

(assert (=> d!153207 m!1317333))

(declare-fun m!1317495 () Bool)

(assert (=> d!153207 m!1317495))

(assert (=> b!1426970 m!1317311))

(declare-fun m!1317497 () Bool)

(assert (=> b!1426970 m!1317497))

(declare-fun m!1317499 () Bool)

(assert (=> b!1426972 m!1317499))

(assert (=> b!1426765 d!153207))

(declare-fun d!153225 () Bool)

(declare-fun e!806067 () Bool)

(assert (=> d!153225 e!806067))

(declare-fun c!131890 () Bool)

(declare-fun lt!628392 () SeekEntryResult!11258)

(assert (=> d!153225 (= c!131890 (and (is-Intermediate!11258 lt!628392) (undefined!12070 lt!628392)))))

(declare-fun e!806069 () SeekEntryResult!11258)

(assert (=> d!153225 (= lt!628392 e!806069)))

(declare-fun c!131888 () Bool)

(assert (=> d!153225 (= c!131888 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628391 () (_ BitVec 64))

(assert (=> d!153225 (= lt!628391 (select (arr!46957 lt!628267) (toIndex!0 lt!628269 mask!2608)))))

(assert (=> d!153225 (validMask!0 mask!2608)))

(assert (=> d!153225 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628269 mask!2608) lt!628269 lt!628267 mask!2608) lt!628392)))

(declare-fun b!1427050 () Bool)

(assert (=> b!1427050 (= e!806067 (bvsge (x!129061 lt!628392) #b01111111111111111111111111111110))))

(declare-fun b!1427051 () Bool)

(declare-fun e!806066 () SeekEntryResult!11258)

(assert (=> b!1427051 (= e!806069 e!806066)))

(declare-fun c!131889 () Bool)

(assert (=> b!1427051 (= c!131889 (or (= lt!628391 lt!628269) (= (bvadd lt!628391 lt!628391) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427052 () Bool)

(assert (=> b!1427052 (= e!806069 (Intermediate!11258 true (toIndex!0 lt!628269 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427053 () Bool)

(declare-fun e!806068 () Bool)

(assert (=> b!1427053 (= e!806067 e!806068)))

(declare-fun res!962259 () Bool)

(assert (=> b!1427053 (= res!962259 (and (is-Intermediate!11258 lt!628392) (not (undefined!12070 lt!628392)) (bvslt (x!129061 lt!628392) #b01111111111111111111111111111110) (bvsge (x!129061 lt!628392) #b00000000000000000000000000000000) (bvsge (x!129061 lt!628392) #b00000000000000000000000000000000)))))

(assert (=> b!1427053 (=> (not res!962259) (not e!806068))))

(declare-fun b!1427054 () Bool)

(assert (=> b!1427054 (and (bvsge (index!47425 lt!628392) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628392) (size!47508 lt!628267)))))

(declare-fun res!962258 () Bool)

(assert (=> b!1427054 (= res!962258 (= (select (arr!46957 lt!628267) (index!47425 lt!628392)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806070 () Bool)

(assert (=> b!1427054 (=> res!962258 e!806070)))

(declare-fun b!1427055 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427055 (= e!806066 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628269 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628269 lt!628267 mask!2608))))

(declare-fun b!1427056 () Bool)

(assert (=> b!1427056 (and (bvsge (index!47425 lt!628392) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628392) (size!47508 lt!628267)))))

(declare-fun res!962257 () Bool)

(assert (=> b!1427056 (= res!962257 (= (select (arr!46957 lt!628267) (index!47425 lt!628392)) lt!628269))))

(assert (=> b!1427056 (=> res!962257 e!806070)))

(assert (=> b!1427056 (= e!806068 e!806070)))

(declare-fun b!1427057 () Bool)

(assert (=> b!1427057 (and (bvsge (index!47425 lt!628392) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628392) (size!47508 lt!628267)))))

(assert (=> b!1427057 (= e!806070 (= (select (arr!46957 lt!628267) (index!47425 lt!628392)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427058 () Bool)

(assert (=> b!1427058 (= e!806066 (Intermediate!11258 false (toIndex!0 lt!628269 mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153225 c!131888) b!1427052))

(assert (= (and d!153225 (not c!131888)) b!1427051))

(assert (= (and b!1427051 c!131889) b!1427058))

(assert (= (and b!1427051 (not c!131889)) b!1427055))

(assert (= (and d!153225 c!131890) b!1427050))

(assert (= (and d!153225 (not c!131890)) b!1427053))

(assert (= (and b!1427053 res!962259) b!1427056))

(assert (= (and b!1427056 (not res!962257)) b!1427054))

(assert (= (and b!1427054 (not res!962258)) b!1427057))

(assert (=> d!153225 m!1317315))

(declare-fun m!1317547 () Bool)

(assert (=> d!153225 m!1317547))

(assert (=> d!153225 m!1317337))

(assert (=> b!1427055 m!1317315))

(declare-fun m!1317549 () Bool)

(assert (=> b!1427055 m!1317549))

(assert (=> b!1427055 m!1317549))

(declare-fun m!1317551 () Bool)

(assert (=> b!1427055 m!1317551))

(declare-fun m!1317553 () Bool)

(assert (=> b!1427057 m!1317553))

(assert (=> b!1427054 m!1317553))

(assert (=> b!1427056 m!1317553))

(assert (=> b!1426770 d!153225))

(declare-fun d!153251 () Bool)

(declare-fun lt!628404 () (_ BitVec 32))

(declare-fun lt!628403 () (_ BitVec 32))

(assert (=> d!153251 (= lt!628404 (bvmul (bvxor lt!628403 (bvlshr lt!628403 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153251 (= lt!628403 ((_ extract 31 0) (bvand (bvxor lt!628269 (bvlshr lt!628269 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153251 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962260 (let ((h!34953 ((_ extract 31 0) (bvand (bvxor lt!628269 (bvlshr lt!628269 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129069 (bvmul (bvxor h!34953 (bvlshr h!34953 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129069 (bvlshr x!129069 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962260 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962260 #b00000000000000000000000000000000))))))

(assert (=> d!153251 (= (toIndex!0 lt!628269 mask!2608) (bvand (bvxor lt!628404 (bvlshr lt!628404 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426770 d!153251))

(declare-fun d!153253 () Bool)

(assert (=> d!153253 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123058 d!153253))

(declare-fun d!153261 () Bool)

(assert (=> d!153261 (= (array_inv!35902 a!2831) (bvsge (size!47508 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123058 d!153261))

(declare-fun d!153263 () Bool)

(declare-fun e!806086 () Bool)

(assert (=> d!153263 e!806086))

(declare-fun c!131905 () Bool)

(declare-fun lt!628411 () SeekEntryResult!11258)

(assert (=> d!153263 (= c!131905 (and (is-Intermediate!11258 lt!628411) (undefined!12070 lt!628411)))))

(declare-fun e!806088 () SeekEntryResult!11258)

(assert (=> d!153263 (= lt!628411 e!806088)))

(declare-fun c!131903 () Bool)

(assert (=> d!153263 (= c!131903 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628410 () (_ BitVec 64))

(assert (=> d!153263 (= lt!628410 (select (arr!46957 a!2831) (toIndex!0 (select (arr!46957 a!2831) j!81) mask!2608)))))

(assert (=> d!153263 (validMask!0 mask!2608)))

(assert (=> d!153263 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46957 a!2831) j!81) mask!2608) (select (arr!46957 a!2831) j!81) a!2831 mask!2608) lt!628411)))

(declare-fun b!1427086 () Bool)

(assert (=> b!1427086 (= e!806086 (bvsge (x!129061 lt!628411) #b01111111111111111111111111111110))))

(declare-fun b!1427087 () Bool)

(declare-fun e!806085 () SeekEntryResult!11258)

(assert (=> b!1427087 (= e!806088 e!806085)))

(declare-fun c!131904 () Bool)

(assert (=> b!1427087 (= c!131904 (or (= lt!628410 (select (arr!46957 a!2831) j!81)) (= (bvadd lt!628410 lt!628410) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427088 () Bool)

(assert (=> b!1427088 (= e!806088 (Intermediate!11258 true (toIndex!0 (select (arr!46957 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427089 () Bool)

(declare-fun e!806087 () Bool)

(assert (=> b!1427089 (= e!806086 e!806087)))

(declare-fun res!962266 () Bool)

(assert (=> b!1427089 (= res!962266 (and (is-Intermediate!11258 lt!628411) (not (undefined!12070 lt!628411)) (bvslt (x!129061 lt!628411) #b01111111111111111111111111111110) (bvsge (x!129061 lt!628411) #b00000000000000000000000000000000) (bvsge (x!129061 lt!628411) #b00000000000000000000000000000000)))))

(assert (=> b!1427089 (=> (not res!962266) (not e!806087))))

(declare-fun b!1427090 () Bool)

(assert (=> b!1427090 (and (bvsge (index!47425 lt!628411) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628411) (size!47508 a!2831)))))

(declare-fun res!962265 () Bool)

(assert (=> b!1427090 (= res!962265 (= (select (arr!46957 a!2831) (index!47425 lt!628411)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806089 () Bool)

(assert (=> b!1427090 (=> res!962265 e!806089)))

(declare-fun b!1427091 () Bool)

(assert (=> b!1427091 (= e!806085 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46957 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46957 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427092 () Bool)

(assert (=> b!1427092 (and (bvsge (index!47425 lt!628411) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628411) (size!47508 a!2831)))))

(declare-fun res!962264 () Bool)

(assert (=> b!1427092 (= res!962264 (= (select (arr!46957 a!2831) (index!47425 lt!628411)) (select (arr!46957 a!2831) j!81)))))

(assert (=> b!1427092 (=> res!962264 e!806089)))

(assert (=> b!1427092 (= e!806087 e!806089)))

(declare-fun b!1427093 () Bool)

(assert (=> b!1427093 (and (bvsge (index!47425 lt!628411) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628411) (size!47508 a!2831)))))

(assert (=> b!1427093 (= e!806089 (= (select (arr!46957 a!2831) (index!47425 lt!628411)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427094 () Bool)

(assert (=> b!1427094 (= e!806085 (Intermediate!11258 false (toIndex!0 (select (arr!46957 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153263 c!131903) b!1427088))

(assert (= (and d!153263 (not c!131903)) b!1427087))

(assert (= (and b!1427087 c!131904) b!1427094))

(assert (= (and b!1427087 (not c!131904)) b!1427091))

(assert (= (and d!153263 c!131905) b!1427086))

(assert (= (and d!153263 (not c!131905)) b!1427089))

(assert (= (and b!1427089 res!962266) b!1427092))

(assert (= (and b!1427092 (not res!962264)) b!1427090))

(assert (= (and b!1427090 (not res!962265)) b!1427093))

(assert (=> d!153263 m!1317331))

(declare-fun m!1317569 () Bool)

(assert (=> d!153263 m!1317569))

(assert (=> d!153263 m!1317337))

(assert (=> b!1427091 m!1317331))

(declare-fun m!1317571 () Bool)

(assert (=> b!1427091 m!1317571))

(assert (=> b!1427091 m!1317571))

(assert (=> b!1427091 m!1317311))

(declare-fun m!1317573 () Bool)

(assert (=> b!1427091 m!1317573))

(declare-fun m!1317575 () Bool)

(assert (=> b!1427093 m!1317575))

(assert (=> b!1427090 m!1317575))

(assert (=> b!1427092 m!1317575))

(assert (=> b!1426764 d!153263))

(declare-fun d!153265 () Bool)

(declare-fun lt!628413 () (_ BitVec 32))

(declare-fun lt!628412 () (_ BitVec 32))

(assert (=> d!153265 (= lt!628413 (bvmul (bvxor lt!628412 (bvlshr lt!628412 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153265 (= lt!628412 ((_ extract 31 0) (bvand (bvxor (select (arr!46957 a!2831) j!81) (bvlshr (select (arr!46957 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153265 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962260 (let ((h!34953 ((_ extract 31 0) (bvand (bvxor (select (arr!46957 a!2831) j!81) (bvlshr (select (arr!46957 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129069 (bvmul (bvxor h!34953 (bvlshr h!34953 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129069 (bvlshr x!129069 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962260 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962260 #b00000000000000000000000000000000))))))

(assert (=> d!153265 (= (toIndex!0 (select (arr!46957 a!2831) j!81) mask!2608) (bvand (bvxor lt!628413 (bvlshr lt!628413 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426764 d!153265))

(declare-fun d!153267 () Bool)

(assert (=> d!153267 (= (validKeyInArray!0 (select (arr!46957 a!2831) i!982)) (and (not (= (select (arr!46957 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46957 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426766 d!153267))

(declare-fun d!153269 () Bool)

(declare-fun res!962280 () Bool)

(declare-fun e!806108 () Bool)

(assert (=> d!153269 (=> res!962280 e!806108)))

(assert (=> d!153269 (= res!962280 (bvsge j!81 (size!47508 a!2831)))))

(assert (=> d!153269 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806108)))

(declare-fun b!1427118 () Bool)

(declare-fun e!806110 () Bool)

(declare-fun call!67358 () Bool)

(assert (=> b!1427118 (= e!806110 call!67358)))

(declare-fun b!1427119 () Bool)

(declare-fun e!806109 () Bool)

(assert (=> b!1427119 (= e!806109 e!806110)))

(declare-fun lt!628420 () (_ BitVec 64))

(assert (=> b!1427119 (= lt!628420 (select (arr!46957 a!2831) j!81))))

(declare-fun lt!628421 () Unit!48210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97290 (_ BitVec 64) (_ BitVec 32)) Unit!48210)

(assert (=> b!1427119 (= lt!628421 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628420 j!81))))

(declare-fun arrayContainsKey!0 (array!97290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1427119 (arrayContainsKey!0 a!2831 lt!628420 #b00000000000000000000000000000000)))

(declare-fun lt!628422 () Unit!48210)

(assert (=> b!1427119 (= lt!628422 lt!628421)))

(declare-fun res!962281 () Bool)

(assert (=> b!1427119 (= res!962281 (= (seekEntryOrOpen!0 (select (arr!46957 a!2831) j!81) a!2831 mask!2608) (Found!11258 j!81)))))

(assert (=> b!1427119 (=> (not res!962281) (not e!806110))))

(declare-fun b!1427120 () Bool)

(assert (=> b!1427120 (= e!806109 call!67358)))

(declare-fun bm!67355 () Bool)

(assert (=> bm!67355 (= call!67358 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1427121 () Bool)

(assert (=> b!1427121 (= e!806108 e!806109)))

(declare-fun c!131911 () Bool)

(assert (=> b!1427121 (= c!131911 (validKeyInArray!0 (select (arr!46957 a!2831) j!81)))))

(assert (= (and d!153269 (not res!962280)) b!1427121))

(assert (= (and b!1427121 c!131911) b!1427119))

(assert (= (and b!1427121 (not c!131911)) b!1427120))

(assert (= (and b!1427119 res!962281) b!1427118))

(assert (= (or b!1427118 b!1427120) bm!67355))

(assert (=> b!1427119 m!1317311))

(declare-fun m!1317581 () Bool)

(assert (=> b!1427119 m!1317581))

(declare-fun m!1317583 () Bool)

(assert (=> b!1427119 m!1317583))

(assert (=> b!1427119 m!1317311))

(assert (=> b!1427119 m!1317327))

(declare-fun m!1317585 () Bool)

(assert (=> bm!67355 m!1317585))

(assert (=> b!1427121 m!1317311))

(assert (=> b!1427121 m!1317311))

(assert (=> b!1427121 m!1317335))

(assert (=> b!1426760 d!153269))

(declare-fun d!153273 () Bool)

(assert (=> d!153273 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628425 () Unit!48210)

(declare-fun choose!38 (array!97290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48210)

(assert (=> d!153273 (= lt!628425 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153273 (validMask!0 mask!2608)))

(assert (=> d!153273 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628425)))

(declare-fun bs!41593 () Bool)

(assert (= bs!41593 d!153273))

(assert (=> bs!41593 m!1317347))

(declare-fun m!1317587 () Bool)

(assert (=> bs!41593 m!1317587))

(assert (=> bs!41593 m!1317337))

(assert (=> b!1426760 d!153273))

(declare-fun d!153275 () Bool)

(declare-fun res!962282 () Bool)

(declare-fun e!806111 () Bool)

(assert (=> d!153275 (=> res!962282 e!806111)))

(assert (=> d!153275 (= res!962282 (bvsge #b00000000000000000000000000000000 (size!47508 a!2831)))))

(assert (=> d!153275 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!806111)))

(declare-fun b!1427122 () Bool)

(declare-fun e!806113 () Bool)

(declare-fun call!67359 () Bool)

(assert (=> b!1427122 (= e!806113 call!67359)))

(declare-fun b!1427123 () Bool)

(declare-fun e!806112 () Bool)

(assert (=> b!1427123 (= e!806112 e!806113)))

(declare-fun lt!628426 () (_ BitVec 64))

(assert (=> b!1427123 (= lt!628426 (select (arr!46957 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628427 () Unit!48210)

(assert (=> b!1427123 (= lt!628427 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628426 #b00000000000000000000000000000000))))

(assert (=> b!1427123 (arrayContainsKey!0 a!2831 lt!628426 #b00000000000000000000000000000000)))

(declare-fun lt!628428 () Unit!48210)

(assert (=> b!1427123 (= lt!628428 lt!628427)))

(declare-fun res!962283 () Bool)

(assert (=> b!1427123 (= res!962283 (= (seekEntryOrOpen!0 (select (arr!46957 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11258 #b00000000000000000000000000000000)))))

(assert (=> b!1427123 (=> (not res!962283) (not e!806113))))

(declare-fun b!1427124 () Bool)

(assert (=> b!1427124 (= e!806112 call!67359)))

(declare-fun bm!67356 () Bool)

(assert (=> bm!67356 (= call!67359 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1427125 () Bool)

(assert (=> b!1427125 (= e!806111 e!806112)))

(declare-fun c!131912 () Bool)

(assert (=> b!1427125 (= c!131912 (validKeyInArray!0 (select (arr!46957 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153275 (not res!962282)) b!1427125))

(assert (= (and b!1427125 c!131912) b!1427123))

(assert (= (and b!1427125 (not c!131912)) b!1427124))

(assert (= (and b!1427123 res!962283) b!1427122))

(assert (= (or b!1427122 b!1427124) bm!67356))

(declare-fun m!1317589 () Bool)

(assert (=> b!1427123 m!1317589))

(declare-fun m!1317591 () Bool)

(assert (=> b!1427123 m!1317591))

(declare-fun m!1317593 () Bool)

(assert (=> b!1427123 m!1317593))

(assert (=> b!1427123 m!1317589))

(declare-fun m!1317595 () Bool)

(assert (=> b!1427123 m!1317595))

(declare-fun m!1317597 () Bool)

(assert (=> bm!67356 m!1317597))

(assert (=> b!1427125 m!1317589))

(assert (=> b!1427125 m!1317589))

(declare-fun m!1317599 () Bool)

(assert (=> b!1427125 m!1317599))

(assert (=> b!1426762 d!153275))

(declare-fun d!153277 () Bool)

(declare-fun e!806115 () Bool)

(assert (=> d!153277 e!806115))

(declare-fun c!131915 () Bool)

(declare-fun lt!628430 () SeekEntryResult!11258)

(assert (=> d!153277 (= c!131915 (and (is-Intermediate!11258 lt!628430) (undefined!12070 lt!628430)))))

(declare-fun e!806117 () SeekEntryResult!11258)

(assert (=> d!153277 (= lt!628430 e!806117)))

(declare-fun c!131913 () Bool)

(assert (=> d!153277 (= c!131913 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628429 () (_ BitVec 64))

(assert (=> d!153277 (= lt!628429 (select (arr!46957 lt!628267) index!585))))

(assert (=> d!153277 (validMask!0 mask!2608)))

(assert (=> d!153277 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628269 lt!628267 mask!2608) lt!628430)))

(declare-fun b!1427126 () Bool)

(assert (=> b!1427126 (= e!806115 (bvsge (x!129061 lt!628430) #b01111111111111111111111111111110))))

(declare-fun b!1427127 () Bool)

(declare-fun e!806114 () SeekEntryResult!11258)

(assert (=> b!1427127 (= e!806117 e!806114)))

(declare-fun c!131914 () Bool)

(assert (=> b!1427127 (= c!131914 (or (= lt!628429 lt!628269) (= (bvadd lt!628429 lt!628429) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427128 () Bool)

(assert (=> b!1427128 (= e!806117 (Intermediate!11258 true index!585 x!605))))

(declare-fun b!1427129 () Bool)

(declare-fun e!806116 () Bool)

(assert (=> b!1427129 (= e!806115 e!806116)))

(declare-fun res!962286 () Bool)

(assert (=> b!1427129 (= res!962286 (and (is-Intermediate!11258 lt!628430) (not (undefined!12070 lt!628430)) (bvslt (x!129061 lt!628430) #b01111111111111111111111111111110) (bvsge (x!129061 lt!628430) #b00000000000000000000000000000000) (bvsge (x!129061 lt!628430) x!605)))))

(assert (=> b!1427129 (=> (not res!962286) (not e!806116))))

(declare-fun b!1427130 () Bool)

(assert (=> b!1427130 (and (bvsge (index!47425 lt!628430) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628430) (size!47508 lt!628267)))))

(declare-fun res!962285 () Bool)

(assert (=> b!1427130 (= res!962285 (= (select (arr!46957 lt!628267) (index!47425 lt!628430)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806118 () Bool)

(assert (=> b!1427130 (=> res!962285 e!806118)))

(declare-fun b!1427131 () Bool)

(assert (=> b!1427131 (= e!806114 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628269 lt!628267 mask!2608))))

(declare-fun b!1427132 () Bool)

(assert (=> b!1427132 (and (bvsge (index!47425 lt!628430) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628430) (size!47508 lt!628267)))))

(declare-fun res!962284 () Bool)

(assert (=> b!1427132 (= res!962284 (= (select (arr!46957 lt!628267) (index!47425 lt!628430)) lt!628269))))

(assert (=> b!1427132 (=> res!962284 e!806118)))

(assert (=> b!1427132 (= e!806116 e!806118)))

(declare-fun b!1427133 () Bool)

(assert (=> b!1427133 (and (bvsge (index!47425 lt!628430) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628430) (size!47508 lt!628267)))))

(assert (=> b!1427133 (= e!806118 (= (select (arr!46957 lt!628267) (index!47425 lt!628430)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427134 () Bool)

(assert (=> b!1427134 (= e!806114 (Intermediate!11258 false index!585 x!605))))

(assert (= (and d!153277 c!131913) b!1427128))

(assert (= (and d!153277 (not c!131913)) b!1427127))

(assert (= (and b!1427127 c!131914) b!1427134))

(assert (= (and b!1427127 (not c!131914)) b!1427131))

(assert (= (and d!153277 c!131915) b!1427126))

(assert (= (and d!153277 (not c!131915)) b!1427129))

(assert (= (and b!1427129 res!962286) b!1427132))

(assert (= (and b!1427132 (not res!962284)) b!1427130))

(assert (= (and b!1427130 (not res!962285)) b!1427133))

(declare-fun m!1317601 () Bool)

(assert (=> d!153277 m!1317601))

(assert (=> d!153277 m!1317337))

(declare-fun m!1317603 () Bool)

(assert (=> b!1427131 m!1317603))

(assert (=> b!1427131 m!1317603))

(declare-fun m!1317605 () Bool)

(assert (=> b!1427131 m!1317605))

(declare-fun m!1317607 () Bool)

(assert (=> b!1427133 m!1317607))

(assert (=> b!1427130 m!1317607))

(assert (=> b!1427132 m!1317607))

(assert (=> b!1426767 d!153277))

(declare-fun d!153279 () Bool)

(declare-fun e!806120 () Bool)

(assert (=> d!153279 e!806120))

(declare-fun c!131918 () Bool)

(declare-fun lt!628432 () SeekEntryResult!11258)

(assert (=> d!153279 (= c!131918 (and (is-Intermediate!11258 lt!628432) (undefined!12070 lt!628432)))))

(declare-fun e!806122 () SeekEntryResult!11258)

(assert (=> d!153279 (= lt!628432 e!806122)))

(declare-fun c!131916 () Bool)

(assert (=> d!153279 (= c!131916 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628431 () (_ BitVec 64))

(assert (=> d!153279 (= lt!628431 (select (arr!46957 a!2831) index!585))))

(assert (=> d!153279 (validMask!0 mask!2608)))

(assert (=> d!153279 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46957 a!2831) j!81) a!2831 mask!2608) lt!628432)))

(declare-fun b!1427135 () Bool)

(assert (=> b!1427135 (= e!806120 (bvsge (x!129061 lt!628432) #b01111111111111111111111111111110))))

(declare-fun b!1427136 () Bool)

(declare-fun e!806119 () SeekEntryResult!11258)

(assert (=> b!1427136 (= e!806122 e!806119)))

(declare-fun c!131917 () Bool)

(assert (=> b!1427136 (= c!131917 (or (= lt!628431 (select (arr!46957 a!2831) j!81)) (= (bvadd lt!628431 lt!628431) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427137 () Bool)

(assert (=> b!1427137 (= e!806122 (Intermediate!11258 true index!585 x!605))))

(declare-fun b!1427138 () Bool)

(declare-fun e!806121 () Bool)

(assert (=> b!1427138 (= e!806120 e!806121)))

(declare-fun res!962289 () Bool)

(assert (=> b!1427138 (= res!962289 (and (is-Intermediate!11258 lt!628432) (not (undefined!12070 lt!628432)) (bvslt (x!129061 lt!628432) #b01111111111111111111111111111110) (bvsge (x!129061 lt!628432) #b00000000000000000000000000000000) (bvsge (x!129061 lt!628432) x!605)))))

(assert (=> b!1427138 (=> (not res!962289) (not e!806121))))

(declare-fun b!1427139 () Bool)

(assert (=> b!1427139 (and (bvsge (index!47425 lt!628432) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628432) (size!47508 a!2831)))))

(declare-fun res!962288 () Bool)

(assert (=> b!1427139 (= res!962288 (= (select (arr!46957 a!2831) (index!47425 lt!628432)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!806123 () Bool)

(assert (=> b!1427139 (=> res!962288 e!806123)))

(declare-fun b!1427140 () Bool)

(assert (=> b!1427140 (= e!806119 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46957 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427141 () Bool)

(assert (=> b!1427141 (and (bvsge (index!47425 lt!628432) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628432) (size!47508 a!2831)))))

(declare-fun res!962287 () Bool)

(assert (=> b!1427141 (= res!962287 (= (select (arr!46957 a!2831) (index!47425 lt!628432)) (select (arr!46957 a!2831) j!81)))))

(assert (=> b!1427141 (=> res!962287 e!806123)))

(assert (=> b!1427141 (= e!806121 e!806123)))

(declare-fun b!1427142 () Bool)

(assert (=> b!1427142 (and (bvsge (index!47425 lt!628432) #b00000000000000000000000000000000) (bvslt (index!47425 lt!628432) (size!47508 a!2831)))))

(assert (=> b!1427142 (= e!806123 (= (select (arr!46957 a!2831) (index!47425 lt!628432)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427143 () Bool)

(assert (=> b!1427143 (= e!806119 (Intermediate!11258 false index!585 x!605))))

(assert (= (and d!153279 c!131916) b!1427137))

(assert (= (and d!153279 (not c!131916)) b!1427136))

(assert (= (and b!1427136 c!131917) b!1427143))

(assert (= (and b!1427136 (not c!131917)) b!1427140))

(assert (= (and d!153279 c!131918) b!1427135))

(assert (= (and d!153279 (not c!131918)) b!1427138))

(assert (= (and b!1427138 res!962289) b!1427141))

(assert (= (and b!1427141 (not res!962287)) b!1427139))

(assert (= (and b!1427139 (not res!962288)) b!1427142))

(assert (=> d!153279 m!1317345))

(assert (=> d!153279 m!1317337))

(assert (=> b!1427140 m!1317603))

(assert (=> b!1427140 m!1317603))

(assert (=> b!1427140 m!1317311))

(declare-fun m!1317609 () Bool)

(assert (=> b!1427140 m!1317609))

(declare-fun m!1317611 () Bool)

(assert (=> b!1427142 m!1317611))

(assert (=> b!1427139 m!1317611))

(assert (=> b!1427141 m!1317611))

(assert (=> b!1426769 d!153279))

(declare-fun d!153281 () Bool)

(assert (=> d!153281 (= (validKeyInArray!0 (select (arr!46957 a!2831) j!81)) (and (not (= (select (arr!46957 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46957 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426763 d!153281))

(declare-fun d!153283 () Bool)

(declare-fun res!962297 () Bool)

(declare-fun e!806133 () Bool)

(assert (=> d!153283 (=> res!962297 e!806133)))

(assert (=> d!153283 (= res!962297 (bvsge #b00000000000000000000000000000000 (size!47508 a!2831)))))

(assert (=> d!153283 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33644) e!806133)))

(declare-fun bm!67359 () Bool)

(declare-fun call!67362 () Bool)

(declare-fun c!131921 () Bool)

(assert (=> bm!67359 (= call!67362 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131921 (Cons!33643 (select (arr!46957 a!2831) #b00000000000000000000000000000000) Nil!33644) Nil!33644)))))

(declare-fun b!1427154 () Bool)

(declare-fun e!806134 () Bool)

(assert (=> b!1427154 (= e!806134 call!67362)))

(declare-fun b!1427155 () Bool)

(declare-fun e!806135 () Bool)

(assert (=> b!1427155 (= e!806135 e!806134)))

(assert (=> b!1427155 (= c!131921 (validKeyInArray!0 (select (arr!46957 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427156 () Bool)

(assert (=> b!1427156 (= e!806134 call!67362)))

(declare-fun b!1427157 () Bool)

(declare-fun e!806132 () Bool)

(declare-fun contains!9862 (List!33647 (_ BitVec 64)) Bool)

(assert (=> b!1427157 (= e!806132 (contains!9862 Nil!33644 (select (arr!46957 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427158 () Bool)

(assert (=> b!1427158 (= e!806133 e!806135)))

(declare-fun res!962296 () Bool)

(assert (=> b!1427158 (=> (not res!962296) (not e!806135))))

(assert (=> b!1427158 (= res!962296 (not e!806132))))

(declare-fun res!962298 () Bool)

(assert (=> b!1427158 (=> (not res!962298) (not e!806132))))

(assert (=> b!1427158 (= res!962298 (validKeyInArray!0 (select (arr!46957 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153283 (not res!962297)) b!1427158))

(assert (= (and b!1427158 res!962298) b!1427157))

(assert (= (and b!1427158 res!962296) b!1427155))

(assert (= (and b!1427155 c!131921) b!1427154))

(assert (= (and b!1427155 (not c!131921)) b!1427156))

(assert (= (or b!1427154 b!1427156) bm!67359))

(assert (=> bm!67359 m!1317589))

(declare-fun m!1317613 () Bool)

(assert (=> bm!67359 m!1317613))

(assert (=> b!1427155 m!1317589))

(assert (=> b!1427155 m!1317589))

(assert (=> b!1427155 m!1317599))

(assert (=> b!1427157 m!1317589))

(assert (=> b!1427157 m!1317589))

(declare-fun m!1317615 () Bool)

(assert (=> b!1427157 m!1317615))

(assert (=> b!1427158 m!1317589))

(assert (=> b!1427158 m!1317589))

(assert (=> b!1427158 m!1317599))

(assert (=> b!1426768 d!153283))

(push 1)

