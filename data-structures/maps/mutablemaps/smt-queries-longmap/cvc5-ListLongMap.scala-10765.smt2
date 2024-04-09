; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125950 () Bool)

(assert start!125950)

(declare-fun b!1474125 () Bool)

(declare-fun e!827163 () Bool)

(declare-fun e!827164 () Bool)

(assert (=> b!1474125 (= e!827163 e!827164)))

(declare-fun res!1001478 () Bool)

(assert (=> b!1474125 (=> (not res!1001478) (not e!827164))))

(declare-datatypes ((SeekEntryResult!12114 0))(
  ( (MissingZero!12114 (index!50847 (_ BitVec 32))) (Found!12114 (index!50848 (_ BitVec 32))) (Intermediate!12114 (undefined!12926 Bool) (index!50849 (_ BitVec 32)) (x!132433 (_ BitVec 32))) (Undefined!12114) (MissingVacant!12114 (index!50850 (_ BitVec 32))) )
))
(declare-fun lt!644121 () SeekEntryResult!12114)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1474125 (= res!1001478 (= lt!644121 (Intermediate!12114 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644123 () (_ BitVec 64))

(declare-datatypes ((array!99144 0))(
  ( (array!99145 (arr!47851 (Array (_ BitVec 32) (_ BitVec 64))) (size!48402 (_ BitVec 32))) )
))
(declare-fun lt!644122 () array!99144)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99144 (_ BitVec 32)) SeekEntryResult!12114)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474125 (= lt!644121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644123 mask!2687) lt!644123 lt!644122 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99144)

