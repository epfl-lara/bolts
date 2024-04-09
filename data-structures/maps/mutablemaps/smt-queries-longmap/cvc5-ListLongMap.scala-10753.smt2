; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125818 () Bool)

(assert start!125818)

(declare-fun b!1471872 () Bool)

(declare-fun res!999713 () Bool)

(declare-fun e!826133 () Bool)

(assert (=> b!1471872 (=> (not res!999713) (not e!826133))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12078 0))(
  ( (MissingZero!12078 (index!50703 (_ BitVec 32))) (Found!12078 (index!50704 (_ BitVec 32))) (Intermediate!12078 (undefined!12890 Bool) (index!50705 (_ BitVec 32)) (x!132292 (_ BitVec 32))) (Undefined!12078) (MissingVacant!12078 (index!50706 (_ BitVec 32))) )
))
(declare-fun lt!643368 () SeekEntryResult!12078)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99069 0))(
  ( (array!99070 (arr!47815 (Array (_ BitVec 32) (_ BitVec 64))) (size!48366 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99069)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99069 (_ BitVec 32)) SeekEntryResult!12078)

(assert (=> b!1471872 (= res!999713 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47815 a!2862) j!93) a!2862 mask!2687) lt!643368))))

(declare-fun b!1471873 () Bool)

(declare-fun e!826139 () Bool)

(assert (=> b!1471873 (= e!826139 e!826133)))

(declare-fun res!999703 () Bool)

