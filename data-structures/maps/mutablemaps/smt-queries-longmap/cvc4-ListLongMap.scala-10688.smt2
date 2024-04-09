; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125312 () Bool)

(assert start!125312)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11897 0))(
  ( (MissingZero!11897 (index!49979 (_ BitVec 32))) (Found!11897 (index!49980 (_ BitVec 32))) (Intermediate!11897 (undefined!12709 Bool) (index!49981 (_ BitVec 32)) (x!131573 (_ BitVec 32))) (Undefined!11897) (MissingVacant!11897 (index!49982 (_ BitVec 32))) )
))
(declare-fun lt!640373 () SeekEntryResult!11897)

(declare-fun lt!640370 () (_ BitVec 32))

(declare-fun e!822032 () Bool)

(declare-datatypes ((array!98677 0))(
  ( (array!98678 (arr!47622 (Array (_ BitVec 32) (_ BitVec 64))) (size!48173 (_ BitVec 32))) )
))
(declare-fun lt!640374 () array!98677)

(declare-fun b!1462297 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!640372 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98677 (_ BitVec 32)) SeekEntryResult!11897)

(assert (=> b!1462297 (= e!822032 (not (= lt!640373 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640370 lt!640372 lt!640374 mask!2687))))))

(declare-fun b!1462298 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98677 (_ BitVec 32)) SeekEntryResult!11897)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98677 (_ BitVec 32)) SeekEntryResult!11897)

(assert (=> b!1462298 (= e!822032 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640370 intermediateAfterIndex!19 lt!640372 lt!640374 mask!2687) (seekEntryOrOpen!0 lt!640372 lt!640374 mask!2687))))))

(declare-fun b!1462299 () Bool)

(declare-fun res!991852 () Bool)

(declare-fun e!822028 () Bool)

(assert (=> b!1462299 (=> (not res!991852) (not e!822028))))

(declare-fun a!2862 () array!98677)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462299 (= res!991852 (validKeyInArray!0 (select (arr!47622 a!2862) j!93)))))

(declare-fun b!1462300 () Bool)

(declare-fun e!822031 () Bool)

(declare-fun e!822027 () Bool)

(assert (=> b!1462300 (= e!822031 e!822027)))

(declare-fun res!991857 () Bool)

(assert (=> b!1462300 (=> res!991857 e!822027)))

