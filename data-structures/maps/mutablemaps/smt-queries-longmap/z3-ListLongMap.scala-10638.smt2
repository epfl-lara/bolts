; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125010 () Bool)

(assert start!125010)

(declare-fun b!1452630 () Bool)

(declare-fun res!983824 () Bool)

(declare-fun e!817731 () Bool)

(assert (=> b!1452630 (=> (not res!983824) (not e!817731))))

(declare-datatypes ((array!98375 0))(
  ( (array!98376 (arr!47471 (Array (_ BitVec 32) (_ BitVec 64))) (size!48022 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98375)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452630 (= res!983824 (validKeyInArray!0 (select (arr!47471 a!2862) i!1006)))))

(declare-fun b!1452631 () Bool)

(declare-fun res!983834 () Bool)

(assert (=> b!1452631 (=> (not res!983834) (not e!817731))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98375 (_ BitVec 32)) Bool)

(assert (=> b!1452631 (= res!983834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452632 () Bool)

(declare-fun res!983829 () Bool)

(assert (=> b!1452632 (=> (not res!983829) (not e!817731))))

(declare-datatypes ((List!34152 0))(
  ( (Nil!34149) (Cons!34148 (h!35498 (_ BitVec 64)) (t!48853 List!34152)) )
))
(declare-fun arrayNoDuplicates!0 (array!98375 (_ BitVec 32) List!34152) Bool)

(assert (=> b!1452632 (= res!983829 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34149))))

(declare-fun lt!636964 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!636967 () array!98375)

(declare-datatypes ((SeekEntryResult!11746 0))(
  ( (MissingZero!11746 (index!49375 (_ BitVec 32))) (Found!11746 (index!49376 (_ BitVec 32))) (Intermediate!11746 (undefined!12558 Bool) (index!49377 (_ BitVec 32)) (x!131022 (_ BitVec 32))) (Undefined!11746) (MissingVacant!11746 (index!49378 (_ BitVec 32))) )
))
(declare-fun lt!636966 () SeekEntryResult!11746)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1452633 () Bool)

(declare-fun e!817733 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98375 (_ BitVec 32)) SeekEntryResult!11746)

(assert (=> b!1452633 (= e!817733 (= lt!636966 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636964 lt!636967 mask!2687)))))

(declare-fun b!1452635 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98375 (_ BitVec 32)) SeekEntryResult!11746)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98375 (_ BitVec 32)) SeekEntryResult!11746)

(assert (=> b!1452635 (= e!817733 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636964 lt!636967 mask!2687) (seekEntryOrOpen!0 lt!636964 lt!636967 mask!2687)))))

(declare-fun b!1452636 () Bool)

(declare-fun res!983828 () Bool)

(declare-fun e!817736 () Bool)

(assert (=> b!1452636 (=> (not res!983828) (not e!817736))))

(assert (=> b!1452636 (= res!983828 e!817733)))

