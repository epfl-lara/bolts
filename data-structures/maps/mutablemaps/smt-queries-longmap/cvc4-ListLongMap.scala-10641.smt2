; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125030 () Bool)

(assert start!125030)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98395 0))(
  ( (array!98396 (arr!47481 (Array (_ BitVec 32) (_ BitVec 64))) (size!48032 (_ BitVec 32))) )
))
(declare-fun lt!637132 () array!98395)

(declare-fun lt!637131 () (_ BitVec 64))

(declare-fun b!1453201 () Bool)

(declare-fun e!817988 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11756 0))(
  ( (MissingZero!11756 (index!49415 (_ BitVec 32))) (Found!11756 (index!49416 (_ BitVec 32))) (Intermediate!11756 (undefined!12568 Bool) (index!49417 (_ BitVec 32)) (x!131056 (_ BitVec 32))) (Undefined!11756) (MissingVacant!11756 (index!49418 (_ BitVec 32))) )
))
(declare-fun lt!637135 () SeekEntryResult!11756)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98395 (_ BitVec 32)) SeekEntryResult!11756)

(assert (=> b!1453201 (= e!817988 (= lt!637135 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637131 lt!637132 mask!2687)))))

(declare-fun b!1453202 () Bool)

(declare-fun res!984340 () Bool)

(declare-fun e!817984 () Bool)

(assert (=> b!1453202 (=> (not res!984340) (not e!817984))))

(declare-fun a!2862 () array!98395)

(declare-datatypes ((List!34162 0))(
  ( (Nil!34159) (Cons!34158 (h!35508 (_ BitVec 64)) (t!48863 List!34162)) )
))
(declare-fun arrayNoDuplicates!0 (array!98395 (_ BitVec 32) List!34162) Bool)

(assert (=> b!1453202 (= res!984340 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34159))))

(declare-fun b!1453203 () Bool)

(declare-fun res!984350 () Bool)

(declare-fun e!817989 () Bool)

(assert (=> b!1453203 (=> (not res!984350) (not e!817989))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1453203 (= res!984350 (or (= (select (arr!47481 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47481 a!2862) intermediateBeforeIndex!19) (select (arr!47481 a!2862) j!93))))))

(declare-fun b!1453204 () Bool)

(declare-fun res!984344 () Bool)

