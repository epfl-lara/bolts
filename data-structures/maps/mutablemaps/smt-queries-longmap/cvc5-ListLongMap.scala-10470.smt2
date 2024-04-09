; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123130 () Bool)

(assert start!123130)

(declare-fun res!962563 () Bool)

(declare-fun e!806238 () Bool)

(assert (=> start!123130 (=> (not res!962563) (not e!806238))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123130 (= res!962563 (validMask!0 mask!2608))))

(assert (=> start!123130 e!806238))

(assert (=> start!123130 true))

(declare-datatypes ((array!97311 0))(
  ( (array!97312 (arr!46966 (Array (_ BitVec 32) (_ BitVec 64))) (size!47517 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97311)

(declare-fun array_inv!35911 (array!97311) Bool)

(assert (=> start!123130 (array_inv!35911 a!2831)))

(declare-fun b!1427419 () Bool)

(declare-fun res!962568 () Bool)

(assert (=> b!1427419 (=> (not res!962568) (not e!806238))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427419 (= res!962568 (validKeyInArray!0 (select (arr!46966 a!2831) i!982)))))

(declare-fun b!1427420 () Bool)

(declare-fun res!962565 () Bool)

(assert (=> b!1427420 (=> (not res!962565) (not e!806238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97311 (_ BitVec 32)) Bool)

(assert (=> b!1427420 (= res!962565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427421 () Bool)

(declare-fun res!962567 () Bool)

(declare-fun e!806240 () Bool)

(assert (=> b!1427421 (=> (not res!962567) (not e!806240))))

(declare-datatypes ((SeekEntryResult!11267 0))(
  ( (MissingZero!11267 (index!47459 (_ BitVec 32))) (Found!11267 (index!47460 (_ BitVec 32))) (Intermediate!11267 (undefined!12079 Bool) (index!47461 (_ BitVec 32)) (x!129100 (_ BitVec 32))) (Undefined!11267) (MissingVacant!11267 (index!47462 (_ BitVec 32))) )
))
(declare-fun lt!628537 () SeekEntryResult!11267)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97311 (_ BitVec 32)) SeekEntryResult!11267)

(assert (=> b!1427421 (= res!962567 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46966 a!2831) j!81) a!2831 mask!2608) lt!628537))))

(declare-fun b!1427422 () Bool)

(declare-fun res!962560 () Bool)

(assert (=> b!1427422 (=> (not res!962560) (not e!806240))))

(declare-fun lt!628533 () SeekEntryResult!11267)

(declare-fun lt!628535 () array!97311)

(declare-fun lt!628536 () (_ BitVec 64))

(assert (=> b!1427422 (= res!962560 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628536 lt!628535 mask!2608) lt!628533))))

(declare-fun b!1427423 () Bool)

