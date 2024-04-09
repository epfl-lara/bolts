; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125640 () Bool)

(assert start!125640)

(declare-fun b!1469719 () Bool)

(declare-fun e!825098 () Bool)

(declare-fun e!825096 () Bool)

(assert (=> b!1469719 (= e!825098 e!825096)))

(declare-fun res!998271 () Bool)

(assert (=> b!1469719 (=> (not res!998271) (not e!825096))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99005 0))(
  ( (array!99006 (arr!47786 (Array (_ BitVec 32) (_ BitVec 64))) (size!48337 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99005)

(assert (=> b!1469719 (= res!998271 (= (select (store (arr!47786 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!642619 () array!99005)

(assert (=> b!1469719 (= lt!642619 (array!99006 (store (arr!47786 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48337 a!2862)))))

(declare-fun b!1469720 () Bool)

(declare-fun e!825101 () Bool)

(assert (=> b!1469720 (= e!825101 false)))

(declare-fun lt!642616 () Bool)

(declare-fun e!825099 () Bool)

(assert (=> b!1469720 (= lt!642616 e!825099)))

(declare-fun c!135239 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469720 (= c!135239 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469721 () Bool)

(declare-fun res!998273 () Bool)

(assert (=> b!1469721 (=> (not res!998273) (not e!825098))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99005 (_ BitVec 32)) Bool)

(assert (=> b!1469721 (= res!998273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469722 () Bool)

(declare-fun e!825100 () Bool)

(assert (=> b!1469722 (= e!825096 e!825100)))

(declare-fun res!998270 () Bool)

(assert (=> b!1469722 (=> (not res!998270) (not e!825100))))

(declare-datatypes ((SeekEntryResult!12049 0))(
  ( (MissingZero!12049 (index!50587 (_ BitVec 32))) (Found!12049 (index!50588 (_ BitVec 32))) (Intermediate!12049 (undefined!12861 Bool) (index!50589 (_ BitVec 32)) (x!132165 (_ BitVec 32))) (Undefined!12049) (MissingVacant!12049 (index!50590 (_ BitVec 32))) )
))
(declare-fun lt!642617 () SeekEntryResult!12049)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99005 (_ BitVec 32)) SeekEntryResult!12049)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469722 (= res!998270 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47786 a!2862) j!93) mask!2687) (select (arr!47786 a!2862) j!93) a!2862 mask!2687) lt!642617))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469722 (= lt!642617 (Intermediate!12049 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469723 () Bool)

(declare-fun res!998275 () Bool)

(assert (=> b!1469723 (=> (not res!998275) (not e!825098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469723 (= res!998275 (validKeyInArray!0 (select (arr!47786 a!2862) i!1006)))))

(declare-fun b!1469724 () Bool)

(declare-fun res!998274 () Bool)

(assert (=> b!1469724 (=> (not res!998274) (not e!825098))))

(declare-datatypes ((List!34467 0))(
  ( (Nil!34464) (Cons!34463 (h!35813 (_ BitVec 64)) (t!49168 List!34467)) )
))
(declare-fun arrayNoDuplicates!0 (array!99005 (_ BitVec 32) List!34467) Bool)

(assert (=> b!1469724 (= res!998274 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34464))))

(declare-fun b!1469726 () Bool)

(declare-fun lt!642618 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99005 (_ BitVec 32)) SeekEntryResult!12049)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99005 (_ BitVec 32)) SeekEntryResult!12049)

(assert (=> b!1469726 (= e!825099 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642618 lt!642619 mask!2687) (seekEntryOrOpen!0 lt!642618 lt!642619 mask!2687))))))

(declare-fun b!1469727 () Bool)

(declare-fun res!998277 () Bool)

(assert (=> b!1469727 (=> (not res!998277) (not e!825098))))

(assert (=> b!1469727 (= res!998277 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48337 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48337 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48337 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469728 () Bool)

(declare-fun res!998272 () Bool)

(assert (=> b!1469728 (=> (not res!998272) (not e!825100))))

(assert (=> b!1469728 (= res!998272 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47786 a!2862) j!93) a!2862 mask!2687) lt!642617))))

(declare-fun b!1469729 () Bool)

(declare-fun res!998267 () Bool)

(assert (=> b!1469729 (=> (not res!998267) (not e!825098))))

(assert (=> b!1469729 (= res!998267 (validKeyInArray!0 (select (arr!47786 a!2862) j!93)))))

(declare-fun b!1469730 () Bool)

(assert (=> b!1469730 (= e!825100 e!825101)))

