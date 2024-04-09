; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122432 () Bool)

(assert start!122432)

(declare-fun b!1418452 () Bool)

(declare-fun res!954203 () Bool)

(declare-fun e!802706 () Bool)

(assert (=> b!1418452 (=> (not res!954203) (not e!802706))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96826 0))(
  ( (array!96827 (arr!46731 (Array (_ BitVec 32) (_ BitVec 64))) (size!47282 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96826)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418452 (= res!954203 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47282 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47282 a!2831))))))

(declare-fun b!1418453 () Bool)

(declare-fun res!954202 () Bool)

(assert (=> b!1418453 (=> (not res!954202) (not e!802706))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418453 (= res!954202 (and (= (size!47282 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47282 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47282 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418454 () Bool)

(declare-fun res!954206 () Bool)

(assert (=> b!1418454 (=> (not res!954206) (not e!802706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418454 (= res!954206 (validKeyInArray!0 (select (arr!46731 a!2831) j!81)))))

(declare-fun res!954204 () Bool)

(assert (=> start!122432 (=> (not res!954204) (not e!802706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122432 (= res!954204 (validMask!0 mask!2608))))

(assert (=> start!122432 e!802706))

(assert (=> start!122432 true))

(declare-fun array_inv!35676 (array!96826) Bool)

(assert (=> start!122432 (array_inv!35676 a!2831)))

(declare-fun b!1418455 () Bool)

(declare-fun res!954205 () Bool)

(assert (=> b!1418455 (=> (not res!954205) (not e!802706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96826 (_ BitVec 32)) Bool)

(assert (=> b!1418455 (= res!954205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418456 () Bool)

(declare-fun res!954201 () Bool)

(assert (=> b!1418456 (=> (not res!954201) (not e!802706))))

(declare-datatypes ((List!33421 0))(
  ( (Nil!33418) (Cons!33417 (h!34710 (_ BitVec 64)) (t!48122 List!33421)) )
))
(declare-fun arrayNoDuplicates!0 (array!96826 (_ BitVec 32) List!33421) Bool)

(assert (=> b!1418456 (= res!954201 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33418))))

(declare-fun b!1418457 () Bool)

(declare-fun lt!625534 () (_ BitVec 32))

(assert (=> b!1418457 (= e!802706 (and (bvsge mask!2608 #b00000000000000000000000000000000) (or (bvslt lt!625534 #b00000000000000000000000000000000) (bvsge lt!625534 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418457 (= lt!625534 (toIndex!0 (select (arr!46731 a!2831) j!81) mask!2608))))

(declare-fun b!1418458 () Bool)

(declare-fun res!954207 () Bool)

(assert (=> b!1418458 (=> (not res!954207) (not e!802706))))

(assert (=> b!1418458 (= res!954207 (validKeyInArray!0 (select (arr!46731 a!2831) i!982)))))

(assert (= (and start!122432 res!954204) b!1418453))

(assert (= (and b!1418453 res!954202) b!1418458))

(assert (= (and b!1418458 res!954207) b!1418454))

(assert (= (and b!1418454 res!954206) b!1418455))

(assert (= (and b!1418455 res!954205) b!1418456))

(assert (= (and b!1418456 res!954201) b!1418452))

(assert (= (and b!1418452 res!954203) b!1418457))

(declare-fun m!1309181 () Bool)

(assert (=> b!1418454 m!1309181))

(assert (=> b!1418454 m!1309181))

(declare-fun m!1309183 () Bool)

(assert (=> b!1418454 m!1309183))

(declare-fun m!1309185 () Bool)

(assert (=> b!1418458 m!1309185))

(assert (=> b!1418458 m!1309185))

(declare-fun m!1309187 () Bool)

(assert (=> b!1418458 m!1309187))

(declare-fun m!1309189 () Bool)

(assert (=> start!122432 m!1309189))

(declare-fun m!1309191 () Bool)

(assert (=> start!122432 m!1309191))

(declare-fun m!1309193 () Bool)

(assert (=> b!1418456 m!1309193))

(assert (=> b!1418457 m!1309181))

(assert (=> b!1418457 m!1309181))

(declare-fun m!1309195 () Bool)

(assert (=> b!1418457 m!1309195))

(declare-fun m!1309197 () Bool)

(assert (=> b!1418455 m!1309197))

(push 1)

(assert (not b!1418455))

(assert (not b!1418454))

(assert (not b!1418457))

(assert (not b!1418456))

(assert (not start!122432))

(assert (not b!1418458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152821 () Bool)

(assert (=> d!152821 (= (validKeyInArray!0 (select (arr!46731 a!2831) i!982)) (and (not (= (select (arr!46731 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46731 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418458 d!152821))

(declare-fun d!152827 () Bool)

(declare-fun lt!625559 () (_ BitVec 32))

(declare-fun lt!625558 () (_ BitVec 32))

(assert (=> d!152827 (= lt!625559 (bvmul (bvxor lt!625558 (bvlshr lt!625558 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152827 (= lt!625558 ((_ extract 31 0) (bvand (bvxor (select (arr!46731 a!2831) j!81) (bvlshr (select (arr!46731 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152827 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954232 (let ((h!34711 ((_ extract 31 0) (bvand (bvxor (select (arr!46731 a!2831) j!81) (bvlshr (select (arr!46731 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128216 (bvmul (bvxor h!34711 (bvlshr h!34711 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128216 (bvlshr x!128216 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954232 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954232 #b00000000000000000000000000000000))))))

(assert (=> d!152827 (= (toIndex!0 (select (arr!46731 a!2831) j!81) mask!2608) (bvand (bvxor lt!625559 (bvlshr lt!625559 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1418457 d!152827))

(declare-fun b!1418523 () Bool)

(declare-fun e!802758 () Bool)

(declare-fun call!67281 () Bool)

(assert (=> b!1418523 (= e!802758 call!67281)))

(declare-fun bm!67278 () Bool)

(declare-fun c!131624 () Bool)

(assert (=> bm!67278 (= call!67281 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131624 (Cons!33417 (select (arr!46731 a!2831) #b00000000000000000000000000000000) Nil!33418) Nil!33418)))))

(declare-fun d!152833 () Bool)

(declare-fun res!954247 () Bool)

(declare-fun e!802759 () Bool)

(assert (=> d!152833 (=> res!954247 e!802759)))

(assert (=> d!152833 (= res!954247 (bvsge #b00000000000000000000000000000000 (size!47282 a!2831)))))

(assert (=> d!152833 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33418) e!802759)))

(declare-fun b!1418524 () Bool)

(declare-fun e!802760 () Bool)

(declare-fun contains!9850 (List!33421 (_ BitVec 64)) Bool)

(assert (=> b!1418524 (= e!802760 (contains!9850 Nil!33418 (select (arr!46731 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418525 () Bool)

(declare-fun e!802757 () Bool)

(assert (=> b!1418525 (= e!802759 e!802757)))

(declare-fun res!954249 () Bool)

(assert (=> b!1418525 (=> (not res!954249) (not e!802757))))

(assert (=> b!1418525 (= res!954249 (not e!802760))))

(declare-fun res!954248 () Bool)

(assert (=> b!1418525 (=> (not res!954248) (not e!802760))))

(assert (=> b!1418525 (= res!954248 (validKeyInArray!0 (select (arr!46731 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418526 () Bool)

(assert (=> b!1418526 (= e!802758 call!67281)))

(declare-fun b!1418527 () Bool)

(assert (=> b!1418527 (= e!802757 e!802758)))

(assert (=> b!1418527 (= c!131624 (validKeyInArray!0 (select (arr!46731 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152833 (not res!954247)) b!1418525))

(assert (= (and b!1418525 res!954248) b!1418524))

(assert (= (and b!1418525 res!954249) b!1418527))

(assert (= (and b!1418527 c!131624) b!1418523))

(assert (= (and b!1418527 (not c!131624)) b!1418526))

(assert (= (or b!1418523 b!1418526) bm!67278))

(declare-fun m!1309231 () Bool)

(assert (=> bm!67278 m!1309231))

(declare-fun m!1309233 () Bool)

(assert (=> bm!67278 m!1309233))

(assert (=> b!1418524 m!1309231))

(assert (=> b!1418524 m!1309231))

(declare-fun m!1309235 () Bool)

(assert (=> b!1418524 m!1309235))

(assert (=> b!1418525 m!1309231))

(assert (=> b!1418525 m!1309231))

(declare-fun m!1309237 () Bool)

(assert (=> b!1418525 m!1309237))

(assert (=> b!1418527 m!1309231))

(assert (=> b!1418527 m!1309231))

(assert (=> b!1418527 m!1309237))

(assert (=> b!1418456 d!152833))

(declare-fun b!1418536 () Bool)

(declare-fun e!802768 () Bool)

(declare-fun call!67284 () Bool)

(assert (=> b!1418536 (= e!802768 call!67284)))

(declare-fun b!1418537 () Bool)

(declare-fun e!802769 () Bool)

(assert (=> b!1418537 (= e!802769 call!67284)))

(declare-fun d!152841 () Bool)

(declare-fun res!954255 () Bool)

(declare-fun e!802767 () Bool)

(assert (=> d!152841 (=> res!954255 e!802767)))

(assert (=> d!152841 (= res!954255 (bvsge #b00000000000000000000000000000000 (size!47282 a!2831)))))

(assert (=> d!152841 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802767)))

(declare-fun b!1418538 () Bool)

(assert (=> b!1418538 (= e!802769 e!802768)))

(declare-fun lt!625578 () (_ BitVec 64))

(assert (=> b!1418538 (= lt!625578 (select (arr!46731 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48012 0))(
  ( (Unit!48013) )
))
(declare-fun lt!625577 () Unit!48012)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96826 (_ BitVec 64) (_ BitVec 32)) Unit!48012)

(assert (=> b!1418538 (= lt!625577 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625578 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1418538 (arrayContainsKey!0 a!2831 lt!625578 #b00000000000000000000000000000000)))

(declare-fun lt!625579 () Unit!48012)

(assert (=> b!1418538 (= lt!625579 lt!625577)))

(declare-fun res!954254 () Bool)

(declare-datatypes ((SeekEntryResult!11044 0))(
  ( (MissingZero!11044 (index!46567 (_ BitVec 32))) (Found!11044 (index!46568 (_ BitVec 32))) (Intermediate!11044 (undefined!11856 Bool) (index!46569 (_ BitVec 32)) (x!128221 (_ BitVec 32))) (Undefined!11044) (MissingVacant!11044 (index!46570 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96826 (_ BitVec 32)) SeekEntryResult!11044)

(assert (=> b!1418538 (= res!954254 (= (seekEntryOrOpen!0 (select (arr!46731 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11044 #b00000000000000000000000000000000)))))

(assert (=> b!1418538 (=> (not res!954254) (not e!802768))))

(declare-fun bm!67281 () Bool)

(assert (=> bm!67281 (= call!67284 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1418539 () Bool)

(assert (=> b!1418539 (= e!802767 e!802769)))

(declare-fun c!131627 () Bool)

(assert (=> b!1418539 (= c!131627 (validKeyInArray!0 (select (arr!46731 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152841 (not res!954255)) b!1418539))

(assert (= (and b!1418539 c!131627) b!1418538))

(assert (= (and b!1418539 (not c!131627)) b!1418537))

(assert (= (and b!1418538 res!954254) b!1418536))

(assert (= (or b!1418536 b!1418537) bm!67281))

(assert (=> b!1418538 m!1309231))

(declare-fun m!1309239 () Bool)

(assert (=> b!1418538 m!1309239))

(declare-fun m!1309241 () Bool)

(assert (=> b!1418538 m!1309241))

(assert (=> b!1418538 m!1309231))

(declare-fun m!1309243 () Bool)

(assert (=> b!1418538 m!1309243))

(declare-fun m!1309245 () Bool)

(assert (=> bm!67281 m!1309245))

(assert (=> b!1418539 m!1309231))

(assert (=> b!1418539 m!1309231))

(assert (=> b!1418539 m!1309237))

(assert (=> b!1418455 d!152841))

(declare-fun d!152845 () Bool)

(assert (=> d!152845 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122432 d!152845))

(declare-fun d!152847 () Bool)

(assert (=> d!152847 (= (array_inv!35676 a!2831) (bvsge (size!47282 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122432 d!152847))

(declare-fun d!152849 () Bool)

(assert (=> d!152849 (= (validKeyInArray!0 (select (arr!46731 a!2831) j!81)) (and (not (= (select (arr!46731 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46731 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418454 d!152849))

(push 1)