(assert (=> b!1427423 (= e!806240 (not (or (= (select (arr!46966 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (select (arr!46966 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!806239 () Bool)

(assert (=> b!1427423 e!806239))

(declare-fun res!962566 () Bool)

(assert (=> b!1427423 (=> (not res!962566) (not e!806239))))

(assert (=> b!1427423 (= res!962566 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48228 0))(
  ( (Unit!48229) )
))
(declare-fun lt!628534 () Unit!48228)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48228)

(assert (=> b!1427423 (= lt!628534 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427424 () Bool)

(declare-fun res!962561 () Bool)

(assert (=> b!1427424 (=> (not res!962561) (not e!806238))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1427424 (= res!962561 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47517 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47517 a!2831))))))

(declare-fun b!1427425 () Bool)

(declare-fun res!962559 () Bool)

(assert (=> b!1427425 (=> (not res!962559) (not e!806240))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427425 (= res!962559 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427426 () Bool)

(declare-fun e!806237 () Bool)

(assert (=> b!1427426 (= e!806238 e!806237)))

(declare-fun res!962564 () Bool)

(assert (=> b!1427426 (=> (not res!962564) (not e!806237))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427426 (= res!962564 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46966 a!2831) j!81) mask!2608) (select (arr!46966 a!2831) j!81) a!2831 mask!2608) lt!628537))))

(assert (=> b!1427426 (= lt!628537 (Intermediate!11267 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427427 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97311 (_ BitVec 32)) SeekEntryResult!11267)

(assert (=> b!1427427 (= e!806239 (= (seekEntryOrOpen!0 (select (arr!46966 a!2831) j!81) a!2831 mask!2608) (Found!11267 j!81)))))

(declare-fun b!1427428 () Bool)

(declare-fun res!962571 () Bool)

(assert (=> b!1427428 (=> (not res!962571) (not e!806238))))

(assert (=> b!1427428 (= res!962571 (validKeyInArray!0 (select (arr!46966 a!2831) j!81)))))

(declare-fun b!1427429 () Bool)

(assert (=> b!1427429 (= e!806237 e!806240)))

(declare-fun res!962569 () Bool)

(assert (=> b!1427429 (=> (not res!962569) (not e!806240))))

(assert (=> b!1427429 (= res!962569 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628536 mask!2608) lt!628536 lt!628535 mask!2608) lt!628533))))

(assert (=> b!1427429 (= lt!628533 (Intermediate!11267 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427429 (= lt!628536 (select (store (arr!46966 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427429 (= lt!628535 (array!97312 (store (arr!46966 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47517 a!2831)))))

(declare-fun b!1427430 () Bool)

(declare-fun res!962562 () Bool)

(assert (=> b!1427430 (=> (not res!962562) (not e!806238))))

(declare-datatypes ((List!33656 0))(
  ( (Nil!33653) (Cons!33652 (h!34960 (_ BitVec 64)) (t!48357 List!33656)) )
))
(declare-fun arrayNoDuplicates!0 (array!97311 (_ BitVec 32) List!33656) Bool)

(assert (=> b!1427430 (= res!962562 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33653))))

(declare-fun b!1427431 () Bool)

(declare-fun res!962570 () Bool)

(assert (=> b!1427431 (=> (not res!962570) (not e!806238))))

(assert (=> b!1427431 (= res!962570 (and (= (size!47517 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47517 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47517 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123130 res!962563) b!1427431))

(assert (= (and b!1427431 res!962570) b!1427419))

(assert (= (and b!1427419 res!962568) b!1427428))

(assert (= (and b!1427428 res!962571) b!1427420))

(assert (= (and b!1427420 res!962565) b!1427430))

(assert (= (and b!1427430 res!962562) b!1427424))

(assert (= (and b!1427424 res!962561) b!1427426))

(assert (= (and b!1427426 res!962564) b!1427429))

(assert (= (and b!1427429 res!962569) b!1427421))

(assert (= (and b!1427421 res!962567) b!1427422))

(assert (= (and b!1427422 res!962560) b!1427425))

(assert (= (and b!1427425 res!962559) b!1427423))

(assert (= (and b!1427423 res!962566) b!1427427))

(declare-fun m!1317845 () Bool)

(assert (=> b!1427422 m!1317845))

(declare-fun m!1317847 () Bool)

(assert (=> b!1427427 m!1317847))

(assert (=> b!1427427 m!1317847))

(declare-fun m!1317849 () Bool)

(assert (=> b!1427427 m!1317849))

(assert (=> b!1427421 m!1317847))

(assert (=> b!1427421 m!1317847))

(declare-fun m!1317851 () Bool)

(assert (=> b!1427421 m!1317851))

(assert (=> b!1427428 m!1317847))

(assert (=> b!1427428 m!1317847))

(declare-fun m!1317853 () Bool)

(assert (=> b!1427428 m!1317853))

(declare-fun m!1317855 () Bool)

(assert (=> b!1427430 m!1317855))

(declare-fun m!1317857 () Bool)

(assert (=> b!1427420 m!1317857))

(declare-fun m!1317859 () Bool)

(assert (=> b!1427429 m!1317859))

(assert (=> b!1427429 m!1317859))

(declare-fun m!1317861 () Bool)

(assert (=> b!1427429 m!1317861))

(declare-fun m!1317863 () Bool)

(assert (=> b!1427429 m!1317863))

(declare-fun m!1317865 () Bool)

(assert (=> b!1427429 m!1317865))

(assert (=> b!1427426 m!1317847))

(assert (=> b!1427426 m!1317847))

(declare-fun m!1317867 () Bool)

(assert (=> b!1427426 m!1317867))

(assert (=> b!1427426 m!1317867))

(assert (=> b!1427426 m!1317847))

(declare-fun m!1317869 () Bool)

(assert (=> b!1427426 m!1317869))

(declare-fun m!1317871 () Bool)

(assert (=> b!1427419 m!1317871))

(assert (=> b!1427419 m!1317871))

(declare-fun m!1317873 () Bool)

(assert (=> b!1427419 m!1317873))

(declare-fun m!1317875 () Bool)

(assert (=> start!123130 m!1317875))

(declare-fun m!1317877 () Bool)

(assert (=> start!123130 m!1317877))

(declare-fun m!1317879 () Bool)

(assert (=> b!1427423 m!1317879))

(declare-fun m!1317881 () Bool)

(assert (=> b!1427423 m!1317881))

(declare-fun m!1317883 () Bool)

(assert (=> b!1427423 m!1317883))

(push 1)

(assert (not b!1427427))

(assert (not b!1427419))

(assert (not b!1427428))

(assert (not b!1427422))

(assert (not start!123130))

(assert (not b!1427430))

(assert (not b!1427429))

(assert (not b!1427423))

(assert (not b!1427426))

(assert (not b!1427421))

(assert (not b!1427420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!806352 () SeekEntryResult!11267)

(declare-fun b!1427631 () Bool)

(assert (=> b!1427631 (= e!806352 (Intermediate!11267 false (toIndex!0 (select (arr!46966 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427632 () Bool)

(declare-fun e!806349 () SeekEntryResult!11267)

(assert (=> b!1427632 (= e!806349 e!806352)))

(declare-fun c!131957 () Bool)

(declare-fun lt!628616 () (_ BitVec 64))

(assert (=> b!1427632 (= c!131957 (or (= lt!628616 (select (arr!46966 a!2831) j!81)) (= (bvadd lt!628616 lt!628616) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427633 () Bool)

(declare-fun e!806350 () Bool)

(declare-fun e!806353 () Bool)

(assert (=> b!1427633 (= e!806350 e!806353)))

(declare-fun res!962704 () Bool)

(declare-fun lt!628617 () SeekEntryResult!11267)

(assert (=> b!1427633 (= res!962704 (and (is-Intermediate!11267 lt!628617) (not (undefined!12079 lt!628617)) (bvslt (x!129100 lt!628617) #b01111111111111111111111111111110) (bvsge (x!129100 lt!628617) #b00000000000000000000000000000000) (bvsge (x!129100 lt!628617) #b00000000000000000000000000000000)))))

(assert (=> b!1427633 (=> (not res!962704) (not e!806353))))

(declare-fun d!153299 () Bool)

(assert (=> d!153299 e!806350))

(declare-fun c!131959 () Bool)

(assert (=> d!153299 (= c!131959 (and (is-Intermediate!11267 lt!628617) (undefined!12079 lt!628617)))))

(assert (=> d!153299 (= lt!628617 e!806349)))

(declare-fun c!131958 () Bool)

(assert (=> d!153299 (= c!131958 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153299 (= lt!628616 (select (arr!46966 a!2831) (toIndex!0 (select (arr!46966 a!2831) j!81) mask!2608)))))

(assert (=> d!153299 (validMask!0 mask!2608)))

(assert (=> d!153299 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46966 a!2831) j!81) mask!2608) (select (arr!46966 a!2831) j!81) a!2831 mask!2608) lt!628617)))

(declare-fun b!1427634 () Bool)

(assert (=> b!1427634 (= e!806350 (bvsge (x!129100 lt!628617) #b01111111111111111111111111111110))))

(declare-fun b!1427635 () Bool)

(assert (=> b!1427635 (= e!806349 (Intermediate!11267 true (toIndex!0 (select (arr!46966 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427636 () Bool)

(assert (=> b!1427636 (and (bvsge (index!47461 lt!628617) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628617) (size!47517 a!2831)))))

(declare-fun res!962703 () Bool)

(assert (=> b!1427636 (= res!962703 (= (select (arr!46966 a!2831) (index!47461 lt!628617)) (select (arr!46966 a!2831) j!81)))))

(declare-fun e!806351 () Bool)

(assert (=> b!1427636 (=> res!962703 e!806351)))

(assert (=> b!1427636 (= e!806353 e!806351)))

(declare-fun b!1427637 () Bool)

(assert (=> b!1427637 (and (bvsge (index!47461 lt!628617) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628617) (size!47517 a!2831)))))

(declare-fun res!962702 () Bool)

(assert (=> b!1427637 (= res!962702 (= (select (arr!46966 a!2831) (index!47461 lt!628617)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427637 (=> res!962702 e!806351)))

(declare-fun b!1427638 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427638 (= e!806352 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46966 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46966 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427639 () Bool)

(assert (=> b!1427639 (and (bvsge (index!47461 lt!628617) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628617) (size!47517 a!2831)))))

(assert (=> b!1427639 (= e!806351 (= (select (arr!46966 a!2831) (index!47461 lt!628617)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153299 c!131958) b!1427635))

(assert (= (and d!153299 (not c!131958)) b!1427632))

(assert (= (and b!1427632 c!131957) b!1427631))

(assert (= (and b!1427632 (not c!131957)) b!1427638))

(assert (= (and d!153299 c!131959) b!1427634))

(assert (= (and d!153299 (not c!131959)) b!1427633))

(assert (= (and b!1427633 res!962704) b!1427636))

(assert (= (and b!1427636 (not res!962703)) b!1427637))

(assert (= (and b!1427637 (not res!962702)) b!1427639))

(declare-fun m!1318017 () Bool)

(assert (=> b!1427637 m!1318017))

(assert (=> b!1427638 m!1317867))

(declare-fun m!1318019 () Bool)

(assert (=> b!1427638 m!1318019))

(assert (=> b!1427638 m!1318019))

(assert (=> b!1427638 m!1317847))

(declare-fun m!1318021 () Bool)

(assert (=> b!1427638 m!1318021))

(assert (=> b!1427639 m!1318017))

(assert (=> d!153299 m!1317867))

(declare-fun m!1318023 () Bool)

(assert (=> d!153299 m!1318023))

(assert (=> d!153299 m!1317875))

(assert (=> b!1427636 m!1318017))

(assert (=> b!1427426 d!153299))

(declare-fun d!153321 () Bool)

(declare-fun lt!628623 () (_ BitVec 32))

(declare-fun lt!628622 () (_ BitVec 32))

(assert (=> d!153321 (= lt!628623 (bvmul (bvxor lt!628622 (bvlshr lt!628622 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153321 (= lt!628622 ((_ extract 31 0) (bvand (bvxor (select (arr!46966 a!2831) j!81) (bvlshr (select (arr!46966 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153321 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962705 (let ((h!34964 ((_ extract 31 0) (bvand (bvxor (select (arr!46966 a!2831) j!81) (bvlshr (select (arr!46966 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129106 (bvmul (bvxor h!34964 (bvlshr h!34964 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129106 (bvlshr x!129106 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962705 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962705 #b00000000000000000000000000000000))))))

(assert (=> d!153321 (= (toIndex!0 (select (arr!46966 a!2831) j!81) mask!2608) (bvand (bvxor lt!628623 (bvlshr lt!628623 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1427426 d!153321))

(declare-fun b!1427700 () Bool)

(declare-fun e!806390 () SeekEntryResult!11267)

(declare-fun e!806388 () SeekEntryResult!11267)

(assert (=> b!1427700 (= e!806390 e!806388)))

(declare-fun lt!628647 () (_ BitVec 64))

(declare-fun lt!628645 () SeekEntryResult!11267)

(assert (=> b!1427700 (= lt!628647 (select (arr!46966 a!2831) (index!47461 lt!628645)))))

(declare-fun c!131985 () Bool)

(assert (=> b!1427700 (= c!131985 (= lt!628647 (select (arr!46966 a!2831) j!81)))))

(declare-fun b!1427701 () Bool)

(assert (=> b!1427701 (= e!806388 (Found!11267 (index!47461 lt!628645)))))

(declare-fun b!1427702 () Bool)

(declare-fun e!806389 () SeekEntryResult!11267)

(assert (=> b!1427702 (= e!806389 (MissingZero!11267 (index!47461 lt!628645)))))

(declare-fun d!153327 () Bool)

(declare-fun lt!628646 () SeekEntryResult!11267)

(assert (=> d!153327 (and (or (is-Undefined!11267 lt!628646) (not (is-Found!11267 lt!628646)) (and (bvsge (index!47460 lt!628646) #b00000000000000000000000000000000) (bvslt (index!47460 lt!628646) (size!47517 a!2831)))) (or (is-Undefined!11267 lt!628646) (is-Found!11267 lt!628646) (not (is-MissingZero!11267 lt!628646)) (and (bvsge (index!47459 lt!628646) #b00000000000000000000000000000000) (bvslt (index!47459 lt!628646) (size!47517 a!2831)))) (or (is-Undefined!11267 lt!628646) (is-Found!11267 lt!628646) (is-MissingZero!11267 lt!628646) (not (is-MissingVacant!11267 lt!628646)) (and (bvsge (index!47462 lt!628646) #b00000000000000000000000000000000) (bvslt (index!47462 lt!628646) (size!47517 a!2831)))) (or (is-Undefined!11267 lt!628646) (ite (is-Found!11267 lt!628646) (= (select (arr!46966 a!2831) (index!47460 lt!628646)) (select (arr!46966 a!2831) j!81)) (ite (is-MissingZero!11267 lt!628646) (= (select (arr!46966 a!2831) (index!47459 lt!628646)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11267 lt!628646) (= (select (arr!46966 a!2831) (index!47462 lt!628646)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153327 (= lt!628646 e!806390)))

(declare-fun c!131983 () Bool)

(assert (=> d!153327 (= c!131983 (and (is-Intermediate!11267 lt!628645) (undefined!12079 lt!628645)))))

(assert (=> d!153327 (= lt!628645 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46966 a!2831) j!81) mask!2608) (select (arr!46966 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153327 (validMask!0 mask!2608)))

(assert (=> d!153327 (= (seekEntryOrOpen!0 (select (arr!46966 a!2831) j!81) a!2831 mask!2608) lt!628646)))

(declare-fun b!1427703 () Bool)

(declare-fun c!131984 () Bool)

(assert (=> b!1427703 (= c!131984 (= lt!628647 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427703 (= e!806388 e!806389)))

(declare-fun b!1427704 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97311 (_ BitVec 32)) SeekEntryResult!11267)

(assert (=> b!1427704 (= e!806389 (seekKeyOrZeroReturnVacant!0 (x!129100 lt!628645) (index!47461 lt!628645) (index!47461 lt!628645) (select (arr!46966 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427705 () Bool)

(assert (=> b!1427705 (= e!806390 Undefined!11267)))

(assert (= (and d!153327 c!131983) b!1427705))

(assert (= (and d!153327 (not c!131983)) b!1427700))

(assert (= (and b!1427700 c!131985) b!1427701))

(assert (= (and b!1427700 (not c!131985)) b!1427703))

(assert (= (and b!1427703 c!131984) b!1427702))

(assert (= (and b!1427703 (not c!131984)) b!1427704))

(declare-fun m!1318049 () Bool)

(assert (=> b!1427700 m!1318049))

(declare-fun m!1318051 () Bool)

(assert (=> d!153327 m!1318051))

(declare-fun m!1318053 () Bool)

(assert (=> d!153327 m!1318053))

(declare-fun m!1318055 () Bool)

(assert (=> d!153327 m!1318055))

(assert (=> d!153327 m!1317847))

(assert (=> d!153327 m!1317867))

(assert (=> d!153327 m!1317867))

(assert (=> d!153327 m!1317847))

(assert (=> d!153327 m!1317869))

(assert (=> d!153327 m!1317875))

(assert (=> b!1427704 m!1317847))

(declare-fun m!1318057 () Bool)

(assert (=> b!1427704 m!1318057))

(assert (=> b!1427427 d!153327))

(declare-fun d!153337 () Bool)

(assert (=> d!153337 (= (validKeyInArray!0 (select (arr!46966 a!2831) j!81)) (and (not (= (select (arr!46966 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46966 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1427428 d!153337))

(declare-fun b!1427706 () Bool)

(declare-fun e!806394 () SeekEntryResult!11267)

(assert (=> b!1427706 (= e!806394 (Intermediate!11267 false (toIndex!0 lt!628536 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427707 () Bool)

(declare-fun e!806391 () SeekEntryResult!11267)

(assert (=> b!1427707 (= e!806391 e!806394)))

(declare-fun c!131986 () Bool)

(declare-fun lt!628648 () (_ BitVec 64))

(assert (=> b!1427707 (= c!131986 (or (= lt!628648 lt!628536) (= (bvadd lt!628648 lt!628648) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427708 () Bool)

(declare-fun e!806392 () Bool)

(declare-fun e!806395 () Bool)

(assert (=> b!1427708 (= e!806392 e!806395)))

(declare-fun res!962722 () Bool)

(declare-fun lt!628649 () SeekEntryResult!11267)

(assert (=> b!1427708 (= res!962722 (and (is-Intermediate!11267 lt!628649) (not (undefined!12079 lt!628649)) (bvslt (x!129100 lt!628649) #b01111111111111111111111111111110) (bvsge (x!129100 lt!628649) #b00000000000000000000000000000000) (bvsge (x!129100 lt!628649) #b00000000000000000000000000000000)))))

(assert (=> b!1427708 (=> (not res!962722) (not e!806395))))

(declare-fun d!153339 () Bool)

(assert (=> d!153339 e!806392))

(declare-fun c!131988 () Bool)

(assert (=> d!153339 (= c!131988 (and (is-Intermediate!11267 lt!628649) (undefined!12079 lt!628649)))))

(assert (=> d!153339 (= lt!628649 e!806391)))

(declare-fun c!131987 () Bool)

(assert (=> d!153339 (= c!131987 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153339 (= lt!628648 (select (arr!46966 lt!628535) (toIndex!0 lt!628536 mask!2608)))))

(assert (=> d!153339 (validMask!0 mask!2608)))

(assert (=> d!153339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628536 mask!2608) lt!628536 lt!628535 mask!2608) lt!628649)))

(declare-fun b!1427709 () Bool)

(assert (=> b!1427709 (= e!806392 (bvsge (x!129100 lt!628649) #b01111111111111111111111111111110))))

(declare-fun b!1427710 () Bool)

(assert (=> b!1427710 (= e!806391 (Intermediate!11267 true (toIndex!0 lt!628536 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1427711 () Bool)

(assert (=> b!1427711 (and (bvsge (index!47461 lt!628649) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628649) (size!47517 lt!628535)))))

(declare-fun res!962721 () Bool)

(assert (=> b!1427711 (= res!962721 (= (select (arr!46966 lt!628535) (index!47461 lt!628649)) lt!628536))))

(declare-fun e!806393 () Bool)

(assert (=> b!1427711 (=> res!962721 e!806393)))

(assert (=> b!1427711 (= e!806395 e!806393)))

(declare-fun b!1427712 () Bool)

(assert (=> b!1427712 (and (bvsge (index!47461 lt!628649) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628649) (size!47517 lt!628535)))))

(declare-fun res!962720 () Bool)

(assert (=> b!1427712 (= res!962720 (= (select (arr!46966 lt!628535) (index!47461 lt!628649)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427712 (=> res!962720 e!806393)))

(declare-fun b!1427713 () Bool)

(assert (=> b!1427713 (= e!806394 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628536 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628536 lt!628535 mask!2608))))

(declare-fun b!1427714 () Bool)

(assert (=> b!1427714 (and (bvsge (index!47461 lt!628649) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628649) (size!47517 lt!628535)))))

(assert (=> b!1427714 (= e!806393 (= (select (arr!46966 lt!628535) (index!47461 lt!628649)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153339 c!131987) b!1427710))

(assert (= (and d!153339 (not c!131987)) b!1427707))

(assert (= (and b!1427707 c!131986) b!1427706))

(assert (= (and b!1427707 (not c!131986)) b!1427713))

(assert (= (and d!153339 c!131988) b!1427709))

(assert (= (and d!153339 (not c!131988)) b!1427708))

(assert (= (and b!1427708 res!962722) b!1427711))

(assert (= (and b!1427711 (not res!962721)) b!1427712))

(assert (= (and b!1427712 (not res!962720)) b!1427714))

(declare-fun m!1318059 () Bool)

(assert (=> b!1427712 m!1318059))

(assert (=> b!1427713 m!1317859))

(declare-fun m!1318061 () Bool)

(assert (=> b!1427713 m!1318061))

(assert (=> b!1427713 m!1318061))

(declare-fun m!1318063 () Bool)

(assert (=> b!1427713 m!1318063))

(assert (=> b!1427714 m!1318059))

(assert (=> d!153339 m!1317859))

(declare-fun m!1318065 () Bool)

(assert (=> d!153339 m!1318065))

(assert (=> d!153339 m!1317875))

(assert (=> b!1427711 m!1318059))

(assert (=> b!1427429 d!153339))

(declare-fun d!153341 () Bool)

(declare-fun lt!628651 () (_ BitVec 32))

(declare-fun lt!628650 () (_ BitVec 32))

(assert (=> d!153341 (= lt!628651 (bvmul (bvxor lt!628650 (bvlshr lt!628650 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153341 (= lt!628650 ((_ extract 31 0) (bvand (bvxor lt!628536 (bvlshr lt!628536 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153341 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962705 (let ((h!34964 ((_ extract 31 0) (bvand (bvxor lt!628536 (bvlshr lt!628536 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129106 (bvmul (bvxor h!34964 (bvlshr h!34964 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129106 (bvlshr x!129106 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962705 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962705 #b00000000000000000000000000000000))))))

(assert (=> d!153341 (= (toIndex!0 lt!628536 mask!2608) (bvand (bvxor lt!628651 (bvlshr lt!628651 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1427429 d!153341))

(declare-fun d!153343 () Bool)

(assert (=> d!153343 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123130 d!153343))

(declare-fun d!153349 () Bool)

(assert (=> d!153349 (= (array_inv!35911 a!2831) (bvsge (size!47517 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123130 d!153349))

(declare-fun d!153351 () Bool)

(assert (=> d!153351 (= (validKeyInArray!0 (select (arr!46966 a!2831) i!982)) (and (not (= (select (arr!46966 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46966 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1427419 d!153351))

(declare-fun b!1427747 () Bool)

(declare-fun e!806416 () Bool)

(declare-fun e!806419 () Bool)

(assert (=> b!1427747 (= e!806416 e!806419)))

(declare-fun res!962732 () Bool)

(assert (=> b!1427747 (=> (not res!962732) (not e!806419))))

(declare-fun e!806417 () Bool)

(assert (=> b!1427747 (= res!962732 (not e!806417))))

(declare-fun res!962733 () Bool)

(assert (=> b!1427747 (=> (not res!962733) (not e!806417))))

(assert (=> b!1427747 (= res!962733 (validKeyInArray!0 (select (arr!46966 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153353 () Bool)

(declare-fun res!962731 () Bool)

(assert (=> d!153353 (=> res!962731 e!806416)))

(assert (=> d!153353 (= res!962731 (bvsge #b00000000000000000000000000000000 (size!47517 a!2831)))))

(assert (=> d!153353 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33653) e!806416)))

(declare-fun b!1427748 () Bool)

(declare-fun contains!9865 (List!33656 (_ BitVec 64)) Bool)

(assert (=> b!1427748 (= e!806417 (contains!9865 Nil!33653 (select (arr!46966 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427749 () Bool)

(declare-fun e!806418 () Bool)

(assert (=> b!1427749 (= e!806419 e!806418)))

(declare-fun c!132001 () Bool)

(assert (=> b!1427749 (= c!132001 (validKeyInArray!0 (select (arr!46966 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427750 () Bool)

(declare-fun call!67379 () Bool)

(assert (=> b!1427750 (= e!806418 call!67379)))

(declare-fun b!1427751 () Bool)

(assert (=> b!1427751 (= e!806418 call!67379)))

(declare-fun bm!67376 () Bool)

(assert (=> bm!67376 (= call!67379 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132001 (Cons!33652 (select (arr!46966 a!2831) #b00000000000000000000000000000000) Nil!33653) Nil!33653)))))

(assert (= (and d!153353 (not res!962731)) b!1427747))

(assert (= (and b!1427747 res!962733) b!1427748))

(assert (= (and b!1427747 res!962732) b!1427749))

(assert (= (and b!1427749 c!132001) b!1427750))

(assert (= (and b!1427749 (not c!132001)) b!1427751))

(assert (= (or b!1427750 b!1427751) bm!67376))

(declare-fun m!1318085 () Bool)

(assert (=> b!1427747 m!1318085))

(assert (=> b!1427747 m!1318085))

(declare-fun m!1318087 () Bool)

(assert (=> b!1427747 m!1318087))

(assert (=> b!1427748 m!1318085))

(assert (=> b!1427748 m!1318085))

(declare-fun m!1318089 () Bool)

(assert (=> b!1427748 m!1318089))

(assert (=> b!1427749 m!1318085))

(assert (=> b!1427749 m!1318085))

(assert (=> b!1427749 m!1318087))

(assert (=> bm!67376 m!1318085))

(declare-fun m!1318093 () Bool)

(assert (=> bm!67376 m!1318093))

(assert (=> b!1427430 d!153353))

(declare-fun b!1427766 () Bool)

(declare-fun e!806431 () Bool)

(declare-fun e!806430 () Bool)

(assert (=> b!1427766 (= e!806431 e!806430)))

(declare-fun lt!628675 () (_ BitVec 64))

(assert (=> b!1427766 (= lt!628675 (select (arr!46966 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628673 () Unit!48228)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97311 (_ BitVec 64) (_ BitVec 32)) Unit!48228)

(assert (=> b!1427766 (= lt!628673 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628675 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1427766 (arrayContainsKey!0 a!2831 lt!628675 #b00000000000000000000000000000000)))

(declare-fun lt!628674 () Unit!48228)

(assert (=> b!1427766 (= lt!628674 lt!628673)))

(declare-fun res!962738 () Bool)

(assert (=> b!1427766 (= res!962738 (= (seekEntryOrOpen!0 (select (arr!46966 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11267 #b00000000000000000000000000000000)))))

(assert (=> b!1427766 (=> (not res!962738) (not e!806430))))

(declare-fun d!153355 () Bool)

(declare-fun res!962739 () Bool)

(declare-fun e!806429 () Bool)

(assert (=> d!153355 (=> res!962739 e!806429)))

(assert (=> d!153355 (= res!962739 (bvsge #b00000000000000000000000000000000 (size!47517 a!2831)))))

(assert (=> d!153355 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!806429)))

(declare-fun b!1427767 () Bool)

(assert (=> b!1427767 (= e!806429 e!806431)))

(declare-fun c!132007 () Bool)

(assert (=> b!1427767 (= c!132007 (validKeyInArray!0 (select (arr!46966 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67379 () Bool)

(declare-fun call!67382 () Bool)

(assert (=> bm!67379 (= call!67382 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1427768 () Bool)

(assert (=> b!1427768 (= e!806430 call!67382)))

(declare-fun b!1427769 () Bool)

(assert (=> b!1427769 (= e!806431 call!67382)))

(assert (= (and d!153355 (not res!962739)) b!1427767))

(assert (= (and b!1427767 c!132007) b!1427766))

(assert (= (and b!1427767 (not c!132007)) b!1427769))

(assert (= (and b!1427766 res!962738) b!1427768))

(assert (= (or b!1427768 b!1427769) bm!67379))

(assert (=> b!1427766 m!1318085))

(declare-fun m!1318103 () Bool)

(assert (=> b!1427766 m!1318103))

(declare-fun m!1318105 () Bool)

(assert (=> b!1427766 m!1318105))

(assert (=> b!1427766 m!1318085))

(declare-fun m!1318107 () Bool)

(assert (=> b!1427766 m!1318107))

(assert (=> b!1427767 m!1318085))

(assert (=> b!1427767 m!1318085))

(assert (=> b!1427767 m!1318087))

(declare-fun m!1318109 () Bool)

(assert (=> bm!67379 m!1318109))

(assert (=> b!1427420 d!153355))

(declare-fun b!1427770 () Bool)

(declare-fun e!806435 () SeekEntryResult!11267)

(assert (=> b!1427770 (= e!806435 (Intermediate!11267 false index!585 x!605))))

(declare-fun b!1427771 () Bool)

(declare-fun e!806432 () SeekEntryResult!11267)

(assert (=> b!1427771 (= e!806432 e!806435)))

(declare-fun c!132008 () Bool)

(declare-fun lt!628676 () (_ BitVec 64))

(assert (=> b!1427771 (= c!132008 (or (= lt!628676 (select (arr!46966 a!2831) j!81)) (= (bvadd lt!628676 lt!628676) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427772 () Bool)

(declare-fun e!806433 () Bool)

(declare-fun e!806436 () Bool)

(assert (=> b!1427772 (= e!806433 e!806436)))

(declare-fun res!962742 () Bool)

(declare-fun lt!628677 () SeekEntryResult!11267)

(assert (=> b!1427772 (= res!962742 (and (is-Intermediate!11267 lt!628677) (not (undefined!12079 lt!628677)) (bvslt (x!129100 lt!628677) #b01111111111111111111111111111110) (bvsge (x!129100 lt!628677) #b00000000000000000000000000000000) (bvsge (x!129100 lt!628677) x!605)))))

(assert (=> b!1427772 (=> (not res!962742) (not e!806436))))

(declare-fun d!153359 () Bool)

(assert (=> d!153359 e!806433))

(declare-fun c!132010 () Bool)

(assert (=> d!153359 (= c!132010 (and (is-Intermediate!11267 lt!628677) (undefined!12079 lt!628677)))))

(assert (=> d!153359 (= lt!628677 e!806432)))

(declare-fun c!132009 () Bool)

(assert (=> d!153359 (= c!132009 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153359 (= lt!628676 (select (arr!46966 a!2831) index!585))))

(assert (=> d!153359 (validMask!0 mask!2608)))

(assert (=> d!153359 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46966 a!2831) j!81) a!2831 mask!2608) lt!628677)))

(declare-fun b!1427773 () Bool)

(assert (=> b!1427773 (= e!806433 (bvsge (x!129100 lt!628677) #b01111111111111111111111111111110))))

(declare-fun b!1427774 () Bool)

(assert (=> b!1427774 (= e!806432 (Intermediate!11267 true index!585 x!605))))

(declare-fun b!1427775 () Bool)

(assert (=> b!1427775 (and (bvsge (index!47461 lt!628677) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628677) (size!47517 a!2831)))))

(declare-fun res!962741 () Bool)

(assert (=> b!1427775 (= res!962741 (= (select (arr!46966 a!2831) (index!47461 lt!628677)) (select (arr!46966 a!2831) j!81)))))

(declare-fun e!806434 () Bool)

(assert (=> b!1427775 (=> res!962741 e!806434)))

(assert (=> b!1427775 (= e!806436 e!806434)))

(declare-fun b!1427776 () Bool)

(assert (=> b!1427776 (and (bvsge (index!47461 lt!628677) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628677) (size!47517 a!2831)))))

(declare-fun res!962740 () Bool)

(assert (=> b!1427776 (= res!962740 (= (select (arr!46966 a!2831) (index!47461 lt!628677)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427776 (=> res!962740 e!806434)))

(declare-fun b!1427777 () Bool)

(assert (=> b!1427777 (= e!806435 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46966 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427778 () Bool)

(assert (=> b!1427778 (and (bvsge (index!47461 lt!628677) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628677) (size!47517 a!2831)))))

(assert (=> b!1427778 (= e!806434 (= (select (arr!46966 a!2831) (index!47461 lt!628677)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153359 c!132009) b!1427774))

(assert (= (and d!153359 (not c!132009)) b!1427771))

(assert (= (and b!1427771 c!132008) b!1427770))

(assert (= (and b!1427771 (not c!132008)) b!1427777))

(assert (= (and d!153359 c!132010) b!1427773))

(assert (= (and d!153359 (not c!132010)) b!1427772))

(assert (= (and b!1427772 res!962742) b!1427775))

(assert (= (and b!1427775 (not res!962741)) b!1427776))

(assert (= (and b!1427776 (not res!962740)) b!1427778))

(declare-fun m!1318111 () Bool)

(assert (=> b!1427776 m!1318111))

(declare-fun m!1318113 () Bool)

(assert (=> b!1427777 m!1318113))

(assert (=> b!1427777 m!1318113))

(assert (=> b!1427777 m!1317847))

(declare-fun m!1318115 () Bool)

(assert (=> b!1427777 m!1318115))

(assert (=> b!1427778 m!1318111))

(assert (=> d!153359 m!1317879))

(assert (=> d!153359 m!1317875))

(assert (=> b!1427775 m!1318111))

(assert (=> b!1427421 d!153359))

(declare-fun b!1427779 () Bool)

(declare-fun e!806440 () SeekEntryResult!11267)

(assert (=> b!1427779 (= e!806440 (Intermediate!11267 false index!585 x!605))))

(declare-fun b!1427780 () Bool)

(declare-fun e!806437 () SeekEntryResult!11267)

(assert (=> b!1427780 (= e!806437 e!806440)))

(declare-fun c!132011 () Bool)

(declare-fun lt!628678 () (_ BitVec 64))

(assert (=> b!1427780 (= c!132011 (or (= lt!628678 lt!628536) (= (bvadd lt!628678 lt!628678) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427781 () Bool)

(declare-fun e!806438 () Bool)

(declare-fun e!806441 () Bool)

(assert (=> b!1427781 (= e!806438 e!806441)))

(declare-fun res!962745 () Bool)

(declare-fun lt!628679 () SeekEntryResult!11267)

(assert (=> b!1427781 (= res!962745 (and (is-Intermediate!11267 lt!628679) (not (undefined!12079 lt!628679)) (bvslt (x!129100 lt!628679) #b01111111111111111111111111111110) (bvsge (x!129100 lt!628679) #b00000000000000000000000000000000) (bvsge (x!129100 lt!628679) x!605)))))

(assert (=> b!1427781 (=> (not res!962745) (not e!806441))))

(declare-fun d!153365 () Bool)

(assert (=> d!153365 e!806438))

(declare-fun c!132013 () Bool)

(assert (=> d!153365 (= c!132013 (and (is-Intermediate!11267 lt!628679) (undefined!12079 lt!628679)))))

(assert (=> d!153365 (= lt!628679 e!806437)))

(declare-fun c!132012 () Bool)

(assert (=> d!153365 (= c!132012 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153365 (= lt!628678 (select (arr!46966 lt!628535) index!585))))

(assert (=> d!153365 (validMask!0 mask!2608)))

(assert (=> d!153365 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628536 lt!628535 mask!2608) lt!628679)))

(declare-fun b!1427782 () Bool)

(assert (=> b!1427782 (= e!806438 (bvsge (x!129100 lt!628679) #b01111111111111111111111111111110))))

(declare-fun b!1427783 () Bool)

(assert (=> b!1427783 (= e!806437 (Intermediate!11267 true index!585 x!605))))

(declare-fun b!1427784 () Bool)

(assert (=> b!1427784 (and (bvsge (index!47461 lt!628679) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628679) (size!47517 lt!628535)))))

(declare-fun res!962744 () Bool)

(assert (=> b!1427784 (= res!962744 (= (select (arr!46966 lt!628535) (index!47461 lt!628679)) lt!628536))))

(declare-fun e!806439 () Bool)

(assert (=> b!1427784 (=> res!962744 e!806439)))

(assert (=> b!1427784 (= e!806441 e!806439)))

(declare-fun b!1427785 () Bool)

(assert (=> b!1427785 (and (bvsge (index!47461 lt!628679) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628679) (size!47517 lt!628535)))))

(declare-fun res!962743 () Bool)

(assert (=> b!1427785 (= res!962743 (= (select (arr!46966 lt!628535) (index!47461 lt!628679)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427785 (=> res!962743 e!806439)))

(declare-fun b!1427786 () Bool)

(assert (=> b!1427786 (= e!806440 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628536 lt!628535 mask!2608))))

(declare-fun b!1427787 () Bool)

(assert (=> b!1427787 (and (bvsge (index!47461 lt!628679) #b00000000000000000000000000000000) (bvslt (index!47461 lt!628679) (size!47517 lt!628535)))))

(assert (=> b!1427787 (= e!806439 (= (select (arr!46966 lt!628535) (index!47461 lt!628679)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153365 c!132012) b!1427783))

(assert (= (and d!153365 (not c!132012)) b!1427780))

(assert (= (and b!1427780 c!132011) b!1427779))

(assert (= (and b!1427780 (not c!132011)) b!1427786))

(assert (= (and d!153365 c!132013) b!1427782))

(assert (= (and d!153365 (not c!132013)) b!1427781))

(assert (= (and b!1427781 res!962745) b!1427784))

(assert (= (and b!1427784 (not res!962744)) b!1427785))

(assert (= (and b!1427785 (not res!962743)) b!1427787))

(declare-fun m!1318117 () Bool)

(assert (=> b!1427785 m!1318117))

(assert (=> b!1427786 m!1318113))

(assert (=> b!1427786 m!1318113))

(declare-fun m!1318119 () Bool)

(assert (=> b!1427786 m!1318119))

(assert (=> b!1427787 m!1318117))

(declare-fun m!1318121 () Bool)

(assert (=> d!153365 m!1318121))

(assert (=> d!153365 m!1317875))

(assert (=> b!1427784 m!1318117))

(assert (=> b!1427422 d!153365))

(declare-fun b!1427797 () Bool)

(declare-fun e!806449 () Bool)

(declare-fun e!806448 () Bool)

(assert (=> b!1427797 (= e!806449 e!806448)))

(declare-fun lt!628684 () (_ BitVec 64))

(assert (=> b!1427797 (= lt!628684 (select (arr!46966 a!2831) j!81))))

(declare-fun lt!628682 () Unit!48228)

(assert (=> b!1427797 (= lt!628682 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628684 j!81))))

(assert (=> b!1427797 (arrayContainsKey!0 a!2831 lt!628684 #b00000000000000000000000000000000)))

(declare-fun lt!628683 () Unit!48228)

(assert (=> b!1427797 (= lt!628683 lt!628682)))

(declare-fun res!962749 () Bool)

(assert (=> b!1427797 (= res!962749 (= (seekEntryOrOpen!0 (select (arr!46966 a!2831) j!81) a!2831 mask!2608) (Found!11267 j!81)))))

(assert (=> b!1427797 (=> (not res!962749) (not e!806448))))

(declare-fun d!153369 () Bool)

(declare-fun res!962750 () Bool)

(declare-fun e!806447 () Bool)

(assert (=> d!153369 (=> res!962750 e!806447)))

(assert (=> d!153369 (= res!962750 (bvsge j!81 (size!47517 a!2831)))))

(assert (=> d!153369 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806447)))

(declare-fun b!1427798 () Bool)

(assert (=> b!1427798 (= e!806447 e!806449)))

(declare-fun c!132017 () Bool)

(assert (=> b!1427798 (= c!132017 (validKeyInArray!0 (select (arr!46966 a!2831) j!81)))))

(declare-fun bm!67380 () Bool)

(declare-fun call!67383 () Bool)

(assert (=> bm!67380 (= call!67383 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1427799 () Bool)

(assert (=> b!1427799 (= e!806448 call!67383)))

(declare-fun b!1427800 () Bool)

(assert (=> b!1427800 (= e!806449 call!67383)))

(assert (= (and d!153369 (not res!962750)) b!1427798))

(assert (= (and b!1427798 c!132017) b!1427797))

(assert (= (and b!1427798 (not c!132017)) b!1427800))

(assert (= (and b!1427797 res!962749) b!1427799))

(assert (= (or b!1427799 b!1427800) bm!67380))

(assert (=> b!1427797 m!1317847))

(declare-fun m!1318131 () Bool)

(assert (=> b!1427797 m!1318131))

(declare-fun m!1318133 () Bool)

(assert (=> b!1427797 m!1318133))

(assert (=> b!1427797 m!1317847))

(assert (=> b!1427797 m!1317849))

(assert (=> b!1427798 m!1317847))

(assert (=> b!1427798 m!1317847))

(assert (=> b!1427798 m!1317853))

(declare-fun m!1318135 () Bool)

(assert (=> bm!67380 m!1318135))

(assert (=> b!1427423 d!153369))

(declare-fun d!153373 () Bool)

(assert (=> d!153373 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628691 () Unit!48228)

(declare-fun choose!38 (array!97311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48228)

(assert (=> d!153373 (= lt!628691 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153373 (validMask!0 mask!2608)))

(assert (=> d!153373 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628691)))

(declare-fun bs!41605 () Bool)

(assert (= bs!41605 d!153373))

(assert (=> bs!41605 m!1317881))

(declare-fun m!1318137 () Bool)

(assert (=> bs!41605 m!1318137))

(assert (=> bs!41605 m!1317875))

(assert (=> b!1427423 d!153373))

(push 1)

