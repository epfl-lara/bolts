; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125924 () Bool)

(assert start!125924)

(declare-fun b!1473425 () Bool)

(declare-fun res!1000842 () Bool)

(declare-fun e!826856 () Bool)

(assert (=> b!1473425 (=> (not res!1000842) (not e!826856))))

(declare-datatypes ((array!99118 0))(
  ( (array!99119 (arr!47838 (Array (_ BitVec 32) (_ BitVec 64))) (size!48389 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99118)

(declare-datatypes ((List!34519 0))(
  ( (Nil!34516) (Cons!34515 (h!35874 (_ BitVec 64)) (t!49220 List!34519)) )
))
(declare-fun arrayNoDuplicates!0 (array!99118 (_ BitVec 32) List!34519) Bool)

(assert (=> b!1473425 (= res!1000842 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34516))))

(declare-fun b!1473426 () Bool)

(declare-fun res!1000848 () Bool)

(declare-fun e!826852 () Bool)

(assert (=> b!1473426 (=> (not res!1000848) (not e!826852))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1473426 (= res!1000848 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473427 () Bool)

(declare-fun res!1000855 () Bool)

(assert (=> b!1473427 (=> (not res!1000855) (not e!826856))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473427 (= res!1000855 (validKeyInArray!0 (select (arr!47838 a!2862) j!93)))))

(declare-fun b!1473428 () Bool)

(declare-fun e!826855 () Bool)

(assert (=> b!1473428 (= e!826856 e!826855)))

(declare-fun res!1000845 () Bool)

(assert (=> b!1473428 (=> (not res!1000845) (not e!826855))))

(assert (=> b!1473428 (= res!1000845 (= (select (store (arr!47838 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!643893 () array!99118)

(assert (=> b!1473428 (= lt!643893 (array!99119 (store (arr!47838 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48389 a!2862)))))

(declare-fun b!1473429 () Bool)

(declare-fun res!1000843 () Bool)

(assert (=> b!1473429 (=> (not res!1000843) (not e!826856))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1473429 (= res!1000843 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48389 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48389 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48389 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473430 () Bool)

(declare-fun res!1000853 () Bool)

(assert (=> b!1473430 (=> (not res!1000853) (not e!826856))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1473430 (= res!1000853 (and (= (size!48389 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48389 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48389 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473431 () Bool)

(declare-fun res!1000854 () Bool)

(declare-fun e!826853 () Bool)

(assert (=> b!1473431 (=> (not res!1000854) (not e!826853))))

(declare-datatypes ((SeekEntryResult!12101 0))(
  ( (MissingZero!12101 (index!50795 (_ BitVec 32))) (Found!12101 (index!50796 (_ BitVec 32))) (Intermediate!12101 (undefined!12913 Bool) (index!50797 (_ BitVec 32)) (x!132380 (_ BitVec 32))) (Undefined!12101) (MissingVacant!12101 (index!50798 (_ BitVec 32))) )
))
(declare-fun lt!643892 () SeekEntryResult!12101)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99118 (_ BitVec 32)) SeekEntryResult!12101)

(assert (=> b!1473431 (= res!1000854 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47838 a!2862) j!93) a!2862 mask!2687) lt!643892))))

(declare-fun b!1473432 () Bool)

(declare-fun res!1000856 () Bool)

(declare-fun e!826850 () Bool)

(assert (=> b!1473432 (=> (not res!1000856) (not e!826850))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99118 (_ BitVec 32)) SeekEntryResult!12101)

(assert (=> b!1473432 (= res!1000856 (= (seekEntryOrOpen!0 (select (arr!47838 a!2862) j!93) a!2862 mask!2687) (Found!12101 j!93)))))

(declare-fun b!1473433 () Bool)

(declare-fun res!1000847 () Bool)

(assert (=> b!1473433 (=> (not res!1000847) (not e!826856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99118 (_ BitVec 32)) Bool)

(assert (=> b!1473433 (= res!1000847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473435 () Bool)

(assert (=> b!1473435 (= e!826850 (or (= (select (arr!47838 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47838 a!2862) intermediateBeforeIndex!19) (select (arr!47838 a!2862) j!93))))))

(declare-fun b!1473436 () Bool)

(declare-fun res!1000844 () Bool)

(assert (=> b!1473436 (=> (not res!1000844) (not e!826856))))

(assert (=> b!1473436 (= res!1000844 (validKeyInArray!0 (select (arr!47838 a!2862) i!1006)))))

(declare-fun e!826854 () Bool)

(declare-fun lt!643894 () (_ BitVec 64))

(declare-fun b!1473437 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99118 (_ BitVec 32)) SeekEntryResult!12101)

(assert (=> b!1473437 (= e!826854 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643894 lt!643893 mask!2687) (seekEntryOrOpen!0 lt!643894 lt!643893 mask!2687)))))

(declare-fun b!1473438 () Bool)

(assert (=> b!1473438 (= e!826853 e!826852)))

(declare-fun res!1000849 () Bool)

(assert (=> b!1473438 (=> (not res!1000849) (not e!826852))))

(declare-fun lt!643890 () SeekEntryResult!12101)

(assert (=> b!1473438 (= res!1000849 (= lt!643890 (Intermediate!12101 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473438 (= lt!643890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643894 mask!2687) lt!643894 lt!643893 mask!2687))))

(assert (=> b!1473438 (= lt!643894 (select (store (arr!47838 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473434 () Bool)

(declare-fun res!1000850 () Bool)

(assert (=> b!1473434 (=> (not res!1000850) (not e!826852))))

(assert (=> b!1473434 (= res!1000850 e!826854)))

(declare-fun c!135809 () Bool)

(assert (=> b!1473434 (= c!135809 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1000857 () Bool)

(assert (=> start!125924 (=> (not res!1000857) (not e!826856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125924 (= res!1000857 (validMask!0 mask!2687))))

(assert (=> start!125924 e!826856))

(assert (=> start!125924 true))

(declare-fun array_inv!36783 (array!99118) Bool)

(assert (=> start!125924 (array_inv!36783 a!2862)))

(declare-fun b!1473439 () Bool)

(assert (=> b!1473439 (= e!826855 e!826853)))

(declare-fun res!1000851 () Bool)

(assert (=> b!1473439 (=> (not res!1000851) (not e!826853))))

(assert (=> b!1473439 (= res!1000851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47838 a!2862) j!93) mask!2687) (select (arr!47838 a!2862) j!93) a!2862 mask!2687) lt!643892))))

(assert (=> b!1473439 (= lt!643892 (Intermediate!12101 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1473440 () Bool)

(declare-fun e!826851 () Bool)

(assert (=> b!1473440 (= e!826852 (not e!826851))))

(declare-fun res!1000846 () Bool)

(assert (=> b!1473440 (=> res!1000846 e!826851)))

(assert (=> b!1473440 (= res!1000846 (or (not (= (select (arr!47838 a!2862) index!646) (select (store (arr!47838 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47838 a!2862) index!646) (select (arr!47838 a!2862) j!93)))))))

(assert (=> b!1473440 e!826850))

(declare-fun res!1000852 () Bool)

(assert (=> b!1473440 (=> (not res!1000852) (not e!826850))))

(assert (=> b!1473440 (= res!1000852 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49490 0))(
  ( (Unit!49491) )
))
(declare-fun lt!643891 () Unit!49490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99118 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49490)

(assert (=> b!1473440 (= lt!643891 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473441 () Bool)

(assert (=> b!1473441 (= e!826854 (= lt!643890 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643894 lt!643893 mask!2687)))))

(declare-fun b!1473442 () Bool)

(assert (=> b!1473442 (= e!826851 true)))

(declare-fun lt!643889 () SeekEntryResult!12101)

(assert (=> b!1473442 (= lt!643889 (seekEntryOrOpen!0 lt!643894 lt!643893 mask!2687))))

(assert (= (and start!125924 res!1000857) b!1473430))

(assert (= (and b!1473430 res!1000853) b!1473436))

(assert (= (and b!1473436 res!1000844) b!1473427))

(assert (= (and b!1473427 res!1000855) b!1473433))

(assert (= (and b!1473433 res!1000847) b!1473425))

(assert (= (and b!1473425 res!1000842) b!1473429))

(assert (= (and b!1473429 res!1000843) b!1473428))

(assert (= (and b!1473428 res!1000845) b!1473439))

(assert (= (and b!1473439 res!1000851) b!1473431))

(assert (= (and b!1473431 res!1000854) b!1473438))

(assert (= (and b!1473438 res!1000849) b!1473434))

(assert (= (and b!1473434 c!135809) b!1473441))

(assert (= (and b!1473434 (not c!135809)) b!1473437))

(assert (= (and b!1473434 res!1000850) b!1473426))

(assert (= (and b!1473426 res!1000848) b!1473440))

(assert (= (and b!1473440 res!1000852) b!1473432))

(assert (= (and b!1473432 res!1000856) b!1473435))

(assert (= (and b!1473440 (not res!1000846)) b!1473442))

(declare-fun m!1360003 () Bool)

(assert (=> b!1473431 m!1360003))

(assert (=> b!1473431 m!1360003))

(declare-fun m!1360005 () Bool)

(assert (=> b!1473431 m!1360005))

(assert (=> b!1473439 m!1360003))

(assert (=> b!1473439 m!1360003))

(declare-fun m!1360007 () Bool)

(assert (=> b!1473439 m!1360007))

(assert (=> b!1473439 m!1360007))

(assert (=> b!1473439 m!1360003))

(declare-fun m!1360009 () Bool)

(assert (=> b!1473439 m!1360009))

(declare-fun m!1360011 () Bool)

(assert (=> b!1473433 m!1360011))

(declare-fun m!1360013 () Bool)

(assert (=> b!1473425 m!1360013))

(declare-fun m!1360015 () Bool)

(assert (=> b!1473438 m!1360015))

(assert (=> b!1473438 m!1360015))

(declare-fun m!1360017 () Bool)

(assert (=> b!1473438 m!1360017))

(declare-fun m!1360019 () Bool)

(assert (=> b!1473438 m!1360019))

(declare-fun m!1360021 () Bool)

(assert (=> b!1473438 m!1360021))

(assert (=> b!1473427 m!1360003))

(assert (=> b!1473427 m!1360003))

(declare-fun m!1360023 () Bool)

(assert (=> b!1473427 m!1360023))

(declare-fun m!1360025 () Bool)

(assert (=> start!125924 m!1360025))

(declare-fun m!1360027 () Bool)

(assert (=> start!125924 m!1360027))

(declare-fun m!1360029 () Bool)

(assert (=> b!1473441 m!1360029))

(declare-fun m!1360031 () Bool)

(assert (=> b!1473435 m!1360031))

(assert (=> b!1473435 m!1360003))

(declare-fun m!1360033 () Bool)

(assert (=> b!1473437 m!1360033))

(declare-fun m!1360035 () Bool)

(assert (=> b!1473437 m!1360035))

(declare-fun m!1360037 () Bool)

(assert (=> b!1473436 m!1360037))

(assert (=> b!1473436 m!1360037))

(declare-fun m!1360039 () Bool)

(assert (=> b!1473436 m!1360039))

(declare-fun m!1360041 () Bool)

(assert (=> b!1473440 m!1360041))

(assert (=> b!1473440 m!1360019))

(declare-fun m!1360043 () Bool)

(assert (=> b!1473440 m!1360043))

(declare-fun m!1360045 () Bool)

(assert (=> b!1473440 m!1360045))

(declare-fun m!1360047 () Bool)

(assert (=> b!1473440 m!1360047))

(assert (=> b!1473440 m!1360003))

(assert (=> b!1473432 m!1360003))

(assert (=> b!1473432 m!1360003))

(declare-fun m!1360049 () Bool)

(assert (=> b!1473432 m!1360049))

(assert (=> b!1473428 m!1360019))

(declare-fun m!1360051 () Bool)

(assert (=> b!1473428 m!1360051))

(assert (=> b!1473442 m!1360035))

(push 1)

