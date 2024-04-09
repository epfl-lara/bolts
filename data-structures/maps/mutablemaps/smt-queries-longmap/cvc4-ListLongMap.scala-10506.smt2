; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123776 () Bool)

(assert start!123776)

(declare-fun b!1434329 () Bool)

(declare-fun res!967907 () Bool)

(declare-fun e!809551 () Bool)

(assert (=> b!1434329 (=> (not res!967907) (not e!809551))))

(declare-datatypes ((array!97552 0))(
  ( (array!97553 (arr!47076 (Array (_ BitVec 32) (_ BitVec 64))) (size!47627 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97552)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97552 (_ BitVec 32)) Bool)

(assert (=> b!1434329 (= res!967907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434330 () Bool)

(declare-fun res!967911 () Bool)

(assert (=> b!1434330 (=> (not res!967911) (not e!809551))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1434330 (= res!967911 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47627 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47627 a!2831))))))

(declare-fun b!1434331 () Bool)

(declare-fun e!809548 () Bool)

(declare-fun e!809549 () Bool)

(assert (=> b!1434331 (= e!809548 (not e!809549))))

(declare-fun res!967908 () Bool)

(assert (=> b!1434331 (=> res!967908 e!809549)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434331 (= res!967908 (or (= (select (arr!47076 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47076 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47076 a!2831) index!585) (select (arr!47076 a!2831) j!81)) (= (select (store (arr!47076 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809546 () Bool)

(assert (=> b!1434331 e!809546))

(declare-fun res!967901 () Bool)

(assert (=> b!1434331 (=> (not res!967901) (not e!809546))))

(assert (=> b!1434331 (= res!967901 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48448 0))(
  ( (Unit!48449) )
))
(declare-fun lt!631393 () Unit!48448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48448)

(assert (=> b!1434331 (= lt!631393 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434332 () Bool)

(declare-fun res!967903 () Bool)

(assert (=> b!1434332 (=> (not res!967903) (not e!809551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434332 (= res!967903 (validKeyInArray!0 (select (arr!47076 a!2831) j!81)))))

(declare-fun b!1434333 () Bool)

(declare-fun res!967905 () Bool)

(assert (=> b!1434333 (=> (not res!967905) (not e!809548))))

(declare-datatypes ((SeekEntryResult!11377 0))(
  ( (MissingZero!11377 (index!47899 (_ BitVec 32))) (Found!11377 (index!47900 (_ BitVec 32))) (Intermediate!11377 (undefined!12189 Bool) (index!47901 (_ BitVec 32)) (x!129552 (_ BitVec 32))) (Undefined!11377) (MissingVacant!11377 (index!47902 (_ BitVec 32))) )
))
(declare-fun lt!631395 () SeekEntryResult!11377)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97552 (_ BitVec 32)) SeekEntryResult!11377)

(assert (=> b!1434333 (= res!967905 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47076 a!2831) j!81) a!2831 mask!2608) lt!631395))))

(declare-fun b!1434334 () Bool)

(declare-fun res!967904 () Bool)

(assert (=> b!1434334 (=> (not res!967904) (not e!809551))))

(declare-datatypes ((List!33766 0))(
  ( (Nil!33763) (Cons!33762 (h!35091 (_ BitVec 64)) (t!48467 List!33766)) )
))
(declare-fun arrayNoDuplicates!0 (array!97552 (_ BitVec 32) List!33766) Bool)

(assert (=> b!1434334 (= res!967904 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33763))))

(declare-fun b!1434335 () Bool)

(declare-fun res!967912 () Bool)

(assert (=> b!1434335 (=> (not res!967912) (not e!809548))))

(declare-fun lt!631396 () array!97552)

(declare-fun lt!631394 () SeekEntryResult!11377)

(declare-fun lt!631392 () (_ BitVec 64))

(assert (=> b!1434335 (= res!967912 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631392 lt!631396 mask!2608) lt!631394))))

(declare-fun res!967914 () Bool)

(assert (=> start!123776 (=> (not res!967914) (not e!809551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123776 (= res!967914 (validMask!0 mask!2608))))

(assert (=> start!123776 e!809551))

(assert (=> start!123776 true))

(declare-fun array_inv!36021 (array!97552) Bool)

(assert (=> start!123776 (array_inv!36021 a!2831)))

(declare-fun b!1434336 () Bool)

(declare-fun e!809547 () Bool)

(assert (=> b!1434336 (= e!809547 e!809548)))

(declare-fun res!967910 () Bool)

(assert (=> b!1434336 (=> (not res!967910) (not e!809548))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434336 (= res!967910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631392 mask!2608) lt!631392 lt!631396 mask!2608) lt!631394))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434336 (= lt!631394 (Intermediate!11377 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434336 (= lt!631392 (select (store (arr!47076 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434336 (= lt!631396 (array!97553 (store (arr!47076 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47627 a!2831)))))

(declare-fun b!1434337 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97552 (_ BitVec 32)) SeekEntryResult!11377)

(assert (=> b!1434337 (= e!809546 (= (seekEntryOrOpen!0 (select (arr!47076 a!2831) j!81) a!2831 mask!2608) (Found!11377 j!81)))))

(declare-fun b!1434338 () Bool)

(declare-fun res!967906 () Bool)

(assert (=> b!1434338 (=> (not res!967906) (not e!809551))))

(assert (=> b!1434338 (= res!967906 (validKeyInArray!0 (select (arr!47076 a!2831) i!982)))))

(declare-fun e!809552 () Bool)

(declare-fun b!1434339 () Bool)

(declare-fun lt!631391 () (_ BitVec 32))

(assert (=> b!1434339 (= e!809552 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631391 (select (arr!47076 a!2831) j!81) a!2831 mask!2608) lt!631395))))

(declare-fun b!1434340 () Bool)

(declare-fun res!967913 () Bool)

(assert (=> b!1434340 (=> (not res!967913) (not e!809551))))

(assert (=> b!1434340 (= res!967913 (and (= (size!47627 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47627 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47627 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1434341 () Bool)

(assert (=> b!1434341 (= e!809551 e!809547)))

(declare-fun res!967902 () Bool)

(assert (=> b!1434341 (=> (not res!967902) (not e!809547))))

(assert (=> b!1434341 (= res!967902 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47076 a!2831) j!81) mask!2608) (select (arr!47076 a!2831) j!81) a!2831 mask!2608) lt!631395))))

(assert (=> b!1434341 (= lt!631395 (Intermediate!11377 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434342 () Bool)

(assert (=> b!1434342 (= e!809549 e!809552)))

(declare-fun res!967909 () Bool)

(assert (=> b!1434342 (=> res!967909 e!809552)))

(assert (=> b!1434342 (= res!967909 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631391 #b00000000000000000000000000000000) (bvsge lt!631391 (size!47627 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434342 (= lt!631391 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1434343 () Bool)

(declare-fun res!967900 () Bool)

(assert (=> b!1434343 (=> (not res!967900) (not e!809548))))

(assert (=> b!1434343 (= res!967900 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123776 res!967914) b!1434340))

(assert (= (and b!1434340 res!967913) b!1434338))

(assert (= (and b!1434338 res!967906) b!1434332))

(assert (= (and b!1434332 res!967903) b!1434329))

(assert (= (and b!1434329 res!967907) b!1434334))

(assert (= (and b!1434334 res!967904) b!1434330))

(assert (= (and b!1434330 res!967911) b!1434341))

(assert (= (and b!1434341 res!967902) b!1434336))

(assert (= (and b!1434336 res!967910) b!1434333))

(assert (= (and b!1434333 res!967905) b!1434335))

(assert (= (and b!1434335 res!967912) b!1434343))

(assert (= (and b!1434343 res!967900) b!1434331))

(assert (= (and b!1434331 res!967901) b!1434337))

(assert (= (and b!1434331 (not res!967908)) b!1434342))

(assert (= (and b!1434342 (not res!967909)) b!1434339))

(declare-fun m!1324009 () Bool)

(assert (=> b!1434335 m!1324009))

(declare-fun m!1324011 () Bool)

(assert (=> b!1434337 m!1324011))

(assert (=> b!1434337 m!1324011))

(declare-fun m!1324013 () Bool)

(assert (=> b!1434337 m!1324013))

(declare-fun m!1324015 () Bool)

(assert (=> b!1434334 m!1324015))

(assert (=> b!1434333 m!1324011))

(assert (=> b!1434333 m!1324011))

(declare-fun m!1324017 () Bool)

(assert (=> b!1434333 m!1324017))

(declare-fun m!1324019 () Bool)

(assert (=> b!1434329 m!1324019))

(assert (=> b!1434332 m!1324011))

(assert (=> b!1434332 m!1324011))

(declare-fun m!1324021 () Bool)

(assert (=> b!1434332 m!1324021))

(declare-fun m!1324023 () Bool)

(assert (=> b!1434331 m!1324023))

(declare-fun m!1324025 () Bool)

(assert (=> b!1434331 m!1324025))

(declare-fun m!1324027 () Bool)

(assert (=> b!1434331 m!1324027))

(declare-fun m!1324029 () Bool)

(assert (=> b!1434331 m!1324029))

(assert (=> b!1434331 m!1324011))

(declare-fun m!1324031 () Bool)

(assert (=> b!1434331 m!1324031))

(declare-fun m!1324033 () Bool)

(assert (=> start!123776 m!1324033))

(declare-fun m!1324035 () Bool)

(assert (=> start!123776 m!1324035))

(assert (=> b!1434341 m!1324011))

(assert (=> b!1434341 m!1324011))

(declare-fun m!1324037 () Bool)

(assert (=> b!1434341 m!1324037))

(assert (=> b!1434341 m!1324037))

(assert (=> b!1434341 m!1324011))

(declare-fun m!1324039 () Bool)

(assert (=> b!1434341 m!1324039))

(declare-fun m!1324041 () Bool)

(assert (=> b!1434336 m!1324041))

(assert (=> b!1434336 m!1324041))

(declare-fun m!1324043 () Bool)

(assert (=> b!1434336 m!1324043))

(assert (=> b!1434336 m!1324023))

(declare-fun m!1324045 () Bool)

(assert (=> b!1434336 m!1324045))

(declare-fun m!1324047 () Bool)

(assert (=> b!1434338 m!1324047))

(assert (=> b!1434338 m!1324047))

(declare-fun m!1324049 () Bool)

(assert (=> b!1434338 m!1324049))

(declare-fun m!1324051 () Bool)

(assert (=> b!1434342 m!1324051))

(assert (=> b!1434339 m!1324011))

(assert (=> b!1434339 m!1324011))

(declare-fun m!1324053 () Bool)

(assert (=> b!1434339 m!1324053))

(push 1)

(assert (not b!1434335))

(assert (not b!1434342))

(assert (not b!1434329))

(assert (not b!1434338))

(assert (not b!1434336))

(assert (not b!1434339))

(assert (not b!1434331))

(assert (not start!123776))

(assert (not b!1434333))

(assert (not b!1434334))

(assert (not b!1434337))

(assert (not b!1434341))

(assert (not b!1434332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154137 () Bool)

(assert (=> d!154137 (= (validKeyInArray!0 (select (arr!47076 a!2831) i!982)) (and (not (= (select (arr!47076 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47076 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434338 d!154137))

(declare-fun b!1434469 () Bool)

(declare-fun e!809631 () SeekEntryResult!11377)

(declare-fun lt!631443 () SeekEntryResult!11377)

(assert (=> b!1434469 (= e!809631 (MissingZero!11377 (index!47901 lt!631443)))))

(declare-fun b!1434470 () Bool)

(declare-fun e!809633 () SeekEntryResult!11377)

(assert (=> b!1434470 (= e!809633 Undefined!11377)))

(declare-fun b!1434471 () Bool)

(declare-fun c!132756 () Bool)

(declare-fun lt!631445 () (_ BitVec 64))

(assert (=> b!1434471 (= c!132756 (= lt!631445 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809632 () SeekEntryResult!11377)

(assert (=> b!1434471 (= e!809632 e!809631)))

(declare-fun d!154139 () Bool)

(declare-fun lt!631444 () SeekEntryResult!11377)

(assert (=> d!154139 (and (or (is-Undefined!11377 lt!631444) (not (is-Found!11377 lt!631444)) (and (bvsge (index!47900 lt!631444) #b00000000000000000000000000000000) (bvslt (index!47900 lt!631444) (size!47627 a!2831)))) (or (is-Undefined!11377 lt!631444) (is-Found!11377 lt!631444) (not (is-MissingZero!11377 lt!631444)) (and (bvsge (index!47899 lt!631444) #b00000000000000000000000000000000) (bvslt (index!47899 lt!631444) (size!47627 a!2831)))) (or (is-Undefined!11377 lt!631444) (is-Found!11377 lt!631444) (is-MissingZero!11377 lt!631444) (not (is-MissingVacant!11377 lt!631444)) (and (bvsge (index!47902 lt!631444) #b00000000000000000000000000000000) (bvslt (index!47902 lt!631444) (size!47627 a!2831)))) (or (is-Undefined!11377 lt!631444) (ite (is-Found!11377 lt!631444) (= (select (arr!47076 a!2831) (index!47900 lt!631444)) (select (arr!47076 a!2831) j!81)) (ite (is-MissingZero!11377 lt!631444) (= (select (arr!47076 a!2831) (index!47899 lt!631444)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11377 lt!631444) (= (select (arr!47076 a!2831) (index!47902 lt!631444)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!154139 (= lt!631444 e!809633)))

(declare-fun c!132758 () Bool)

(assert (=> d!154139 (= c!132758 (and (is-Intermediate!11377 lt!631443) (undefined!12189 lt!631443)))))

(assert (=> d!154139 (= lt!631443 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47076 a!2831) j!81) mask!2608) (select (arr!47076 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154139 (validMask!0 mask!2608)))

(assert (=> d!154139 (= (seekEntryOrOpen!0 (select (arr!47076 a!2831) j!81) a!2831 mask!2608) lt!631444)))

(declare-fun b!1434472 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97552 (_ BitVec 32)) SeekEntryResult!11377)

(assert (=> b!1434472 (= e!809631 (seekKeyOrZeroReturnVacant!0 (x!129552 lt!631443) (index!47901 lt!631443) (index!47901 lt!631443) (select (arr!47076 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434473 () Bool)

(assert (=> b!1434473 (= e!809633 e!809632)))

(assert (=> b!1434473 (= lt!631445 (select (arr!47076 a!2831) (index!47901 lt!631443)))))

(declare-fun c!132757 () Bool)

(assert (=> b!1434473 (= c!132757 (= lt!631445 (select (arr!47076 a!2831) j!81)))))

(declare-fun b!1434474 () Bool)

(assert (=> b!1434474 (= e!809632 (Found!11377 (index!47901 lt!631443)))))

(assert (= (and d!154139 c!132758) b!1434470))

(assert (= (and d!154139 (not c!132758)) b!1434473))

(assert (= (and b!1434473 c!132757) b!1434474))

(assert (= (and b!1434473 (not c!132757)) b!1434471))

(assert (= (and b!1434471 c!132756) b!1434469))

(assert (= (and b!1434471 (not c!132756)) b!1434472))

(assert (=> d!154139 m!1324011))

(assert (=> d!154139 m!1324037))

(declare-fun m!1324111 () Bool)

(assert (=> d!154139 m!1324111))

(assert (=> d!154139 m!1324037))

(assert (=> d!154139 m!1324011))

(assert (=> d!154139 m!1324039))

(declare-fun m!1324113 () Bool)

(assert (=> d!154139 m!1324113))

(declare-fun m!1324115 () Bool)

(assert (=> d!154139 m!1324115))

(assert (=> d!154139 m!1324033))

(assert (=> b!1434472 m!1324011))

(declare-fun m!1324117 () Bool)

(assert (=> b!1434472 m!1324117))

(declare-fun m!1324119 () Bool)

(assert (=> b!1434473 m!1324119))

(assert (=> b!1434337 d!154139))

(declare-fun b!1434552 () Bool)

(declare-fun e!809679 () SeekEntryResult!11377)

(assert (=> b!1434552 (= e!809679 (Intermediate!11377 true (toIndex!0 lt!631392 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434553 () Bool)

(declare-fun lt!631478 () SeekEntryResult!11377)

(assert (=> b!1434553 (and (bvsge (index!47901 lt!631478) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631478) (size!47627 lt!631396)))))

(declare-fun res!967985 () Bool)

(assert (=> b!1434553 (= res!967985 (= (select (arr!47076 lt!631396) (index!47901 lt!631478)) lt!631392))))

(declare-fun e!809681 () Bool)

(assert (=> b!1434553 (=> res!967985 e!809681)))

(declare-fun e!809677 () Bool)

(assert (=> b!1434553 (= e!809677 e!809681)))

(declare-fun e!809680 () SeekEntryResult!11377)

(declare-fun b!1434554 () Bool)

(assert (=> b!1434554 (= e!809680 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631392 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631392 lt!631396 mask!2608))))

(declare-fun b!1434556 () Bool)

(assert (=> b!1434556 (and (bvsge (index!47901 lt!631478) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631478) (size!47627 lt!631396)))))

(declare-fun res!967987 () Bool)

(assert (=> b!1434556 (= res!967987 (= (select (arr!47076 lt!631396) (index!47901 lt!631478)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434556 (=> res!967987 e!809681)))

(declare-fun b!1434557 () Bool)

(declare-fun e!809678 () Bool)

(assert (=> b!1434557 (= e!809678 e!809677)))

(declare-fun res!967986 () Bool)

(assert (=> b!1434557 (= res!967986 (and (is-Intermediate!11377 lt!631478) (not (undefined!12189 lt!631478)) (bvslt (x!129552 lt!631478) #b01111111111111111111111111111110) (bvsge (x!129552 lt!631478) #b00000000000000000000000000000000) (bvsge (x!129552 lt!631478) #b00000000000000000000000000000000)))))

(assert (=> b!1434557 (=> (not res!967986) (not e!809677))))

(declare-fun b!1434558 () Bool)

(assert (=> b!1434558 (= e!809679 e!809680)))

(declare-fun c!132787 () Bool)

(declare-fun lt!631479 () (_ BitVec 64))

(assert (=> b!1434558 (= c!132787 (or (= lt!631479 lt!631392) (= (bvadd lt!631479 lt!631479) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434559 () Bool)

(assert (=> b!1434559 (= e!809678 (bvsge (x!129552 lt!631478) #b01111111111111111111111111111110))))

(declare-fun b!1434560 () Bool)

(assert (=> b!1434560 (= e!809680 (Intermediate!11377 false (toIndex!0 lt!631392 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434555 () Bool)

(assert (=> b!1434555 (and (bvsge (index!47901 lt!631478) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631478) (size!47627 lt!631396)))))

(assert (=> b!1434555 (= e!809681 (= (select (arr!47076 lt!631396) (index!47901 lt!631478)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154155 () Bool)

(assert (=> d!154155 e!809678))

(declare-fun c!132788 () Bool)

(assert (=> d!154155 (= c!132788 (and (is-Intermediate!11377 lt!631478) (undefined!12189 lt!631478)))))

(assert (=> d!154155 (= lt!631478 e!809679)))

(declare-fun c!132789 () Bool)

(assert (=> d!154155 (= c!132789 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154155 (= lt!631479 (select (arr!47076 lt!631396) (toIndex!0 lt!631392 mask!2608)))))

(assert (=> d!154155 (validMask!0 mask!2608)))

(assert (=> d!154155 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631392 mask!2608) lt!631392 lt!631396 mask!2608) lt!631478)))

(assert (= (and d!154155 c!132789) b!1434552))

(assert (= (and d!154155 (not c!132789)) b!1434558))

(assert (= (and b!1434558 c!132787) b!1434560))

(assert (= (and b!1434558 (not c!132787)) b!1434554))

(assert (= (and d!154155 c!132788) b!1434559))

(assert (= (and d!154155 (not c!132788)) b!1434557))

(assert (= (and b!1434557 res!967986) b!1434553))

(assert (= (and b!1434553 (not res!967985)) b!1434556))

(assert (= (and b!1434556 (not res!967987)) b!1434555))

(assert (=> b!1434554 m!1324041))

(declare-fun m!1324167 () Bool)

(assert (=> b!1434554 m!1324167))

(assert (=> b!1434554 m!1324167))

(declare-fun m!1324169 () Bool)

(assert (=> b!1434554 m!1324169))

(declare-fun m!1324171 () Bool)

(assert (=> b!1434553 m!1324171))

(assert (=> b!1434556 m!1324171))

(assert (=> b!1434555 m!1324171))

(assert (=> d!154155 m!1324041))

(declare-fun m!1324173 () Bool)

(assert (=> d!154155 m!1324173))

(assert (=> d!154155 m!1324033))

(assert (=> b!1434336 d!154155))

(declare-fun d!154177 () Bool)

(declare-fun lt!631485 () (_ BitVec 32))

(declare-fun lt!631484 () (_ BitVec 32))

(assert (=> d!154177 (= lt!631485 (bvmul (bvxor lt!631484 (bvlshr lt!631484 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154177 (= lt!631484 ((_ extract 31 0) (bvand (bvxor lt!631392 (bvlshr lt!631392 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154177 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967988 (let ((h!35094 ((_ extract 31 0) (bvand (bvxor lt!631392 (bvlshr lt!631392 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129560 (bvmul (bvxor h!35094 (bvlshr h!35094 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129560 (bvlshr x!129560 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967988 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967988 #b00000000000000000000000000000000))))))

(assert (=> d!154177 (= (toIndex!0 lt!631392 mask!2608) (bvand (bvxor lt!631485 (bvlshr lt!631485 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434336 d!154177))

(declare-fun b!1434561 () Bool)

(declare-fun e!809684 () SeekEntryResult!11377)

(assert (=> b!1434561 (= e!809684 (Intermediate!11377 true index!585 x!605))))

(declare-fun b!1434562 () Bool)

(declare-fun lt!631486 () SeekEntryResult!11377)

(assert (=> b!1434562 (and (bvsge (index!47901 lt!631486) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631486) (size!47627 lt!631396)))))

(declare-fun res!967989 () Bool)

(assert (=> b!1434562 (= res!967989 (= (select (arr!47076 lt!631396) (index!47901 lt!631486)) lt!631392))))

(declare-fun e!809686 () Bool)

(assert (=> b!1434562 (=> res!967989 e!809686)))

(declare-fun e!809682 () Bool)

(assert (=> b!1434562 (= e!809682 e!809686)))

(declare-fun e!809685 () SeekEntryResult!11377)

(declare-fun b!1434563 () Bool)

(assert (=> b!1434563 (= e!809685 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631392 lt!631396 mask!2608))))

(declare-fun b!1434565 () Bool)

(assert (=> b!1434565 (and (bvsge (index!47901 lt!631486) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631486) (size!47627 lt!631396)))))

(declare-fun res!967991 () Bool)

(assert (=> b!1434565 (= res!967991 (= (select (arr!47076 lt!631396) (index!47901 lt!631486)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434565 (=> res!967991 e!809686)))

(declare-fun b!1434566 () Bool)

(declare-fun e!809683 () Bool)

(assert (=> b!1434566 (= e!809683 e!809682)))

(declare-fun res!967990 () Bool)

(assert (=> b!1434566 (= res!967990 (and (is-Intermediate!11377 lt!631486) (not (undefined!12189 lt!631486)) (bvslt (x!129552 lt!631486) #b01111111111111111111111111111110) (bvsge (x!129552 lt!631486) #b00000000000000000000000000000000) (bvsge (x!129552 lt!631486) x!605)))))

(assert (=> b!1434566 (=> (not res!967990) (not e!809682))))

(declare-fun b!1434567 () Bool)

(assert (=> b!1434567 (= e!809684 e!809685)))

(declare-fun c!132790 () Bool)

(declare-fun lt!631487 () (_ BitVec 64))

(assert (=> b!1434567 (= c!132790 (or (= lt!631487 lt!631392) (= (bvadd lt!631487 lt!631487) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434568 () Bool)

(assert (=> b!1434568 (= e!809683 (bvsge (x!129552 lt!631486) #b01111111111111111111111111111110))))

(declare-fun b!1434569 () Bool)

(assert (=> b!1434569 (= e!809685 (Intermediate!11377 false index!585 x!605))))

(declare-fun b!1434564 () Bool)

(assert (=> b!1434564 (and (bvsge (index!47901 lt!631486) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631486) (size!47627 lt!631396)))))

(assert (=> b!1434564 (= e!809686 (= (select (arr!47076 lt!631396) (index!47901 lt!631486)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154179 () Bool)

(assert (=> d!154179 e!809683))

(declare-fun c!132791 () Bool)

(assert (=> d!154179 (= c!132791 (and (is-Intermediate!11377 lt!631486) (undefined!12189 lt!631486)))))

(assert (=> d!154179 (= lt!631486 e!809684)))

(declare-fun c!132792 () Bool)

(assert (=> d!154179 (= c!132792 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154179 (= lt!631487 (select (arr!47076 lt!631396) index!585))))

(assert (=> d!154179 (validMask!0 mask!2608)))

(assert (=> d!154179 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631392 lt!631396 mask!2608) lt!631486)))

(assert (= (and d!154179 c!132792) b!1434561))

(assert (= (and d!154179 (not c!132792)) b!1434567))

(assert (= (and b!1434567 c!132790) b!1434569))

(assert (= (and b!1434567 (not c!132790)) b!1434563))

(assert (= (and d!154179 c!132791) b!1434568))

(assert (= (and d!154179 (not c!132791)) b!1434566))

(assert (= (and b!1434566 res!967990) b!1434562))

(assert (= (and b!1434562 (not res!967989)) b!1434565))

(assert (= (and b!1434565 (not res!967991)) b!1434564))

(assert (=> b!1434563 m!1324051))

(assert (=> b!1434563 m!1324051))

(declare-fun m!1324175 () Bool)

(assert (=> b!1434563 m!1324175))

(declare-fun m!1324177 () Bool)

(assert (=> b!1434562 m!1324177))

(assert (=> b!1434565 m!1324177))

(assert (=> b!1434564 m!1324177))

(declare-fun m!1324179 () Bool)

(assert (=> d!154179 m!1324179))

(assert (=> d!154179 m!1324033))

(assert (=> b!1434335 d!154179))

(declare-fun d!154181 () Bool)

(declare-fun res!967998 () Bool)

(declare-fun e!809704 () Bool)

(assert (=> d!154181 (=> res!967998 e!809704)))

(assert (=> d!154181 (= res!967998 (bvsge #b00000000000000000000000000000000 (size!47627 a!2831)))))

(assert (=> d!154181 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33763) e!809704)))

(declare-fun b!1434592 () Bool)

(declare-fun e!809702 () Bool)

(assert (=> b!1434592 (= e!809704 e!809702)))

(declare-fun res!968000 () Bool)

(assert (=> b!1434592 (=> (not res!968000) (not e!809702))))

(declare-fun e!809703 () Bool)

(assert (=> b!1434592 (= res!968000 (not e!809703))))

(declare-fun res!967999 () Bool)

(assert (=> b!1434592 (=> (not res!967999) (not e!809703))))

(assert (=> b!1434592 (= res!967999 (validKeyInArray!0 (select (arr!47076 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434593 () Bool)

(declare-fun e!809701 () Bool)

(declare-fun call!67531 () Bool)

(assert (=> b!1434593 (= e!809701 call!67531)))

(declare-fun b!1434594 () Bool)

(assert (=> b!1434594 (= e!809701 call!67531)))

(declare-fun bm!67528 () Bool)

(declare-fun c!132801 () Bool)

(assert (=> bm!67528 (= call!67531 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132801 (Cons!33762 (select (arr!47076 a!2831) #b00000000000000000000000000000000) Nil!33763) Nil!33763)))))

(declare-fun b!1434595 () Bool)

(declare-fun contains!9884 (List!33766 (_ BitVec 64)) Bool)

(assert (=> b!1434595 (= e!809703 (contains!9884 Nil!33763 (select (arr!47076 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434596 () Bool)

(assert (=> b!1434596 (= e!809702 e!809701)))

(assert (=> b!1434596 (= c!132801 (validKeyInArray!0 (select (arr!47076 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!154181 (not res!967998)) b!1434592))

(assert (= (and b!1434592 res!967999) b!1434595))

(assert (= (and b!1434592 res!968000) b!1434596))

(assert (= (and b!1434596 c!132801) b!1434593))

(assert (= (and b!1434596 (not c!132801)) b!1434594))

(assert (= (or b!1434593 b!1434594) bm!67528))

(declare-fun m!1324181 () Bool)

(assert (=> b!1434592 m!1324181))

(assert (=> b!1434592 m!1324181))

(declare-fun m!1324183 () Bool)

(assert (=> b!1434592 m!1324183))

(assert (=> bm!67528 m!1324181))

(declare-fun m!1324185 () Bool)

(assert (=> bm!67528 m!1324185))

(assert (=> b!1434595 m!1324181))

(assert (=> b!1434595 m!1324181))

(declare-fun m!1324187 () Bool)

(assert (=> b!1434595 m!1324187))

(assert (=> b!1434596 m!1324181))

(assert (=> b!1434596 m!1324181))

(assert (=> b!1434596 m!1324183))

(assert (=> b!1434334 d!154181))

(declare-fun b!1434597 () Bool)

(declare-fun e!809707 () SeekEntryResult!11377)

(assert (=> b!1434597 (= e!809707 (Intermediate!11377 true index!585 x!605))))

(declare-fun b!1434598 () Bool)

(declare-fun lt!631494 () SeekEntryResult!11377)

(assert (=> b!1434598 (and (bvsge (index!47901 lt!631494) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631494) (size!47627 a!2831)))))

(declare-fun res!968001 () Bool)

(assert (=> b!1434598 (= res!968001 (= (select (arr!47076 a!2831) (index!47901 lt!631494)) (select (arr!47076 a!2831) j!81)))))

(declare-fun e!809709 () Bool)

(assert (=> b!1434598 (=> res!968001 e!809709)))

(declare-fun e!809705 () Bool)

(assert (=> b!1434598 (= e!809705 e!809709)))

(declare-fun e!809708 () SeekEntryResult!11377)

(declare-fun b!1434599 () Bool)

(assert (=> b!1434599 (= e!809708 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47076 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434601 () Bool)

(assert (=> b!1434601 (and (bvsge (index!47901 lt!631494) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631494) (size!47627 a!2831)))))

(declare-fun res!968003 () Bool)

(assert (=> b!1434601 (= res!968003 (= (select (arr!47076 a!2831) (index!47901 lt!631494)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434601 (=> res!968003 e!809709)))

(declare-fun b!1434602 () Bool)

(declare-fun e!809706 () Bool)

(assert (=> b!1434602 (= e!809706 e!809705)))

(declare-fun res!968002 () Bool)

(assert (=> b!1434602 (= res!968002 (and (is-Intermediate!11377 lt!631494) (not (undefined!12189 lt!631494)) (bvslt (x!129552 lt!631494) #b01111111111111111111111111111110) (bvsge (x!129552 lt!631494) #b00000000000000000000000000000000) (bvsge (x!129552 lt!631494) x!605)))))

(assert (=> b!1434602 (=> (not res!968002) (not e!809705))))

(declare-fun b!1434603 () Bool)

(assert (=> b!1434603 (= e!809707 e!809708)))

(declare-fun c!132802 () Bool)

(declare-fun lt!631495 () (_ BitVec 64))

(assert (=> b!1434603 (= c!132802 (or (= lt!631495 (select (arr!47076 a!2831) j!81)) (= (bvadd lt!631495 lt!631495) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434604 () Bool)

(assert (=> b!1434604 (= e!809706 (bvsge (x!129552 lt!631494) #b01111111111111111111111111111110))))

(declare-fun b!1434605 () Bool)

(assert (=> b!1434605 (= e!809708 (Intermediate!11377 false index!585 x!605))))

(declare-fun b!1434600 () Bool)

(assert (=> b!1434600 (and (bvsge (index!47901 lt!631494) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631494) (size!47627 a!2831)))))

(assert (=> b!1434600 (= e!809709 (= (select (arr!47076 a!2831) (index!47901 lt!631494)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154183 () Bool)

(assert (=> d!154183 e!809706))

(declare-fun c!132803 () Bool)

(assert (=> d!154183 (= c!132803 (and (is-Intermediate!11377 lt!631494) (undefined!12189 lt!631494)))))

(assert (=> d!154183 (= lt!631494 e!809707)))

(declare-fun c!132804 () Bool)

(assert (=> d!154183 (= c!132804 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154183 (= lt!631495 (select (arr!47076 a!2831) index!585))))

(assert (=> d!154183 (validMask!0 mask!2608)))

(assert (=> d!154183 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47076 a!2831) j!81) a!2831 mask!2608) lt!631494)))

(assert (= (and d!154183 c!132804) b!1434597))

(assert (= (and d!154183 (not c!132804)) b!1434603))

(assert (= (and b!1434603 c!132802) b!1434605))

(assert (= (and b!1434603 (not c!132802)) b!1434599))

(assert (= (and d!154183 c!132803) b!1434604))

(assert (= (and d!154183 (not c!132803)) b!1434602))

(assert (= (and b!1434602 res!968002) b!1434598))

(assert (= (and b!1434598 (not res!968001)) b!1434601))

(assert (= (and b!1434601 (not res!968003)) b!1434600))

(assert (=> b!1434599 m!1324051))

(assert (=> b!1434599 m!1324051))

(assert (=> b!1434599 m!1324011))

(declare-fun m!1324189 () Bool)

(assert (=> b!1434599 m!1324189))

(declare-fun m!1324191 () Bool)

(assert (=> b!1434598 m!1324191))

(assert (=> b!1434601 m!1324191))

(assert (=> b!1434600 m!1324191))

(assert (=> d!154183 m!1324027))

(assert (=> d!154183 m!1324033))

(assert (=> b!1434333 d!154183))

(declare-fun d!154185 () Bool)

(assert (=> d!154185 (= (validKeyInArray!0 (select (arr!47076 a!2831) j!81)) (and (not (= (select (arr!47076 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47076 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434332 d!154185))

(declare-fun d!154187 () Bool)

(assert (=> d!154187 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123776 d!154187))

(declare-fun d!154197 () Bool)

(assert (=> d!154197 (= (array_inv!36021 a!2831) (bvsge (size!47627 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123776 d!154197))

(declare-fun d!154199 () Bool)

(declare-fun res!968023 () Bool)

(declare-fun e!809741 () Bool)

(assert (=> d!154199 (=> res!968023 e!809741)))

(assert (=> d!154199 (= res!968023 (bvsge j!81 (size!47627 a!2831)))))

(assert (=> d!154199 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809741)))

(declare-fun b!1434654 () Bool)

(declare-fun e!809743 () Bool)

(declare-fun e!809742 () Bool)

(assert (=> b!1434654 (= e!809743 e!809742)))

(declare-fun lt!631527 () (_ BitVec 64))

(assert (=> b!1434654 (= lt!631527 (select (arr!47076 a!2831) j!81))))

(declare-fun lt!631526 () Unit!48448)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97552 (_ BitVec 64) (_ BitVec 32)) Unit!48448)

(assert (=> b!1434654 (= lt!631526 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631527 j!81))))

(declare-fun arrayContainsKey!0 (array!97552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1434654 (arrayContainsKey!0 a!2831 lt!631527 #b00000000000000000000000000000000)))

(declare-fun lt!631528 () Unit!48448)

(assert (=> b!1434654 (= lt!631528 lt!631526)))

(declare-fun res!968022 () Bool)

(assert (=> b!1434654 (= res!968022 (= (seekEntryOrOpen!0 (select (arr!47076 a!2831) j!81) a!2831 mask!2608) (Found!11377 j!81)))))

(assert (=> b!1434654 (=> (not res!968022) (not e!809742))))

(declare-fun b!1434655 () Bool)

(assert (=> b!1434655 (= e!809741 e!809743)))

(declare-fun c!132820 () Bool)

(assert (=> b!1434655 (= c!132820 (validKeyInArray!0 (select (arr!47076 a!2831) j!81)))))

(declare-fun b!1434656 () Bool)

(declare-fun call!67538 () Bool)

(assert (=> b!1434656 (= e!809742 call!67538)))

(declare-fun b!1434657 () Bool)

(assert (=> b!1434657 (= e!809743 call!67538)))

(declare-fun bm!67535 () Bool)

(assert (=> bm!67535 (= call!67538 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!154199 (not res!968023)) b!1434655))

(assert (= (and b!1434655 c!132820) b!1434654))

(assert (= (and b!1434655 (not c!132820)) b!1434657))

(assert (= (and b!1434654 res!968022) b!1434656))

(assert (= (or b!1434656 b!1434657) bm!67535))

(assert (=> b!1434654 m!1324011))

(declare-fun m!1324231 () Bool)

(assert (=> b!1434654 m!1324231))

(declare-fun m!1324233 () Bool)

(assert (=> b!1434654 m!1324233))

(assert (=> b!1434654 m!1324011))

(assert (=> b!1434654 m!1324013))

(assert (=> b!1434655 m!1324011))

(assert (=> b!1434655 m!1324011))

(assert (=> b!1434655 m!1324021))

(declare-fun m!1324235 () Bool)

(assert (=> bm!67535 m!1324235))

(assert (=> b!1434331 d!154199))

(declare-fun d!154209 () Bool)

(assert (=> d!154209 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631531 () Unit!48448)

(declare-fun choose!38 (array!97552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48448)

(assert (=> d!154209 (= lt!631531 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154209 (validMask!0 mask!2608)))

(assert (=> d!154209 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631531)))

(declare-fun bs!41760 () Bool)

(assert (= bs!41760 d!154209))

(assert (=> bs!41760 m!1324029))

(declare-fun m!1324237 () Bool)

(assert (=> bs!41760 m!1324237))

(assert (=> bs!41760 m!1324033))

(assert (=> b!1434331 d!154209))

(declare-fun d!154211 () Bool)

(declare-fun lt!631534 () (_ BitVec 32))

(assert (=> d!154211 (and (bvsge lt!631534 #b00000000000000000000000000000000) (bvslt lt!631534 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!154211 (= lt!631534 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!154211 (validMask!0 mask!2608)))

(assert (=> d!154211 (= (nextIndex!0 index!585 x!605 mask!2608) lt!631534)))

(declare-fun bs!41761 () Bool)

(assert (= bs!41761 d!154211))

(declare-fun m!1324239 () Bool)

(assert (=> bs!41761 m!1324239))

(assert (=> bs!41761 m!1324033))

(assert (=> b!1434342 d!154211))

(declare-fun e!809746 () SeekEntryResult!11377)

(declare-fun b!1434658 () Bool)

(assert (=> b!1434658 (= e!809746 (Intermediate!11377 true (toIndex!0 (select (arr!47076 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434659 () Bool)

(declare-fun lt!631535 () SeekEntryResult!11377)

(assert (=> b!1434659 (and (bvsge (index!47901 lt!631535) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631535) (size!47627 a!2831)))))

(declare-fun res!968024 () Bool)

(assert (=> b!1434659 (= res!968024 (= (select (arr!47076 a!2831) (index!47901 lt!631535)) (select (arr!47076 a!2831) j!81)))))

(declare-fun e!809748 () Bool)

(assert (=> b!1434659 (=> res!968024 e!809748)))

(declare-fun e!809744 () Bool)

(assert (=> b!1434659 (= e!809744 e!809748)))

(declare-fun b!1434660 () Bool)

(declare-fun e!809747 () SeekEntryResult!11377)

(assert (=> b!1434660 (= e!809747 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47076 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47076 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434662 () Bool)

(assert (=> b!1434662 (and (bvsge (index!47901 lt!631535) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631535) (size!47627 a!2831)))))

(declare-fun res!968026 () Bool)

(assert (=> b!1434662 (= res!968026 (= (select (arr!47076 a!2831) (index!47901 lt!631535)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434662 (=> res!968026 e!809748)))

(declare-fun b!1434663 () Bool)

(declare-fun e!809745 () Bool)

(assert (=> b!1434663 (= e!809745 e!809744)))

(declare-fun res!968025 () Bool)

(assert (=> b!1434663 (= res!968025 (and (is-Intermediate!11377 lt!631535) (not (undefined!12189 lt!631535)) (bvslt (x!129552 lt!631535) #b01111111111111111111111111111110) (bvsge (x!129552 lt!631535) #b00000000000000000000000000000000) (bvsge (x!129552 lt!631535) #b00000000000000000000000000000000)))))

(assert (=> b!1434663 (=> (not res!968025) (not e!809744))))

(declare-fun b!1434664 () Bool)

(assert (=> b!1434664 (= e!809746 e!809747)))

(declare-fun c!132821 () Bool)

(declare-fun lt!631536 () (_ BitVec 64))

(assert (=> b!1434664 (= c!132821 (or (= lt!631536 (select (arr!47076 a!2831) j!81)) (= (bvadd lt!631536 lt!631536) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434665 () Bool)

(assert (=> b!1434665 (= e!809745 (bvsge (x!129552 lt!631535) #b01111111111111111111111111111110))))

(declare-fun b!1434666 () Bool)

(assert (=> b!1434666 (= e!809747 (Intermediate!11377 false (toIndex!0 (select (arr!47076 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434661 () Bool)

(assert (=> b!1434661 (and (bvsge (index!47901 lt!631535) #b00000000000000000000000000000000) (bvslt (index!47901 lt!631535) (size!47627 a!2831)))))

(assert (=> b!1434661 (= e!809748 (= (select (arr!47076 a!2831) (index!47901 lt!631535)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154213 () Bool)

(assert (=> d!154213 e!809745))

(declare-fun c!132822 () Bool)

(assert (=> d!154213 (= c!132822 (and (is-Intermediate!11377 lt!631535) (undefined!12189 lt!631535)))))

(assert (=> d!154213 (= lt!631535 e!809746)))

(declare-fun c!132823 () Bool)

(assert (=> d!154213 (= c!132823 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154213 (= lt!631536 (select (arr!47076 a!2831) (toIndex!0 (select (arr!47076 a!2831) j!81) mask!2608)))))

(assert (=> d!154213 (validMask!0 mask!2608)))

(assert (=> d!154213 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47076 a!2831) j!81) mask!2608) (select (arr!47076 a!2831) j!81) a!2831 mask!2608) lt!631535)))

(assert (= (and d!154213 c!132823) b!1434658))

(assert (= (and d!154213 (not c!132823)) b!1434664))

(assert (= (and b!1434664 c!132821) b!1434666))

(assert (= (and b!1434664 (not c!132821)) b!1434660))

(assert (= (and d!154213 c!132822) b!1434665))

(assert (= (and d!154213 (not c!132822)) b!1434663))

(assert (= (and b!1434663 res!968025) b!1434659))

(assert (= (and b!1434659 (not res!968024)) b!1434662))

(assert (= (and b!1434662 (not res!968026)) b!1434661))

(assert (=> b!1434660 m!1324037))

(declare-fun m!1324241 () Bool)

(assert (=> b!1434660 m!1324241))

(assert (=> b!1434660 m!1324241))

(assert (=> b!1434660 m!1324011))

(declare-fun m!1324243 () Bool)

(assert (=> b!1434660 m!1324243))

(declare-fun m!1324245 () Bool)

(assert (=> b!1434659 m!1324245))

(assert (=> b!1434662 m!1324245))

(assert (=> b!1434661 m!1324245))

(assert (=> d!154213 m!1324037))

(declare-fun m!1324247 () Bool)

(assert (=> d!154213 m!1324247))

(assert (=> d!154213 m!1324033))

(assert (=> b!1434341 d!154213))

(declare-fun d!154215 () Bool)

(declare-fun lt!631538 () (_ BitVec 32))

(declare-fun lt!631537 () (_ BitVec 32))

(assert (=> d!154215 (= lt!631538 (bvmul (bvxor lt!631537 (bvlshr lt!631537 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154215 (= lt!631537 ((_ extract 31 0) (bvand (bvxor (select (arr!47076 a!2831) j!81) (bvlshr (select (arr!47076 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154215 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967988 (let ((h!35094 ((_ extract 31 0) (bvand (bvxor (select (arr!47076 a!2831) j!81) (bvlshr (select (arr!47076 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129560 (bvmul (bvxor h!35094 (bvlshr h!35094 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129560 (bvlshr x!129560 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967988 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967988 #b00000000000000000000000000000000))))))

(assert (=> d!154215 (= (toIndex!0 (select (arr!47076 a!2831) j!81) mask!2608) (bvand (bvxor lt!631538 (bvlshr lt!631538 #b00000000000000000000000000001101)) mask!2608))))

