; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126220 () Bool)

(assert start!126220)

(declare-fun b!1477700 () Bool)

(declare-fun res!1003899 () Bool)

(declare-fun e!829005 () Bool)

(assert (=> b!1477700 (=> (not res!1003899) (not e!829005))))

(declare-datatypes ((SeekEntryResult!12159 0))(
  ( (MissingZero!12159 (index!51027 (_ BitVec 32))) (Found!12159 (index!51028 (_ BitVec 32))) (Intermediate!12159 (undefined!12971 Bool) (index!51029 (_ BitVec 32)) (x!132625 (_ BitVec 32))) (Undefined!12159) (MissingVacant!12159 (index!51030 (_ BitVec 32))) )
))
(declare-fun lt!645406 () SeekEntryResult!12159)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99243 0))(
  ( (array!99244 (arr!47896 (Array (_ BitVec 32) (_ BitVec 64))) (size!48447 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99243)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99243 (_ BitVec 32)) SeekEntryResult!12159)

(assert (=> b!1477700 (= res!1003899 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47896 a!2862) j!93) a!2862 mask!2687) lt!645406))))

(declare-fun b!1477701 () Bool)

(declare-fun e!829000 () Bool)

(assert (=> b!1477701 (= e!829000 (not true))))

(declare-fun e!829001 () Bool)

(assert (=> b!1477701 e!829001))

(declare-fun res!1003903 () Bool)

