; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125072 () Bool)

(assert start!125072)

(declare-fun b!1454548 () Bool)

(declare-fun res!985468 () Bool)

(declare-fun e!818603 () Bool)

(assert (=> b!1454548 (=> (not res!985468) (not e!818603))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98437 0))(
  ( (array!98438 (arr!47502 (Array (_ BitVec 32) (_ BitVec 64))) (size!48053 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98437)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11777 0))(
  ( (MissingZero!11777 (index!49499 (_ BitVec 32))) (Found!11777 (index!49500 (_ BitVec 32))) (Intermediate!11777 (undefined!12589 Bool) (index!49501 (_ BitVec 32)) (x!131133 (_ BitVec 32))) (Undefined!11777) (MissingVacant!11777 (index!49502 (_ BitVec 32))) )
))
(declare-fun lt!637601 () SeekEntryResult!11777)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98437 (_ BitVec 32)) SeekEntryResult!11777)

(assert (=> b!1454548 (= res!985468 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47502 a!2862) j!93) a!2862 mask!2687) lt!637601))))

(declare-fun b!1454549 () Bool)

(declare-fun res!985484 () Bool)

(declare-fun e!818594 () Bool)

(assert (=> b!1454549 (=> (not res!985484) (not e!818594))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454549 (= res!985484 (validKeyInArray!0 (select (arr!47502 a!2862) i!1006)))))

(declare-fun b!1454550 () Bool)

(declare-fun res!985480 () Bool)

(declare-fun e!818599 () Bool)

(assert (=> b!1454550 (=> (not res!985480) (not e!818599))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1454550 (= res!985480 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454551 () Bool)

(declare-fun res!985469 () Bool)

(declare-fun e!818595 () Bool)

(assert (=> b!1454551 (=> (not res!985469) (not e!818595))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98437 (_ BitVec 32)) SeekEntryResult!11777)

(assert (=> b!1454551 (= res!985469 (= (seekEntryOrOpen!0 (select (arr!47502 a!2862) j!93) a!2862 mask!2687) (Found!11777 j!93)))))

(declare-fun lt!637603 () array!98437)

(declare-fun lt!637599 () SeekEntryResult!11777)

(declare-fun b!1454552 () Bool)

(declare-fun lt!637600 () (_ BitVec 64))

(declare-fun e!818597 () Bool)

(assert (=> b!1454552 (= e!818597 (= lt!637599 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637600 lt!637603 mask!2687)))))

(declare-fun b!1454553 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1454553 (= e!818595 (and (or (= (select (arr!47502 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47502 a!2862) intermediateBeforeIndex!19) (select (arr!47502 a!2862) j!93))) (let ((bdg!53077 (select (store (arr!47502 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47502 a!2862) index!646) bdg!53077) (= (select (arr!47502 a!2862) index!646) (select (arr!47502 a!2862) j!93))) (= (select (arr!47502 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53077 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454554 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98437 (_ BitVec 32)) SeekEntryResult!11777)

(assert (=> b!1454554 (= e!818597 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637600 lt!637603 mask!2687) (seekEntryOrOpen!0 lt!637600 lt!637603 mask!2687)))))

(declare-fun b!1454555 () Bool)

(declare-fun res!985481 () Bool)

(assert (=> b!1454555 (=> (not res!985481) (not e!818594))))

(declare-datatypes ((List!34183 0))(
  ( (Nil!34180) (Cons!34179 (h!35529 (_ BitVec 64)) (t!48884 List!34183)) )
))
(declare-fun arrayNoDuplicates!0 (array!98437 (_ BitVec 32) List!34183) Bool)

(assert (=> b!1454555 (= res!985481 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34180))))

(declare-fun lt!637598 () (_ BitVec 32))

(declare-fun e!818598 () Bool)

(declare-fun b!1454556 () Bool)

(declare-fun lt!637596 () SeekEntryResult!11777)

(assert (=> b!1454556 (= e!818598 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637598 intermediateAfterIndex!19 lt!637600 lt!637603 mask!2687) lt!637596)))))

(declare-fun b!1454557 () Bool)

(assert (=> b!1454557 (= e!818598 (not (= lt!637599 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637598 lt!637600 lt!637603 mask!2687))))))

(declare-fun b!1454558 () Bool)

(declare-fun e!818596 () Bool)

(assert (=> b!1454558 (= e!818599 (not e!818596))))

(declare-fun res!985475 () Bool)

(assert (=> b!1454558 (=> res!985475 e!818596)))

