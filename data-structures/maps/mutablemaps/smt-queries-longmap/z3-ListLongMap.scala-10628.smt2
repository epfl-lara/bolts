; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124950 () Bool)

(assert start!124950)

(declare-fun b!1451091 () Bool)

(declare-fun res!982479 () Bool)

(declare-fun e!817096 () Bool)

(assert (=> b!1451091 (=> (not res!982479) (not e!817096))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98315 0))(
  ( (array!98316 (arr!47441 (Array (_ BitVec 32) (_ BitVec 64))) (size!47992 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98315)

(assert (=> b!1451091 (= res!982479 (and (= (size!47992 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47992 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47992 a!2862)) (not (= i!1006 j!93))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!817094 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1451092 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1451092 (= e!817094 (and (or (= (select (arr!47441 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47441 a!2862) intermediateBeforeIndex!19) (select (arr!47441 a!2862) j!93))) (or (and (= (select (arr!47441 a!2862) index!646) (select (store (arr!47441 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47441 a!2862) index!646) (select (arr!47441 a!2862) j!93))) (= (select (arr!47441 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47441 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451093 () Bool)

(declare-fun e!817097 () Bool)

(assert (=> b!1451093 (= e!817096 e!817097)))

(declare-fun res!982474 () Bool)

(assert (=> b!1451093 (=> (not res!982474) (not e!817097))))

(assert (=> b!1451093 (= res!982474 (= (select (store (arr!47441 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636515 () array!98315)

(assert (=> b!1451093 (= lt!636515 (array!98316 (store (arr!47441 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47992 a!2862)))))

(declare-fun b!1451094 () Bool)

(declare-fun res!982467 () Bool)

(declare-fun e!817095 () Bool)

(assert (=> b!1451094 (=> (not res!982467) (not e!817095))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451094 (= res!982467 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451095 () Bool)

(declare-fun res!982468 () Bool)

(assert (=> b!1451095 (=> (not res!982468) (not e!817095))))

(declare-fun e!817092 () Bool)

(assert (=> b!1451095 (= res!982468 e!817092)))

(declare-fun c!133826 () Bool)

(assert (=> b!1451095 (= c!133826 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451096 () Bool)

(declare-fun e!817091 () Bool)

(assert (=> b!1451096 (= e!817091 e!817095)))

(declare-fun res!982475 () Bool)

(assert (=> b!1451096 (=> (not res!982475) (not e!817095))))

(declare-datatypes ((SeekEntryResult!11716 0))(
  ( (MissingZero!11716 (index!49255 (_ BitVec 32))) (Found!11716 (index!49256 (_ BitVec 32))) (Intermediate!11716 (undefined!12528 Bool) (index!49257 (_ BitVec 32)) (x!130912 (_ BitVec 32))) (Undefined!11716) (MissingVacant!11716 (index!49258 (_ BitVec 32))) )
))
(declare-fun lt!636516 () SeekEntryResult!11716)

(assert (=> b!1451096 (= res!982475 (= lt!636516 (Intermediate!11716 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636514 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98315 (_ BitVec 32)) SeekEntryResult!11716)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451096 (= lt!636516 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636514 mask!2687) lt!636514 lt!636515 mask!2687))))

(assert (=> b!1451096 (= lt!636514 (select (store (arr!47441 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451097 () Bool)

(declare-fun res!982466 () Bool)

(assert (=> b!1451097 (=> (not res!982466) (not e!817096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98315 (_ BitVec 32)) Bool)

(assert (=> b!1451097 (= res!982466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451098 () Bool)

(declare-fun res!982476 () Bool)

(assert (=> b!1451098 (=> (not res!982476) (not e!817096))))

(assert (=> b!1451098 (= res!982476 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47992 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47992 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47992 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451099 () Bool)

(declare-fun res!982473 () Bool)

(assert (=> b!1451099 (=> (not res!982473) (not e!817096))))

(declare-datatypes ((List!34122 0))(
  ( (Nil!34119) (Cons!34118 (h!35468 (_ BitVec 64)) (t!48823 List!34122)) )
))
(declare-fun arrayNoDuplicates!0 (array!98315 (_ BitVec 32) List!34122) Bool)

(assert (=> b!1451099 (= res!982473 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34119))))

(declare-fun b!1451101 () Bool)

(assert (=> b!1451101 (= e!817097 e!817091)))

(declare-fun res!982472 () Bool)

(assert (=> b!1451101 (=> (not res!982472) (not e!817091))))

(declare-fun lt!636513 () SeekEntryResult!11716)

(assert (=> b!1451101 (= res!982472 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47441 a!2862) j!93) mask!2687) (select (arr!47441 a!2862) j!93) a!2862 mask!2687) lt!636513))))

(assert (=> b!1451101 (= lt!636513 (Intermediate!11716 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451102 () Bool)

(declare-fun res!982469 () Bool)

(assert (=> b!1451102 (=> (not res!982469) (not e!817096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451102 (= res!982469 (validKeyInArray!0 (select (arr!47441 a!2862) j!93)))))

(declare-fun b!1451103 () Bool)

(declare-fun res!982470 () Bool)

(assert (=> b!1451103 (=> (not res!982470) (not e!817094))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98315 (_ BitVec 32)) SeekEntryResult!11716)

(assert (=> b!1451103 (= res!982470 (= (seekEntryOrOpen!0 (select (arr!47441 a!2862) j!93) a!2862 mask!2687) (Found!11716 j!93)))))

(declare-fun b!1451104 () Bool)

(declare-fun res!982478 () Bool)

(assert (=> b!1451104 (=> (not res!982478) (not e!817091))))

(assert (=> b!1451104 (= res!982478 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47441 a!2862) j!93) a!2862 mask!2687) lt!636513))))

(declare-fun b!1451105 () Bool)

(declare-fun res!982465 () Bool)

(assert (=> b!1451105 (=> (not res!982465) (not e!817096))))

(assert (=> b!1451105 (= res!982465 (validKeyInArray!0 (select (arr!47441 a!2862) i!1006)))))

(declare-fun b!1451106 () Bool)

(assert (=> b!1451106 (= e!817095 (not true))))

(assert (=> b!1451106 e!817094))

(declare-fun res!982477 () Bool)

(assert (=> b!1451106 (=> (not res!982477) (not e!817094))))

(assert (=> b!1451106 (= res!982477 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48876 0))(
  ( (Unit!48877) )
))
(declare-fun lt!636517 () Unit!48876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48876)

(assert (=> b!1451106 (= lt!636517 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451107 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98315 (_ BitVec 32)) SeekEntryResult!11716)

(assert (=> b!1451107 (= e!817092 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636514 lt!636515 mask!2687) (seekEntryOrOpen!0 lt!636514 lt!636515 mask!2687)))))

(declare-fun res!982471 () Bool)

(assert (=> start!124950 (=> (not res!982471) (not e!817096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124950 (= res!982471 (validMask!0 mask!2687))))

(assert (=> start!124950 e!817096))

(assert (=> start!124950 true))

(declare-fun array_inv!36386 (array!98315) Bool)

(assert (=> start!124950 (array_inv!36386 a!2862)))

(declare-fun b!1451100 () Bool)

(assert (=> b!1451100 (= e!817092 (= lt!636516 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636514 lt!636515 mask!2687)))))

(assert (= (and start!124950 res!982471) b!1451091))

(assert (= (and b!1451091 res!982479) b!1451105))

(assert (= (and b!1451105 res!982465) b!1451102))

(assert (= (and b!1451102 res!982469) b!1451097))

(assert (= (and b!1451097 res!982466) b!1451099))

(assert (= (and b!1451099 res!982473) b!1451098))

(assert (= (and b!1451098 res!982476) b!1451093))

(assert (= (and b!1451093 res!982474) b!1451101))

(assert (= (and b!1451101 res!982472) b!1451104))

(assert (= (and b!1451104 res!982478) b!1451096))

(assert (= (and b!1451096 res!982475) b!1451095))

(assert (= (and b!1451095 c!133826) b!1451100))

(assert (= (and b!1451095 (not c!133826)) b!1451107))

(assert (= (and b!1451095 res!982468) b!1451094))

(assert (= (and b!1451094 res!982467) b!1451106))

(assert (= (and b!1451106 res!982477) b!1451103))

(assert (= (and b!1451103 res!982470) b!1451092))

(declare-fun m!1339751 () Bool)

(assert (=> start!124950 m!1339751))

(declare-fun m!1339753 () Bool)

(assert (=> start!124950 m!1339753))

(declare-fun m!1339755 () Bool)

(assert (=> b!1451107 m!1339755))

(declare-fun m!1339757 () Bool)

(assert (=> b!1451107 m!1339757))

(declare-fun m!1339759 () Bool)

(assert (=> b!1451105 m!1339759))

(assert (=> b!1451105 m!1339759))

(declare-fun m!1339761 () Bool)

(assert (=> b!1451105 m!1339761))

(declare-fun m!1339763 () Bool)

(assert (=> b!1451092 m!1339763))

(declare-fun m!1339765 () Bool)

(assert (=> b!1451092 m!1339765))

(declare-fun m!1339767 () Bool)

(assert (=> b!1451092 m!1339767))

(declare-fun m!1339769 () Bool)

(assert (=> b!1451092 m!1339769))

(declare-fun m!1339771 () Bool)

(assert (=> b!1451092 m!1339771))

(declare-fun m!1339773 () Bool)

(assert (=> b!1451096 m!1339773))

(assert (=> b!1451096 m!1339773))

(declare-fun m!1339775 () Bool)

(assert (=> b!1451096 m!1339775))

(assert (=> b!1451096 m!1339763))

(declare-fun m!1339777 () Bool)

(assert (=> b!1451096 m!1339777))

(declare-fun m!1339779 () Bool)

(assert (=> b!1451100 m!1339779))

(assert (=> b!1451102 m!1339771))

(assert (=> b!1451102 m!1339771))

(declare-fun m!1339781 () Bool)

(assert (=> b!1451102 m!1339781))

(assert (=> b!1451093 m!1339763))

(declare-fun m!1339783 () Bool)

(assert (=> b!1451093 m!1339783))

(declare-fun m!1339785 () Bool)

(assert (=> b!1451099 m!1339785))

(declare-fun m!1339787 () Bool)

(assert (=> b!1451106 m!1339787))

(declare-fun m!1339789 () Bool)

(assert (=> b!1451106 m!1339789))

(assert (=> b!1451103 m!1339771))

(assert (=> b!1451103 m!1339771))

(declare-fun m!1339791 () Bool)

(assert (=> b!1451103 m!1339791))

(assert (=> b!1451104 m!1339771))

(assert (=> b!1451104 m!1339771))

(declare-fun m!1339793 () Bool)

(assert (=> b!1451104 m!1339793))

(declare-fun m!1339795 () Bool)

(assert (=> b!1451097 m!1339795))

(assert (=> b!1451101 m!1339771))

(assert (=> b!1451101 m!1339771))

(declare-fun m!1339797 () Bool)

(assert (=> b!1451101 m!1339797))

(assert (=> b!1451101 m!1339797))

(assert (=> b!1451101 m!1339771))

(declare-fun m!1339799 () Bool)

(assert (=> b!1451101 m!1339799))

(check-sat (not b!1451099) (not b!1451106) (not b!1451104) (not b!1451103) (not b!1451107) (not b!1451096) (not b!1451102) (not b!1451101) (not start!124950) (not b!1451100) (not b!1451105) (not b!1451097))
(check-sat)