(assert (=> b!1471873 (=> (not res!999703) (not e!826133))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471873 (= res!999703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47815 a!2862) j!93) mask!2687) (select (arr!47815 a!2862) j!93) a!2862 mask!2687) lt!643368))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1471873 (= lt!643368 (Intermediate!12078 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471874 () Bool)

(declare-fun res!999700 () Bool)

(declare-fun e!826136 () Bool)

(assert (=> b!1471874 (=> (not res!999700) (not e!826136))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99069 (_ BitVec 32)) SeekEntryResult!12078)

(assert (=> b!1471874 (= res!999700 (= (seekEntryOrOpen!0 (select (arr!47815 a!2862) j!93) a!2862 mask!2687) (Found!12078 j!93)))))

(declare-fun b!1471875 () Bool)

(declare-fun res!999712 () Bool)

(declare-fun e!826138 () Bool)

(assert (=> b!1471875 (=> (not res!999712) (not e!826138))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1471875 (= res!999712 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471876 () Bool)

(declare-fun res!999701 () Bool)

(declare-fun e!826134 () Bool)

(assert (=> b!1471876 (=> (not res!999701) (not e!826134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99069 (_ BitVec 32)) Bool)

(assert (=> b!1471876 (= res!999701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471877 () Bool)

(declare-fun res!999709 () Bool)

(assert (=> b!1471877 (=> (not res!999709) (not e!826134))))

(assert (=> b!1471877 (= res!999709 (and (= (size!48366 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48366 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48366 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!999706 () Bool)

(assert (=> start!125818 (=> (not res!999706) (not e!826134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125818 (= res!999706 (validMask!0 mask!2687))))

(assert (=> start!125818 e!826134))

(assert (=> start!125818 true))

(declare-fun array_inv!36760 (array!99069) Bool)

(assert (=> start!125818 (array_inv!36760 a!2862)))

(declare-fun lt!643371 () (_ BitVec 64))

(declare-fun b!1471878 () Bool)

(declare-fun lt!643370 () array!99069)

(declare-fun e!826137 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99069 (_ BitVec 32)) SeekEntryResult!12078)

(assert (=> b!1471878 (= e!826137 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643371 lt!643370 mask!2687) (seekEntryOrOpen!0 lt!643371 lt!643370 mask!2687)))))

(declare-fun b!1471879 () Bool)

(declare-fun res!999707 () Bool)

(assert (=> b!1471879 (=> (not res!999707) (not e!826134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471879 (= res!999707 (validKeyInArray!0 (select (arr!47815 a!2862) i!1006)))))

(declare-fun b!1471880 () Bool)

(assert (=> b!1471880 (= e!826134 e!826139)))

(declare-fun res!999705 () Bool)

(assert (=> b!1471880 (=> (not res!999705) (not e!826139))))

(assert (=> b!1471880 (= res!999705 (= (select (store (arr!47815 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471880 (= lt!643370 (array!99070 (store (arr!47815 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48366 a!2862)))))

(declare-fun b!1471881 () Bool)

(declare-fun res!999714 () Bool)

(assert (=> b!1471881 (=> (not res!999714) (not e!826134))))

(declare-datatypes ((List!34496 0))(
  ( (Nil!34493) (Cons!34492 (h!35848 (_ BitVec 64)) (t!49197 List!34496)) )
))
(declare-fun arrayNoDuplicates!0 (array!99069 (_ BitVec 32) List!34496) Bool)

(assert (=> b!1471881 (= res!999714 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34493))))

(declare-fun b!1471882 () Bool)

(assert (=> b!1471882 (= e!826133 e!826138)))

(declare-fun res!999710 () Bool)

(assert (=> b!1471882 (=> (not res!999710) (not e!826138))))

(declare-fun lt!643372 () SeekEntryResult!12078)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1471882 (= res!999710 (= lt!643372 (Intermediate!12078 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1471882 (= lt!643372 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643371 mask!2687) lt!643371 lt!643370 mask!2687))))

(assert (=> b!1471882 (= lt!643371 (select (store (arr!47815 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471883 () Bool)

(declare-fun res!999702 () Bool)

(assert (=> b!1471883 (=> (not res!999702) (not e!826134))))

(assert (=> b!1471883 (= res!999702 (validKeyInArray!0 (select (arr!47815 a!2862) j!93)))))

(declare-fun b!1471884 () Bool)

(declare-fun res!999704 () Bool)

(assert (=> b!1471884 (=> (not res!999704) (not e!826138))))

(assert (=> b!1471884 (= res!999704 e!826137)))

(declare-fun c!135602 () Bool)

(assert (=> b!1471884 (= c!135602 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471885 () Bool)

(assert (=> b!1471885 (= e!826137 (= lt!643372 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643371 lt!643370 mask!2687)))))

(declare-fun b!1471886 () Bool)

(assert (=> b!1471886 (= e!826138 (not true))))

(assert (=> b!1471886 e!826136))

(declare-fun res!999711 () Bool)

(assert (=> b!1471886 (=> (not res!999711) (not e!826136))))

(assert (=> b!1471886 (= res!999711 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49444 0))(
  ( (Unit!49445) )
))
(declare-fun lt!643369 () Unit!49444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49444)

(assert (=> b!1471886 (= lt!643369 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471887 () Bool)

(assert (=> b!1471887 (= e!826136 (or (= (select (arr!47815 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47815 a!2862) intermediateBeforeIndex!19) (select (arr!47815 a!2862) j!93))))))

(declare-fun b!1471888 () Bool)

(declare-fun res!999708 () Bool)

(assert (=> b!1471888 (=> (not res!999708) (not e!826134))))

(assert (=> b!1471888 (= res!999708 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48366 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48366 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48366 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125818 res!999706) b!1471877))

(assert (= (and b!1471877 res!999709) b!1471879))

(assert (= (and b!1471879 res!999707) b!1471883))

(assert (= (and b!1471883 res!999702) b!1471876))

(assert (= (and b!1471876 res!999701) b!1471881))

(assert (= (and b!1471881 res!999714) b!1471888))

(assert (= (and b!1471888 res!999708) b!1471880))

(assert (= (and b!1471880 res!999705) b!1471873))

(assert (= (and b!1471873 res!999703) b!1471872))

(assert (= (and b!1471872 res!999713) b!1471882))

(assert (= (and b!1471882 res!999710) b!1471884))

(assert (= (and b!1471884 c!135602) b!1471885))

(assert (= (and b!1471884 (not c!135602)) b!1471878))

(assert (= (and b!1471884 res!999704) b!1471875))

(assert (= (and b!1471875 res!999712) b!1471886))

(assert (= (and b!1471886 res!999711) b!1471874))

(assert (= (and b!1471874 res!999700) b!1471887))

(declare-fun m!1358691 () Bool)

(assert (=> b!1471887 m!1358691))

(declare-fun m!1358693 () Bool)

(assert (=> b!1471887 m!1358693))

(declare-fun m!1358695 () Bool)

(assert (=> b!1471879 m!1358695))

(assert (=> b!1471879 m!1358695))

(declare-fun m!1358697 () Bool)

(assert (=> b!1471879 m!1358697))

(declare-fun m!1358699 () Bool)

(assert (=> b!1471885 m!1358699))

(declare-fun m!1358701 () Bool)

(assert (=> b!1471880 m!1358701))

(declare-fun m!1358703 () Bool)

(assert (=> b!1471880 m!1358703))

(declare-fun m!1358705 () Bool)

(assert (=> b!1471878 m!1358705))

(declare-fun m!1358707 () Bool)

(assert (=> b!1471878 m!1358707))

(declare-fun m!1358709 () Bool)

(assert (=> start!125818 m!1358709))

(declare-fun m!1358711 () Bool)

(assert (=> start!125818 m!1358711))

(assert (=> b!1471874 m!1358693))

(assert (=> b!1471874 m!1358693))

(declare-fun m!1358713 () Bool)

(assert (=> b!1471874 m!1358713))

(assert (=> b!1471872 m!1358693))

(assert (=> b!1471872 m!1358693))

(declare-fun m!1358715 () Bool)

(assert (=> b!1471872 m!1358715))

(declare-fun m!1358717 () Bool)

(assert (=> b!1471881 m!1358717))

(declare-fun m!1358719 () Bool)

(assert (=> b!1471886 m!1358719))

(declare-fun m!1358721 () Bool)

(assert (=> b!1471886 m!1358721))

(declare-fun m!1358723 () Bool)

(assert (=> b!1471882 m!1358723))

(assert (=> b!1471882 m!1358723))

(declare-fun m!1358725 () Bool)

(assert (=> b!1471882 m!1358725))

(assert (=> b!1471882 m!1358701))

(declare-fun m!1358727 () Bool)

(assert (=> b!1471882 m!1358727))

(assert (=> b!1471873 m!1358693))

(assert (=> b!1471873 m!1358693))

(declare-fun m!1358729 () Bool)

(assert (=> b!1471873 m!1358729))

(assert (=> b!1471873 m!1358729))

(assert (=> b!1471873 m!1358693))

(declare-fun m!1358731 () Bool)

(assert (=> b!1471873 m!1358731))

(declare-fun m!1358733 () Bool)

(assert (=> b!1471876 m!1358733))

(assert (=> b!1471883 m!1358693))

(assert (=> b!1471883 m!1358693))

(declare-fun m!1358735 () Bool)

(assert (=> b!1471883 m!1358735))

(push 1)

