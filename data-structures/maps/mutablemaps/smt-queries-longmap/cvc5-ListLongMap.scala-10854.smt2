; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127144 () Bool)

(assert start!127144)

(declare-fun b!1493678 () Bool)

(declare-fun res!1016236 () Bool)

(declare-fun e!836753 () Bool)

(assert (=> b!1493678 (=> (not res!1016236) (not e!836753))))

(declare-datatypes ((array!99708 0))(
  ( (array!99709 (arr!48118 (Array (_ BitVec 32) (_ BitVec 64))) (size!48669 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99708)

(declare-datatypes ((List!34799 0))(
  ( (Nil!34796) (Cons!34795 (h!36184 (_ BitVec 64)) (t!49500 List!34799)) )
))
(declare-fun arrayNoDuplicates!0 (array!99708 (_ BitVec 32) List!34799) Bool)

(assert (=> b!1493678 (= res!1016236 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34796))))

(declare-fun b!1493679 () Bool)

(declare-fun e!836759 () Bool)

(declare-fun e!836756 () Bool)

(assert (=> b!1493679 (= e!836759 (not e!836756))))

(declare-fun res!1016247 () Bool)

(assert (=> b!1493679 (=> res!1016247 e!836756)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1493679 (= res!1016247 (or (and (= (select (arr!48118 a!2862) index!646) (select (store (arr!48118 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48118 a!2862) index!646) (select (arr!48118 a!2862) j!93))) (= (select (arr!48118 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836758 () Bool)

(assert (=> b!1493679 e!836758))

(declare-fun res!1016235 () Bool)

(assert (=> b!1493679 (=> (not res!1016235) (not e!836758))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99708 (_ BitVec 32)) Bool)

(assert (=> b!1493679 (= res!1016235 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50050 0))(
  ( (Unit!50051) )
))
(declare-fun lt!651074 () Unit!50050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99708 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50050)

(assert (=> b!1493679 (= lt!651074 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493680 () Bool)

(declare-fun res!1016244 () Bool)

(assert (=> b!1493680 (=> (not res!1016244) (not e!836753))))

(assert (=> b!1493680 (= res!1016244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1493681 () Bool)

(assert (=> b!1493681 (= e!836758 (or (= (select (arr!48118 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48118 a!2862) intermediateBeforeIndex!19) (select (arr!48118 a!2862) j!93))))))

(declare-fun b!1493682 () Bool)

(declare-fun res!1016237 () Bool)

(assert (=> b!1493682 (=> (not res!1016237) (not e!836753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493682 (= res!1016237 (validKeyInArray!0 (select (arr!48118 a!2862) j!93)))))

(declare-fun res!1016250 () Bool)

(assert (=> start!127144 (=> (not res!1016250) (not e!836753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127144 (= res!1016250 (validMask!0 mask!2687))))

(assert (=> start!127144 e!836753))

(assert (=> start!127144 true))

(declare-fun array_inv!37063 (array!99708) Bool)

(assert (=> start!127144 (array_inv!37063 a!2862)))

(declare-fun e!836752 () Bool)

(declare-fun lt!651072 () array!99708)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1493683 () Bool)

(declare-fun lt!651071 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12381 0))(
  ( (MissingZero!12381 (index!51915 (_ BitVec 32))) (Found!12381 (index!51916 (_ BitVec 32))) (Intermediate!12381 (undefined!13193 Bool) (index!51917 (_ BitVec 32)) (x!133520 (_ BitVec 32))) (Undefined!12381) (MissingVacant!12381 (index!51918 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99708 (_ BitVec 32)) SeekEntryResult!12381)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99708 (_ BitVec 32)) SeekEntryResult!12381)

(assert (=> b!1493683 (= e!836752 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651071 lt!651072 mask!2687) (seekEntryOrOpen!0 lt!651071 lt!651072 mask!2687)))))

(declare-fun b!1493684 () Bool)

(declare-fun res!1016243 () Bool)

(assert (=> b!1493684 (=> (not res!1016243) (not e!836753))))

(assert (=> b!1493684 (= res!1016243 (validKeyInArray!0 (select (arr!48118 a!2862) i!1006)))))

(declare-fun b!1493685 () Bool)

(assert (=> b!1493685 (= e!836756 true)))

(declare-fun lt!651076 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493685 (= lt!651076 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493686 () Bool)

(declare-fun res!1016248 () Bool)

(assert (=> b!1493686 (=> (not res!1016248) (not e!836759))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1493686 (= res!1016248 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493687 () Bool)

(declare-fun res!1016240 () Bool)

(assert (=> b!1493687 (=> (not res!1016240) (not e!836753))))

(assert (=> b!1493687 (= res!1016240 (and (= (size!48669 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48669 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48669 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493688 () Bool)

(declare-fun res!1016238 () Bool)

(declare-fun e!836755 () Bool)

(assert (=> b!1493688 (=> (not res!1016238) (not e!836755))))

(declare-fun lt!651073 () SeekEntryResult!12381)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99708 (_ BitVec 32)) SeekEntryResult!12381)

(assert (=> b!1493688 (= res!1016238 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48118 a!2862) j!93) a!2862 mask!2687) lt!651073))))

(declare-fun b!1493689 () Bool)

(declare-fun res!1016241 () Bool)

(assert (=> b!1493689 (=> (not res!1016241) (not e!836758))))

(assert (=> b!1493689 (= res!1016241 (= (seekEntryOrOpen!0 (select (arr!48118 a!2862) j!93) a!2862 mask!2687) (Found!12381 j!93)))))

(declare-fun b!1493690 () Bool)

(declare-fun res!1016246 () Bool)

(assert (=> b!1493690 (=> (not res!1016246) (not e!836753))))

(assert (=> b!1493690 (= res!1016246 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48669 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48669 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48669 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493691 () Bool)

(declare-fun lt!651075 () SeekEntryResult!12381)

(assert (=> b!1493691 (= e!836752 (= lt!651075 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651071 lt!651072 mask!2687)))))

(declare-fun b!1493692 () Bool)

(declare-fun e!836757 () Bool)

(assert (=> b!1493692 (= e!836753 e!836757)))

(declare-fun res!1016249 () Bool)

(assert (=> b!1493692 (=> (not res!1016249) (not e!836757))))

(assert (=> b!1493692 (= res!1016249 (= (select (store (arr!48118 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493692 (= lt!651072 (array!99709 (store (arr!48118 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48669 a!2862)))))

(declare-fun b!1493693 () Bool)

(assert (=> b!1493693 (= e!836755 e!836759)))

(declare-fun res!1016245 () Bool)

(assert (=> b!1493693 (=> (not res!1016245) (not e!836759))))

(assert (=> b!1493693 (= res!1016245 (= lt!651075 (Intermediate!12381 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493693 (= lt!651075 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651071 mask!2687) lt!651071 lt!651072 mask!2687))))

(assert (=> b!1493693 (= lt!651071 (select (store (arr!48118 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493694 () Bool)

(declare-fun res!1016242 () Bool)

(assert (=> b!1493694 (=> (not res!1016242) (not e!836759))))

(assert (=> b!1493694 (= res!1016242 e!836752)))

(declare-fun c!138254 () Bool)

(assert (=> b!1493694 (= c!138254 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493695 () Bool)

(assert (=> b!1493695 (= e!836757 e!836755)))

(declare-fun res!1016239 () Bool)

(assert (=> b!1493695 (=> (not res!1016239) (not e!836755))))

(assert (=> b!1493695 (= res!1016239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48118 a!2862) j!93) mask!2687) (select (arr!48118 a!2862) j!93) a!2862 mask!2687) lt!651073))))

(assert (=> b!1493695 (= lt!651073 (Intermediate!12381 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!127144 res!1016250) b!1493687))

(assert (= (and b!1493687 res!1016240) b!1493684))

(assert (= (and b!1493684 res!1016243) b!1493682))

(assert (= (and b!1493682 res!1016237) b!1493680))

(assert (= (and b!1493680 res!1016244) b!1493678))

(assert (= (and b!1493678 res!1016236) b!1493690))

(assert (= (and b!1493690 res!1016246) b!1493692))

(assert (= (and b!1493692 res!1016249) b!1493695))

(assert (= (and b!1493695 res!1016239) b!1493688))

(assert (= (and b!1493688 res!1016238) b!1493693))

(assert (= (and b!1493693 res!1016245) b!1493694))

(assert (= (and b!1493694 c!138254) b!1493691))

(assert (= (and b!1493694 (not c!138254)) b!1493683))

(assert (= (and b!1493694 res!1016242) b!1493686))

(assert (= (and b!1493686 res!1016248) b!1493679))

(assert (= (and b!1493679 res!1016235) b!1493689))

(assert (= (and b!1493689 res!1016241) b!1493681))

(assert (= (and b!1493679 (not res!1016247)) b!1493685))

(declare-fun m!1377507 () Bool)

(assert (=> start!127144 m!1377507))

(declare-fun m!1377509 () Bool)

(assert (=> start!127144 m!1377509))

(declare-fun m!1377511 () Bool)

(assert (=> b!1493685 m!1377511))

(declare-fun m!1377513 () Bool)

(assert (=> b!1493682 m!1377513))

(assert (=> b!1493682 m!1377513))

(declare-fun m!1377515 () Bool)

(assert (=> b!1493682 m!1377515))

(declare-fun m!1377517 () Bool)

(assert (=> b!1493679 m!1377517))

(declare-fun m!1377519 () Bool)

(assert (=> b!1493679 m!1377519))

(declare-fun m!1377521 () Bool)

(assert (=> b!1493679 m!1377521))

(declare-fun m!1377523 () Bool)

(assert (=> b!1493679 m!1377523))

(declare-fun m!1377525 () Bool)

(assert (=> b!1493679 m!1377525))

(assert (=> b!1493679 m!1377513))

(assert (=> b!1493689 m!1377513))

(assert (=> b!1493689 m!1377513))

(declare-fun m!1377527 () Bool)

(assert (=> b!1493689 m!1377527))

(assert (=> b!1493695 m!1377513))

(assert (=> b!1493695 m!1377513))

(declare-fun m!1377529 () Bool)

(assert (=> b!1493695 m!1377529))

(assert (=> b!1493695 m!1377529))

(assert (=> b!1493695 m!1377513))

(declare-fun m!1377531 () Bool)

(assert (=> b!1493695 m!1377531))

(assert (=> b!1493688 m!1377513))

(assert (=> b!1493688 m!1377513))

(declare-fun m!1377533 () Bool)

(assert (=> b!1493688 m!1377533))

(declare-fun m!1377535 () Bool)

(assert (=> b!1493693 m!1377535))

(assert (=> b!1493693 m!1377535))

(declare-fun m!1377537 () Bool)

(assert (=> b!1493693 m!1377537))

(assert (=> b!1493693 m!1377519))

(declare-fun m!1377539 () Bool)

(assert (=> b!1493693 m!1377539))

(declare-fun m!1377541 () Bool)

(assert (=> b!1493684 m!1377541))

(assert (=> b!1493684 m!1377541))

(declare-fun m!1377543 () Bool)

(assert (=> b!1493684 m!1377543))

(declare-fun m!1377545 () Bool)

(assert (=> b!1493678 m!1377545))

(declare-fun m!1377547 () Bool)

(assert (=> b!1493683 m!1377547))

(declare-fun m!1377549 () Bool)

(assert (=> b!1493683 m!1377549))

(declare-fun m!1377551 () Bool)

(assert (=> b!1493691 m!1377551))

(declare-fun m!1377553 () Bool)

(assert (=> b!1493680 m!1377553))

(declare-fun m!1377555 () Bool)

(assert (=> b!1493681 m!1377555))

(assert (=> b!1493681 m!1377513))

(assert (=> b!1493692 m!1377519))

(declare-fun m!1377557 () Bool)

(assert (=> b!1493692 m!1377557))

(push 1)