(assert (=> b!1474125 (= lt!644123 (select (store (arr!47851 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474126 () Bool)

(declare-fun res!1001473 () Bool)

(declare-fun e!827159 () Bool)

(assert (=> b!1474126 (=> (not res!1001473) (not e!827159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474126 (= res!1001473 (validKeyInArray!0 (select (arr!47851 a!2862) j!93)))))

(declare-fun b!1474127 () Bool)

(declare-fun res!1001476 () Bool)

(assert (=> b!1474127 (=> (not res!1001476) (not e!827159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99144 (_ BitVec 32)) Bool)

(assert (=> b!1474127 (= res!1001476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1474128 () Bool)

(declare-fun e!827160 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99144 (_ BitVec 32)) SeekEntryResult!12114)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99144 (_ BitVec 32)) SeekEntryResult!12114)

(assert (=> b!1474128 (= e!827160 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644123 lt!644122 mask!2687) (seekEntryOrOpen!0 lt!644123 lt!644122 mask!2687)))))

(declare-fun res!1001471 () Bool)

(assert (=> start!125950 (=> (not res!1001471) (not e!827159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125950 (= res!1001471 (validMask!0 mask!2687))))

(assert (=> start!125950 e!827159))

(assert (=> start!125950 true))

(declare-fun array_inv!36796 (array!99144) Bool)

(assert (=> start!125950 (array_inv!36796 a!2862)))

(declare-fun b!1474129 () Bool)

(declare-fun e!827165 () Bool)

(assert (=> b!1474129 (= e!827165 e!827163)))

(declare-fun res!1001477 () Bool)

(assert (=> b!1474129 (=> (not res!1001477) (not e!827163))))

(declare-fun lt!644125 () SeekEntryResult!12114)

(assert (=> b!1474129 (= res!1001477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47851 a!2862) j!93) mask!2687) (select (arr!47851 a!2862) j!93) a!2862 mask!2687) lt!644125))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474129 (= lt!644125 (Intermediate!12114 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474130 () Bool)

(declare-fun res!1001474 () Bool)

(assert (=> b!1474130 (=> (not res!1001474) (not e!827164))))

(assert (=> b!1474130 (= res!1001474 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474131 () Bool)

(assert (=> b!1474131 (= e!827159 e!827165)))

(declare-fun res!1001467 () Bool)

(assert (=> b!1474131 (=> (not res!1001467) (not e!827165))))

(assert (=> b!1474131 (= res!1001467 (= (select (store (arr!47851 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474131 (= lt!644122 (array!99145 (store (arr!47851 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48402 a!2862)))))

(declare-fun b!1474132 () Bool)

(assert (=> b!1474132 (= e!827160 (= lt!644121 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644123 lt!644122 mask!2687)))))

(declare-fun b!1474133 () Bool)

(declare-fun res!1001468 () Bool)

(assert (=> b!1474133 (=> (not res!1001468) (not e!827163))))

(assert (=> b!1474133 (= res!1001468 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47851 a!2862) j!93) a!2862 mask!2687) lt!644125))))

(declare-fun b!1474134 () Bool)

(declare-fun res!1001469 () Bool)

(assert (=> b!1474134 (=> (not res!1001469) (not e!827159))))

(assert (=> b!1474134 (= res!1001469 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48402 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48402 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48402 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474135 () Bool)

(declare-fun res!1001464 () Bool)

(assert (=> b!1474135 (=> (not res!1001464) (not e!827159))))

(declare-datatypes ((List!34532 0))(
  ( (Nil!34529) (Cons!34528 (h!35887 (_ BitVec 64)) (t!49233 List!34532)) )
))
(declare-fun arrayNoDuplicates!0 (array!99144 (_ BitVec 32) List!34532) Bool)

(assert (=> b!1474135 (= res!1001464 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34529))))

(declare-fun b!1474136 () Bool)

(declare-fun res!1001475 () Bool)

(assert (=> b!1474136 (=> (not res!1001475) (not e!827159))))

(assert (=> b!1474136 (= res!1001475 (validKeyInArray!0 (select (arr!47851 a!2862) i!1006)))))

(declare-fun b!1474137 () Bool)

(declare-fun res!1001472 () Bool)

(assert (=> b!1474137 (=> (not res!1001472) (not e!827159))))

(assert (=> b!1474137 (= res!1001472 (and (= (size!48402 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48402 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48402 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474138 () Bool)

(declare-fun res!1001466 () Bool)

(assert (=> b!1474138 (=> (not res!1001466) (not e!827164))))

(assert (=> b!1474138 (= res!1001466 e!827160)))

(declare-fun c!135848 () Bool)

(assert (=> b!1474138 (= c!135848 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474139 () Bool)

(declare-fun res!1001465 () Bool)

(declare-fun e!827161 () Bool)

(assert (=> b!1474139 (=> (not res!1001465) (not e!827161))))

(assert (=> b!1474139 (= res!1001465 (= (seekEntryOrOpen!0 (select (arr!47851 a!2862) j!93) a!2862 mask!2687) (Found!12114 j!93)))))

(declare-fun b!1474140 () Bool)

(assert (=> b!1474140 (= e!827164 (not true))))

(assert (=> b!1474140 e!827161))

(declare-fun res!1001470 () Bool)

(assert (=> b!1474140 (=> (not res!1001470) (not e!827161))))

(assert (=> b!1474140 (= res!1001470 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49516 0))(
  ( (Unit!49517) )
))
(declare-fun lt!644124 () Unit!49516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99144 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49516)

(assert (=> b!1474140 (= lt!644124 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474141 () Bool)

(assert (=> b!1474141 (= e!827161 (or (= (select (arr!47851 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47851 a!2862) intermediateBeforeIndex!19) (select (arr!47851 a!2862) j!93))))))

(assert (= (and start!125950 res!1001471) b!1474137))

(assert (= (and b!1474137 res!1001472) b!1474136))

(assert (= (and b!1474136 res!1001475) b!1474126))

(assert (= (and b!1474126 res!1001473) b!1474127))

(assert (= (and b!1474127 res!1001476) b!1474135))

(assert (= (and b!1474135 res!1001464) b!1474134))

(assert (= (and b!1474134 res!1001469) b!1474131))

(assert (= (and b!1474131 res!1001467) b!1474129))

(assert (= (and b!1474129 res!1001477) b!1474133))

(assert (= (and b!1474133 res!1001468) b!1474125))

(assert (= (and b!1474125 res!1001478) b!1474138))

(assert (= (and b!1474138 c!135848) b!1474132))

(assert (= (and b!1474138 (not c!135848)) b!1474128))

(assert (= (and b!1474138 res!1001466) b!1474130))

(assert (= (and b!1474130 res!1001474) b!1474140))

(assert (= (and b!1474140 res!1001470) b!1474139))

(assert (= (and b!1474139 res!1001465) b!1474141))

(declare-fun m!1360653 () Bool)

(assert (=> b!1474136 m!1360653))

(assert (=> b!1474136 m!1360653))

(declare-fun m!1360655 () Bool)

(assert (=> b!1474136 m!1360655))

(declare-fun m!1360657 () Bool)

(assert (=> b!1474140 m!1360657))

(declare-fun m!1360659 () Bool)

(assert (=> b!1474140 m!1360659))

(declare-fun m!1360661 () Bool)

(assert (=> b!1474131 m!1360661))

(declare-fun m!1360663 () Bool)

(assert (=> b!1474131 m!1360663))

(declare-fun m!1360665 () Bool)

(assert (=> b!1474139 m!1360665))

(assert (=> b!1474139 m!1360665))

(declare-fun m!1360667 () Bool)

(assert (=> b!1474139 m!1360667))

(declare-fun m!1360669 () Bool)

(assert (=> b!1474125 m!1360669))

(assert (=> b!1474125 m!1360669))

(declare-fun m!1360671 () Bool)

(assert (=> b!1474125 m!1360671))

(assert (=> b!1474125 m!1360661))

(declare-fun m!1360673 () Bool)

(assert (=> b!1474125 m!1360673))

(declare-fun m!1360675 () Bool)

(assert (=> b!1474132 m!1360675))

(assert (=> b!1474133 m!1360665))

(assert (=> b!1474133 m!1360665))

(declare-fun m!1360677 () Bool)

(assert (=> b!1474133 m!1360677))

(declare-fun m!1360679 () Bool)

(assert (=> start!125950 m!1360679))

(declare-fun m!1360681 () Bool)

(assert (=> start!125950 m!1360681))

(assert (=> b!1474126 m!1360665))

(assert (=> b!1474126 m!1360665))

(declare-fun m!1360683 () Bool)

(assert (=> b!1474126 m!1360683))

(declare-fun m!1360685 () Bool)

(assert (=> b!1474128 m!1360685))

(declare-fun m!1360687 () Bool)

(assert (=> b!1474128 m!1360687))

(declare-fun m!1360689 () Bool)

(assert (=> b!1474127 m!1360689))

(declare-fun m!1360691 () Bool)

(assert (=> b!1474135 m!1360691))

(declare-fun m!1360693 () Bool)

(assert (=> b!1474141 m!1360693))

(assert (=> b!1474141 m!1360665))

(assert (=> b!1474129 m!1360665))

(assert (=> b!1474129 m!1360665))

(declare-fun m!1360695 () Bool)

(assert (=> b!1474129 m!1360695))

(assert (=> b!1474129 m!1360695))

(assert (=> b!1474129 m!1360665))

(declare-fun m!1360697 () Bool)

(assert (=> b!1474129 m!1360697))

(push 1)

