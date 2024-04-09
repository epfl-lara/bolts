; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126538 () Bool)

(assert start!126538)

(declare-datatypes ((SeekEntryResult!12243 0))(
  ( (MissingZero!12243 (index!51363 (_ BitVec 32))) (Found!12243 (index!51364 (_ BitVec 32))) (Intermediate!12243 (undefined!13055 Bool) (index!51365 (_ BitVec 32)) (x!132954 (_ BitVec 32))) (Undefined!12243) (MissingVacant!12243 (index!51366 (_ BitVec 32))) )
))
(declare-fun lt!647357 () SeekEntryResult!12243)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99417 0))(
  ( (array!99418 (arr!47980 (Array (_ BitVec 32) (_ BitVec 64))) (size!48531 (_ BitVec 32))) )
))
(declare-fun lt!647356 () array!99417)

(declare-fun lt!647361 () (_ BitVec 64))

(declare-fun b!1483328 () Bool)

(declare-fun e!831777 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99417 (_ BitVec 32)) SeekEntryResult!12243)

(assert (=> b!1483328 (= e!831777 (= lt!647357 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647361 lt!647356 mask!2687)))))

(declare-fun b!1483329 () Bool)

(declare-fun res!1008324 () Bool)

(declare-fun e!831771 () Bool)

(assert (=> b!1483329 (=> (not res!1008324) (not e!831771))))

(assert (=> b!1483329 (= res!1008324 e!831777)))

(declare-fun c!137033 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483329 (= c!137033 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483330 () Bool)

(declare-fun res!1008314 () Bool)

(declare-fun e!831775 () Bool)

(assert (=> b!1483330 (=> (not res!1008314) (not e!831775))))

(declare-fun a!2862 () array!99417)

(declare-datatypes ((List!34661 0))(
  ( (Nil!34658) (Cons!34657 (h!36031 (_ BitVec 64)) (t!49362 List!34661)) )
))
(declare-fun arrayNoDuplicates!0 (array!99417 (_ BitVec 32) List!34661) Bool)

(assert (=> b!1483330 (= res!1008314 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34658))))

(declare-fun e!831774 () Bool)

(declare-fun b!1483331 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99417 (_ BitVec 32)) SeekEntryResult!12243)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99417 (_ BitVec 32)) SeekEntryResult!12243)

(assert (=> b!1483331 (= e!831774 (= (seekEntryOrOpen!0 lt!647361 lt!647356 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647361 lt!647356 mask!2687)))))

(declare-fun b!1483332 () Bool)

(declare-fun e!831772 () Bool)

(assert (=> b!1483332 (= e!831771 (not e!831772))))

(declare-fun res!1008326 () Bool)

