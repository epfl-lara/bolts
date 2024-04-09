; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125966 () Bool)

(assert start!125966)

(declare-fun b!1474533 () Bool)

(declare-fun e!827333 () Bool)

(declare-fun e!827332 () Bool)

(assert (=> b!1474533 (= e!827333 e!827332)))

(declare-fun res!1001834 () Bool)

(assert (=> b!1474533 (=> (not res!1001834) (not e!827332))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99160 0))(
  ( (array!99161 (arr!47859 (Array (_ BitVec 32) (_ BitVec 64))) (size!48410 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99160)

(assert (=> b!1474533 (= res!1001834 (= (select (store (arr!47859 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!644242 () array!99160)

(assert (=> b!1474533 (= lt!644242 (array!99161 (store (arr!47859 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48410 a!2862)))))

(declare-fun b!1474534 () Bool)

(declare-fun res!1001829 () Bool)

(assert (=> b!1474534 (=> (not res!1001829) (not e!827333))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474534 (= res!1001829 (validKeyInArray!0 (select (arr!47859 a!2862) j!93)))))

(declare-fun b!1474535 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!827331 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12122 0))(
  ( (MissingZero!12122 (index!50879 (_ BitVec 32))) (Found!12122 (index!50880 (_ BitVec 32))) (Intermediate!12122 (undefined!12934 Bool) (index!50881 (_ BitVec 32)) (x!132457 (_ BitVec 32))) (Undefined!12122) (MissingVacant!12122 (index!50882 (_ BitVec 32))) )
))
(declare-fun lt!644245 () SeekEntryResult!12122)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!644244 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99160 (_ BitVec 32)) SeekEntryResult!12122)

(assert (=> b!1474535 (= e!827331 (= lt!644245 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644244 lt!644242 mask!2687)))))

(declare-fun b!1474536 () Bool)

(declare-fun res!1001831 () Bool)

(declare-fun e!827330 () Bool)

(assert (=> b!1474536 (=> (not res!1001831) (not e!827330))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474536 (= res!1001831 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!827329 () Bool)

(declare-fun b!1474537 () Bool)

(assert (=> b!1474537 (= e!827329 (or (= (select (arr!47859 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47859 a!2862) intermediateBeforeIndex!19) (select (arr!47859 a!2862) j!93))))))

(declare-fun b!1474538 () Bool)

(declare-fun res!1001827 () Bool)

(assert (=> b!1474538 (=> (not res!1001827) (not e!827333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99160 (_ BitVec 32)) Bool)

(assert (=> b!1474538 (= res!1001827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1001837 () Bool)

(assert (=> start!125966 (=> (not res!1001837) (not e!827333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125966 (= res!1001837 (validMask!0 mask!2687))))

(assert (=> start!125966 e!827333))

(assert (=> start!125966 true))

(declare-fun array_inv!36804 (array!99160) Bool)

(assert (=> start!125966 (array_inv!36804 a!2862)))

(declare-fun b!1474539 () Bool)

(declare-fun res!1001825 () Bool)

(assert (=> b!1474539 (=> (not res!1001825) (not e!827333))))

(declare-datatypes ((List!34540 0))(
  ( (Nil!34537) (Cons!34536 (h!35895 (_ BitVec 64)) (t!49241 List!34540)) )
))
(declare-fun arrayNoDuplicates!0 (array!99160 (_ BitVec 32) List!34540) Bool)

(assert (=> b!1474539 (= res!1001825 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34537))))

(declare-fun b!1474540 () Bool)

(declare-fun res!1001830 () Bool)

(assert (=> b!1474540 (=> (not res!1001830) (not e!827333))))

(assert (=> b!1474540 (= res!1001830 (validKeyInArray!0 (select (arr!47859 a!2862) i!1006)))))

(declare-fun b!1474541 () Bool)

(declare-fun res!1001835 () Bool)

(declare-fun e!827327 () Bool)

(assert (=> b!1474541 (=> (not res!1001835) (not e!827327))))

(declare-fun lt!644241 () SeekEntryResult!12122)

(assert (=> b!1474541 (= res!1001835 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47859 a!2862) j!93) a!2862 mask!2687) lt!644241))))

(declare-fun b!1474542 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99160 (_ BitVec 32)) SeekEntryResult!12122)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99160 (_ BitVec 32)) SeekEntryResult!12122)

(assert (=> b!1474542 (= e!827331 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644244 lt!644242 mask!2687) (seekEntryOrOpen!0 lt!644244 lt!644242 mask!2687)))))

(declare-fun b!1474543 () Bool)

(assert (=> b!1474543 (= e!827330 (not true))))

(assert (=> b!1474543 e!827329))

(declare-fun res!1001833 () Bool)

(assert (=> b!1474543 (=> (not res!1001833) (not e!827329))))

(assert (=> b!1474543 (= res!1001833 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49532 0))(
  ( (Unit!49533) )
))
(declare-fun lt!644243 () Unit!49532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99160 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49532)

(assert (=> b!1474543 (= lt!644243 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474544 () Bool)

(declare-fun res!1001838 () Bool)

(assert (=> b!1474544 (=> (not res!1001838) (not e!827333))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1474544 (= res!1001838 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48410 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48410 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48410 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474545 () Bool)

(declare-fun res!1001832 () Bool)

(assert (=> b!1474545 (=> (not res!1001832) (not e!827333))))

(assert (=> b!1474545 (= res!1001832 (and (= (size!48410 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48410 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48410 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474546 () Bool)

(declare-fun res!1001836 () Bool)

(assert (=> b!1474546 (=> (not res!1001836) (not e!827329))))

(assert (=> b!1474546 (= res!1001836 (= (seekEntryOrOpen!0 (select (arr!47859 a!2862) j!93) a!2862 mask!2687) (Found!12122 j!93)))))

(declare-fun b!1474547 () Bool)

(declare-fun res!1001824 () Bool)

(assert (=> b!1474547 (=> (not res!1001824) (not e!827330))))

(assert (=> b!1474547 (= res!1001824 e!827331)))

(declare-fun c!135872 () Bool)

(assert (=> b!1474547 (= c!135872 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474548 () Bool)

(assert (=> b!1474548 (= e!827332 e!827327)))

(declare-fun res!1001826 () Bool)

(assert (=> b!1474548 (=> (not res!1001826) (not e!827327))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474548 (= res!1001826 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47859 a!2862) j!93) mask!2687) (select (arr!47859 a!2862) j!93) a!2862 mask!2687) lt!644241))))

(assert (=> b!1474548 (= lt!644241 (Intermediate!12122 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474549 () Bool)

(assert (=> b!1474549 (= e!827327 e!827330)))

(declare-fun res!1001828 () Bool)

(assert (=> b!1474549 (=> (not res!1001828) (not e!827330))))

(assert (=> b!1474549 (= res!1001828 (= lt!644245 (Intermediate!12122 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1474549 (= lt!644245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644244 mask!2687) lt!644244 lt!644242 mask!2687))))

(assert (=> b!1474549 (= lt!644244 (select (store (arr!47859 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125966 res!1001837) b!1474545))

(assert (= (and b!1474545 res!1001832) b!1474540))

(assert (= (and b!1474540 res!1001830) b!1474534))

(assert (= (and b!1474534 res!1001829) b!1474538))

(assert (= (and b!1474538 res!1001827) b!1474539))

(assert (= (and b!1474539 res!1001825) b!1474544))

(assert (= (and b!1474544 res!1001838) b!1474533))

(assert (= (and b!1474533 res!1001834) b!1474548))

(assert (= (and b!1474548 res!1001826) b!1474541))

(assert (= (and b!1474541 res!1001835) b!1474549))

(assert (= (and b!1474549 res!1001828) b!1474547))

(assert (= (and b!1474547 c!135872) b!1474535))

(assert (= (and b!1474547 (not c!135872)) b!1474542))

(assert (= (and b!1474547 res!1001824) b!1474536))

(assert (= (and b!1474536 res!1001831) b!1474543))

(assert (= (and b!1474543 res!1001833) b!1474546))

(assert (= (and b!1474546 res!1001836) b!1474537))

(declare-fun m!1361021 () Bool)

(assert (=> b!1474533 m!1361021))

(declare-fun m!1361023 () Bool)

(assert (=> b!1474533 m!1361023))

(declare-fun m!1361025 () Bool)

(assert (=> b!1474542 m!1361025))

(declare-fun m!1361027 () Bool)

(assert (=> b!1474542 m!1361027))

(declare-fun m!1361029 () Bool)

(assert (=> b!1474541 m!1361029))

(assert (=> b!1474541 m!1361029))

(declare-fun m!1361031 () Bool)

(assert (=> b!1474541 m!1361031))

(declare-fun m!1361033 () Bool)

(assert (=> b!1474543 m!1361033))

(declare-fun m!1361035 () Bool)

(assert (=> b!1474543 m!1361035))

(declare-fun m!1361037 () Bool)

(assert (=> b!1474540 m!1361037))

(assert (=> b!1474540 m!1361037))

(declare-fun m!1361039 () Bool)

(assert (=> b!1474540 m!1361039))

(assert (=> b!1474546 m!1361029))

(assert (=> b!1474546 m!1361029))

(declare-fun m!1361041 () Bool)

(assert (=> b!1474546 m!1361041))

(assert (=> b!1474534 m!1361029))

(assert (=> b!1474534 m!1361029))

(declare-fun m!1361043 () Bool)

(assert (=> b!1474534 m!1361043))

(declare-fun m!1361045 () Bool)

(assert (=> b!1474549 m!1361045))

(assert (=> b!1474549 m!1361045))

(declare-fun m!1361047 () Bool)

(assert (=> b!1474549 m!1361047))

(assert (=> b!1474549 m!1361021))

(declare-fun m!1361049 () Bool)

(assert (=> b!1474549 m!1361049))

(declare-fun m!1361051 () Bool)

(assert (=> start!125966 m!1361051))

(declare-fun m!1361053 () Bool)

(assert (=> start!125966 m!1361053))

(assert (=> b!1474548 m!1361029))

(assert (=> b!1474548 m!1361029))

(declare-fun m!1361055 () Bool)

(assert (=> b!1474548 m!1361055))

(assert (=> b!1474548 m!1361055))

(assert (=> b!1474548 m!1361029))

(declare-fun m!1361057 () Bool)

(assert (=> b!1474548 m!1361057))

(declare-fun m!1361059 () Bool)

(assert (=> b!1474538 m!1361059))

(declare-fun m!1361061 () Bool)

(assert (=> b!1474539 m!1361061))

(declare-fun m!1361063 () Bool)

(assert (=> b!1474535 m!1361063))

(declare-fun m!1361065 () Bool)

(assert (=> b!1474537 m!1361065))

(assert (=> b!1474537 m!1361029))

(push 1)

