; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125140 () Bool)

(assert start!125140)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1456792 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!819619 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98505 0))(
  ( (array!98506 (arr!47536 (Array (_ BitVec 32) (_ BitVec 64))) (size!48087 (_ BitVec 32))) )
))
(declare-fun lt!638416 () array!98505)

(declare-fun lt!638419 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11811 0))(
  ( (MissingZero!11811 (index!49635 (_ BitVec 32))) (Found!11811 (index!49636 (_ BitVec 32))) (Intermediate!11811 (undefined!12623 Bool) (index!49637 (_ BitVec 32)) (x!131263 (_ BitVec 32))) (Undefined!11811) (MissingVacant!11811 (index!49638 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98505 (_ BitVec 32)) SeekEntryResult!11811)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98505 (_ BitVec 32)) SeekEntryResult!11811)

(assert (=> b!1456792 (= e!819619 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638419 lt!638416 mask!2687) (seekEntryOrOpen!0 lt!638419 lt!638416 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1456793 () Bool)

(declare-fun e!819622 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98505)

(assert (=> b!1456793 (= e!819622 (and (or (= (select (arr!47536 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47536 a!2862) intermediateBeforeIndex!19) (select (arr!47536 a!2862) j!93))) (let ((bdg!53287 (select (store (arr!47536 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47536 a!2862) index!646) bdg!53287) (= (select (arr!47536 a!2862) index!646) (select (arr!47536 a!2862) j!93))) (= (select (arr!47536 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53287 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456794 () Bool)

(declare-fun res!987305 () Bool)

(declare-fun e!819615 () Bool)

(assert (=> b!1456794 (=> (not res!987305) (not e!819615))))

(assert (=> b!1456794 (= res!987305 e!819619)))

(declare-fun c!134258 () Bool)

(assert (=> b!1456794 (= c!134258 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456795 () Bool)

(declare-fun e!819617 () Bool)

(assert (=> b!1456795 (= e!819617 e!819615)))

(declare-fun res!987320 () Bool)

(assert (=> b!1456795 (=> (not res!987320) (not e!819615))))

(declare-fun lt!638415 () SeekEntryResult!11811)

(assert (=> b!1456795 (= res!987320 (= lt!638415 (Intermediate!11811 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98505 (_ BitVec 32)) SeekEntryResult!11811)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456795 (= lt!638415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638419 mask!2687) lt!638419 lt!638416 mask!2687))))

(assert (=> b!1456795 (= lt!638419 (select (store (arr!47536 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456796 () Bool)

(declare-fun e!819623 () Bool)

(declare-fun e!819614 () Bool)

(assert (=> b!1456796 (= e!819623 e!819614)))

(declare-fun res!987317 () Bool)

(assert (=> b!1456796 (=> res!987317 e!819614)))

(declare-fun lt!638414 () (_ BitVec 32))

(assert (=> b!1456796 (= res!987317 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638414 #b00000000000000000000000000000000) (bvsge lt!638414 (size!48087 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456796 (= lt!638414 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638418 () SeekEntryResult!11811)

(assert (=> b!1456796 (= lt!638418 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638419 lt!638416 mask!2687))))

(assert (=> b!1456796 (= lt!638418 (seekEntryOrOpen!0 lt!638419 lt!638416 mask!2687))))

(declare-fun b!1456798 () Bool)

(assert (=> b!1456798 (= e!819619 (= lt!638415 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638419 lt!638416 mask!2687)))))

(declare-fun b!1456799 () Bool)

(declare-fun res!987307 () Bool)

(assert (=> b!1456799 (=> (not res!987307) (not e!819617))))

(declare-fun lt!638413 () SeekEntryResult!11811)

(assert (=> b!1456799 (= res!987307 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47536 a!2862) j!93) a!2862 mask!2687) lt!638413))))

(declare-fun b!1456800 () Bool)

(declare-fun res!987319 () Bool)

(assert (=> b!1456800 (=> res!987319 e!819614)))

(assert (=> b!1456800 (= res!987319 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638414 (select (arr!47536 a!2862) j!93) a!2862 mask!2687) lt!638413)))))

(declare-fun e!819618 () Bool)

(declare-fun b!1456801 () Bool)

(assert (=> b!1456801 (= e!819618 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638414 intermediateAfterIndex!19 lt!638419 lt!638416 mask!2687) lt!638418)))))

(declare-fun b!1456802 () Bool)

(declare-fun res!987309 () Bool)

(declare-fun e!819621 () Bool)

(assert (=> b!1456802 (=> (not res!987309) (not e!819621))))

(declare-datatypes ((List!34217 0))(
  ( (Nil!34214) (Cons!34213 (h!35563 (_ BitVec 64)) (t!48918 List!34217)) )
))
(declare-fun arrayNoDuplicates!0 (array!98505 (_ BitVec 32) List!34217) Bool)

(assert (=> b!1456802 (= res!987309 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34214))))

(declare-fun b!1456797 () Bool)

(declare-fun res!987312 () Bool)

(assert (=> b!1456797 (=> (not res!987312) (not e!819621))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1456797 (= res!987312 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48087 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48087 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48087 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!987318 () Bool)

(assert (=> start!125140 (=> (not res!987318) (not e!819621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125140 (= res!987318 (validMask!0 mask!2687))))

(assert (=> start!125140 e!819621))

(assert (=> start!125140 true))

(declare-fun array_inv!36481 (array!98505) Bool)

(assert (=> start!125140 (array_inv!36481 a!2862)))

(declare-fun b!1456803 () Bool)

(declare-fun res!987311 () Bool)

(assert (=> b!1456803 (=> (not res!987311) (not e!819621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98505 (_ BitVec 32)) Bool)

(assert (=> b!1456803 (= res!987311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456804 () Bool)

(assert (=> b!1456804 (= e!819618 (not (= lt!638415 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638414 lt!638419 lt!638416 mask!2687))))))

(declare-fun b!1456805 () Bool)

(declare-fun e!819616 () Bool)

(assert (=> b!1456805 (= e!819621 e!819616)))

(declare-fun res!987316 () Bool)

(assert (=> b!1456805 (=> (not res!987316) (not e!819616))))

(assert (=> b!1456805 (= res!987316 (= (select (store (arr!47536 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456805 (= lt!638416 (array!98506 (store (arr!47536 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48087 a!2862)))))

(declare-fun b!1456806 () Bool)

(declare-fun res!987304 () Bool)

(assert (=> b!1456806 (=> (not res!987304) (not e!819621))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456806 (= res!987304 (validKeyInArray!0 (select (arr!47536 a!2862) i!1006)))))

(declare-fun b!1456807 () Bool)

(assert (=> b!1456807 (= e!819614 true)))

(declare-fun lt!638412 () Bool)

(assert (=> b!1456807 (= lt!638412 e!819618)))

(declare-fun c!134257 () Bool)

(assert (=> b!1456807 (= c!134257 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456808 () Bool)

(assert (=> b!1456808 (= e!819615 (not e!819623))))

(declare-fun res!987321 () Bool)

(assert (=> b!1456808 (=> res!987321 e!819623)))

(assert (=> b!1456808 (= res!987321 (or (and (= (select (arr!47536 a!2862) index!646) (select (store (arr!47536 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47536 a!2862) index!646) (select (arr!47536 a!2862) j!93))) (= (select (arr!47536 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456808 e!819622))

(declare-fun res!987310 () Bool)

(assert (=> b!1456808 (=> (not res!987310) (not e!819622))))

(assert (=> b!1456808 (= res!987310 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49066 0))(
  ( (Unit!49067) )
))
(declare-fun lt!638417 () Unit!49066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98505 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49066)

(assert (=> b!1456808 (= lt!638417 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456809 () Bool)

(declare-fun res!987308 () Bool)

(assert (=> b!1456809 (=> (not res!987308) (not e!819615))))

(assert (=> b!1456809 (= res!987308 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456810 () Bool)

(assert (=> b!1456810 (= e!819616 e!819617)))

(declare-fun res!987314 () Bool)

(assert (=> b!1456810 (=> (not res!987314) (not e!819617))))

(assert (=> b!1456810 (= res!987314 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47536 a!2862) j!93) mask!2687) (select (arr!47536 a!2862) j!93) a!2862 mask!2687) lt!638413))))

(assert (=> b!1456810 (= lt!638413 (Intermediate!11811 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456811 () Bool)

(declare-fun res!987313 () Bool)

(assert (=> b!1456811 (=> (not res!987313) (not e!819622))))

(assert (=> b!1456811 (= res!987313 (= (seekEntryOrOpen!0 (select (arr!47536 a!2862) j!93) a!2862 mask!2687) (Found!11811 j!93)))))

(declare-fun b!1456812 () Bool)

(declare-fun res!987315 () Bool)

(assert (=> b!1456812 (=> (not res!987315) (not e!819621))))

(assert (=> b!1456812 (= res!987315 (validKeyInArray!0 (select (arr!47536 a!2862) j!93)))))

(declare-fun b!1456813 () Bool)

(declare-fun res!987306 () Bool)

(assert (=> b!1456813 (=> (not res!987306) (not e!819621))))

(assert (=> b!1456813 (= res!987306 (and (= (size!48087 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48087 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48087 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125140 res!987318) b!1456813))

(assert (= (and b!1456813 res!987306) b!1456806))

(assert (= (and b!1456806 res!987304) b!1456812))

(assert (= (and b!1456812 res!987315) b!1456803))

(assert (= (and b!1456803 res!987311) b!1456802))

(assert (= (and b!1456802 res!987309) b!1456797))

(assert (= (and b!1456797 res!987312) b!1456805))

(assert (= (and b!1456805 res!987316) b!1456810))

(assert (= (and b!1456810 res!987314) b!1456799))

(assert (= (and b!1456799 res!987307) b!1456795))

(assert (= (and b!1456795 res!987320) b!1456794))

(assert (= (and b!1456794 c!134258) b!1456798))

(assert (= (and b!1456794 (not c!134258)) b!1456792))

(assert (= (and b!1456794 res!987305) b!1456809))

(assert (= (and b!1456809 res!987308) b!1456808))

(assert (= (and b!1456808 res!987310) b!1456811))

(assert (= (and b!1456811 res!987313) b!1456793))

(assert (= (and b!1456808 (not res!987321)) b!1456796))

(assert (= (and b!1456796 (not res!987317)) b!1456800))

(assert (= (and b!1456800 (not res!987319)) b!1456807))

(assert (= (and b!1456807 c!134257) b!1456804))

(assert (= (and b!1456807 (not c!134257)) b!1456801))

(declare-fun m!1344897 () Bool)

(assert (=> b!1456792 m!1344897))

(declare-fun m!1344899 () Bool)

(assert (=> b!1456792 m!1344899))

(declare-fun m!1344901 () Bool)

(assert (=> b!1456812 m!1344901))

(assert (=> b!1456812 m!1344901))

(declare-fun m!1344903 () Bool)

(assert (=> b!1456812 m!1344903))

(declare-fun m!1344905 () Bool)

(assert (=> b!1456798 m!1344905))

(declare-fun m!1344907 () Bool)

(assert (=> b!1456795 m!1344907))

(assert (=> b!1456795 m!1344907))

(declare-fun m!1344909 () Bool)

(assert (=> b!1456795 m!1344909))

(declare-fun m!1344911 () Bool)

(assert (=> b!1456795 m!1344911))

(declare-fun m!1344913 () Bool)

(assert (=> b!1456795 m!1344913))

(declare-fun m!1344915 () Bool)

(assert (=> b!1456801 m!1344915))

(declare-fun m!1344917 () Bool)

(assert (=> b!1456796 m!1344917))

(assert (=> b!1456796 m!1344897))

(assert (=> b!1456796 m!1344899))

(declare-fun m!1344919 () Bool)

(assert (=> b!1456806 m!1344919))

(assert (=> b!1456806 m!1344919))

(declare-fun m!1344921 () Bool)

(assert (=> b!1456806 m!1344921))

(assert (=> b!1456810 m!1344901))

(assert (=> b!1456810 m!1344901))

(declare-fun m!1344923 () Bool)

(assert (=> b!1456810 m!1344923))

(assert (=> b!1456810 m!1344923))

(assert (=> b!1456810 m!1344901))

(declare-fun m!1344925 () Bool)

(assert (=> b!1456810 m!1344925))

(assert (=> b!1456811 m!1344901))

(assert (=> b!1456811 m!1344901))

(declare-fun m!1344927 () Bool)

(assert (=> b!1456811 m!1344927))

(declare-fun m!1344929 () Bool)

(assert (=> start!125140 m!1344929))

(declare-fun m!1344931 () Bool)

(assert (=> start!125140 m!1344931))

(assert (=> b!1456799 m!1344901))

(assert (=> b!1456799 m!1344901))

(declare-fun m!1344933 () Bool)

(assert (=> b!1456799 m!1344933))

(assert (=> b!1456805 m!1344911))

(declare-fun m!1344935 () Bool)

(assert (=> b!1456805 m!1344935))

(declare-fun m!1344937 () Bool)

(assert (=> b!1456804 m!1344937))

(declare-fun m!1344939 () Bool)

(assert (=> b!1456802 m!1344939))

(declare-fun m!1344941 () Bool)

(assert (=> b!1456803 m!1344941))

(assert (=> b!1456800 m!1344901))

(assert (=> b!1456800 m!1344901))

(declare-fun m!1344943 () Bool)

(assert (=> b!1456800 m!1344943))

(declare-fun m!1344945 () Bool)

(assert (=> b!1456808 m!1344945))

(assert (=> b!1456808 m!1344911))

(declare-fun m!1344947 () Bool)

(assert (=> b!1456808 m!1344947))

(declare-fun m!1344949 () Bool)

(assert (=> b!1456808 m!1344949))

(declare-fun m!1344951 () Bool)

(assert (=> b!1456808 m!1344951))

(assert (=> b!1456808 m!1344901))

(assert (=> b!1456793 m!1344911))

(declare-fun m!1344953 () Bool)

(assert (=> b!1456793 m!1344953))

(assert (=> b!1456793 m!1344947))

(assert (=> b!1456793 m!1344949))

(assert (=> b!1456793 m!1344901))

(push 1)

