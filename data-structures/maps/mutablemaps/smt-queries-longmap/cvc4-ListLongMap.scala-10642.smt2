; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125036 () Bool)

(assert start!125036)

(declare-fun b!1453380 () Bool)

(declare-fun res!984512 () Bool)

(declare-fun e!818065 () Bool)

(assert (=> b!1453380 (=> (not res!984512) (not e!818065))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453380 (= res!984512 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453381 () Bool)

(declare-fun e!818067 () Bool)

(declare-fun e!818070 () Bool)

(assert (=> b!1453381 (= e!818067 e!818070)))

(declare-fun res!984496 () Bool)

(assert (=> b!1453381 (=> res!984496 e!818070)))

(declare-fun lt!637185 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98401 0))(
  ( (array!98402 (arr!47484 (Array (_ BitVec 32) (_ BitVec 64))) (size!48035 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98401)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1453381 (= res!984496 (or (and (= (select (arr!47484 a!2862) index!646) lt!637185) (= (select (arr!47484 a!2862) index!646) (select (arr!47484 a!2862) j!93))) (= (select (arr!47484 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453381 (= lt!637185 (select (store (arr!47484 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun lt!637184 () (_ BitVec 64))

(declare-fun e!818072 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637189 () array!98401)

(declare-fun b!1453382 () Bool)

(declare-datatypes ((SeekEntryResult!11759 0))(
  ( (MissingZero!11759 (index!49427 (_ BitVec 32))) (Found!11759 (index!49428 (_ BitVec 32))) (Intermediate!11759 (undefined!12571 Bool) (index!49429 (_ BitVec 32)) (x!131067 (_ BitVec 32))) (Undefined!11759) (MissingVacant!11759 (index!49430 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98401 (_ BitVec 32)) SeekEntryResult!11759)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98401 (_ BitVec 32)) SeekEntryResult!11759)

(assert (=> b!1453382 (= e!818072 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637184 lt!637189 mask!2687) (seekEntryOrOpen!0 lt!637184 lt!637189 mask!2687)))))

(declare-fun b!1453383 () Bool)

(declare-fun res!984504 () Bool)

(declare-fun e!818068 () Bool)

(assert (=> b!1453383 (=> (not res!984504) (not e!818068))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1453383 (= res!984504 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48035 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48035 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48035 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453384 () Bool)

(declare-fun res!984509 () Bool)

(assert (=> b!1453384 (=> (not res!984509) (not e!818067))))

(assert (=> b!1453384 (= res!984509 (or (= (select (arr!47484 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47484 a!2862) intermediateBeforeIndex!19) (select (arr!47484 a!2862) j!93))))))

(declare-fun b!1453385 () Bool)

(declare-fun e!818066 () Bool)

(assert (=> b!1453385 (= e!818066 (= (seekEntryOrOpen!0 lt!637184 lt!637189 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637184 lt!637189 mask!2687)))))

(declare-fun b!1453386 () Bool)

(declare-fun res!984499 () Bool)

(assert (=> b!1453386 (=> (not res!984499) (not e!818068))))

(assert (=> b!1453386 (= res!984499 (and (= (size!48035 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48035 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48035 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453387 () Bool)

(declare-fun e!818071 () Bool)

(assert (=> b!1453387 (= e!818071 e!818065)))

(declare-fun res!984502 () Bool)

(assert (=> b!1453387 (=> (not res!984502) (not e!818065))))

(declare-fun lt!637187 () SeekEntryResult!11759)

(assert (=> b!1453387 (= res!984502 (= lt!637187 (Intermediate!11759 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98401 (_ BitVec 32)) SeekEntryResult!11759)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453387 (= lt!637187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637184 mask!2687) lt!637184 lt!637189 mask!2687))))

(assert (=> b!1453387 (= lt!637184 (select (store (arr!47484 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453388 () Bool)

(assert (=> b!1453388 (= e!818065 (not (or (and (= (select (arr!47484 a!2862) index!646) (select (store (arr!47484 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47484 a!2862) index!646) (select (arr!47484 a!2862) j!93))) (= (select (arr!47484 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1453388 e!818067))

(declare-fun res!984503 () Bool)

(assert (=> b!1453388 (=> (not res!984503) (not e!818067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98401 (_ BitVec 32)) Bool)

(assert (=> b!1453388 (= res!984503 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48962 0))(
  ( (Unit!48963) )
))
(declare-fun lt!637186 () Unit!48962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48962)

(assert (=> b!1453388 (= lt!637186 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453389 () Bool)

(declare-fun res!984498 () Bool)

(assert (=> b!1453389 (=> (not res!984498) (not e!818068))))

(declare-datatypes ((List!34165 0))(
  ( (Nil!34162) (Cons!34161 (h!35511 (_ BitVec 64)) (t!48866 List!34165)) )
))
(declare-fun arrayNoDuplicates!0 (array!98401 (_ BitVec 32) List!34165) Bool)

(assert (=> b!1453389 (= res!984498 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34162))))

(declare-fun b!1453390 () Bool)

(declare-fun res!984497 () Bool)

(assert (=> b!1453390 (=> (not res!984497) (not e!818067))))

(assert (=> b!1453390 (= res!984497 (= (seekEntryOrOpen!0 (select (arr!47484 a!2862) j!93) a!2862 mask!2687) (Found!11759 j!93)))))

(declare-fun b!1453391 () Bool)

(declare-fun res!984501 () Bool)

(assert (=> b!1453391 (=> (not res!984501) (not e!818065))))

(assert (=> b!1453391 (= res!984501 e!818072)))

(declare-fun c!133955 () Bool)

(assert (=> b!1453391 (= c!133955 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453392 () Bool)

(declare-fun e!818064 () Bool)

(assert (=> b!1453392 (= e!818068 e!818064)))

(declare-fun res!984507 () Bool)

(assert (=> b!1453392 (=> (not res!984507) (not e!818064))))

(assert (=> b!1453392 (= res!984507 (= (select (store (arr!47484 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453392 (= lt!637189 (array!98402 (store (arr!47484 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48035 a!2862)))))

(declare-fun b!1453393 () Bool)

(declare-fun res!984500 () Bool)

(assert (=> b!1453393 (=> (not res!984500) (not e!818068))))

(assert (=> b!1453393 (= res!984500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453394 () Bool)

(declare-fun res!984513 () Bool)

(assert (=> b!1453394 (=> (not res!984513) (not e!818068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453394 (= res!984513 (validKeyInArray!0 (select (arr!47484 a!2862) i!1006)))))

(declare-fun b!1453395 () Bool)

(declare-fun res!984511 () Bool)

(assert (=> b!1453395 (=> (not res!984511) (not e!818068))))

(assert (=> b!1453395 (= res!984511 (validKeyInArray!0 (select (arr!47484 a!2862) j!93)))))

(declare-fun res!984508 () Bool)

(assert (=> start!125036 (=> (not res!984508) (not e!818068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125036 (= res!984508 (validMask!0 mask!2687))))

(assert (=> start!125036 e!818068))

(assert (=> start!125036 true))

(declare-fun array_inv!36429 (array!98401) Bool)

(assert (=> start!125036 (array_inv!36429 a!2862)))

(declare-fun b!1453396 () Bool)

(assert (=> b!1453396 (= e!818070 e!818066)))

(declare-fun res!984506 () Bool)

(assert (=> b!1453396 (=> (not res!984506) (not e!818066))))

(assert (=> b!1453396 (= res!984506 (and (= index!646 intermediateAfterIndex!19) (= lt!637185 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1453397 () Bool)

(assert (=> b!1453397 (= e!818072 (= lt!637187 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637184 lt!637189 mask!2687)))))

(declare-fun b!1453398 () Bool)

(declare-fun res!984505 () Bool)

(assert (=> b!1453398 (=> (not res!984505) (not e!818071))))

(declare-fun lt!637188 () SeekEntryResult!11759)

(assert (=> b!1453398 (= res!984505 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47484 a!2862) j!93) a!2862 mask!2687) lt!637188))))

(declare-fun b!1453399 () Bool)

(assert (=> b!1453399 (= e!818064 e!818071)))

(declare-fun res!984510 () Bool)

(assert (=> b!1453399 (=> (not res!984510) (not e!818071))))

(assert (=> b!1453399 (= res!984510 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47484 a!2862) j!93) mask!2687) (select (arr!47484 a!2862) j!93) a!2862 mask!2687) lt!637188))))

(assert (=> b!1453399 (= lt!637188 (Intermediate!11759 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125036 res!984508) b!1453386))

(assert (= (and b!1453386 res!984499) b!1453394))

(assert (= (and b!1453394 res!984513) b!1453395))

(assert (= (and b!1453395 res!984511) b!1453393))

(assert (= (and b!1453393 res!984500) b!1453389))

(assert (= (and b!1453389 res!984498) b!1453383))

(assert (= (and b!1453383 res!984504) b!1453392))

(assert (= (and b!1453392 res!984507) b!1453399))

(assert (= (and b!1453399 res!984510) b!1453398))

(assert (= (and b!1453398 res!984505) b!1453387))

(assert (= (and b!1453387 res!984502) b!1453391))

(assert (= (and b!1453391 c!133955) b!1453397))

(assert (= (and b!1453391 (not c!133955)) b!1453382))

(assert (= (and b!1453391 res!984501) b!1453380))

(assert (= (and b!1453380 res!984512) b!1453388))

(assert (= (and b!1453388 res!984503) b!1453390))

(assert (= (and b!1453390 res!984497) b!1453384))

(assert (= (and b!1453384 res!984509) b!1453381))

(assert (= (and b!1453381 (not res!984496)) b!1453396))

(assert (= (and b!1453396 res!984506) b!1453385))

(declare-fun m!1341913 () Bool)

(assert (=> b!1453392 m!1341913))

(declare-fun m!1341915 () Bool)

(assert (=> b!1453392 m!1341915))

(declare-fun m!1341917 () Bool)

(assert (=> b!1453393 m!1341917))

(declare-fun m!1341919 () Bool)

(assert (=> b!1453394 m!1341919))

(assert (=> b!1453394 m!1341919))

(declare-fun m!1341921 () Bool)

(assert (=> b!1453394 m!1341921))

(declare-fun m!1341923 () Bool)

(assert (=> b!1453385 m!1341923))

(declare-fun m!1341925 () Bool)

(assert (=> b!1453385 m!1341925))

(declare-fun m!1341927 () Bool)

(assert (=> b!1453388 m!1341927))

(assert (=> b!1453388 m!1341913))

(declare-fun m!1341929 () Bool)

(assert (=> b!1453388 m!1341929))

(declare-fun m!1341931 () Bool)

(assert (=> b!1453388 m!1341931))

(declare-fun m!1341933 () Bool)

(assert (=> b!1453388 m!1341933))

(declare-fun m!1341935 () Bool)

(assert (=> b!1453388 m!1341935))

(assert (=> b!1453382 m!1341925))

(assert (=> b!1453382 m!1341923))

(declare-fun m!1341937 () Bool)

(assert (=> b!1453397 m!1341937))

(assert (=> b!1453398 m!1341935))

(assert (=> b!1453398 m!1341935))

(declare-fun m!1341939 () Bool)

(assert (=> b!1453398 m!1341939))

(assert (=> b!1453381 m!1341931))

(assert (=> b!1453381 m!1341935))

(assert (=> b!1453381 m!1341913))

(assert (=> b!1453381 m!1341929))

(declare-fun m!1341941 () Bool)

(assert (=> b!1453384 m!1341941))

(assert (=> b!1453384 m!1341935))

(declare-fun m!1341943 () Bool)

(assert (=> start!125036 m!1341943))

(declare-fun m!1341945 () Bool)

(assert (=> start!125036 m!1341945))

(assert (=> b!1453399 m!1341935))

(assert (=> b!1453399 m!1341935))

(declare-fun m!1341947 () Bool)

(assert (=> b!1453399 m!1341947))

(assert (=> b!1453399 m!1341947))

(assert (=> b!1453399 m!1341935))

(declare-fun m!1341949 () Bool)

(assert (=> b!1453399 m!1341949))

(declare-fun m!1341951 () Bool)

(assert (=> b!1453387 m!1341951))

(assert (=> b!1453387 m!1341951))

(declare-fun m!1341953 () Bool)

(assert (=> b!1453387 m!1341953))

(assert (=> b!1453387 m!1341913))

(declare-fun m!1341955 () Bool)

(assert (=> b!1453387 m!1341955))

(assert (=> b!1453390 m!1341935))

(assert (=> b!1453390 m!1341935))

(declare-fun m!1341957 () Bool)

(assert (=> b!1453390 m!1341957))

(declare-fun m!1341959 () Bool)

(assert (=> b!1453389 m!1341959))

(assert (=> b!1453395 m!1341935))

(assert (=> b!1453395 m!1341935))

(declare-fun m!1341961 () Bool)

(assert (=> b!1453395 m!1341961))

(push 1)

(assert (not b!1453394))

(assert (not b!1453387))

(assert (not b!1453388))

(assert (not b!1453390))

(assert (not b!1453385))

(assert (not b!1453395))

(assert (not b!1453382))

(assert (not start!125036))

(assert (not b!1453399))

(assert (not b!1453398))

(assert (not b!1453389))

(assert (not b!1453397))

(assert (not b!1453393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