(declare-fun c!133916 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452636 (= c!133916 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452637 () Bool)

(declare-fun res!983825 () Bool)

(assert (=> b!1452637 (=> (not res!983825) (not e!817731))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452637 (= res!983825 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48022 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48022 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48022 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452638 () Bool)

(declare-fun res!983832 () Bool)

(assert (=> b!1452638 (=> (not res!983832) (not e!817731))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1452638 (= res!983832 (validKeyInArray!0 (select (arr!47471 a!2862) j!93)))))

(declare-fun b!1452639 () Bool)

(declare-fun e!817732 () Bool)

(assert (=> b!1452639 (= e!817732 (and (or (= (select (arr!47471 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47471 a!2862) intermediateBeforeIndex!19) (select (arr!47471 a!2862) j!93))) (or (and (= (select (arr!47471 a!2862) index!646) (select (store (arr!47471 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47471 a!2862) index!646) (select (arr!47471 a!2862) j!93))) (= (select (arr!47471 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47471 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452640 () Bool)

(declare-fun e!817735 () Bool)

(assert (=> b!1452640 (= e!817735 e!817736)))

(declare-fun res!983836 () Bool)

(assert (=> b!1452640 (=> (not res!983836) (not e!817736))))

(assert (=> b!1452640 (= res!983836 (= lt!636966 (Intermediate!11746 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452640 (= lt!636966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636964 mask!2687) lt!636964 lt!636967 mask!2687))))

(assert (=> b!1452640 (= lt!636964 (select (store (arr!47471 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452641 () Bool)

(declare-fun res!983826 () Bool)

(assert (=> b!1452641 (=> (not res!983826) (not e!817736))))

(assert (=> b!1452641 (= res!983826 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452642 () Bool)

(declare-fun res!983831 () Bool)

(assert (=> b!1452642 (=> (not res!983831) (not e!817731))))

(assert (=> b!1452642 (= res!983831 (and (= (size!48022 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48022 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48022 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452634 () Bool)

(declare-fun e!817734 () Bool)

(assert (=> b!1452634 (= e!817731 e!817734)))

(declare-fun res!983830 () Bool)

(assert (=> b!1452634 (=> (not res!983830) (not e!817734))))

(assert (=> b!1452634 (= res!983830 (= (select (store (arr!47471 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452634 (= lt!636967 (array!98376 (store (arr!47471 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48022 a!2862)))))

(declare-fun res!983837 () Bool)

(assert (=> start!125010 (=> (not res!983837) (not e!817731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125010 (= res!983837 (validMask!0 mask!2687))))

(assert (=> start!125010 e!817731))

(assert (=> start!125010 true))

(declare-fun array_inv!36416 (array!98375) Bool)

(assert (=> start!125010 (array_inv!36416 a!2862)))

(declare-fun b!1452643 () Bool)

(assert (=> b!1452643 (= e!817734 e!817735)))

(declare-fun res!983838 () Bool)

(assert (=> b!1452643 (=> (not res!983838) (not e!817735))))

(declare-fun lt!636963 () SeekEntryResult!11746)

(assert (=> b!1452643 (= res!983838 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47471 a!2862) j!93) mask!2687) (select (arr!47471 a!2862) j!93) a!2862 mask!2687) lt!636963))))

(assert (=> b!1452643 (= lt!636963 (Intermediate!11746 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452644 () Bool)

(declare-fun res!983833 () Bool)

(assert (=> b!1452644 (=> (not res!983833) (not e!817732))))

(assert (=> b!1452644 (= res!983833 (= (seekEntryOrOpen!0 (select (arr!47471 a!2862) j!93) a!2862 mask!2687) (Found!11746 j!93)))))

(declare-fun b!1452645 () Bool)

(assert (=> b!1452645 (= e!817736 (not true))))

(assert (=> b!1452645 e!817732))

(declare-fun res!983835 () Bool)

(assert (=> b!1452645 (=> (not res!983835) (not e!817732))))

(assert (=> b!1452645 (= res!983835 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48936 0))(
  ( (Unit!48937) )
))
(declare-fun lt!636965 () Unit!48936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98375 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48936)

(assert (=> b!1452645 (= lt!636965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452646 () Bool)

(declare-fun res!983827 () Bool)

(assert (=> b!1452646 (=> (not res!983827) (not e!817735))))

(assert (=> b!1452646 (= res!983827 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47471 a!2862) j!93) a!2862 mask!2687) lt!636963))))

(assert (= (and start!125010 res!983837) b!1452642))

(assert (= (and b!1452642 res!983831) b!1452630))

(assert (= (and b!1452630 res!983824) b!1452638))

(assert (= (and b!1452638 res!983832) b!1452631))

(assert (= (and b!1452631 res!983834) b!1452632))

(assert (= (and b!1452632 res!983829) b!1452637))

(assert (= (and b!1452637 res!983825) b!1452634))

(assert (= (and b!1452634 res!983830) b!1452643))

(assert (= (and b!1452643 res!983838) b!1452646))

(assert (= (and b!1452646 res!983827) b!1452640))

(assert (= (and b!1452640 res!983836) b!1452636))

(assert (= (and b!1452636 c!133916) b!1452633))

(assert (= (and b!1452636 (not c!133916)) b!1452635))

(assert (= (and b!1452636 res!983828) b!1452641))

(assert (= (and b!1452641 res!983826) b!1452645))

(assert (= (and b!1452645 res!983835) b!1452644))

(assert (= (and b!1452644 res!983833) b!1452639))

(declare-fun m!1341257 () Bool)

(assert (=> b!1452634 m!1341257))

(declare-fun m!1341259 () Bool)

(assert (=> b!1452634 m!1341259))

(declare-fun m!1341261 () Bool)

(assert (=> b!1452638 m!1341261))

(assert (=> b!1452638 m!1341261))

(declare-fun m!1341263 () Bool)

(assert (=> b!1452638 m!1341263))

(declare-fun m!1341265 () Bool)

(assert (=> b!1452630 m!1341265))

(assert (=> b!1452630 m!1341265))

(declare-fun m!1341267 () Bool)

(assert (=> b!1452630 m!1341267))

(assert (=> b!1452646 m!1341261))

(assert (=> b!1452646 m!1341261))

(declare-fun m!1341269 () Bool)

(assert (=> b!1452646 m!1341269))

(declare-fun m!1341271 () Bool)

(assert (=> b!1452633 m!1341271))

(declare-fun m!1341273 () Bool)

(assert (=> start!125010 m!1341273))

(declare-fun m!1341275 () Bool)

(assert (=> start!125010 m!1341275))

(declare-fun m!1341277 () Bool)

(assert (=> b!1452632 m!1341277))

(declare-fun m!1341279 () Bool)

(assert (=> b!1452631 m!1341279))

(declare-fun m!1341281 () Bool)

(assert (=> b!1452635 m!1341281))

(declare-fun m!1341283 () Bool)

(assert (=> b!1452635 m!1341283))

(declare-fun m!1341285 () Bool)

(assert (=> b!1452640 m!1341285))

(assert (=> b!1452640 m!1341285))

(declare-fun m!1341287 () Bool)

(assert (=> b!1452640 m!1341287))

(assert (=> b!1452640 m!1341257))

(declare-fun m!1341289 () Bool)

(assert (=> b!1452640 m!1341289))

(assert (=> b!1452639 m!1341257))

(declare-fun m!1341291 () Bool)

(assert (=> b!1452639 m!1341291))

(declare-fun m!1341293 () Bool)

(assert (=> b!1452639 m!1341293))

(declare-fun m!1341295 () Bool)

(assert (=> b!1452639 m!1341295))

(assert (=> b!1452639 m!1341261))

(declare-fun m!1341297 () Bool)

(assert (=> b!1452645 m!1341297))

(declare-fun m!1341299 () Bool)

(assert (=> b!1452645 m!1341299))

(assert (=> b!1452644 m!1341261))

(assert (=> b!1452644 m!1341261))

(declare-fun m!1341301 () Bool)

(assert (=> b!1452644 m!1341301))

(assert (=> b!1452643 m!1341261))

(assert (=> b!1452643 m!1341261))

(declare-fun m!1341303 () Bool)

(assert (=> b!1452643 m!1341303))

(assert (=> b!1452643 m!1341303))

(assert (=> b!1452643 m!1341261))

(declare-fun m!1341305 () Bool)

(assert (=> b!1452643 m!1341305))

(check-sat (not start!125010) (not b!1452638) (not b!1452633) (not b!1452632) (not b!1452643) (not b!1452635) (not b!1452644) (not b!1452630) (not b!1452645) (not b!1452640) (not b!1452631) (not b!1452646))
(check-sat)
