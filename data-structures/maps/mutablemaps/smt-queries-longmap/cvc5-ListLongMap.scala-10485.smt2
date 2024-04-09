; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123328 () Bool)

(assert start!123328)

(declare-fun b!1429792 () Bool)

(declare-fun e!807289 () Bool)

(declare-fun e!807291 () Bool)

(assert (=> b!1429792 (= e!807289 e!807291)))

(declare-fun res!964537 () Bool)

(assert (=> b!1429792 (=> (not res!964537) (not e!807291))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11312 0))(
  ( (MissingZero!11312 (index!47639 (_ BitVec 32))) (Found!11312 (index!47640 (_ BitVec 32))) (Intermediate!11312 (undefined!12124 Bool) (index!47641 (_ BitVec 32)) (x!129277 (_ BitVec 32))) (Undefined!11312) (MissingVacant!11312 (index!47642 (_ BitVec 32))) )
))
(declare-fun lt!629472 () SeekEntryResult!11312)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!97407 0))(
  ( (array!97408 (arr!47011 (Array (_ BitVec 32) (_ BitVec 64))) (size!47562 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97407)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97407 (_ BitVec 32)) SeekEntryResult!11312)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429792 (= res!964537 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47011 a!2831) j!81) mask!2608) (select (arr!47011 a!2831) j!81) a!2831 mask!2608) lt!629472))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1429792 (= lt!629472 (Intermediate!11312 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429793 () Bool)

(declare-fun res!964541 () Bool)

(assert (=> b!1429793 (=> (not res!964541) (not e!807289))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429793 (= res!964541 (validKeyInArray!0 (select (arr!47011 a!2831) i!982)))))

(declare-fun b!1429794 () Bool)

(declare-fun res!964539 () Bool)

(assert (=> b!1429794 (=> (not res!964539) (not e!807289))))

(declare-datatypes ((List!33701 0))(
  ( (Nil!33698) (Cons!33697 (h!35011 (_ BitVec 64)) (t!48402 List!33701)) )
))
(declare-fun arrayNoDuplicates!0 (array!97407 (_ BitVec 32) List!33701) Bool)

(assert (=> b!1429794 (= res!964539 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33698))))

(declare-fun b!1429795 () Bool)

(declare-fun res!964530 () Bool)

(assert (=> b!1429795 (=> (not res!964530) (not e!807289))))

(assert (=> b!1429795 (= res!964530 (validKeyInArray!0 (select (arr!47011 a!2831) j!81)))))

(declare-fun res!964534 () Bool)

(assert (=> start!123328 (=> (not res!964534) (not e!807289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123328 (= res!964534 (validMask!0 mask!2608))))

(assert (=> start!123328 e!807289))

(assert (=> start!123328 true))

(declare-fun array_inv!35956 (array!97407) Bool)

(assert (=> start!123328 (array_inv!35956 a!2831)))

(declare-fun b!1429796 () Bool)

(declare-fun res!964538 () Bool)

(declare-fun e!807292 () Bool)

(assert (=> b!1429796 (=> (not res!964538) (not e!807292))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429796 (= res!964538 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47011 a!2831) j!81) a!2831 mask!2608) lt!629472))))

(declare-fun b!1429797 () Bool)

(declare-fun res!964531 () Bool)

(assert (=> b!1429797 (=> (not res!964531) (not e!807289))))

