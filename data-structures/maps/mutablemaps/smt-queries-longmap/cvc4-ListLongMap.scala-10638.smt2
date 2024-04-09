; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125012 () Bool)

(assert start!125012)

(declare-fun b!1452681 () Bool)

(declare-fun res!983876 () Bool)

(declare-fun e!817753 () Bool)

(assert (=> b!1452681 (=> (not res!983876) (not e!817753))))

(declare-fun e!817756 () Bool)

(assert (=> b!1452681 (= res!983876 e!817756)))

(declare-fun c!133919 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452681 (= c!133919 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452682 () Bool)

(declare-fun res!983874 () Bool)

(declare-fun e!817754 () Bool)

(assert (=> b!1452682 (=> (not res!983874) (not e!817754))))

(declare-datatypes ((array!98377 0))(
  ( (array!98378 (arr!47472 (Array (_ BitVec 32) (_ BitVec 64))) (size!48023 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98377)

(declare-datatypes ((List!34153 0))(
  ( (Nil!34150) (Cons!34149 (h!35499 (_ BitVec 64)) (t!48854 List!34153)) )
))
(declare-fun arrayNoDuplicates!0 (array!98377 (_ BitVec 32) List!34153) Bool)

(assert (=> b!1452682 (= res!983874 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34150))))

(declare-fun res!983881 () Bool)

(assert (=> start!125012 (=> (not res!983881) (not e!817754))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125012 (= res!983881 (validMask!0 mask!2687))))

(assert (=> start!125012 e!817754))

(assert (=> start!125012 true))

(declare-fun array_inv!36417 (array!98377) Bool)

(assert (=> start!125012 (array_inv!36417 a!2862)))

(declare-fun b!1452683 () Bool)

(declare-fun e!817751 () Bool)

(assert (=> b!1452683 (= e!817754 e!817751)))

(declare-fun res!983875 () Bool)

(assert (=> b!1452683 (=> (not res!983875) (not e!817751))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1452683 (= res!983875 (= (select (store (arr!47472 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636978 () array!98377)

(assert (=> b!1452683 (= lt!636978 (array!98378 (store (arr!47472 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48023 a!2862)))))

(declare-fun b!1452684 () Bool)

(declare-fun res!983873 () Bool)

(declare-fun e!817752 () Bool)

(assert (=> b!1452684 (=> (not res!983873) (not e!817752))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11747 0))(
  ( (MissingZero!11747 (index!49379 (_ BitVec 32))) (Found!11747 (index!49380 (_ BitVec 32))) (Intermediate!11747 (undefined!12559 Bool) (index!49381 (_ BitVec 32)) (x!131023 (_ BitVec 32))) (Undefined!11747) (MissingVacant!11747 (index!49382 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98377 (_ BitVec 32)) SeekEntryResult!11747)

(assert (=> b!1452684 (= res!983873 (= (seekEntryOrOpen!0 (select (arr!47472 a!2862) j!93) a!2862 mask!2687) (Found!11747 j!93)))))

(declare-fun b!1452685 () Bool)

(declare-fun res!983883 () Bool)

(declare-fun e!817755 () Bool)

(assert (=> b!1452685 (=> (not res!983883) (not e!817755))))

(declare-fun lt!636979 () SeekEntryResult!11747)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98377 (_ BitVec 32)) SeekEntryResult!11747)

(assert (=> b!1452685 (= res!983883 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47472 a!2862) j!93) a!2862 mask!2687) lt!636979))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1452686 () Bool)

(assert (=> b!1452686 (= e!817752 (and (or (= (select (arr!47472 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47472 a!2862) intermediateBeforeIndex!19) (select (arr!47472 a!2862) j!93))) (or (and (= (select (arr!47472 a!2862) index!646) (select (store (arr!47472 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47472 a!2862) index!646) (select (arr!47472 a!2862) j!93))) (= (select (arr!47472 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47472 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452687 () Bool)

(declare-fun res!983877 () Bool)

(assert (=> b!1452687 (=> (not res!983877) (not e!817754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452687 (= res!983877 (validKeyInArray!0 (select (arr!47472 a!2862) i!1006)))))

(declare-fun b!1452688 () Bool)

(declare-fun res!983880 () Bool)

(assert (=> b!1452688 (=> (not res!983880) (not e!817754))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452688 (= res!983880 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48023 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48023 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48023 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452689 () Bool)

(declare-fun lt!636980 () SeekEntryResult!11747)

(declare-fun lt!636981 () (_ BitVec 64))

(assert (=> b!1452689 (= e!817756 (= lt!636980 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636981 lt!636978 mask!2687)))))

(declare-fun b!1452690 () Bool)

(assert (=> b!1452690 (= e!817753 (not true))))

(assert (=> b!1452690 e!817752))

(declare-fun res!983870 () Bool)

(assert (=> b!1452690 (=> (not res!983870) (not e!817752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98377 (_ BitVec 32)) Bool)

(assert (=> b!1452690 (= res!983870 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48938 0))(
  ( (Unit!48939) )
))
(declare-fun lt!636982 () Unit!48938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98377 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48938)

(assert (=> b!1452690 (= lt!636982 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452691 () Bool)

(assert (=> b!1452691 (= e!817755 e!817753)))

(declare-fun res!983879 () Bool)

(assert (=> b!1452691 (=> (not res!983879) (not e!817753))))

(assert (=> b!1452691 (= res!983879 (= lt!636980 (Intermediate!11747 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452691 (= lt!636980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636981 mask!2687) lt!636981 lt!636978 mask!2687))))

(assert (=> b!1452691 (= lt!636981 (select (store (arr!47472 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452692 () Bool)

(declare-fun res!983869 () Bool)

(assert (=> b!1452692 (=> (not res!983869) (not e!817754))))

(assert (=> b!1452692 (= res!983869 (validKeyInArray!0 (select (arr!47472 a!2862) j!93)))))

(declare-fun b!1452693 () Bool)

(declare-fun res!983878 () Bool)

(assert (=> b!1452693 (=> (not res!983878) (not e!817754))))

(assert (=> b!1452693 (= res!983878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452694 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98377 (_ BitVec 32)) SeekEntryResult!11747)

(assert (=> b!1452694 (= e!817756 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636981 lt!636978 mask!2687) (seekEntryOrOpen!0 lt!636981 lt!636978 mask!2687)))))

(declare-fun b!1452695 () Bool)

(declare-fun res!983882 () Bool)

(assert (=> b!1452695 (=> (not res!983882) (not e!817753))))

(assert (=> b!1452695 (= res!983882 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452696 () Bool)

(declare-fun res!983871 () Bool)

(assert (=> b!1452696 (=> (not res!983871) (not e!817754))))

(assert (=> b!1452696 (= res!983871 (and (= (size!48023 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48023 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48023 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452697 () Bool)

(assert (=> b!1452697 (= e!817751 e!817755)))

(declare-fun res!983872 () Bool)

(assert (=> b!1452697 (=> (not res!983872) (not e!817755))))

(assert (=> b!1452697 (= res!983872 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47472 a!2862) j!93) mask!2687) (select (arr!47472 a!2862) j!93) a!2862 mask!2687) lt!636979))))

(assert (=> b!1452697 (= lt!636979 (Intermediate!11747 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125012 res!983881) b!1452696))

(assert (= (and b!1452696 res!983871) b!1452687))

(assert (= (and b!1452687 res!983877) b!1452692))

(assert (= (and b!1452692 res!983869) b!1452693))

(assert (= (and b!1452693 res!983878) b!1452682))

(assert (= (and b!1452682 res!983874) b!1452688))

(assert (= (and b!1452688 res!983880) b!1452683))

(assert (= (and b!1452683 res!983875) b!1452697))

(assert (= (and b!1452697 res!983872) b!1452685))

(assert (= (and b!1452685 res!983883) b!1452691))

(assert (= (and b!1452691 res!983879) b!1452681))

(assert (= (and b!1452681 c!133919) b!1452689))

(assert (= (and b!1452681 (not c!133919)) b!1452694))

(assert (= (and b!1452681 res!983876) b!1452695))

(assert (= (and b!1452695 res!983882) b!1452690))

(assert (= (and b!1452690 res!983870) b!1452684))

(assert (= (and b!1452684 res!983873) b!1452686))

(declare-fun m!1341307 () Bool)

(assert (=> b!1452690 m!1341307))

(declare-fun m!1341309 () Bool)

(assert (=> b!1452690 m!1341309))

(declare-fun m!1341311 () Bool)

(assert (=> b!1452692 m!1341311))

(assert (=> b!1452692 m!1341311))

(declare-fun m!1341313 () Bool)

(assert (=> b!1452692 m!1341313))

(declare-fun m!1341315 () Bool)

(assert (=> b!1452694 m!1341315))

(declare-fun m!1341317 () Bool)

(assert (=> b!1452694 m!1341317))

(declare-fun m!1341319 () Bool)

(assert (=> b!1452689 m!1341319))

(assert (=> b!1452685 m!1341311))

(assert (=> b!1452685 m!1341311))

(declare-fun m!1341321 () Bool)

(assert (=> b!1452685 m!1341321))

(declare-fun m!1341323 () Bool)

(assert (=> b!1452682 m!1341323))

(declare-fun m!1341325 () Bool)

(assert (=> b!1452683 m!1341325))

(declare-fun m!1341327 () Bool)

(assert (=> b!1452683 m!1341327))

(assert (=> b!1452686 m!1341325))

(declare-fun m!1341329 () Bool)

(assert (=> b!1452686 m!1341329))

(declare-fun m!1341331 () Bool)

(assert (=> b!1452686 m!1341331))

(declare-fun m!1341333 () Bool)

(assert (=> b!1452686 m!1341333))

(assert (=> b!1452686 m!1341311))

(declare-fun m!1341335 () Bool)

(assert (=> b!1452693 m!1341335))

(declare-fun m!1341337 () Bool)

(assert (=> b!1452687 m!1341337))

(assert (=> b!1452687 m!1341337))

(declare-fun m!1341339 () Bool)

(assert (=> b!1452687 m!1341339))

(assert (=> b!1452684 m!1341311))

(assert (=> b!1452684 m!1341311))

(declare-fun m!1341341 () Bool)

(assert (=> b!1452684 m!1341341))

(declare-fun m!1341343 () Bool)

(assert (=> start!125012 m!1341343))

(declare-fun m!1341345 () Bool)

(assert (=> start!125012 m!1341345))

(declare-fun m!1341347 () Bool)

(assert (=> b!1452691 m!1341347))

(assert (=> b!1452691 m!1341347))

(declare-fun m!1341349 () Bool)

(assert (=> b!1452691 m!1341349))

(assert (=> b!1452691 m!1341325))

(declare-fun m!1341351 () Bool)

(assert (=> b!1452691 m!1341351))

(assert (=> b!1452697 m!1341311))

(assert (=> b!1452697 m!1341311))

(declare-fun m!1341353 () Bool)

(assert (=> b!1452697 m!1341353))

(assert (=> b!1452697 m!1341353))

(assert (=> b!1452697 m!1341311))

(declare-fun m!1341355 () Bool)

(assert (=> b!1452697 m!1341355))

(push 1)

