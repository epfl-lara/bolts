; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127238 () Bool)

(assert start!127238)

(declare-fun b!1494859 () Bool)

(declare-fun res!1017042 () Bool)

(declare-fun e!837345 () Bool)

(assert (=> b!1494859 (=> (not res!1017042) (not e!837345))))

(declare-datatypes ((array!99739 0))(
  ( (array!99740 (arr!48132 (Array (_ BitVec 32) (_ BitVec 64))) (size!48683 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99739)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494859 (= res!1017042 (validKeyInArray!0 (select (arr!48132 a!2862) i!1006)))))

(declare-fun b!1494860 () Bool)

(declare-fun res!1017043 () Bool)

(declare-fun e!837352 () Bool)

(assert (=> b!1494860 (=> (not res!1017043) (not e!837352))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1494860 (= res!1017043 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1494861 () Bool)

(declare-fun e!837353 () Bool)

(assert (=> b!1494861 (= e!837345 e!837353)))

(declare-fun res!1017041 () Bool)

(assert (=> b!1494861 (=> (not res!1017041) (not e!837353))))

(assert (=> b!1494861 (= res!1017041 (= (select (store (arr!48132 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!651509 () array!99739)

(assert (=> b!1494861 (= lt!651509 (array!99740 (store (arr!48132 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48683 a!2862)))))

(declare-fun b!1494862 () Bool)

(declare-fun res!1017050 () Bool)

(assert (=> b!1494862 (=> (not res!1017050) (not e!837352))))

(declare-fun e!837348 () Bool)

(assert (=> b!1494862 (= res!1017050 e!837348)))

(declare-fun c!138443 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1494862 (= c!138443 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1494863 () Bool)

(declare-fun res!1017047 () Bool)

(declare-fun e!837347 () Bool)

(assert (=> b!1494863 (=> (not res!1017047) (not e!837347))))

(declare-datatypes ((SeekEntryResult!12395 0))(
  ( (MissingZero!12395 (index!51971 (_ BitVec 32))) (Found!12395 (index!51972 (_ BitVec 32))) (Intermediate!12395 (undefined!13207 Bool) (index!51973 (_ BitVec 32)) (x!133578 (_ BitVec 32))) (Undefined!12395) (MissingVacant!12395 (index!51974 (_ BitVec 32))) )
))
(declare-fun lt!651505 () SeekEntryResult!12395)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99739 (_ BitVec 32)) SeekEntryResult!12395)

(assert (=> b!1494863 (= res!1017047 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48132 a!2862) j!93) a!2862 mask!2687) lt!651505))))

(declare-fun b!1494864 () Bool)

(declare-fun res!1017055 () Bool)

(assert (=> b!1494864 (=> (not res!1017055) (not e!837345))))

(declare-datatypes ((List!34813 0))(
  ( (Nil!34810) (Cons!34809 (h!36201 (_ BitVec 64)) (t!49514 List!34813)) )
))
(declare-fun arrayNoDuplicates!0 (array!99739 (_ BitVec 32) List!34813) Bool)

(assert (=> b!1494864 (= res!1017055 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34810))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!837350 () Bool)

(declare-fun b!1494865 () Bool)

(assert (=> b!1494865 (= e!837350 (or (= (select (arr!48132 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48132 a!2862) intermediateBeforeIndex!19) (select (arr!48132 a!2862) j!93))))))

(declare-fun b!1494866 () Bool)

(declare-fun e!837349 () Bool)

(assert (=> b!1494866 (= e!837349 true)))

(declare-fun lt!651511 () (_ BitVec 32))

(declare-fun lt!651508 () SeekEntryResult!12395)

(assert (=> b!1494866 (= lt!651508 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651511 (select (arr!48132 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1494868 () Bool)

(assert (=> b!1494868 (= e!837347 e!837352)))

(declare-fun res!1017056 () Bool)

(assert (=> b!1494868 (=> (not res!1017056) (not e!837352))))

(declare-fun lt!651507 () SeekEntryResult!12395)

(assert (=> b!1494868 (= res!1017056 (= lt!651507 (Intermediate!12395 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!651506 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494868 (= lt!651507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651506 mask!2687) lt!651506 lt!651509 mask!2687))))

(assert (=> b!1494868 (= lt!651506 (select (store (arr!48132 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1494869 () Bool)

(assert (=> b!1494869 (= e!837348 (= lt!651507 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651506 lt!651509 mask!2687)))))

(declare-fun b!1494870 () Bool)

(assert (=> b!1494870 (= e!837353 e!837347)))

(declare-fun res!1017049 () Bool)

(assert (=> b!1494870 (=> (not res!1017049) (not e!837347))))

(assert (=> b!1494870 (= res!1017049 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48132 a!2862) j!93) mask!2687) (select (arr!48132 a!2862) j!93) a!2862 mask!2687) lt!651505))))

(assert (=> b!1494870 (= lt!651505 (Intermediate!12395 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494871 () Bool)

(declare-fun res!1017054 () Bool)

(assert (=> b!1494871 (=> (not res!1017054) (not e!837345))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99739 (_ BitVec 32)) Bool)

(assert (=> b!1494871 (= res!1017054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1494872 () Bool)

(declare-fun res!1017048 () Bool)

(assert (=> b!1494872 (=> (not res!1017048) (not e!837350))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99739 (_ BitVec 32)) SeekEntryResult!12395)

(assert (=> b!1494872 (= res!1017048 (= (seekEntryOrOpen!0 (select (arr!48132 a!2862) j!93) a!2862 mask!2687) (Found!12395 j!93)))))

(declare-fun b!1494873 () Bool)

(declare-fun res!1017052 () Bool)

(assert (=> b!1494873 (=> (not res!1017052) (not e!837345))))

(assert (=> b!1494873 (= res!1017052 (and (= (size!48683 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48683 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48683 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1494874 () Bool)

(declare-fun e!837346 () Bool)

(assert (=> b!1494874 (= e!837352 (not e!837346))))

(declare-fun res!1017051 () Bool)

(assert (=> b!1494874 (=> res!1017051 e!837346)))

(assert (=> b!1494874 (= res!1017051 (or (and (= (select (arr!48132 a!2862) index!646) (select (store (arr!48132 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48132 a!2862) index!646) (select (arr!48132 a!2862) j!93))) (= (select (arr!48132 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1494874 e!837350))

(declare-fun res!1017053 () Bool)

(assert (=> b!1494874 (=> (not res!1017053) (not e!837350))))

(assert (=> b!1494874 (= res!1017053 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50078 0))(
  ( (Unit!50079) )
))
(declare-fun lt!651510 () Unit!50078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50078)

(assert (=> b!1494874 (= lt!651510 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494875 () Bool)

(declare-fun res!1017045 () Bool)

(assert (=> b!1494875 (=> (not res!1017045) (not e!837345))))

(assert (=> b!1494875 (= res!1017045 (validKeyInArray!0 (select (arr!48132 a!2862) j!93)))))

(declare-fun b!1494876 () Bool)

(assert (=> b!1494876 (= e!837346 e!837349)))

(declare-fun res!1017057 () Bool)

(assert (=> b!1494876 (=> res!1017057 e!837349)))

(assert (=> b!1494876 (= res!1017057 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651511 #b00000000000000000000000000000000) (bvsge lt!651511 (size!48683 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494876 (= lt!651511 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1494877 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99739 (_ BitVec 32)) SeekEntryResult!12395)

(assert (=> b!1494877 (= e!837348 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651506 lt!651509 mask!2687) (seekEntryOrOpen!0 lt!651506 lt!651509 mask!2687)))))

(declare-fun res!1017044 () Bool)

(assert (=> start!127238 (=> (not res!1017044) (not e!837345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127238 (= res!1017044 (validMask!0 mask!2687))))

(assert (=> start!127238 e!837345))

(assert (=> start!127238 true))

(declare-fun array_inv!37077 (array!99739) Bool)

(assert (=> start!127238 (array_inv!37077 a!2862)))

(declare-fun b!1494867 () Bool)

(declare-fun res!1017046 () Bool)

(assert (=> b!1494867 (=> (not res!1017046) (not e!837345))))

(assert (=> b!1494867 (= res!1017046 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48683 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48683 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48683 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!127238 res!1017044) b!1494873))

(assert (= (and b!1494873 res!1017052) b!1494859))

(assert (= (and b!1494859 res!1017042) b!1494875))

(assert (= (and b!1494875 res!1017045) b!1494871))

(assert (= (and b!1494871 res!1017054) b!1494864))

(assert (= (and b!1494864 res!1017055) b!1494867))

(assert (= (and b!1494867 res!1017046) b!1494861))

(assert (= (and b!1494861 res!1017041) b!1494870))

(assert (= (and b!1494870 res!1017049) b!1494863))

(assert (= (and b!1494863 res!1017047) b!1494868))

(assert (= (and b!1494868 res!1017056) b!1494862))

(assert (= (and b!1494862 c!138443) b!1494869))

(assert (= (and b!1494862 (not c!138443)) b!1494877))

(assert (= (and b!1494862 res!1017050) b!1494860))

(assert (= (and b!1494860 res!1017043) b!1494874))

(assert (= (and b!1494874 res!1017053) b!1494872))

(assert (= (and b!1494872 res!1017048) b!1494865))

(assert (= (and b!1494874 (not res!1017051)) b!1494876))

(assert (= (and b!1494876 (not res!1017057)) b!1494866))

(declare-fun m!1378503 () Bool)

(assert (=> start!127238 m!1378503))

(declare-fun m!1378505 () Bool)

(assert (=> start!127238 m!1378505))

(declare-fun m!1378507 () Bool)

(assert (=> b!1494874 m!1378507))

(declare-fun m!1378509 () Bool)

(assert (=> b!1494874 m!1378509))

(declare-fun m!1378511 () Bool)

(assert (=> b!1494874 m!1378511))

(declare-fun m!1378513 () Bool)

(assert (=> b!1494874 m!1378513))

(declare-fun m!1378515 () Bool)

(assert (=> b!1494874 m!1378515))

(declare-fun m!1378517 () Bool)

(assert (=> b!1494874 m!1378517))

(declare-fun m!1378519 () Bool)

(assert (=> b!1494876 m!1378519))

(declare-fun m!1378521 () Bool)

(assert (=> b!1494859 m!1378521))

(assert (=> b!1494859 m!1378521))

(declare-fun m!1378523 () Bool)

(assert (=> b!1494859 m!1378523))

(assert (=> b!1494863 m!1378517))

(assert (=> b!1494863 m!1378517))

(declare-fun m!1378525 () Bool)

(assert (=> b!1494863 m!1378525))

(declare-fun m!1378527 () Bool)

(assert (=> b!1494877 m!1378527))

(declare-fun m!1378529 () Bool)

(assert (=> b!1494877 m!1378529))

(declare-fun m!1378531 () Bool)

(assert (=> b!1494871 m!1378531))

(declare-fun m!1378533 () Bool)

(assert (=> b!1494869 m!1378533))

(assert (=> b!1494875 m!1378517))

(assert (=> b!1494875 m!1378517))

(declare-fun m!1378535 () Bool)

(assert (=> b!1494875 m!1378535))

(assert (=> b!1494861 m!1378509))

(declare-fun m!1378537 () Bool)

(assert (=> b!1494861 m!1378537))

(assert (=> b!1494872 m!1378517))

(assert (=> b!1494872 m!1378517))

(declare-fun m!1378539 () Bool)

(assert (=> b!1494872 m!1378539))

(declare-fun m!1378541 () Bool)

(assert (=> b!1494865 m!1378541))

(assert (=> b!1494865 m!1378517))

(declare-fun m!1378543 () Bool)

(assert (=> b!1494868 m!1378543))

(assert (=> b!1494868 m!1378543))

(declare-fun m!1378545 () Bool)

(assert (=> b!1494868 m!1378545))

(assert (=> b!1494868 m!1378509))

(declare-fun m!1378547 () Bool)

(assert (=> b!1494868 m!1378547))

(assert (=> b!1494866 m!1378517))

(assert (=> b!1494866 m!1378517))

(declare-fun m!1378549 () Bool)

(assert (=> b!1494866 m!1378549))

(assert (=> b!1494870 m!1378517))

(assert (=> b!1494870 m!1378517))

(declare-fun m!1378551 () Bool)

(assert (=> b!1494870 m!1378551))

(assert (=> b!1494870 m!1378551))

(assert (=> b!1494870 m!1378517))

(declare-fun m!1378553 () Bool)

(assert (=> b!1494870 m!1378553))

(declare-fun m!1378555 () Bool)

(assert (=> b!1494864 m!1378555))

(push 1)