(assert (=> b!1429797 (= res!964531 (and (= (size!47562 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47562 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47562 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429798 () Bool)

(assert (=> b!1429798 (= e!807291 e!807292)))

(declare-fun res!964535 () Bool)

(assert (=> b!1429798 (=> (not res!964535) (not e!807292))))

(declare-fun lt!629473 () array!97407)

(declare-fun lt!629474 () SeekEntryResult!11312)

(declare-fun lt!629476 () (_ BitVec 64))

(assert (=> b!1429798 (= res!964535 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629476 mask!2608) lt!629476 lt!629473 mask!2608) lt!629474))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429798 (= lt!629474 (Intermediate!11312 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429798 (= lt!629476 (select (store (arr!47011 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429798 (= lt!629473 (array!97408 (store (arr!47011 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47562 a!2831)))))

(declare-fun b!1429799 () Bool)

(assert (=> b!1429799 (= e!807292 (not (or (= (select (arr!47011 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47011 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47011 a!2831) index!585) (select (arr!47011 a!2831) j!81)) (not (= (select (store (arr!47011 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!585 intermediateAfterIndex!13))))))

(declare-fun e!807290 () Bool)

(assert (=> b!1429799 e!807290))

(declare-fun res!964540 () Bool)

(assert (=> b!1429799 (=> (not res!964540) (not e!807290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97407 (_ BitVec 32)) Bool)

(assert (=> b!1429799 (= res!964540 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48318 0))(
  ( (Unit!48319) )
))
(declare-fun lt!629475 () Unit!48318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48318)

(assert (=> b!1429799 (= lt!629475 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429800 () Bool)

(declare-fun res!964542 () Bool)

(assert (=> b!1429800 (=> (not res!964542) (not e!807289))))

(assert (=> b!1429800 (= res!964542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429801 () Bool)

(declare-fun res!964533 () Bool)

(assert (=> b!1429801 (=> (not res!964533) (not e!807292))))

(assert (=> b!1429801 (= res!964533 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429802 () Bool)

(declare-fun res!964532 () Bool)

(assert (=> b!1429802 (=> (not res!964532) (not e!807289))))

(assert (=> b!1429802 (= res!964532 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47562 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47562 a!2831))))))

(declare-fun b!1429803 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97407 (_ BitVec 32)) SeekEntryResult!11312)

(assert (=> b!1429803 (= e!807290 (= (seekEntryOrOpen!0 (select (arr!47011 a!2831) j!81) a!2831 mask!2608) (Found!11312 j!81)))))

(declare-fun b!1429804 () Bool)

(declare-fun res!964536 () Bool)

(assert (=> b!1429804 (=> (not res!964536) (not e!807292))))

(assert (=> b!1429804 (= res!964536 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629476 lt!629473 mask!2608) lt!629474))))

(assert (= (and start!123328 res!964534) b!1429797))

(assert (= (and b!1429797 res!964531) b!1429793))

(assert (= (and b!1429793 res!964541) b!1429795))

(assert (= (and b!1429795 res!964530) b!1429800))

(assert (= (and b!1429800 res!964542) b!1429794))

(assert (= (and b!1429794 res!964539) b!1429802))

(assert (= (and b!1429802 res!964532) b!1429792))

(assert (= (and b!1429792 res!964537) b!1429798))

(assert (= (and b!1429798 res!964535) b!1429796))

(assert (= (and b!1429796 res!964538) b!1429804))

(assert (= (and b!1429804 res!964536) b!1429801))

(assert (= (and b!1429801 res!964533) b!1429799))

(assert (= (and b!1429799 res!964540) b!1429803))

(declare-fun m!1319939 () Bool)

(assert (=> b!1429798 m!1319939))

(assert (=> b!1429798 m!1319939))

(declare-fun m!1319941 () Bool)

(assert (=> b!1429798 m!1319941))

(declare-fun m!1319943 () Bool)

(assert (=> b!1429798 m!1319943))

(declare-fun m!1319945 () Bool)

(assert (=> b!1429798 m!1319945))

(declare-fun m!1319947 () Bool)

(assert (=> b!1429794 m!1319947))

(declare-fun m!1319949 () Bool)

(assert (=> start!123328 m!1319949))

(declare-fun m!1319951 () Bool)

(assert (=> start!123328 m!1319951))

(assert (=> b!1429799 m!1319943))

(declare-fun m!1319953 () Bool)

(assert (=> b!1429799 m!1319953))

(declare-fun m!1319955 () Bool)

(assert (=> b!1429799 m!1319955))

(declare-fun m!1319957 () Bool)

(assert (=> b!1429799 m!1319957))

(declare-fun m!1319959 () Bool)

(assert (=> b!1429799 m!1319959))

(declare-fun m!1319961 () Bool)

(assert (=> b!1429799 m!1319961))

(assert (=> b!1429792 m!1319959))

(assert (=> b!1429792 m!1319959))

(declare-fun m!1319963 () Bool)

(assert (=> b!1429792 m!1319963))

(assert (=> b!1429792 m!1319963))

(assert (=> b!1429792 m!1319959))

(declare-fun m!1319965 () Bool)

(assert (=> b!1429792 m!1319965))

(assert (=> b!1429803 m!1319959))

(assert (=> b!1429803 m!1319959))

(declare-fun m!1319967 () Bool)

(assert (=> b!1429803 m!1319967))

(declare-fun m!1319969 () Bool)

(assert (=> b!1429804 m!1319969))

(assert (=> b!1429795 m!1319959))

(assert (=> b!1429795 m!1319959))

(declare-fun m!1319971 () Bool)

(assert (=> b!1429795 m!1319971))

(declare-fun m!1319973 () Bool)

(assert (=> b!1429793 m!1319973))

(assert (=> b!1429793 m!1319973))

(declare-fun m!1319975 () Bool)

(assert (=> b!1429793 m!1319975))

(assert (=> b!1429796 m!1319959))

(assert (=> b!1429796 m!1319959))

(declare-fun m!1319977 () Bool)

(assert (=> b!1429796 m!1319977))

(declare-fun m!1319979 () Bool)

(assert (=> b!1429800 m!1319979))

(push 1)

(assert (not start!123328))

(assert (not b!1429796))

(assert (not b!1429792))

(assert (not b!1429803))

(assert (not b!1429804))

(assert (not b!1429793))

(assert (not b!1429795))

(assert (not b!1429799))

(assert (not b!1429800))

(assert (not b!1429798))

(assert (not b!1429794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!153509 () Bool)

(declare-fun res!964649 () Bool)

(declare-fun e!807373 () Bool)

(assert (=> d!153509 (=> res!964649 e!807373)))

(assert (=> d!153509 (= res!964649 (bvsge #b00000000000000000000000000000000 (size!47562 a!2831)))))

(assert (=> d!153509 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!807373)))

(declare-fun b!1429955 () Bool)

(declare-fun e!807372 () Bool)

(assert (=> b!1429955 (= e!807373 e!807372)))

(declare-fun c!132149 () Bool)

(assert (=> b!1429955 (= c!132149 (validKeyInArray!0 (select (arr!47011 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1429956 () Bool)

(declare-fun e!807374 () Bool)

(assert (=> b!1429956 (= e!807372 e!807374)))

(declare-fun lt!629528 () (_ BitVec 64))

(assert (=> b!1429956 (= lt!629528 (select (arr!47011 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!629529 () Unit!48318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97407 (_ BitVec 64) (_ BitVec 32)) Unit!48318)

(assert (=> b!1429956 (= lt!629529 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629528 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1429956 (arrayContainsKey!0 a!2831 lt!629528 #b00000000000000000000000000000000)))

(declare-fun lt!629530 () Unit!48318)

(assert (=> b!1429956 (= lt!629530 lt!629529)))

(declare-fun res!964650 () Bool)

(assert (=> b!1429956 (= res!964650 (= (seekEntryOrOpen!0 (select (arr!47011 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11312 #b00000000000000000000000000000000)))))

(assert (=> b!1429956 (=> (not res!964650) (not e!807374))))

(declare-fun b!1429957 () Bool)

(declare-fun call!67410 () Bool)

(assert (=> b!1429957 (= e!807372 call!67410)))

(declare-fun bm!67407 () Bool)

(assert (=> bm!67407 (= call!67410 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1429958 () Bool)

(assert (=> b!1429958 (= e!807374 call!67410)))

(assert (= (and d!153509 (not res!964649)) b!1429955))

(assert (= (and b!1429955 c!132149) b!1429956))

(assert (= (and b!1429955 (not c!132149)) b!1429957))

(assert (= (and b!1429956 res!964650) b!1429958))

(assert (= (or b!1429958 b!1429957) bm!67407))

(declare-fun m!1320091 () Bool)

(assert (=> b!1429955 m!1320091))

(assert (=> b!1429955 m!1320091))

(declare-fun m!1320093 () Bool)

(assert (=> b!1429955 m!1320093))

(assert (=> b!1429956 m!1320091))

(declare-fun m!1320095 () Bool)

(assert (=> b!1429956 m!1320095))

(declare-fun m!1320097 () Bool)

(assert (=> b!1429956 m!1320097))

(assert (=> b!1429956 m!1320091))

(declare-fun m!1320099 () Bool)

(assert (=> b!1429956 m!1320099))

(declare-fun m!1320101 () Bool)

(assert (=> bm!67407 m!1320101))

(assert (=> b!1429800 d!153509))

(declare-fun d!153517 () Bool)

(assert (=> d!153517 (= (validKeyInArray!0 (select (arr!47011 a!2831) j!81)) (and (not (= (select (arr!47011 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47011 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1429795 d!153517))

(declare-fun b!1430018 () Bool)

(declare-fun e!807413 () SeekEntryResult!11312)

(declare-fun e!807411 () SeekEntryResult!11312)

(assert (=> b!1430018 (= e!807413 e!807411)))

(declare-fun c!132169 () Bool)

(declare-fun lt!629555 () (_ BitVec 64))

(assert (=> b!1430018 (= c!132169 (or (= lt!629555 lt!629476) (= (bvadd lt!629555 lt!629555) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430019 () Bool)

(declare-fun lt!629554 () SeekEntryResult!11312)

(assert (=> b!1430019 (and (bvsge (index!47641 lt!629554) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629554) (size!47562 lt!629473)))))

(declare-fun res!964674 () Bool)

(assert (=> b!1430019 (= res!964674 (= (select (arr!47011 lt!629473) (index!47641 lt!629554)) lt!629476))))

(declare-fun e!807410 () Bool)

(assert (=> b!1430019 (=> res!964674 e!807410)))

(declare-fun e!807414 () Bool)

(assert (=> b!1430019 (= e!807414 e!807410)))

(declare-fun b!1430020 () Bool)

(assert (=> b!1430020 (= e!807413 (Intermediate!11312 true index!585 x!605))))

(declare-fun b!1430022 () Bool)

(declare-fun e!807412 () Bool)

(assert (=> b!1430022 (= e!807412 e!807414)))

(declare-fun res!964673 () Bool)

(assert (=> b!1430022 (= res!964673 (and (is-Intermediate!11312 lt!629554) (not (undefined!12124 lt!629554)) (bvslt (x!129277 lt!629554) #b01111111111111111111111111111110) (bvsge (x!129277 lt!629554) #b00000000000000000000000000000000) (bvsge (x!129277 lt!629554) x!605)))))

(assert (=> b!1430022 (=> (not res!964673) (not e!807414))))

(declare-fun b!1430023 () Bool)

(assert (=> b!1430023 (= e!807412 (bvsge (x!129277 lt!629554) #b01111111111111111111111111111110))))

(declare-fun b!1430024 () Bool)

(assert (=> b!1430024 (and (bvsge (index!47641 lt!629554) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629554) (size!47562 lt!629473)))))

(declare-fun res!964675 () Bool)

(assert (=> b!1430024 (= res!964675 (= (select (arr!47011 lt!629473) (index!47641 lt!629554)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430024 (=> res!964675 e!807410)))

(declare-fun b!1430025 () Bool)

(assert (=> b!1430025 (= e!807411 (Intermediate!11312 false index!585 x!605))))

(declare-fun b!1430026 () Bool)

(assert (=> b!1430026 (and (bvsge (index!47641 lt!629554) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629554) (size!47562 lt!629473)))))

(assert (=> b!1430026 (= e!807410 (= (select (arr!47011 lt!629473) (index!47641 lt!629554)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153519 () Bool)

(assert (=> d!153519 e!807412))

(declare-fun c!132168 () Bool)

(assert (=> d!153519 (= c!132168 (and (is-Intermediate!11312 lt!629554) (undefined!12124 lt!629554)))))

(assert (=> d!153519 (= lt!629554 e!807413)))

(declare-fun c!132170 () Bool)

(assert (=> d!153519 (= c!132170 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153519 (= lt!629555 (select (arr!47011 lt!629473) index!585))))

(assert (=> d!153519 (validMask!0 mask!2608)))

(assert (=> d!153519 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629476 lt!629473 mask!2608) lt!629554)))

(declare-fun b!1430021 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430021 (= e!807411 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629476 lt!629473 mask!2608))))

(assert (= (and d!153519 c!132170) b!1430020))

(assert (= (and d!153519 (not c!132170)) b!1430018))

(assert (= (and b!1430018 c!132169) b!1430025))

(assert (= (and b!1430018 (not c!132169)) b!1430021))

(assert (= (and d!153519 c!132168) b!1430023))

(assert (= (and d!153519 (not c!132168)) b!1430022))

(assert (= (and b!1430022 res!964673) b!1430019))

(assert (= (and b!1430019 (not res!964674)) b!1430024))

(assert (= (and b!1430024 (not res!964675)) b!1430026))

(declare-fun m!1320131 () Bool)

(assert (=> b!1430024 m!1320131))

(declare-fun m!1320133 () Bool)

(assert (=> b!1430021 m!1320133))

(assert (=> b!1430021 m!1320133))

(declare-fun m!1320135 () Bool)

(assert (=> b!1430021 m!1320135))

(declare-fun m!1320137 () Bool)

(assert (=> d!153519 m!1320137))

(assert (=> d!153519 m!1319949))

(assert (=> b!1430019 m!1320131))

(assert (=> b!1430026 m!1320131))

(assert (=> b!1429804 d!153519))

(declare-fun d!153541 () Bool)

(declare-fun res!964676 () Bool)

(declare-fun e!807416 () Bool)

(assert (=> d!153541 (=> res!964676 e!807416)))

(assert (=> d!153541 (= res!964676 (bvsge j!81 (size!47562 a!2831)))))

(assert (=> d!153541 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!807416)))

(declare-fun b!1430027 () Bool)

(declare-fun e!807415 () Bool)

(assert (=> b!1430027 (= e!807416 e!807415)))

(declare-fun c!132171 () Bool)

(assert (=> b!1430027 (= c!132171 (validKeyInArray!0 (select (arr!47011 a!2831) j!81)))))

(declare-fun b!1430028 () Bool)

(declare-fun e!807417 () Bool)

(assert (=> b!1430028 (= e!807415 e!807417)))

(declare-fun lt!629556 () (_ BitVec 64))

(assert (=> b!1430028 (= lt!629556 (select (arr!47011 a!2831) j!81))))

(declare-fun lt!629557 () Unit!48318)

(assert (=> b!1430028 (= lt!629557 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629556 j!81))))

(assert (=> b!1430028 (arrayContainsKey!0 a!2831 lt!629556 #b00000000000000000000000000000000)))

(declare-fun lt!629558 () Unit!48318)

(assert (=> b!1430028 (= lt!629558 lt!629557)))

(declare-fun res!964677 () Bool)

(assert (=> b!1430028 (= res!964677 (= (seekEntryOrOpen!0 (select (arr!47011 a!2831) j!81) a!2831 mask!2608) (Found!11312 j!81)))))

(assert (=> b!1430028 (=> (not res!964677) (not e!807417))))

(declare-fun b!1430029 () Bool)

(declare-fun call!67417 () Bool)

(assert (=> b!1430029 (= e!807415 call!67417)))

(declare-fun bm!67414 () Bool)

(assert (=> bm!67414 (= call!67417 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430030 () Bool)

(assert (=> b!1430030 (= e!807417 call!67417)))

(assert (= (and d!153541 (not res!964676)) b!1430027))

(assert (= (and b!1430027 c!132171) b!1430028))

(assert (= (and b!1430027 (not c!132171)) b!1430029))

(assert (= (and b!1430028 res!964677) b!1430030))

(assert (= (or b!1430030 b!1430029) bm!67414))

(assert (=> b!1430027 m!1319959))

(assert (=> b!1430027 m!1319959))

(assert (=> b!1430027 m!1319971))

(assert (=> b!1430028 m!1319959))

(declare-fun m!1320139 () Bool)

(assert (=> b!1430028 m!1320139))

(declare-fun m!1320141 () Bool)

(assert (=> b!1430028 m!1320141))

(assert (=> b!1430028 m!1319959))

(assert (=> b!1430028 m!1319967))

(declare-fun m!1320143 () Bool)

(assert (=> bm!67414 m!1320143))

(assert (=> b!1429799 d!153541))

(declare-fun d!153543 () Bool)

(assert (=> d!153543 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!629561 () Unit!48318)

(declare-fun choose!38 (array!97407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48318)

(assert (=> d!153543 (= lt!629561 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153543 (validMask!0 mask!2608)))

(assert (=> d!153543 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!629561)))

(declare-fun bs!41654 () Bool)

(assert (= bs!41654 d!153543))

(assert (=> bs!41654 m!1319957))

(declare-fun m!1320145 () Bool)

(assert (=> bs!41654 m!1320145))

(assert (=> bs!41654 m!1319949))

(assert (=> b!1429799 d!153543))

(declare-fun b!1430075 () Bool)

(declare-fun e!807451 () Bool)

(declare-fun e!807449 () Bool)

(assert (=> b!1430075 (= e!807451 e!807449)))

(declare-fun res!964698 () Bool)

(assert (=> b!1430075 (=> (not res!964698) (not e!807449))))

(declare-fun e!807450 () Bool)

(assert (=> b!1430075 (= res!964698 (not e!807450))))

(declare-fun res!964699 () Bool)

(assert (=> b!1430075 (=> (not res!964699) (not e!807450))))

(assert (=> b!1430075 (= res!964699 (validKeyInArray!0 (select (arr!47011 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153545 () Bool)

(declare-fun res!964700 () Bool)

(assert (=> d!153545 (=> res!964700 e!807451)))

(assert (=> d!153545 (= res!964700 (bvsge #b00000000000000000000000000000000 (size!47562 a!2831)))))

(assert (=> d!153545 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33698) e!807451)))

(declare-fun b!1430076 () Bool)

(declare-fun e!807448 () Bool)

(assert (=> b!1430076 (= e!807449 e!807448)))

(declare-fun c!132184 () Bool)

(assert (=> b!1430076 (= c!132184 (validKeyInArray!0 (select (arr!47011 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430077 () Bool)

(declare-fun contains!9870 (List!33701 (_ BitVec 64)) Bool)

(assert (=> b!1430077 (= e!807450 (contains!9870 Nil!33698 (select (arr!47011 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430078 () Bool)

(declare-fun call!67424 () Bool)

(assert (=> b!1430078 (= e!807448 call!67424)))

(declare-fun bm!67421 () Bool)

(assert (=> bm!67421 (= call!67424 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132184 (Cons!33697 (select (arr!47011 a!2831) #b00000000000000000000000000000000) Nil!33698) Nil!33698)))))

(declare-fun b!1430079 () Bool)

(assert (=> b!1430079 (= e!807448 call!67424)))

(assert (= (and d!153545 (not res!964700)) b!1430075))

(assert (= (and b!1430075 res!964699) b!1430077))

(assert (= (and b!1430075 res!964698) b!1430076))

(assert (= (and b!1430076 c!132184) b!1430078))

(assert (= (and b!1430076 (not c!132184)) b!1430079))

(assert (= (or b!1430078 b!1430079) bm!67421))

(assert (=> b!1430075 m!1320091))

(assert (=> b!1430075 m!1320091))

(assert (=> b!1430075 m!1320093))

(assert (=> b!1430076 m!1320091))

(assert (=> b!1430076 m!1320091))

(assert (=> b!1430076 m!1320093))

(assert (=> b!1430077 m!1320091))

(assert (=> b!1430077 m!1320091))

(declare-fun m!1320161 () Bool)

(assert (=> b!1430077 m!1320161))

(assert (=> bm!67421 m!1320091))

(declare-fun m!1320163 () Bool)

(assert (=> bm!67421 m!1320163))

(assert (=> b!1429794 d!153545))

(declare-fun d!153551 () Bool)

(assert (=> d!153551 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123328 d!153551))

(declare-fun d!153565 () Bool)

(assert (=> d!153565 (= (array_inv!35956 a!2831) (bvsge (size!47562 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123328 d!153565))

(declare-fun b!1430111 () Bool)

(declare-fun e!807473 () SeekEntryResult!11312)

(declare-fun e!807471 () SeekEntryResult!11312)

(assert (=> b!1430111 (= e!807473 e!807471)))

(declare-fun lt!629599 () (_ BitVec 64))

(declare-fun c!132196 () Bool)

(assert (=> b!1430111 (= c!132196 (or (= lt!629599 (select (arr!47011 a!2831) j!81)) (= (bvadd lt!629599 lt!629599) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430112 () Bool)

(declare-fun lt!629598 () SeekEntryResult!11312)

(assert (=> b!1430112 (and (bvsge (index!47641 lt!629598) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629598) (size!47562 a!2831)))))

(declare-fun res!964714 () Bool)

(assert (=> b!1430112 (= res!964714 (= (select (arr!47011 a!2831) (index!47641 lt!629598)) (select (arr!47011 a!2831) j!81)))))

(declare-fun e!807470 () Bool)

(assert (=> b!1430112 (=> res!964714 e!807470)))

(declare-fun e!807474 () Bool)

(assert (=> b!1430112 (= e!807474 e!807470)))

(declare-fun b!1430113 () Bool)

(assert (=> b!1430113 (= e!807473 (Intermediate!11312 true (toIndex!0 (select (arr!47011 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430115 () Bool)

(declare-fun e!807472 () Bool)

(assert (=> b!1430115 (= e!807472 e!807474)))

(declare-fun res!964713 () Bool)

(assert (=> b!1430115 (= res!964713 (and (is-Intermediate!11312 lt!629598) (not (undefined!12124 lt!629598)) (bvslt (x!129277 lt!629598) #b01111111111111111111111111111110) (bvsge (x!129277 lt!629598) #b00000000000000000000000000000000) (bvsge (x!129277 lt!629598) #b00000000000000000000000000000000)))))

(assert (=> b!1430115 (=> (not res!964713) (not e!807474))))

(declare-fun b!1430116 () Bool)

(assert (=> b!1430116 (= e!807472 (bvsge (x!129277 lt!629598) #b01111111111111111111111111111110))))

(declare-fun b!1430117 () Bool)

(assert (=> b!1430117 (and (bvsge (index!47641 lt!629598) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629598) (size!47562 a!2831)))))

(declare-fun res!964715 () Bool)

(assert (=> b!1430117 (= res!964715 (= (select (arr!47011 a!2831) (index!47641 lt!629598)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430117 (=> res!964715 e!807470)))

(declare-fun b!1430118 () Bool)

(assert (=> b!1430118 (= e!807471 (Intermediate!11312 false (toIndex!0 (select (arr!47011 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430119 () Bool)

(assert (=> b!1430119 (and (bvsge (index!47641 lt!629598) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629598) (size!47562 a!2831)))))

(assert (=> b!1430119 (= e!807470 (= (select (arr!47011 a!2831) (index!47641 lt!629598)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153569 () Bool)

(assert (=> d!153569 e!807472))

(declare-fun c!132195 () Bool)

(assert (=> d!153569 (= c!132195 (and (is-Intermediate!11312 lt!629598) (undefined!12124 lt!629598)))))

(assert (=> d!153569 (= lt!629598 e!807473)))

(declare-fun c!132197 () Bool)

(assert (=> d!153569 (= c!132197 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153569 (= lt!629599 (select (arr!47011 a!2831) (toIndex!0 (select (arr!47011 a!2831) j!81) mask!2608)))))

(assert (=> d!153569 (validMask!0 mask!2608)))

(assert (=> d!153569 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47011 a!2831) j!81) mask!2608) (select (arr!47011 a!2831) j!81) a!2831 mask!2608) lt!629598)))

(declare-fun b!1430114 () Bool)

(assert (=> b!1430114 (= e!807471 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47011 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47011 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!153569 c!132197) b!1430113))

(assert (= (and d!153569 (not c!132197)) b!1430111))

(assert (= (and b!1430111 c!132196) b!1430118))

(assert (= (and b!1430111 (not c!132196)) b!1430114))

(assert (= (and d!153569 c!132195) b!1430116))

(assert (= (and d!153569 (not c!132195)) b!1430115))

(assert (= (and b!1430115 res!964713) b!1430112))

(assert (= (and b!1430112 (not res!964714)) b!1430117))

(assert (= (and b!1430117 (not res!964715)) b!1430119))

(declare-fun m!1320195 () Bool)

(assert (=> b!1430117 m!1320195))

(assert (=> b!1430114 m!1319963))

(declare-fun m!1320197 () Bool)

(assert (=> b!1430114 m!1320197))

(assert (=> b!1430114 m!1320197))

(assert (=> b!1430114 m!1319959))

(declare-fun m!1320199 () Bool)

(assert (=> b!1430114 m!1320199))

(assert (=> d!153569 m!1319963))

(declare-fun m!1320201 () Bool)

(assert (=> d!153569 m!1320201))

(assert (=> d!153569 m!1319949))

(assert (=> b!1430112 m!1320195))

(assert (=> b!1430119 m!1320195))

(assert (=> b!1429792 d!153569))

(declare-fun d!153571 () Bool)

(declare-fun lt!629612 () (_ BitVec 32))

(declare-fun lt!629611 () (_ BitVec 32))

(assert (=> d!153571 (= lt!629612 (bvmul (bvxor lt!629611 (bvlshr lt!629611 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153571 (= lt!629611 ((_ extract 31 0) (bvand (bvxor (select (arr!47011 a!2831) j!81) (bvlshr (select (arr!47011 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153571 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!964716 (let ((h!35016 ((_ extract 31 0) (bvand (bvxor (select (arr!47011 a!2831) j!81) (bvlshr (select (arr!47011 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129285 (bvmul (bvxor h!35016 (bvlshr h!35016 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129285 (bvlshr x!129285 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!964716 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!964716 #b00000000000000000000000000000000))))))

(assert (=> d!153571 (= (toIndex!0 (select (arr!47011 a!2831) j!81) mask!2608) (bvand (bvxor lt!629612 (bvlshr lt!629612 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1429792 d!153571))

(declare-fun b!1430168 () Bool)

(declare-fun e!807500 () SeekEntryResult!11312)

(assert (=> b!1430168 (= e!807500 Undefined!11312)))

(declare-fun b!1430169 () Bool)

(declare-fun c!132221 () Bool)

(declare-fun lt!629630 () (_ BitVec 64))

(assert (=> b!1430169 (= c!132221 (= lt!629630 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807501 () SeekEntryResult!11312)

(declare-fun e!807502 () SeekEntryResult!11312)

(assert (=> b!1430169 (= e!807501 e!807502)))

(declare-fun b!1430170 () Bool)

(declare-fun lt!629631 () SeekEntryResult!11312)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97407 (_ BitVec 32)) SeekEntryResult!11312)

(assert (=> b!1430170 (= e!807502 (seekKeyOrZeroReturnVacant!0 (x!129277 lt!629631) (index!47641 lt!629631) (index!47641 lt!629631) (select (arr!47011 a!2831) j!81) a!2831 mask!2608))))

(declare-fun d!153579 () Bool)

(declare-fun lt!629632 () SeekEntryResult!11312)

(assert (=> d!153579 (and (or (is-Undefined!11312 lt!629632) (not (is-Found!11312 lt!629632)) (and (bvsge (index!47640 lt!629632) #b00000000000000000000000000000000) (bvslt (index!47640 lt!629632) (size!47562 a!2831)))) (or (is-Undefined!11312 lt!629632) (is-Found!11312 lt!629632) (not (is-MissingZero!11312 lt!629632)) (and (bvsge (index!47639 lt!629632) #b00000000000000000000000000000000) (bvslt (index!47639 lt!629632) (size!47562 a!2831)))) (or (is-Undefined!11312 lt!629632) (is-Found!11312 lt!629632) (is-MissingZero!11312 lt!629632) (not (is-MissingVacant!11312 lt!629632)) (and (bvsge (index!47642 lt!629632) #b00000000000000000000000000000000) (bvslt (index!47642 lt!629632) (size!47562 a!2831)))) (or (is-Undefined!11312 lt!629632) (ite (is-Found!11312 lt!629632) (= (select (arr!47011 a!2831) (index!47640 lt!629632)) (select (arr!47011 a!2831) j!81)) (ite (is-MissingZero!11312 lt!629632) (= (select (arr!47011 a!2831) (index!47639 lt!629632)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11312 lt!629632) (= (select (arr!47011 a!2831) (index!47642 lt!629632)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153579 (= lt!629632 e!807500)))

(declare-fun c!132219 () Bool)

(assert (=> d!153579 (= c!132219 (and (is-Intermediate!11312 lt!629631) (undefined!12124 lt!629631)))))

(assert (=> d!153579 (= lt!629631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47011 a!2831) j!81) mask!2608) (select (arr!47011 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153579 (validMask!0 mask!2608)))

(assert (=> d!153579 (= (seekEntryOrOpen!0 (select (arr!47011 a!2831) j!81) a!2831 mask!2608) lt!629632)))

(declare-fun b!1430171 () Bool)

(assert (=> b!1430171 (= e!807500 e!807501)))

(assert (=> b!1430171 (= lt!629630 (select (arr!47011 a!2831) (index!47641 lt!629631)))))

(declare-fun c!132220 () Bool)

(assert (=> b!1430171 (= c!132220 (= lt!629630 (select (arr!47011 a!2831) j!81)))))

(declare-fun b!1430172 () Bool)

(assert (=> b!1430172 (= e!807501 (Found!11312 (index!47641 lt!629631)))))

(declare-fun b!1430173 () Bool)

(assert (=> b!1430173 (= e!807502 (MissingZero!11312 (index!47641 lt!629631)))))

(assert (= (and d!153579 c!132219) b!1430168))

(assert (= (and d!153579 (not c!132219)) b!1430171))

(assert (= (and b!1430171 c!132220) b!1430172))

(assert (= (and b!1430171 (not c!132220)) b!1430169))

(assert (= (and b!1430169 c!132221) b!1430173))

(assert (= (and b!1430169 (not c!132221)) b!1430170))

(assert (=> b!1430170 m!1319959))

(declare-fun m!1320229 () Bool)

(assert (=> b!1430170 m!1320229))

(declare-fun m!1320231 () Bool)

(assert (=> d!153579 m!1320231))

(assert (=> d!153579 m!1319963))

(assert (=> d!153579 m!1319959))

(assert (=> d!153579 m!1319965))

(declare-fun m!1320233 () Bool)

(assert (=> d!153579 m!1320233))

(assert (=> d!153579 m!1319949))

(assert (=> d!153579 m!1319959))

(assert (=> d!153579 m!1319963))

(declare-fun m!1320235 () Bool)

(assert (=> d!153579 m!1320235))

(declare-fun m!1320237 () Bool)

(assert (=> b!1430171 m!1320237))

(assert (=> b!1429803 d!153579))

(declare-fun b!1430174 () Bool)

(declare-fun e!807506 () SeekEntryResult!11312)

(declare-fun e!807504 () SeekEntryResult!11312)

(assert (=> b!1430174 (= e!807506 e!807504)))

(declare-fun c!132223 () Bool)

(declare-fun lt!629634 () (_ BitVec 64))

(assert (=> b!1430174 (= c!132223 (or (= lt!629634 lt!629476) (= (bvadd lt!629634 lt!629634) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430175 () Bool)

(declare-fun lt!629633 () SeekEntryResult!11312)

(assert (=> b!1430175 (and (bvsge (index!47641 lt!629633) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629633) (size!47562 lt!629473)))))

(declare-fun res!964724 () Bool)

(assert (=> b!1430175 (= res!964724 (= (select (arr!47011 lt!629473) (index!47641 lt!629633)) lt!629476))))

(declare-fun e!807503 () Bool)

(assert (=> b!1430175 (=> res!964724 e!807503)))

(declare-fun e!807507 () Bool)

(assert (=> b!1430175 (= e!807507 e!807503)))

(declare-fun b!1430176 () Bool)

(assert (=> b!1430176 (= e!807506 (Intermediate!11312 true (toIndex!0 lt!629476 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430178 () Bool)

(declare-fun e!807505 () Bool)

(assert (=> b!1430178 (= e!807505 e!807507)))

(declare-fun res!964723 () Bool)

(assert (=> b!1430178 (= res!964723 (and (is-Intermediate!11312 lt!629633) (not (undefined!12124 lt!629633)) (bvslt (x!129277 lt!629633) #b01111111111111111111111111111110) (bvsge (x!129277 lt!629633) #b00000000000000000000000000000000) (bvsge (x!129277 lt!629633) #b00000000000000000000000000000000)))))

(assert (=> b!1430178 (=> (not res!964723) (not e!807507))))

(declare-fun b!1430179 () Bool)

(assert (=> b!1430179 (= e!807505 (bvsge (x!129277 lt!629633) #b01111111111111111111111111111110))))

(declare-fun b!1430180 () Bool)

(assert (=> b!1430180 (and (bvsge (index!47641 lt!629633) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629633) (size!47562 lt!629473)))))

(declare-fun res!964725 () Bool)

(assert (=> b!1430180 (= res!964725 (= (select (arr!47011 lt!629473) (index!47641 lt!629633)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430180 (=> res!964725 e!807503)))

(declare-fun b!1430181 () Bool)

(assert (=> b!1430181 (= e!807504 (Intermediate!11312 false (toIndex!0 lt!629476 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430182 () Bool)

(assert (=> b!1430182 (and (bvsge (index!47641 lt!629633) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629633) (size!47562 lt!629473)))))

(assert (=> b!1430182 (= e!807503 (= (select (arr!47011 lt!629473) (index!47641 lt!629633)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153583 () Bool)

(assert (=> d!153583 e!807505))

(declare-fun c!132222 () Bool)

(assert (=> d!153583 (= c!132222 (and (is-Intermediate!11312 lt!629633) (undefined!12124 lt!629633)))))

(assert (=> d!153583 (= lt!629633 e!807506)))

(declare-fun c!132224 () Bool)

(assert (=> d!153583 (= c!132224 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153583 (= lt!629634 (select (arr!47011 lt!629473) (toIndex!0 lt!629476 mask!2608)))))

(assert (=> d!153583 (validMask!0 mask!2608)))

(assert (=> d!153583 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629476 mask!2608) lt!629476 lt!629473 mask!2608) lt!629633)))

(declare-fun b!1430177 () Bool)

(assert (=> b!1430177 (= e!807504 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629476 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629476 lt!629473 mask!2608))))

(assert (= (and d!153583 c!132224) b!1430176))

(assert (= (and d!153583 (not c!132224)) b!1430174))

(assert (= (and b!1430174 c!132223) b!1430181))

(assert (= (and b!1430174 (not c!132223)) b!1430177))

(assert (= (and d!153583 c!132222) b!1430179))

(assert (= (and d!153583 (not c!132222)) b!1430178))

(assert (= (and b!1430178 res!964723) b!1430175))

(assert (= (and b!1430175 (not res!964724)) b!1430180))

(assert (= (and b!1430180 (not res!964725)) b!1430182))

(declare-fun m!1320239 () Bool)

(assert (=> b!1430180 m!1320239))

(assert (=> b!1430177 m!1319939))

(declare-fun m!1320241 () Bool)

(assert (=> b!1430177 m!1320241))

(assert (=> b!1430177 m!1320241))

(declare-fun m!1320243 () Bool)

(assert (=> b!1430177 m!1320243))

(assert (=> d!153583 m!1319939))

(declare-fun m!1320245 () Bool)

(assert (=> d!153583 m!1320245))

(assert (=> d!153583 m!1319949))

(assert (=> b!1430175 m!1320239))

(assert (=> b!1430182 m!1320239))

(assert (=> b!1429798 d!153583))

(declare-fun d!153585 () Bool)

(declare-fun lt!629636 () (_ BitVec 32))

(declare-fun lt!629635 () (_ BitVec 32))

(assert (=> d!153585 (= lt!629636 (bvmul (bvxor lt!629635 (bvlshr lt!629635 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153585 (= lt!629635 ((_ extract 31 0) (bvand (bvxor lt!629476 (bvlshr lt!629476 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153585 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!964716 (let ((h!35016 ((_ extract 31 0) (bvand (bvxor lt!629476 (bvlshr lt!629476 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129285 (bvmul (bvxor h!35016 (bvlshr h!35016 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129285 (bvlshr x!129285 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!964716 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!964716 #b00000000000000000000000000000000))))))

(assert (=> d!153585 (= (toIndex!0 lt!629476 mask!2608) (bvand (bvxor lt!629636 (bvlshr lt!629636 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1429798 d!153585))

(declare-fun d!153587 () Bool)

(assert (=> d!153587 (= (validKeyInArray!0 (select (arr!47011 a!2831) i!982)) (and (not (= (select (arr!47011 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47011 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1429793 d!153587))

(declare-fun b!1430183 () Bool)

(declare-fun e!807511 () SeekEntryResult!11312)

(declare-fun e!807509 () SeekEntryResult!11312)

(assert (=> b!1430183 (= e!807511 e!807509)))

(declare-fun lt!629638 () (_ BitVec 64))

(declare-fun c!132226 () Bool)

(assert (=> b!1430183 (= c!132226 (or (= lt!629638 (select (arr!47011 a!2831) j!81)) (= (bvadd lt!629638 lt!629638) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430184 () Bool)

(declare-fun lt!629637 () SeekEntryResult!11312)

(assert (=> b!1430184 (and (bvsge (index!47641 lt!629637) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629637) (size!47562 a!2831)))))

(declare-fun res!964727 () Bool)

(assert (=> b!1430184 (= res!964727 (= (select (arr!47011 a!2831) (index!47641 lt!629637)) (select (arr!47011 a!2831) j!81)))))

(declare-fun e!807508 () Bool)

(assert (=> b!1430184 (=> res!964727 e!807508)))

(declare-fun e!807512 () Bool)

(assert (=> b!1430184 (= e!807512 e!807508)))

(declare-fun b!1430185 () Bool)

(assert (=> b!1430185 (= e!807511 (Intermediate!11312 true index!585 x!605))))

(declare-fun b!1430187 () Bool)

(declare-fun e!807510 () Bool)

(assert (=> b!1430187 (= e!807510 e!807512)))

(declare-fun res!964726 () Bool)

(assert (=> b!1430187 (= res!964726 (and (is-Intermediate!11312 lt!629637) (not (undefined!12124 lt!629637)) (bvslt (x!129277 lt!629637) #b01111111111111111111111111111110) (bvsge (x!129277 lt!629637) #b00000000000000000000000000000000) (bvsge (x!129277 lt!629637) x!605)))))

(assert (=> b!1430187 (=> (not res!964726) (not e!807512))))

(declare-fun b!1430188 () Bool)

(assert (=> b!1430188 (= e!807510 (bvsge (x!129277 lt!629637) #b01111111111111111111111111111110))))

(declare-fun b!1430189 () Bool)

(assert (=> b!1430189 (and (bvsge (index!47641 lt!629637) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629637) (size!47562 a!2831)))))

(declare-fun res!964728 () Bool)

(assert (=> b!1430189 (= res!964728 (= (select (arr!47011 a!2831) (index!47641 lt!629637)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430189 (=> res!964728 e!807508)))

(declare-fun b!1430190 () Bool)

(assert (=> b!1430190 (= e!807509 (Intermediate!11312 false index!585 x!605))))

(declare-fun b!1430191 () Bool)

(assert (=> b!1430191 (and (bvsge (index!47641 lt!629637) #b00000000000000000000000000000000) (bvslt (index!47641 lt!629637) (size!47562 a!2831)))))

(assert (=> b!1430191 (= e!807508 (= (select (arr!47011 a!2831) (index!47641 lt!629637)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153589 () Bool)

(assert (=> d!153589 e!807510))

(declare-fun c!132225 () Bool)

(assert (=> d!153589 (= c!132225 (and (is-Intermediate!11312 lt!629637) (undefined!12124 lt!629637)))))

(assert (=> d!153589 (= lt!629637 e!807511)))

(declare-fun c!132227 () Bool)

(assert (=> d!153589 (= c!132227 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153589 (= lt!629638 (select (arr!47011 a!2831) index!585))))

(assert (=> d!153589 (validMask!0 mask!2608)))

(assert (=> d!153589 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47011 a!2831) j!81) a!2831 mask!2608) lt!629637)))

(declare-fun b!1430186 () Bool)

(assert (=> b!1430186 (= e!807509 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47011 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!153589 c!132227) b!1430185))

(assert (= (and d!153589 (not c!132227)) b!1430183))

(assert (= (and b!1430183 c!132226) b!1430190))

(assert (= (and b!1430183 (not c!132226)) b!1430186))

(assert (= (and d!153589 c!132225) b!1430188))

(assert (= (and d!153589 (not c!132225)) b!1430187))

(assert (= (and b!1430187 res!964726) b!1430184))

(assert (= (and b!1430184 (not res!964727)) b!1430189))

(assert (= (and b!1430189 (not res!964728)) b!1430191))

(declare-fun m!1320247 () Bool)

(assert (=> b!1430189 m!1320247))

(assert (=> b!1430186 m!1320133))

(assert (=> b!1430186 m!1320133))

(assert (=> b!1430186 m!1319959))

(declare-fun m!1320249 () Bool)

(assert (=> b!1430186 m!1320249))

(assert (=> d!153589 m!1319955))

(assert (=> d!153589 m!1319949))

(assert (=> b!1430184 m!1320247))

(assert (=> b!1430191 m!1320247))

(assert (=> b!1429796 d!153589))

(push 1)