(assert (=> b!1477701 (=> (not res!1003903) (not e!829001))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!645403 () SeekEntryResult!12159)

(assert (=> b!1477701 (= res!1003903 (and (= lt!645403 (Found!12159 j!93)) (or (= (select (arr!47896 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47896 a!2862) intermediateBeforeIndex!19) (select (arr!47896 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99243 (_ BitVec 32)) SeekEntryResult!12159)

(assert (=> b!1477701 (= lt!645403 (seekEntryOrOpen!0 (select (arr!47896 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99243 (_ BitVec 32)) Bool)

(assert (=> b!1477701 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49606 0))(
  ( (Unit!49607) )
))
(declare-fun lt!645404 () Unit!49606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99243 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49606)

(assert (=> b!1477701 (= lt!645404 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477702 () Bool)

(declare-fun e!829007 () Bool)

(assert (=> b!1477702 (= e!829007 e!829005)))

(declare-fun res!1003902 () Bool)

(assert (=> b!1477702 (=> (not res!1003902) (not e!829005))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477702 (= res!1003902 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47896 a!2862) j!93) mask!2687) (select (arr!47896 a!2862) j!93) a!2862 mask!2687) lt!645406))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477702 (= lt!645406 (Intermediate!12159 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477703 () Bool)

(declare-fun res!1003901 () Bool)

(declare-fun e!829006 () Bool)

(assert (=> b!1477703 (=> (not res!1003901) (not e!829006))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477703 (= res!1003901 (and (= (size!48447 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48447 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48447 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477704 () Bool)

(declare-fun res!1003907 () Bool)

(assert (=> b!1477704 (=> (not res!1003907) (not e!829006))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477704 (= res!1003907 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48447 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48447 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48447 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477705 () Bool)

(declare-fun e!829003 () Bool)

(assert (=> b!1477705 (= e!829001 e!829003)))

(declare-fun res!1003898 () Bool)

(assert (=> b!1477705 (=> res!1003898 e!829003)))

(assert (=> b!1477705 (= res!1003898 (or (and (= (select (arr!47896 a!2862) index!646) (select (store (arr!47896 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47896 a!2862) index!646) (select (arr!47896 a!2862) j!93))) (not (= (select (arr!47896 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477706 () Bool)

(declare-fun res!1003906 () Bool)

(assert (=> b!1477706 (=> (not res!1003906) (not e!829000))))

(declare-fun e!829004 () Bool)

(assert (=> b!1477706 (= res!1003906 e!829004)))

(declare-fun c!136424 () Bool)

(assert (=> b!1477706 (= c!136424 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477707 () Bool)

(declare-fun e!829002 () Bool)

(assert (=> b!1477707 (= e!829003 e!829002)))

(declare-fun res!1003905 () Bool)

(assert (=> b!1477707 (=> (not res!1003905) (not e!829002))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99243 (_ BitVec 32)) SeekEntryResult!12159)

(assert (=> b!1477707 (= res!1003905 (= lt!645403 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47896 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477708 () Bool)

(declare-fun res!1003900 () Bool)

(assert (=> b!1477708 (=> (not res!1003900) (not e!829006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477708 (= res!1003900 (validKeyInArray!0 (select (arr!47896 a!2862) j!93)))))

(declare-fun b!1477710 () Bool)

(declare-fun res!1003908 () Bool)

(assert (=> b!1477710 (=> (not res!1003908) (not e!829006))))

(declare-datatypes ((List!34577 0))(
  ( (Nil!34574) (Cons!34573 (h!35941 (_ BitVec 64)) (t!49278 List!34577)) )
))
(declare-fun arrayNoDuplicates!0 (array!99243 (_ BitVec 32) List!34577) Bool)

(assert (=> b!1477710 (= res!1003908 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34574))))

(declare-fun b!1477711 () Bool)

(assert (=> b!1477711 (= e!829002 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477712 () Bool)

(declare-fun res!1003909 () Bool)

(assert (=> b!1477712 (=> (not res!1003909) (not e!829006))))

(assert (=> b!1477712 (= res!1003909 (validKeyInArray!0 (select (arr!47896 a!2862) i!1006)))))

(declare-fun lt!645402 () (_ BitVec 64))

(declare-fun b!1477713 () Bool)

(declare-fun lt!645401 () array!99243)

(assert (=> b!1477713 (= e!829004 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645402 lt!645401 mask!2687) (seekEntryOrOpen!0 lt!645402 lt!645401 mask!2687)))))

(declare-fun lt!645405 () SeekEntryResult!12159)

(declare-fun b!1477714 () Bool)

(assert (=> b!1477714 (= e!829004 (= lt!645405 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645402 lt!645401 mask!2687)))))

(declare-fun b!1477715 () Bool)

(declare-fun res!1003910 () Bool)

(assert (=> b!1477715 (=> (not res!1003910) (not e!829000))))

(assert (=> b!1477715 (= res!1003910 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1003904 () Bool)

(assert (=> start!126220 (=> (not res!1003904) (not e!829006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126220 (= res!1003904 (validMask!0 mask!2687))))

(assert (=> start!126220 e!829006))

(assert (=> start!126220 true))

(declare-fun array_inv!36841 (array!99243) Bool)

(assert (=> start!126220 (array_inv!36841 a!2862)))

(declare-fun b!1477709 () Bool)

(declare-fun res!1003911 () Bool)

(assert (=> b!1477709 (=> (not res!1003911) (not e!829006))))

(assert (=> b!1477709 (= res!1003911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477716 () Bool)

(assert (=> b!1477716 (= e!829005 e!829000)))

(declare-fun res!1003896 () Bool)

(assert (=> b!1477716 (=> (not res!1003896) (not e!829000))))

(assert (=> b!1477716 (= res!1003896 (= lt!645405 (Intermediate!12159 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1477716 (= lt!645405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645402 mask!2687) lt!645402 lt!645401 mask!2687))))

(assert (=> b!1477716 (= lt!645402 (select (store (arr!47896 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477717 () Bool)

(assert (=> b!1477717 (= e!829006 e!829007)))

(declare-fun res!1003897 () Bool)

(assert (=> b!1477717 (=> (not res!1003897) (not e!829007))))

(assert (=> b!1477717 (= res!1003897 (= (select (store (arr!47896 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477717 (= lt!645401 (array!99244 (store (arr!47896 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48447 a!2862)))))

(assert (= (and start!126220 res!1003904) b!1477703))

(assert (= (and b!1477703 res!1003901) b!1477712))

(assert (= (and b!1477712 res!1003909) b!1477708))

(assert (= (and b!1477708 res!1003900) b!1477709))

(assert (= (and b!1477709 res!1003911) b!1477710))

(assert (= (and b!1477710 res!1003908) b!1477704))

(assert (= (and b!1477704 res!1003907) b!1477717))

(assert (= (and b!1477717 res!1003897) b!1477702))

(assert (= (and b!1477702 res!1003902) b!1477700))

(assert (= (and b!1477700 res!1003899) b!1477716))

(assert (= (and b!1477716 res!1003896) b!1477706))

(assert (= (and b!1477706 c!136424) b!1477714))

(assert (= (and b!1477706 (not c!136424)) b!1477713))

(assert (= (and b!1477706 res!1003906) b!1477715))

(assert (= (and b!1477715 res!1003910) b!1477701))

(assert (= (and b!1477701 res!1003903) b!1477705))

(assert (= (and b!1477705 (not res!1003898)) b!1477707))

(assert (= (and b!1477707 res!1003905) b!1477711))

(declare-fun m!1363695 () Bool)

(assert (=> b!1477700 m!1363695))

(assert (=> b!1477700 m!1363695))

(declare-fun m!1363697 () Bool)

(assert (=> b!1477700 m!1363697))

(assert (=> b!1477708 m!1363695))

(assert (=> b!1477708 m!1363695))

(declare-fun m!1363699 () Bool)

(assert (=> b!1477708 m!1363699))

(declare-fun m!1363701 () Bool)

(assert (=> b!1477705 m!1363701))

(declare-fun m!1363703 () Bool)

(assert (=> b!1477705 m!1363703))

(declare-fun m!1363705 () Bool)

(assert (=> b!1477705 m!1363705))

(assert (=> b!1477705 m!1363695))

(declare-fun m!1363707 () Bool)

(assert (=> b!1477716 m!1363707))

(assert (=> b!1477716 m!1363707))

(declare-fun m!1363709 () Bool)

(assert (=> b!1477716 m!1363709))

(assert (=> b!1477716 m!1363703))

(declare-fun m!1363711 () Bool)

(assert (=> b!1477716 m!1363711))

(declare-fun m!1363713 () Bool)

(assert (=> start!126220 m!1363713))

(declare-fun m!1363715 () Bool)

(assert (=> start!126220 m!1363715))

(assert (=> b!1477717 m!1363703))

(declare-fun m!1363717 () Bool)

(assert (=> b!1477717 m!1363717))

(declare-fun m!1363719 () Bool)

(assert (=> b!1477701 m!1363719))

(declare-fun m!1363721 () Bool)

(assert (=> b!1477701 m!1363721))

(assert (=> b!1477701 m!1363695))

(declare-fun m!1363723 () Bool)

(assert (=> b!1477701 m!1363723))

(declare-fun m!1363725 () Bool)

(assert (=> b!1477701 m!1363725))

(assert (=> b!1477701 m!1363695))

(declare-fun m!1363727 () Bool)

(assert (=> b!1477709 m!1363727))

(assert (=> b!1477707 m!1363695))

(assert (=> b!1477707 m!1363695))

(declare-fun m!1363729 () Bool)

(assert (=> b!1477707 m!1363729))

(assert (=> b!1477702 m!1363695))

(assert (=> b!1477702 m!1363695))

(declare-fun m!1363731 () Bool)

(assert (=> b!1477702 m!1363731))

(assert (=> b!1477702 m!1363731))

(assert (=> b!1477702 m!1363695))

(declare-fun m!1363733 () Bool)

(assert (=> b!1477702 m!1363733))

(declare-fun m!1363735 () Bool)

(assert (=> b!1477713 m!1363735))

(declare-fun m!1363737 () Bool)

(assert (=> b!1477713 m!1363737))

(declare-fun m!1363739 () Bool)

(assert (=> b!1477710 m!1363739))

(declare-fun m!1363741 () Bool)

(assert (=> b!1477714 m!1363741))

(declare-fun m!1363743 () Bool)

(assert (=> b!1477712 m!1363743))

(assert (=> b!1477712 m!1363743))

(declare-fun m!1363745 () Bool)

(assert (=> b!1477712 m!1363745))

(push 1)