(assert (=> b!1483332 (=> res!1008326 e!831772)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1483332 (= res!1008326 (or (and (= (select (arr!47980 a!2862) index!646) (select (store (arr!47980 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47980 a!2862) index!646) (select (arr!47980 a!2862) j!93))) (= (select (arr!47980 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!831776 () Bool)

(assert (=> b!1483332 e!831776))

(declare-fun res!1008330 () Bool)

(assert (=> b!1483332 (=> (not res!1008330) (not e!831776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99417 (_ BitVec 32)) Bool)

(assert (=> b!1483332 (= res!1008330 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49774 0))(
  ( (Unit!49775) )
))
(declare-fun lt!647358 () Unit!49774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99417 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49774)

(assert (=> b!1483332 (= lt!647358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483333 () Bool)

(declare-fun e!831779 () Bool)

(assert (=> b!1483333 (= e!831779 e!831774)))

(declare-fun res!1008315 () Bool)

(assert (=> b!1483333 (=> (not res!1008315) (not e!831774))))

(declare-fun lt!647360 () (_ BitVec 64))

(assert (=> b!1483333 (= res!1008315 (and (= index!646 intermediateAfterIndex!19) (= lt!647360 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483334 () Bool)

(declare-fun res!1008327 () Bool)

(assert (=> b!1483334 (=> (not res!1008327) (not e!831771))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483334 (= res!1008327 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483335 () Bool)

(declare-fun res!1008318 () Bool)

(assert (=> b!1483335 (=> (not res!1008318) (not e!831775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483335 (= res!1008318 (validKeyInArray!0 (select (arr!47980 a!2862) j!93)))))

(declare-fun b!1483337 () Bool)

(assert (=> b!1483337 (= e!831777 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647361 lt!647356 mask!2687) (seekEntryOrOpen!0 lt!647361 lt!647356 mask!2687)))))

(declare-fun b!1483338 () Bool)

(assert (=> b!1483338 (= e!831772 true)))

(declare-fun lt!647359 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483338 (= lt!647359 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483339 () Bool)

(declare-fun res!1008320 () Bool)

(assert (=> b!1483339 (=> (not res!1008320) (not e!831775))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1483339 (= res!1008320 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48531 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48531 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48531 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483340 () Bool)

(declare-fun res!1008319 () Bool)

(assert (=> b!1483340 (=> (not res!1008319) (not e!831776))))

(assert (=> b!1483340 (= res!1008319 (= (seekEntryOrOpen!0 (select (arr!47980 a!2862) j!93) a!2862 mask!2687) (Found!12243 j!93)))))

(declare-fun b!1483341 () Bool)

(assert (=> b!1483341 (= e!831776 e!831779)))

(declare-fun res!1008329 () Bool)

(assert (=> b!1483341 (=> res!1008329 e!831779)))

(assert (=> b!1483341 (= res!1008329 (or (and (= (select (arr!47980 a!2862) index!646) lt!647360) (= (select (arr!47980 a!2862) index!646) (select (arr!47980 a!2862) j!93))) (= (select (arr!47980 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483341 (= lt!647360 (select (store (arr!47980 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483342 () Bool)

(declare-fun res!1008313 () Bool)

(assert (=> b!1483342 (=> (not res!1008313) (not e!831775))))

(assert (=> b!1483342 (= res!1008313 (and (= (size!48531 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48531 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48531 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483343 () Bool)

(declare-fun e!831770 () Bool)

(assert (=> b!1483343 (= e!831775 e!831770)))

(declare-fun res!1008325 () Bool)

(assert (=> b!1483343 (=> (not res!1008325) (not e!831770))))

(assert (=> b!1483343 (= res!1008325 (= (select (store (arr!47980 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483343 (= lt!647356 (array!99418 (store (arr!47980 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48531 a!2862)))))

(declare-fun res!1008322 () Bool)

(assert (=> start!126538 (=> (not res!1008322) (not e!831775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126538 (= res!1008322 (validMask!0 mask!2687))))

(assert (=> start!126538 e!831775))

(assert (=> start!126538 true))

(declare-fun array_inv!36925 (array!99417) Bool)

(assert (=> start!126538 (array_inv!36925 a!2862)))

(declare-fun b!1483336 () Bool)

(declare-fun res!1008316 () Bool)

(declare-fun e!831778 () Bool)

(assert (=> b!1483336 (=> (not res!1008316) (not e!831778))))

(declare-fun lt!647362 () SeekEntryResult!12243)

(assert (=> b!1483336 (= res!1008316 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47980 a!2862) j!93) a!2862 mask!2687) lt!647362))))

(declare-fun b!1483344 () Bool)

(declare-fun res!1008323 () Bool)

(assert (=> b!1483344 (=> (not res!1008323) (not e!831775))))

(assert (=> b!1483344 (= res!1008323 (validKeyInArray!0 (select (arr!47980 a!2862) i!1006)))))

(declare-fun b!1483345 () Bool)

(declare-fun res!1008312 () Bool)

(assert (=> b!1483345 (=> (not res!1008312) (not e!831775))))

(assert (=> b!1483345 (= res!1008312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483346 () Bool)

(assert (=> b!1483346 (= e!831778 e!831771)))

(declare-fun res!1008317 () Bool)

(assert (=> b!1483346 (=> (not res!1008317) (not e!831771))))

(assert (=> b!1483346 (= res!1008317 (= lt!647357 (Intermediate!12243 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483346 (= lt!647357 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647361 mask!2687) lt!647361 lt!647356 mask!2687))))

(assert (=> b!1483346 (= lt!647361 (select (store (arr!47980 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483347 () Bool)

(declare-fun res!1008328 () Bool)

(assert (=> b!1483347 (=> (not res!1008328) (not e!831776))))

(assert (=> b!1483347 (= res!1008328 (or (= (select (arr!47980 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47980 a!2862) intermediateBeforeIndex!19) (select (arr!47980 a!2862) j!93))))))

(declare-fun b!1483348 () Bool)

(assert (=> b!1483348 (= e!831770 e!831778)))

(declare-fun res!1008321 () Bool)

(assert (=> b!1483348 (=> (not res!1008321) (not e!831778))))

(assert (=> b!1483348 (= res!1008321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47980 a!2862) j!93) mask!2687) (select (arr!47980 a!2862) j!93) a!2862 mask!2687) lt!647362))))

(assert (=> b!1483348 (= lt!647362 (Intermediate!12243 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126538 res!1008322) b!1483342))

(assert (= (and b!1483342 res!1008313) b!1483344))

(assert (= (and b!1483344 res!1008323) b!1483335))

(assert (= (and b!1483335 res!1008318) b!1483345))

(assert (= (and b!1483345 res!1008312) b!1483330))

(assert (= (and b!1483330 res!1008314) b!1483339))

(assert (= (and b!1483339 res!1008320) b!1483343))

(assert (= (and b!1483343 res!1008325) b!1483348))

(assert (= (and b!1483348 res!1008321) b!1483336))

(assert (= (and b!1483336 res!1008316) b!1483346))

(assert (= (and b!1483346 res!1008317) b!1483329))

(assert (= (and b!1483329 c!137033) b!1483328))

(assert (= (and b!1483329 (not c!137033)) b!1483337))

(assert (= (and b!1483329 res!1008324) b!1483334))

(assert (= (and b!1483334 res!1008327) b!1483332))

(assert (= (and b!1483332 res!1008330) b!1483340))

(assert (= (and b!1483340 res!1008319) b!1483347))

(assert (= (and b!1483347 res!1008328) b!1483341))

(assert (= (and b!1483341 (not res!1008329)) b!1483333))

(assert (= (and b!1483333 res!1008315) b!1483331))

(assert (= (and b!1483332 (not res!1008326)) b!1483338))

(declare-fun m!1368873 () Bool)

(assert (=> b!1483343 m!1368873))

(declare-fun m!1368875 () Bool)

(assert (=> b!1483343 m!1368875))

(declare-fun m!1368877 () Bool)

(assert (=> b!1483328 m!1368877))

(declare-fun m!1368879 () Bool)

(assert (=> b!1483331 m!1368879))

(declare-fun m!1368881 () Bool)

(assert (=> b!1483331 m!1368881))

(declare-fun m!1368883 () Bool)

(assert (=> b!1483344 m!1368883))

(assert (=> b!1483344 m!1368883))

(declare-fun m!1368885 () Bool)

(assert (=> b!1483344 m!1368885))

(declare-fun m!1368887 () Bool)

(assert (=> start!126538 m!1368887))

(declare-fun m!1368889 () Bool)

(assert (=> start!126538 m!1368889))

(declare-fun m!1368891 () Bool)

(assert (=> b!1483335 m!1368891))

(assert (=> b!1483335 m!1368891))

(declare-fun m!1368893 () Bool)

(assert (=> b!1483335 m!1368893))

(declare-fun m!1368895 () Bool)

(assert (=> b!1483338 m!1368895))

(declare-fun m!1368897 () Bool)

(assert (=> b!1483332 m!1368897))

(assert (=> b!1483332 m!1368873))

(declare-fun m!1368899 () Bool)

(assert (=> b!1483332 m!1368899))

(declare-fun m!1368901 () Bool)

(assert (=> b!1483332 m!1368901))

(declare-fun m!1368903 () Bool)

(assert (=> b!1483332 m!1368903))

(assert (=> b!1483332 m!1368891))

(declare-fun m!1368905 () Bool)

(assert (=> b!1483346 m!1368905))

(assert (=> b!1483346 m!1368905))

(declare-fun m!1368907 () Bool)

(assert (=> b!1483346 m!1368907))

(assert (=> b!1483346 m!1368873))

(declare-fun m!1368909 () Bool)

(assert (=> b!1483346 m!1368909))

(assert (=> b!1483348 m!1368891))

(assert (=> b!1483348 m!1368891))

(declare-fun m!1368911 () Bool)

(assert (=> b!1483348 m!1368911))

(assert (=> b!1483348 m!1368911))

(assert (=> b!1483348 m!1368891))

(declare-fun m!1368913 () Bool)

(assert (=> b!1483348 m!1368913))

(declare-fun m!1368915 () Bool)

(assert (=> b!1483345 m!1368915))

(assert (=> b!1483337 m!1368881))

(assert (=> b!1483337 m!1368879))

(assert (=> b!1483336 m!1368891))

(assert (=> b!1483336 m!1368891))

(declare-fun m!1368917 () Bool)

(assert (=> b!1483336 m!1368917))

(declare-fun m!1368919 () Bool)

(assert (=> b!1483330 m!1368919))

(declare-fun m!1368921 () Bool)

(assert (=> b!1483347 m!1368921))

(assert (=> b!1483347 m!1368891))

(assert (=> b!1483341 m!1368901))

(assert (=> b!1483341 m!1368891))

(assert (=> b!1483341 m!1368873))

(assert (=> b!1483341 m!1368899))

(assert (=> b!1483340 m!1368891))

(assert (=> b!1483340 m!1368891))

(declare-fun m!1368923 () Bool)

(assert (=> b!1483340 m!1368923))

(push 1)