(assert (=> b!1454558 (= res!985475 (or (and (= (select (arr!47502 a!2862) index!646) (select (store (arr!47502 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47502 a!2862) index!646) (select (arr!47502 a!2862) j!93))) (= (select (arr!47502 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454558 e!818595))

(declare-fun res!985477 () Bool)

(assert (=> b!1454558 (=> (not res!985477) (not e!818595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98437 (_ BitVec 32)) Bool)

(assert (=> b!1454558 (= res!985477 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48998 0))(
  ( (Unit!48999) )
))
(declare-fun lt!637602 () Unit!48998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98437 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48998)

(assert (=> b!1454558 (= lt!637602 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454559 () Bool)

(declare-fun res!985485 () Bool)

(assert (=> b!1454559 (=> (not res!985485) (not e!818594))))

(assert (=> b!1454559 (= res!985485 (validKeyInArray!0 (select (arr!47502 a!2862) j!93)))))

(declare-fun b!1454560 () Bool)

(declare-fun res!985478 () Bool)

(assert (=> b!1454560 (=> (not res!985478) (not e!818594))))

(assert (=> b!1454560 (= res!985478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454561 () Bool)

(declare-fun e!818602 () Bool)

(assert (=> b!1454561 (= e!818602 e!818603)))

(declare-fun res!985471 () Bool)

(assert (=> b!1454561 (=> (not res!985471) (not e!818603))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454561 (= res!985471 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47502 a!2862) j!93) mask!2687) (select (arr!47502 a!2862) j!93) a!2862 mask!2687) lt!637601))))

(assert (=> b!1454561 (= lt!637601 (Intermediate!11777 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454562 () Bool)

(assert (=> b!1454562 (= e!818594 e!818602)))

(declare-fun res!985473 () Bool)

(assert (=> b!1454562 (=> (not res!985473) (not e!818602))))

(assert (=> b!1454562 (= res!985473 (= (select (store (arr!47502 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454562 (= lt!637603 (array!98438 (store (arr!47502 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48053 a!2862)))))

(declare-fun b!1454563 () Bool)

(declare-fun e!818601 () Bool)

(assert (=> b!1454563 (= e!818601 true)))

(declare-fun lt!637597 () Bool)

(assert (=> b!1454563 (= lt!637597 e!818598)))

(declare-fun c!134053 () Bool)

(assert (=> b!1454563 (= c!134053 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454564 () Bool)

(declare-fun res!985472 () Bool)

(assert (=> b!1454564 (=> (not res!985472) (not e!818599))))

(assert (=> b!1454564 (= res!985472 e!818597)))

(declare-fun c!134054 () Bool)

(assert (=> b!1454564 (= c!134054 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!985474 () Bool)

(assert (=> start!125072 (=> (not res!985474) (not e!818594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125072 (= res!985474 (validMask!0 mask!2687))))

(assert (=> start!125072 e!818594))

(assert (=> start!125072 true))

(declare-fun array_inv!36447 (array!98437) Bool)

(assert (=> start!125072 (array_inv!36447 a!2862)))

(declare-fun b!1454565 () Bool)

(declare-fun res!985483 () Bool)

(assert (=> b!1454565 (=> (not res!985483) (not e!818594))))

(assert (=> b!1454565 (= res!985483 (and (= (size!48053 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48053 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48053 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454566 () Bool)

(assert (=> b!1454566 (= e!818603 e!818599)))

(declare-fun res!985479 () Bool)

(assert (=> b!1454566 (=> (not res!985479) (not e!818599))))

(assert (=> b!1454566 (= res!985479 (= lt!637599 (Intermediate!11777 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454566 (= lt!637599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637600 mask!2687) lt!637600 lt!637603 mask!2687))))

(assert (=> b!1454566 (= lt!637600 (select (store (arr!47502 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454567 () Bool)

(assert (=> b!1454567 (= e!818596 e!818601)))

(declare-fun res!985470 () Bool)

(assert (=> b!1454567 (=> res!985470 e!818601)))

(assert (=> b!1454567 (= res!985470 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637598 #b00000000000000000000000000000000) (bvsge lt!637598 (size!48053 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454567 (= lt!637598 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454567 (= lt!637596 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637600 lt!637603 mask!2687))))

(assert (=> b!1454567 (= lt!637596 (seekEntryOrOpen!0 lt!637600 lt!637603 mask!2687))))

(declare-fun b!1454568 () Bool)

(declare-fun res!985482 () Bool)

(assert (=> b!1454568 (=> (not res!985482) (not e!818594))))

(assert (=> b!1454568 (= res!985482 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48053 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48053 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48053 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454569 () Bool)

(declare-fun res!985476 () Bool)

(assert (=> b!1454569 (=> res!985476 e!818601)))

(assert (=> b!1454569 (= res!985476 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637598 (select (arr!47502 a!2862) j!93) a!2862 mask!2687) lt!637601)))))

(assert (= (and start!125072 res!985474) b!1454565))

(assert (= (and b!1454565 res!985483) b!1454549))

(assert (= (and b!1454549 res!985484) b!1454559))

(assert (= (and b!1454559 res!985485) b!1454560))

(assert (= (and b!1454560 res!985478) b!1454555))

(assert (= (and b!1454555 res!985481) b!1454568))

(assert (= (and b!1454568 res!985482) b!1454562))

(assert (= (and b!1454562 res!985473) b!1454561))

(assert (= (and b!1454561 res!985471) b!1454548))

(assert (= (and b!1454548 res!985468) b!1454566))

(assert (= (and b!1454566 res!985479) b!1454564))

(assert (= (and b!1454564 c!134054) b!1454552))

(assert (= (and b!1454564 (not c!134054)) b!1454554))

(assert (= (and b!1454564 res!985472) b!1454550))

(assert (= (and b!1454550 res!985480) b!1454558))

(assert (= (and b!1454558 res!985477) b!1454551))

(assert (= (and b!1454551 res!985469) b!1454553))

(assert (= (and b!1454558 (not res!985475)) b!1454567))

(assert (= (and b!1454567 (not res!985470)) b!1454569))

(assert (= (and b!1454569 (not res!985476)) b!1454563))

(assert (= (and b!1454563 c!134053) b!1454557))

(assert (= (and b!1454563 (not c!134053)) b!1454556))

(declare-fun m!1342925 () Bool)

(assert (=> start!125072 m!1342925))

(declare-fun m!1342927 () Bool)

(assert (=> start!125072 m!1342927))

(declare-fun m!1342929 () Bool)

(assert (=> b!1454548 m!1342929))

(assert (=> b!1454548 m!1342929))

(declare-fun m!1342931 () Bool)

(assert (=> b!1454548 m!1342931))

(declare-fun m!1342933 () Bool)

(assert (=> b!1454556 m!1342933))

(declare-fun m!1342935 () Bool)

(assert (=> b!1454558 m!1342935))

(declare-fun m!1342937 () Bool)

(assert (=> b!1454558 m!1342937))

(declare-fun m!1342939 () Bool)

(assert (=> b!1454558 m!1342939))

(declare-fun m!1342941 () Bool)

(assert (=> b!1454558 m!1342941))

(declare-fun m!1342943 () Bool)

(assert (=> b!1454558 m!1342943))

(assert (=> b!1454558 m!1342929))

(assert (=> b!1454561 m!1342929))

(assert (=> b!1454561 m!1342929))

(declare-fun m!1342945 () Bool)

(assert (=> b!1454561 m!1342945))

(assert (=> b!1454561 m!1342945))

(assert (=> b!1454561 m!1342929))

(declare-fun m!1342947 () Bool)

(assert (=> b!1454561 m!1342947))

(declare-fun m!1342949 () Bool)

(assert (=> b!1454566 m!1342949))

(assert (=> b!1454566 m!1342949))

(declare-fun m!1342951 () Bool)

(assert (=> b!1454566 m!1342951))

(assert (=> b!1454566 m!1342937))

(declare-fun m!1342953 () Bool)

(assert (=> b!1454566 m!1342953))

(assert (=> b!1454551 m!1342929))

(assert (=> b!1454551 m!1342929))

(declare-fun m!1342955 () Bool)

(assert (=> b!1454551 m!1342955))

(assert (=> b!1454562 m!1342937))

(declare-fun m!1342957 () Bool)

(assert (=> b!1454562 m!1342957))

(declare-fun m!1342959 () Bool)

(assert (=> b!1454555 m!1342959))

(declare-fun m!1342961 () Bool)

(assert (=> b!1454549 m!1342961))

(assert (=> b!1454549 m!1342961))

(declare-fun m!1342963 () Bool)

(assert (=> b!1454549 m!1342963))

(declare-fun m!1342965 () Bool)

(assert (=> b!1454554 m!1342965))

(declare-fun m!1342967 () Bool)

(assert (=> b!1454554 m!1342967))

(declare-fun m!1342969 () Bool)

(assert (=> b!1454560 m!1342969))

(declare-fun m!1342971 () Bool)

(assert (=> b!1454552 m!1342971))

(declare-fun m!1342973 () Bool)

(assert (=> b!1454557 m!1342973))

(assert (=> b!1454559 m!1342929))

(assert (=> b!1454559 m!1342929))

(declare-fun m!1342975 () Bool)

(assert (=> b!1454559 m!1342975))

(assert (=> b!1454569 m!1342929))

(assert (=> b!1454569 m!1342929))

(declare-fun m!1342977 () Bool)

(assert (=> b!1454569 m!1342977))

(declare-fun m!1342979 () Bool)

(assert (=> b!1454567 m!1342979))

(assert (=> b!1454567 m!1342965))

(assert (=> b!1454567 m!1342967))

(assert (=> b!1454553 m!1342937))

(declare-fun m!1342981 () Bool)

(assert (=> b!1454553 m!1342981))

(assert (=> b!1454553 m!1342939))

(assert (=> b!1454553 m!1342941))

(assert (=> b!1454553 m!1342929))

(push 1)

