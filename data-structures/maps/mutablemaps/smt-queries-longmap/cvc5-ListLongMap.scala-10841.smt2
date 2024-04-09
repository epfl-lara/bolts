; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126934 () Bool)

(assert start!126934)

(declare-fun b!1490810 () Bool)

(declare-fun e!835370 () Bool)

(declare-fun e!835371 () Bool)

(assert (=> b!1490810 (= e!835370 (not e!835371))))

(declare-fun res!1014152 () Bool)

(assert (=> b!1490810 (=> res!1014152 e!835371)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99624 0))(
  ( (array!99625 (arr!48079 (Array (_ BitVec 32) (_ BitVec 64))) (size!48630 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99624)

(assert (=> b!1490810 (= res!1014152 (or (and (= (select (arr!48079 a!2862) index!646) (select (store (arr!48079 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48079 a!2862) index!646) (select (arr!48079 a!2862) j!93))) (= (select (arr!48079 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835368 () Bool)

(assert (=> b!1490810 e!835368))

(declare-fun res!1014161 () Bool)

(assert (=> b!1490810 (=> (not res!1014161) (not e!835368))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99624 (_ BitVec 32)) Bool)

(assert (=> b!1490810 (= res!1014161 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49972 0))(
  ( (Unit!49973) )
))
(declare-fun lt!650033 () Unit!49972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49972)

(assert (=> b!1490810 (= lt!650033 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490812 () Bool)

(declare-fun res!1014147 () Bool)

(assert (=> b!1490812 (=> (not res!1014147) (not e!835370))))

(declare-fun e!835367 () Bool)

(assert (=> b!1490812 (= res!1014147 e!835367)))

(declare-fun c!137861 () Bool)

(assert (=> b!1490812 (= c!137861 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490813 () Bool)

(declare-fun e!835369 () Bool)

(declare-fun e!835373 () Bool)

(assert (=> b!1490813 (= e!835369 e!835373)))

(declare-fun res!1014155 () Bool)

(assert (=> b!1490813 (=> (not res!1014155) (not e!835373))))

(declare-datatypes ((SeekEntryResult!12342 0))(
  ( (MissingZero!12342 (index!51759 (_ BitVec 32))) (Found!12342 (index!51760 (_ BitVec 32))) (Intermediate!12342 (undefined!13154 Bool) (index!51761 (_ BitVec 32)) (x!133353 (_ BitVec 32))) (Undefined!12342) (MissingVacant!12342 (index!51762 (_ BitVec 32))) )
))
(declare-fun lt!650036 () SeekEntryResult!12342)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99624 (_ BitVec 32)) SeekEntryResult!12342)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490813 (= res!1014155 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48079 a!2862) j!93) mask!2687) (select (arr!48079 a!2862) j!93) a!2862 mask!2687) lt!650036))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490813 (= lt!650036 (Intermediate!12342 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490814 () Bool)

(declare-fun lt!650038 () array!99624)

(declare-fun lt!650037 () (_ BitVec 64))

(declare-fun lt!650035 () SeekEntryResult!12342)

(assert (=> b!1490814 (= e!835367 (= lt!650035 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650037 lt!650038 mask!2687)))))

(declare-fun b!1490815 () Bool)

(declare-fun res!1014158 () Bool)

(assert (=> b!1490815 (=> (not res!1014158) (not e!835368))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99624 (_ BitVec 32)) SeekEntryResult!12342)

(assert (=> b!1490815 (= res!1014158 (= (seekEntryOrOpen!0 (select (arr!48079 a!2862) j!93) a!2862 mask!2687) (Found!12342 j!93)))))

(declare-fun b!1490816 () Bool)

(declare-fun res!1014159 () Bool)

(declare-fun e!835366 () Bool)

(assert (=> b!1490816 (=> (not res!1014159) (not e!835366))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490816 (= res!1014159 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48630 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48630 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48630 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490817 () Bool)

(declare-fun res!1014149 () Bool)

(assert (=> b!1490817 (=> (not res!1014149) (not e!835366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490817 (= res!1014149 (validKeyInArray!0 (select (arr!48079 a!2862) i!1006)))))

(declare-fun b!1490818 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99624 (_ BitVec 32)) SeekEntryResult!12342)

(assert (=> b!1490818 (= e!835367 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650037 lt!650038 mask!2687) (seekEntryOrOpen!0 lt!650037 lt!650038 mask!2687)))))

(declare-fun b!1490819 () Bool)

(assert (=> b!1490819 (= e!835368 (or (= (select (arr!48079 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48079 a!2862) intermediateBeforeIndex!19) (select (arr!48079 a!2862) j!93))))))

(declare-fun b!1490820 () Bool)

(declare-fun res!1014151 () Bool)

(assert (=> b!1490820 (=> (not res!1014151) (not e!835366))))

(assert (=> b!1490820 (= res!1014151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490821 () Bool)

(assert (=> b!1490821 (= e!835371 true)))

(declare-fun lt!650034 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490821 (= lt!650034 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490811 () Bool)

(declare-fun res!1014156 () Bool)

(assert (=> b!1490811 (=> (not res!1014156) (not e!835366))))

(declare-datatypes ((List!34760 0))(
  ( (Nil!34757) (Cons!34756 (h!36139 (_ BitVec 64)) (t!49461 List!34760)) )
))
(declare-fun arrayNoDuplicates!0 (array!99624 (_ BitVec 32) List!34760) Bool)

(assert (=> b!1490811 (= res!1014156 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34757))))

(declare-fun res!1014153 () Bool)

(assert (=> start!126934 (=> (not res!1014153) (not e!835366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126934 (= res!1014153 (validMask!0 mask!2687))))

(assert (=> start!126934 e!835366))

(assert (=> start!126934 true))

(declare-fun array_inv!37024 (array!99624) Bool)

(assert (=> start!126934 (array_inv!37024 a!2862)))

(declare-fun b!1490822 () Bool)

(assert (=> b!1490822 (= e!835373 e!835370)))

(declare-fun res!1014162 () Bool)

(assert (=> b!1490822 (=> (not res!1014162) (not e!835370))))

(assert (=> b!1490822 (= res!1014162 (= lt!650035 (Intermediate!12342 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1490822 (= lt!650035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650037 mask!2687) lt!650037 lt!650038 mask!2687))))

(assert (=> b!1490822 (= lt!650037 (select (store (arr!48079 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490823 () Bool)

(declare-fun res!1014154 () Bool)

(assert (=> b!1490823 (=> (not res!1014154) (not e!835366))))

(assert (=> b!1490823 (= res!1014154 (validKeyInArray!0 (select (arr!48079 a!2862) j!93)))))

(declare-fun b!1490824 () Bool)

(declare-fun res!1014160 () Bool)

(assert (=> b!1490824 (=> (not res!1014160) (not e!835370))))

(assert (=> b!1490824 (= res!1014160 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490825 () Bool)

(declare-fun res!1014148 () Bool)

(assert (=> b!1490825 (=> (not res!1014148) (not e!835373))))

(assert (=> b!1490825 (= res!1014148 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48079 a!2862) j!93) a!2862 mask!2687) lt!650036))))

(declare-fun b!1490826 () Bool)

(declare-fun res!1014157 () Bool)

(assert (=> b!1490826 (=> (not res!1014157) (not e!835366))))

(assert (=> b!1490826 (= res!1014157 (and (= (size!48630 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48630 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48630 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490827 () Bool)

(assert (=> b!1490827 (= e!835366 e!835369)))

(declare-fun res!1014150 () Bool)

(assert (=> b!1490827 (=> (not res!1014150) (not e!835369))))

(assert (=> b!1490827 (= res!1014150 (= (select (store (arr!48079 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490827 (= lt!650038 (array!99625 (store (arr!48079 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48630 a!2862)))))

(assert (= (and start!126934 res!1014153) b!1490826))

(assert (= (and b!1490826 res!1014157) b!1490817))

(assert (= (and b!1490817 res!1014149) b!1490823))

(assert (= (and b!1490823 res!1014154) b!1490820))

(assert (= (and b!1490820 res!1014151) b!1490811))

(assert (= (and b!1490811 res!1014156) b!1490816))

(assert (= (and b!1490816 res!1014159) b!1490827))

(assert (= (and b!1490827 res!1014150) b!1490813))

(assert (= (and b!1490813 res!1014155) b!1490825))

(assert (= (and b!1490825 res!1014148) b!1490822))

(assert (= (and b!1490822 res!1014162) b!1490812))

(assert (= (and b!1490812 c!137861) b!1490814))

(assert (= (and b!1490812 (not c!137861)) b!1490818))

(assert (= (and b!1490812 res!1014147) b!1490824))

(assert (= (and b!1490824 res!1014160) b!1490810))

(assert (= (and b!1490810 res!1014161) b!1490815))

(assert (= (and b!1490815 res!1014158) b!1490819))

(assert (= (and b!1490810 (not res!1014152)) b!1490821))

(declare-fun m!1375011 () Bool)

(assert (=> b!1490814 m!1375011))

(declare-fun m!1375013 () Bool)

(assert (=> start!126934 m!1375013))

(declare-fun m!1375015 () Bool)

(assert (=> start!126934 m!1375015))

(declare-fun m!1375017 () Bool)

(assert (=> b!1490810 m!1375017))

(declare-fun m!1375019 () Bool)

(assert (=> b!1490810 m!1375019))

(declare-fun m!1375021 () Bool)

(assert (=> b!1490810 m!1375021))

(declare-fun m!1375023 () Bool)

(assert (=> b!1490810 m!1375023))

(declare-fun m!1375025 () Bool)

(assert (=> b!1490810 m!1375025))

(declare-fun m!1375027 () Bool)

(assert (=> b!1490810 m!1375027))

(assert (=> b!1490825 m!1375027))

(assert (=> b!1490825 m!1375027))

(declare-fun m!1375029 () Bool)

(assert (=> b!1490825 m!1375029))

(declare-fun m!1375031 () Bool)

(assert (=> b!1490817 m!1375031))

(assert (=> b!1490817 m!1375031))

(declare-fun m!1375033 () Bool)

(assert (=> b!1490817 m!1375033))

(declare-fun m!1375035 () Bool)

(assert (=> b!1490819 m!1375035))

(assert (=> b!1490819 m!1375027))

(declare-fun m!1375037 () Bool)

(assert (=> b!1490811 m!1375037))

(declare-fun m!1375039 () Bool)

(assert (=> b!1490821 m!1375039))

(declare-fun m!1375041 () Bool)

(assert (=> b!1490822 m!1375041))

(assert (=> b!1490822 m!1375041))

(declare-fun m!1375043 () Bool)

(assert (=> b!1490822 m!1375043))

(assert (=> b!1490822 m!1375019))

(declare-fun m!1375045 () Bool)

(assert (=> b!1490822 m!1375045))

(declare-fun m!1375047 () Bool)

(assert (=> b!1490820 m!1375047))

(assert (=> b!1490813 m!1375027))

(assert (=> b!1490813 m!1375027))

(declare-fun m!1375049 () Bool)

(assert (=> b!1490813 m!1375049))

(assert (=> b!1490813 m!1375049))

(assert (=> b!1490813 m!1375027))

(declare-fun m!1375051 () Bool)

(assert (=> b!1490813 m!1375051))

(declare-fun m!1375053 () Bool)

(assert (=> b!1490818 m!1375053))

(declare-fun m!1375055 () Bool)

(assert (=> b!1490818 m!1375055))

(assert (=> b!1490827 m!1375019))

(declare-fun m!1375057 () Bool)

(assert (=> b!1490827 m!1375057))

(assert (=> b!1490815 m!1375027))

(assert (=> b!1490815 m!1375027))

(declare-fun m!1375059 () Bool)

(assert (=> b!1490815 m!1375059))

(assert (=> b!1490823 m!1375027))

(assert (=> b!1490823 m!1375027))

(declare-fun m!1375061 () Bool)

(assert (=> b!1490823 m!1375061))

(push 1)