(assert (=> b!1462300 (= res!991857 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640370 #b00000000000000000000000000000000) (bvsge lt!640370 (size!48173 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462300 (= lt!640370 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462301 () Bool)

(declare-fun res!991862 () Bool)

(assert (=> b!1462301 (=> (not res!991862) (not e!822028))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462301 (= res!991862 (validKeyInArray!0 (select (arr!47622 a!2862) i!1006)))))

(declare-fun b!1462302 () Bool)

(declare-fun e!822030 () Bool)

(assert (=> b!1462302 (= e!822028 e!822030)))

(declare-fun res!991849 () Bool)

(assert (=> b!1462302 (=> (not res!991849) (not e!822030))))

(assert (=> b!1462302 (= res!991849 (= (select (store (arr!47622 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462302 (= lt!640374 (array!98678 (store (arr!47622 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48173 a!2862)))))

(declare-fun b!1462303 () Bool)

(declare-fun res!991861 () Bool)

(declare-fun e!822025 () Bool)

(assert (=> b!1462303 (=> (not res!991861) (not e!822025))))

(declare-fun e!822029 () Bool)

(assert (=> b!1462303 (= res!991861 e!822029)))

(declare-fun c!134738 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462303 (= c!134738 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462304 () Bool)

(declare-fun e!822023 () Bool)

(assert (=> b!1462304 (= e!822023 e!822025)))

(declare-fun res!991863 () Bool)

(assert (=> b!1462304 (=> (not res!991863) (not e!822025))))

(assert (=> b!1462304 (= res!991863 (= lt!640373 (Intermediate!11897 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462304 (= lt!640373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640372 mask!2687) lt!640372 lt!640374 mask!2687))))

(assert (=> b!1462304 (= lt!640372 (select (store (arr!47622 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!991854 () Bool)

(assert (=> start!125312 (=> (not res!991854) (not e!822028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125312 (= res!991854 (validMask!0 mask!2687))))

(assert (=> start!125312 e!822028))

(assert (=> start!125312 true))

(declare-fun array_inv!36567 (array!98677) Bool)

(assert (=> start!125312 (array_inv!36567 a!2862)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1462305 () Bool)

(declare-fun e!822024 () Bool)

(assert (=> b!1462305 (= e!822024 (or (= (select (arr!47622 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47622 a!2862) intermediateBeforeIndex!19) (select (arr!47622 a!2862) j!93))))))

(declare-fun b!1462306 () Bool)

(declare-fun res!991864 () Bool)

(assert (=> b!1462306 (=> (not res!991864) (not e!822028))))

(declare-datatypes ((List!34303 0))(
  ( (Nil!34300) (Cons!34299 (h!35649 (_ BitVec 64)) (t!49004 List!34303)) )
))
(declare-fun arrayNoDuplicates!0 (array!98677 (_ BitVec 32) List!34303) Bool)

(assert (=> b!1462306 (= res!991864 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34300))))

(declare-fun b!1462307 () Bool)

(declare-fun res!991856 () Bool)

(assert (=> b!1462307 (=> (not res!991856) (not e!822028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98677 (_ BitVec 32)) Bool)

(assert (=> b!1462307 (= res!991856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462308 () Bool)

(declare-fun res!991859 () Bool)

(assert (=> b!1462308 (=> (not res!991859) (not e!822023))))

(declare-fun lt!640371 () SeekEntryResult!11897)

(assert (=> b!1462308 (= res!991859 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47622 a!2862) j!93) a!2862 mask!2687) lt!640371))))

(declare-fun b!1462309 () Bool)

(assert (=> b!1462309 (= e!822025 (not e!822031))))

(declare-fun res!991858 () Bool)

(assert (=> b!1462309 (=> res!991858 e!822031)))

(assert (=> b!1462309 (= res!991858 (or (and (= (select (arr!47622 a!2862) index!646) (select (store (arr!47622 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47622 a!2862) index!646) (select (arr!47622 a!2862) j!93))) (= (select (arr!47622 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462309 e!822024))

(declare-fun res!991855 () Bool)

(assert (=> b!1462309 (=> (not res!991855) (not e!822024))))

(assert (=> b!1462309 (= res!991855 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49238 0))(
  ( (Unit!49239) )
))
(declare-fun lt!640369 () Unit!49238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49238)

(assert (=> b!1462309 (= lt!640369 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462310 () Bool)

(declare-fun res!991866 () Bool)

(assert (=> b!1462310 (=> (not res!991866) (not e!822024))))

(assert (=> b!1462310 (= res!991866 (= (seekEntryOrOpen!0 (select (arr!47622 a!2862) j!93) a!2862 mask!2687) (Found!11897 j!93)))))

(declare-fun b!1462311 () Bool)

(declare-fun res!991853 () Bool)

(assert (=> b!1462311 (=> res!991853 e!822027)))

(assert (=> b!1462311 (= res!991853 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640370 (select (arr!47622 a!2862) j!93) a!2862 mask!2687) lt!640371)))))

(declare-fun b!1462312 () Bool)

(assert (=> b!1462312 (= e!822029 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640372 lt!640374 mask!2687) (seekEntryOrOpen!0 lt!640372 lt!640374 mask!2687)))))

(declare-fun b!1462313 () Bool)

(declare-fun res!991865 () Bool)

(assert (=> b!1462313 (=> (not res!991865) (not e!822028))))

(assert (=> b!1462313 (= res!991865 (and (= (size!48173 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48173 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48173 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462314 () Bool)

(assert (=> b!1462314 (= e!822027 true)))

(declare-fun lt!640375 () Bool)

(assert (=> b!1462314 (= lt!640375 e!822032)))

(declare-fun c!134737 () Bool)

(assert (=> b!1462314 (= c!134737 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462315 () Bool)

(assert (=> b!1462315 (= e!822030 e!822023)))

(declare-fun res!991851 () Bool)

(assert (=> b!1462315 (=> (not res!991851) (not e!822023))))

(assert (=> b!1462315 (= res!991851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47622 a!2862) j!93) mask!2687) (select (arr!47622 a!2862) j!93) a!2862 mask!2687) lt!640371))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462315 (= lt!640371 (Intermediate!11897 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462316 () Bool)

(declare-fun res!991860 () Bool)

(assert (=> b!1462316 (=> (not res!991860) (not e!822025))))

(assert (=> b!1462316 (= res!991860 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462317 () Bool)

(declare-fun res!991850 () Bool)

(assert (=> b!1462317 (=> (not res!991850) (not e!822028))))

(assert (=> b!1462317 (= res!991850 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48173 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48173 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48173 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462318 () Bool)

(assert (=> b!1462318 (= e!822029 (= lt!640373 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640372 lt!640374 mask!2687)))))

(assert (= (and start!125312 res!991854) b!1462313))

(assert (= (and b!1462313 res!991865) b!1462301))

(assert (= (and b!1462301 res!991862) b!1462299))

(assert (= (and b!1462299 res!991852) b!1462307))

(assert (= (and b!1462307 res!991856) b!1462306))

(assert (= (and b!1462306 res!991864) b!1462317))

(assert (= (and b!1462317 res!991850) b!1462302))

(assert (= (and b!1462302 res!991849) b!1462315))

(assert (= (and b!1462315 res!991851) b!1462308))

(assert (= (and b!1462308 res!991859) b!1462304))

(assert (= (and b!1462304 res!991863) b!1462303))

(assert (= (and b!1462303 c!134738) b!1462318))

(assert (= (and b!1462303 (not c!134738)) b!1462312))

(assert (= (and b!1462303 res!991861) b!1462316))

(assert (= (and b!1462316 res!991860) b!1462309))

(assert (= (and b!1462309 res!991855) b!1462310))

(assert (= (and b!1462310 res!991866) b!1462305))

(assert (= (and b!1462309 (not res!991858)) b!1462300))

(assert (= (and b!1462300 (not res!991857)) b!1462311))

(assert (= (and b!1462311 (not res!991853)) b!1462314))

(assert (= (and b!1462314 c!134737) b!1462297))

(assert (= (and b!1462314 (not c!134737)) b!1462298))

(declare-fun m!1349819 () Bool)

(assert (=> b!1462301 m!1349819))

(assert (=> b!1462301 m!1349819))

(declare-fun m!1349821 () Bool)

(assert (=> b!1462301 m!1349821))

(declare-fun m!1349823 () Bool)

(assert (=> b!1462298 m!1349823))

(declare-fun m!1349825 () Bool)

(assert (=> b!1462298 m!1349825))

(declare-fun m!1349827 () Bool)

(assert (=> b!1462305 m!1349827))

(declare-fun m!1349829 () Bool)

(assert (=> b!1462305 m!1349829))

(declare-fun m!1349831 () Bool)

(assert (=> b!1462302 m!1349831))

(declare-fun m!1349833 () Bool)

(assert (=> b!1462302 m!1349833))

(declare-fun m!1349835 () Bool)

(assert (=> b!1462312 m!1349835))

(assert (=> b!1462312 m!1349825))

(declare-fun m!1349837 () Bool)

(assert (=> start!125312 m!1349837))

(declare-fun m!1349839 () Bool)

(assert (=> start!125312 m!1349839))

(declare-fun m!1349841 () Bool)

(assert (=> b!1462306 m!1349841))

(assert (=> b!1462315 m!1349829))

(assert (=> b!1462315 m!1349829))

(declare-fun m!1349843 () Bool)

(assert (=> b!1462315 m!1349843))

(assert (=> b!1462315 m!1349843))

(assert (=> b!1462315 m!1349829))

(declare-fun m!1349845 () Bool)

(assert (=> b!1462315 m!1349845))

(assert (=> b!1462311 m!1349829))

(assert (=> b!1462311 m!1349829))

(declare-fun m!1349847 () Bool)

(assert (=> b!1462311 m!1349847))

(assert (=> b!1462310 m!1349829))

(assert (=> b!1462310 m!1349829))

(declare-fun m!1349849 () Bool)

(assert (=> b!1462310 m!1349849))

(declare-fun m!1349851 () Bool)

(assert (=> b!1462318 m!1349851))

(assert (=> b!1462308 m!1349829))

(assert (=> b!1462308 m!1349829))

(declare-fun m!1349853 () Bool)

(assert (=> b!1462308 m!1349853))

(declare-fun m!1349855 () Bool)

(assert (=> b!1462300 m!1349855))

(assert (=> b!1462299 m!1349829))

(assert (=> b!1462299 m!1349829))

(declare-fun m!1349857 () Bool)

(assert (=> b!1462299 m!1349857))

(declare-fun m!1349859 () Bool)

(assert (=> b!1462297 m!1349859))

(declare-fun m!1349861 () Bool)

(assert (=> b!1462304 m!1349861))

(assert (=> b!1462304 m!1349861))

(declare-fun m!1349863 () Bool)

(assert (=> b!1462304 m!1349863))

(assert (=> b!1462304 m!1349831))

(declare-fun m!1349865 () Bool)

(assert (=> b!1462304 m!1349865))

(declare-fun m!1349867 () Bool)

(assert (=> b!1462307 m!1349867))

(declare-fun m!1349869 () Bool)

(assert (=> b!1462309 m!1349869))

(assert (=> b!1462309 m!1349831))

(declare-fun m!1349871 () Bool)

(assert (=> b!1462309 m!1349871))

(declare-fun m!1349873 () Bool)

(assert (=> b!1462309 m!1349873))

(declare-fun m!1349875 () Bool)

(assert (=> b!1462309 m!1349875))

(assert (=> b!1462309 m!1349829))

(push 1)