(declare-fun res!998269 () Bool)

(assert (=> b!1469730 (=> (not res!998269) (not e!825101))))

(declare-fun lt!642615 () SeekEntryResult!12049)

(assert (=> b!1469730 (= res!998269 (= lt!642615 (Intermediate!12049 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469730 (= lt!642615 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642618 mask!2687) lt!642618 lt!642619 mask!2687))))

(assert (=> b!1469730 (= lt!642618 (select (store (arr!47786 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469731 () Bool)

(declare-fun res!998276 () Bool)

(assert (=> b!1469731 (=> (not res!998276) (not e!825098))))

(assert (=> b!1469731 (= res!998276 (and (= (size!48337 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48337 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48337 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469725 () Bool)

(assert (=> b!1469725 (= e!825099 (not (= lt!642615 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642618 lt!642619 mask!2687))))))

(declare-fun res!998268 () Bool)

(assert (=> start!125640 (=> (not res!998268) (not e!825098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125640 (= res!998268 (validMask!0 mask!2687))))

(assert (=> start!125640 e!825098))

(assert (=> start!125640 true))

(declare-fun array_inv!36731 (array!99005) Bool)

(assert (=> start!125640 (array_inv!36731 a!2862)))

(assert (= (and start!125640 res!998268) b!1469731))

(assert (= (and b!1469731 res!998276) b!1469723))

(assert (= (and b!1469723 res!998275) b!1469729))

(assert (= (and b!1469729 res!998267) b!1469721))

(assert (= (and b!1469721 res!998273) b!1469724))

(assert (= (and b!1469724 res!998274) b!1469727))

(assert (= (and b!1469727 res!998277) b!1469719))

(assert (= (and b!1469719 res!998271) b!1469722))

(assert (= (and b!1469722 res!998270) b!1469728))

(assert (= (and b!1469728 res!998272) b!1469730))

(assert (= (and b!1469730 res!998269) b!1469720))

(assert (= (and b!1469720 c!135239) b!1469725))

(assert (= (and b!1469720 (not c!135239)) b!1469726))

(declare-fun m!1356929 () Bool)

(assert (=> b!1469730 m!1356929))

(assert (=> b!1469730 m!1356929))

(declare-fun m!1356931 () Bool)

(assert (=> b!1469730 m!1356931))

(declare-fun m!1356933 () Bool)

(assert (=> b!1469730 m!1356933))

(declare-fun m!1356935 () Bool)

(assert (=> b!1469730 m!1356935))

(declare-fun m!1356937 () Bool)

(assert (=> b!1469728 m!1356937))

(assert (=> b!1469728 m!1356937))

(declare-fun m!1356939 () Bool)

(assert (=> b!1469728 m!1356939))

(assert (=> b!1469722 m!1356937))

(assert (=> b!1469722 m!1356937))

(declare-fun m!1356941 () Bool)

(assert (=> b!1469722 m!1356941))

(assert (=> b!1469722 m!1356941))

(assert (=> b!1469722 m!1356937))

(declare-fun m!1356943 () Bool)

(assert (=> b!1469722 m!1356943))

(declare-fun m!1356945 () Bool)

(assert (=> b!1469721 m!1356945))

(declare-fun m!1356947 () Bool)

(assert (=> b!1469725 m!1356947))

(assert (=> b!1469719 m!1356933))

(declare-fun m!1356949 () Bool)

(assert (=> b!1469719 m!1356949))

(declare-fun m!1356951 () Bool)

(assert (=> b!1469726 m!1356951))

(declare-fun m!1356953 () Bool)

(assert (=> b!1469726 m!1356953))

(declare-fun m!1356955 () Bool)

(assert (=> b!1469724 m!1356955))

(declare-fun m!1356957 () Bool)

(assert (=> start!125640 m!1356957))

(declare-fun m!1356959 () Bool)

(assert (=> start!125640 m!1356959))

(assert (=> b!1469729 m!1356937))

(assert (=> b!1469729 m!1356937))

(declare-fun m!1356961 () Bool)

(assert (=> b!1469729 m!1356961))

(declare-fun m!1356963 () Bool)

(assert (=> b!1469723 m!1356963))

(assert (=> b!1469723 m!1356963))

(declare-fun m!1356965 () Bool)

(assert (=> b!1469723 m!1356965))

(check-sat (not b!1469726) (not b!1469721) (not b!1469723) (not b!1469725) (not b!1469724) (not b!1469729) (not b!1469722) (not b!1469728) (not start!125640) (not b!1469730))
(check-sat)