(assert (=> b!1453204 (=> (not res!984344) (not e!817984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453204 (= res!984344 (validKeyInArray!0 (select (arr!47481 a!2862) j!93)))))

(declare-fun b!1453205 () Bool)

(declare-fun res!984337 () Bool)

(declare-fun e!817990 () Bool)

(assert (=> b!1453205 (=> (not res!984337) (not e!817990))))

(assert (=> b!1453205 (= res!984337 e!817988)))

(declare-fun c!133946 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453205 (= c!133946 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453206 () Bool)

(declare-fun e!817983 () Bool)

(assert (=> b!1453206 (= e!817989 e!817983)))

(declare-fun res!984349 () Bool)

(assert (=> b!1453206 (=> res!984349 e!817983)))

(declare-fun lt!637133 () (_ BitVec 64))

(assert (=> b!1453206 (= res!984349 (or (and (= (select (arr!47481 a!2862) index!646) lt!637133) (= (select (arr!47481 a!2862) index!646) (select (arr!47481 a!2862) j!93))) (= (select (arr!47481 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453206 (= lt!637133 (select (store (arr!47481 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453207 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98395 (_ BitVec 32)) SeekEntryResult!11756)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98395 (_ BitVec 32)) SeekEntryResult!11756)

(assert (=> b!1453207 (= e!817988 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637131 lt!637132 mask!2687) (seekEntryOrOpen!0 lt!637131 lt!637132 mask!2687)))))

(declare-fun b!1453208 () Bool)

(declare-fun res!984351 () Bool)

(assert (=> b!1453208 (=> (not res!984351) (not e!817984))))

(assert (=> b!1453208 (= res!984351 (validKeyInArray!0 (select (arr!47481 a!2862) i!1006)))))

(declare-fun b!1453209 () Bool)

(declare-fun e!817986 () Bool)

(assert (=> b!1453209 (= e!817984 e!817986)))

(declare-fun res!984338 () Bool)

(assert (=> b!1453209 (=> (not res!984338) (not e!817986))))

(assert (=> b!1453209 (= res!984338 (= (select (store (arr!47481 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453209 (= lt!637132 (array!98396 (store (arr!47481 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48032 a!2862)))))

(declare-fun b!1453200 () Bool)

(declare-fun e!817987 () Bool)

(assert (=> b!1453200 (= e!817987 e!817990)))

(declare-fun res!984342 () Bool)

(assert (=> b!1453200 (=> (not res!984342) (not e!817990))))

(assert (=> b!1453200 (= res!984342 (= lt!637135 (Intermediate!11756 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453200 (= lt!637135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637131 mask!2687) lt!637131 lt!637132 mask!2687))))

(assert (=> b!1453200 (= lt!637131 (select (store (arr!47481 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!984334 () Bool)

(assert (=> start!125030 (=> (not res!984334) (not e!817984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125030 (= res!984334 (validMask!0 mask!2687))))

(assert (=> start!125030 e!817984))

(assert (=> start!125030 true))

(declare-fun array_inv!36426 (array!98395) Bool)

(assert (=> start!125030 (array_inv!36426 a!2862)))

(declare-fun b!1453210 () Bool)

(declare-fun e!817991 () Bool)

(assert (=> b!1453210 (= e!817983 e!817991)))

(declare-fun res!984348 () Bool)

(assert (=> b!1453210 (=> (not res!984348) (not e!817991))))

(assert (=> b!1453210 (= res!984348 (and (= index!646 intermediateAfterIndex!19) (= lt!637133 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1453211 () Bool)

(declare-fun res!984335 () Bool)

(assert (=> b!1453211 (=> (not res!984335) (not e!817990))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1453211 (= res!984335 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453212 () Bool)

(declare-fun res!984343 () Bool)

(assert (=> b!1453212 (=> (not res!984343) (not e!817987))))

(declare-fun lt!637134 () SeekEntryResult!11756)

(assert (=> b!1453212 (= res!984343 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47481 a!2862) j!93) a!2862 mask!2687) lt!637134))))

(declare-fun b!1453213 () Bool)

(assert (=> b!1453213 (= e!817986 e!817987)))

(declare-fun res!984346 () Bool)

(assert (=> b!1453213 (=> (not res!984346) (not e!817987))))

(assert (=> b!1453213 (= res!984346 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47481 a!2862) j!93) mask!2687) (select (arr!47481 a!2862) j!93) a!2862 mask!2687) lt!637134))))

(assert (=> b!1453213 (= lt!637134 (Intermediate!11756 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453214 () Bool)

(declare-fun res!984345 () Bool)

(assert (=> b!1453214 (=> (not res!984345) (not e!817984))))

(assert (=> b!1453214 (= res!984345 (and (= (size!48032 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48032 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48032 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453215 () Bool)

(assert (=> b!1453215 (= e!817991 (= (seekEntryOrOpen!0 lt!637131 lt!637132 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637131 lt!637132 mask!2687)))))

(declare-fun b!1453216 () Bool)

(declare-fun res!984347 () Bool)

(assert (=> b!1453216 (=> (not res!984347) (not e!817984))))

(assert (=> b!1453216 (= res!984347 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48032 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48032 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48032 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453217 () Bool)

(assert (=> b!1453217 (= e!817990 (not (or (and (= (select (arr!47481 a!2862) index!646) (select (store (arr!47481 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47481 a!2862) index!646) (select (arr!47481 a!2862) j!93))) (= (select (arr!47481 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1453217 e!817989))

(declare-fun res!984341 () Bool)

(assert (=> b!1453217 (=> (not res!984341) (not e!817989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98395 (_ BitVec 32)) Bool)

(assert (=> b!1453217 (= res!984341 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48956 0))(
  ( (Unit!48957) )
))
(declare-fun lt!637130 () Unit!48956)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48956)

(assert (=> b!1453217 (= lt!637130 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453218 () Bool)

(declare-fun res!984336 () Bool)

(assert (=> b!1453218 (=> (not res!984336) (not e!817989))))

(assert (=> b!1453218 (= res!984336 (= (seekEntryOrOpen!0 (select (arr!47481 a!2862) j!93) a!2862 mask!2687) (Found!11756 j!93)))))

(declare-fun b!1453219 () Bool)

(declare-fun res!984339 () Bool)

(assert (=> b!1453219 (=> (not res!984339) (not e!817984))))

(assert (=> b!1453219 (= res!984339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125030 res!984334) b!1453214))

(assert (= (and b!1453214 res!984345) b!1453208))

(assert (= (and b!1453208 res!984351) b!1453204))

(assert (= (and b!1453204 res!984344) b!1453219))

(assert (= (and b!1453219 res!984339) b!1453202))

(assert (= (and b!1453202 res!984340) b!1453216))

(assert (= (and b!1453216 res!984347) b!1453209))

(assert (= (and b!1453209 res!984338) b!1453213))

(assert (= (and b!1453213 res!984346) b!1453212))

(assert (= (and b!1453212 res!984343) b!1453200))

(assert (= (and b!1453200 res!984342) b!1453205))

(assert (= (and b!1453205 c!133946) b!1453201))

(assert (= (and b!1453205 (not c!133946)) b!1453207))

(assert (= (and b!1453205 res!984337) b!1453211))

(assert (= (and b!1453211 res!984335) b!1453217))

(assert (= (and b!1453217 res!984341) b!1453218))

(assert (= (and b!1453218 res!984336) b!1453203))

(assert (= (and b!1453203 res!984350) b!1453206))

(assert (= (and b!1453206 (not res!984349)) b!1453210))

(assert (= (and b!1453210 res!984348) b!1453215))

(declare-fun m!1341763 () Bool)

(assert (=> b!1453201 m!1341763))

(declare-fun m!1341765 () Bool)

(assert (=> b!1453215 m!1341765))

(declare-fun m!1341767 () Bool)

(assert (=> b!1453215 m!1341767))

(declare-fun m!1341769 () Bool)

(assert (=> b!1453209 m!1341769))

(declare-fun m!1341771 () Bool)

(assert (=> b!1453209 m!1341771))

(declare-fun m!1341773 () Bool)

(assert (=> b!1453206 m!1341773))

(declare-fun m!1341775 () Bool)

(assert (=> b!1453206 m!1341775))

(assert (=> b!1453206 m!1341769))

(declare-fun m!1341777 () Bool)

(assert (=> b!1453206 m!1341777))

(assert (=> b!1453207 m!1341767))

(assert (=> b!1453207 m!1341765))

(declare-fun m!1341779 () Bool)

(assert (=> start!125030 m!1341779))

(declare-fun m!1341781 () Bool)

(assert (=> start!125030 m!1341781))

(declare-fun m!1341783 () Bool)

(assert (=> b!1453203 m!1341783))

(assert (=> b!1453203 m!1341775))

(assert (=> b!1453213 m!1341775))

(assert (=> b!1453213 m!1341775))

(declare-fun m!1341785 () Bool)

(assert (=> b!1453213 m!1341785))

(assert (=> b!1453213 m!1341785))

(assert (=> b!1453213 m!1341775))

(declare-fun m!1341787 () Bool)

(assert (=> b!1453213 m!1341787))

(declare-fun m!1341789 () Bool)

(assert (=> b!1453219 m!1341789))

(declare-fun m!1341791 () Bool)

(assert (=> b!1453217 m!1341791))

(assert (=> b!1453217 m!1341769))

(assert (=> b!1453217 m!1341777))

(assert (=> b!1453217 m!1341773))

(declare-fun m!1341793 () Bool)

(assert (=> b!1453217 m!1341793))

(assert (=> b!1453217 m!1341775))

(assert (=> b!1453218 m!1341775))

(assert (=> b!1453218 m!1341775))

(declare-fun m!1341795 () Bool)

(assert (=> b!1453218 m!1341795))

(declare-fun m!1341797 () Bool)

(assert (=> b!1453202 m!1341797))

(assert (=> b!1453212 m!1341775))

(assert (=> b!1453212 m!1341775))

(declare-fun m!1341799 () Bool)

(assert (=> b!1453212 m!1341799))

(assert (=> b!1453204 m!1341775))

(assert (=> b!1453204 m!1341775))

(declare-fun m!1341801 () Bool)

(assert (=> b!1453204 m!1341801))

(declare-fun m!1341803 () Bool)

(assert (=> b!1453200 m!1341803))

(assert (=> b!1453200 m!1341803))

(declare-fun m!1341805 () Bool)

(assert (=> b!1453200 m!1341805))

(assert (=> b!1453200 m!1341769))

(declare-fun m!1341807 () Bool)

(assert (=> b!1453200 m!1341807))

(declare-fun m!1341809 () Bool)

(assert (=> b!1453208 m!1341809))

(assert (=> b!1453208 m!1341809))

(declare-fun m!1341811 () Bool)

(assert (=> b!1453208 m!1341811))

(push 1)

(assert (not b!1453208))

(assert (not b!1453202))

