; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124840 () Bool)

(assert start!124840)

(declare-fun b!1447885 () Bool)

(declare-fun e!815452 () Bool)

(declare-fun e!815455 () Bool)

(assert (=> b!1447885 (= e!815452 e!815455)))

(declare-fun res!979601 () Bool)

(assert (=> b!1447885 (=> (not res!979601) (not e!815455))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98205 0))(
  ( (array!98206 (arr!47386 (Array (_ BitVec 32) (_ BitVec 64))) (size!47937 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98205)

(assert (=> b!1447885 (= res!979601 (= (select (store (arr!47386 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!635298 () array!98205)

(assert (=> b!1447885 (= lt!635298 (array!98206 (store (arr!47386 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47937 a!2862)))))

(declare-fun b!1447886 () Bool)

(declare-fun res!979593 () Bool)

(declare-fun e!815447 () Bool)

(assert (=> b!1447886 (=> (not res!979593) (not e!815447))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1447886 (= res!979593 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!815453 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1447887 () Bool)

(declare-fun lt!635296 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11661 0))(
  ( (MissingZero!11661 (index!49035 (_ BitVec 32))) (Found!11661 (index!49036 (_ BitVec 32))) (Intermediate!11661 (undefined!12473 Bool) (index!49037 (_ BitVec 32)) (x!130713 (_ BitVec 32))) (Undefined!11661) (MissingVacant!11661 (index!49038 (_ BitVec 32))) )
))
(declare-fun lt!635301 () SeekEntryResult!11661)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98205 (_ BitVec 32)) SeekEntryResult!11661)

(assert (=> b!1447887 (= e!815453 (= lt!635301 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635296 lt!635298 mask!2687)))))

(declare-fun b!1447888 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98205 (_ BitVec 32)) SeekEntryResult!11661)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98205 (_ BitVec 32)) SeekEntryResult!11661)

(assert (=> b!1447888 (= e!815453 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635296 lt!635298 mask!2687) (seekEntryOrOpen!0 lt!635296 lt!635298 mask!2687)))))

(declare-fun b!1447889 () Bool)

(declare-fun res!979595 () Bool)

(assert (=> b!1447889 (=> (not res!979595) (not e!815447))))

(assert (=> b!1447889 (= res!979595 e!815453)))

(declare-fun c!133661 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447889 (= c!133661 (bvsle x!665 intermediateAfterX!19))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1447890 () Bool)

(declare-fun e!815450 () Bool)

(assert (=> b!1447890 (= e!815450 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447891 () Bool)

(declare-fun e!815448 () Bool)

(assert (=> b!1447891 (= e!815447 (not e!815448))))

(declare-fun res!979590 () Bool)

(assert (=> b!1447891 (=> res!979590 e!815448)))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1447891 (= res!979590 (or (and (= (select (arr!47386 a!2862) index!646) (select (store (arr!47386 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47386 a!2862) index!646) (select (arr!47386 a!2862) j!93))) (not (= (select (arr!47386 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47386 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815456 () Bool)

(assert (=> b!1447891 e!815456))

(declare-fun res!979597 () Bool)

(assert (=> b!1447891 (=> (not res!979597) (not e!815456))))

(declare-fun lt!635302 () SeekEntryResult!11661)

(assert (=> b!1447891 (= res!979597 (and (= lt!635302 (Found!11661 j!93)) (or (= (select (arr!47386 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47386 a!2862) intermediateBeforeIndex!19) (select (arr!47386 a!2862) j!93)))))))

(assert (=> b!1447891 (= lt!635302 (seekEntryOrOpen!0 (select (arr!47386 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98205 (_ BitVec 32)) Bool)

(assert (=> b!1447891 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48766 0))(
  ( (Unit!48767) )
))
(declare-fun lt!635300 () Unit!48766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98205 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48766)

(assert (=> b!1447891 (= lt!635300 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447892 () Bool)

(declare-fun res!979591 () Bool)

(assert (=> b!1447892 (=> (not res!979591) (not e!815452))))

(assert (=> b!1447892 (= res!979591 (and (= (size!47937 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47937 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47937 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447894 () Bool)

(declare-fun res!979603 () Bool)

(assert (=> b!1447894 (=> (not res!979603) (not e!815452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447894 (= res!979603 (validKeyInArray!0 (select (arr!47386 a!2862) i!1006)))))

(declare-fun b!1447895 () Bool)

(declare-fun e!815449 () Bool)

(assert (=> b!1447895 (= e!815449 e!815450)))

(declare-fun res!979598 () Bool)

(assert (=> b!1447895 (=> (not res!979598) (not e!815450))))

(assert (=> b!1447895 (= res!979598 (= lt!635302 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47386 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447896 () Bool)

(declare-fun res!979600 () Bool)

(assert (=> b!1447896 (=> (not res!979600) (not e!815452))))

(assert (=> b!1447896 (= res!979600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447897 () Bool)

(declare-fun res!979604 () Bool)

(assert (=> b!1447897 (=> (not res!979604) (not e!815452))))

(assert (=> b!1447897 (= res!979604 (validKeyInArray!0 (select (arr!47386 a!2862) j!93)))))

(declare-fun b!1447898 () Bool)

(declare-fun res!979602 () Bool)

(declare-fun e!815454 () Bool)

(assert (=> b!1447898 (=> (not res!979602) (not e!815454))))

(declare-fun lt!635297 () SeekEntryResult!11661)

(assert (=> b!1447898 (= res!979602 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47386 a!2862) j!93) a!2862 mask!2687) lt!635297))))

(declare-fun b!1447899 () Bool)

(assert (=> b!1447899 (= e!815448 true)))

(declare-fun lt!635299 () SeekEntryResult!11661)

(assert (=> b!1447899 (= lt!635299 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47386 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447900 () Bool)

(declare-fun res!979589 () Bool)

(assert (=> b!1447900 (=> (not res!979589) (not e!815452))))

(assert (=> b!1447900 (= res!979589 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47937 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47937 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47937 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447901 () Bool)

(declare-fun res!979596 () Bool)

(assert (=> b!1447901 (=> (not res!979596) (not e!815452))))

(declare-datatypes ((List!34067 0))(
  ( (Nil!34064) (Cons!34063 (h!35413 (_ BitVec 64)) (t!48768 List!34067)) )
))
(declare-fun arrayNoDuplicates!0 (array!98205 (_ BitVec 32) List!34067) Bool)

(assert (=> b!1447901 (= res!979596 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34064))))

(declare-fun b!1447902 () Bool)

(assert (=> b!1447902 (= e!815456 e!815449)))

(declare-fun res!979592 () Bool)

(assert (=> b!1447902 (=> res!979592 e!815449)))

(assert (=> b!1447902 (= res!979592 (or (and (= (select (arr!47386 a!2862) index!646) (select (store (arr!47386 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47386 a!2862) index!646) (select (arr!47386 a!2862) j!93))) (not (= (select (arr!47386 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447903 () Bool)

(assert (=> b!1447903 (= e!815455 e!815454)))

(declare-fun res!979594 () Bool)

(assert (=> b!1447903 (=> (not res!979594) (not e!815454))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447903 (= res!979594 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47386 a!2862) j!93) mask!2687) (select (arr!47386 a!2862) j!93) a!2862 mask!2687) lt!635297))))

(assert (=> b!1447903 (= lt!635297 (Intermediate!11661 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!979605 () Bool)

(assert (=> start!124840 (=> (not res!979605) (not e!815452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124840 (= res!979605 (validMask!0 mask!2687))))

(assert (=> start!124840 e!815452))

(assert (=> start!124840 true))

(declare-fun array_inv!36331 (array!98205) Bool)

(assert (=> start!124840 (array_inv!36331 a!2862)))

(declare-fun b!1447893 () Bool)

(assert (=> b!1447893 (= e!815454 e!815447)))

(declare-fun res!979599 () Bool)

(assert (=> b!1447893 (=> (not res!979599) (not e!815447))))

(assert (=> b!1447893 (= res!979599 (= lt!635301 (Intermediate!11661 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1447893 (= lt!635301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635296 mask!2687) lt!635296 lt!635298 mask!2687))))

(assert (=> b!1447893 (= lt!635296 (select (store (arr!47386 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!124840 res!979605) b!1447892))

(assert (= (and b!1447892 res!979591) b!1447894))

(assert (= (and b!1447894 res!979603) b!1447897))

(assert (= (and b!1447897 res!979604) b!1447896))

(assert (= (and b!1447896 res!979600) b!1447901))

(assert (= (and b!1447901 res!979596) b!1447900))

(assert (= (and b!1447900 res!979589) b!1447885))

(assert (= (and b!1447885 res!979601) b!1447903))

(assert (= (and b!1447903 res!979594) b!1447898))

(assert (= (and b!1447898 res!979602) b!1447893))

(assert (= (and b!1447893 res!979599) b!1447889))

(assert (= (and b!1447889 c!133661) b!1447887))

(assert (= (and b!1447889 (not c!133661)) b!1447888))

(assert (= (and b!1447889 res!979595) b!1447886))

(assert (= (and b!1447886 res!979593) b!1447891))

(assert (= (and b!1447891 res!979597) b!1447902))

(assert (= (and b!1447902 (not res!979592)) b!1447895))

(assert (= (and b!1447895 res!979598) b!1447890))

(assert (= (and b!1447891 (not res!979590)) b!1447899))

(declare-fun m!1336731 () Bool)

(assert (=> b!1447899 m!1336731))

(assert (=> b!1447899 m!1336731))

(declare-fun m!1336733 () Bool)

(assert (=> b!1447899 m!1336733))

(declare-fun m!1336735 () Bool)

(assert (=> b!1447888 m!1336735))

(declare-fun m!1336737 () Bool)

(assert (=> b!1447888 m!1336737))

(declare-fun m!1336739 () Bool)

(assert (=> b!1447887 m!1336739))

(assert (=> b!1447903 m!1336731))

(assert (=> b!1447903 m!1336731))

(declare-fun m!1336741 () Bool)

(assert (=> b!1447903 m!1336741))

(assert (=> b!1447903 m!1336741))

(assert (=> b!1447903 m!1336731))

(declare-fun m!1336743 () Bool)

(assert (=> b!1447903 m!1336743))

(declare-fun m!1336745 () Bool)

(assert (=> b!1447891 m!1336745))

(declare-fun m!1336747 () Bool)

(assert (=> b!1447891 m!1336747))

(declare-fun m!1336749 () Bool)

(assert (=> b!1447891 m!1336749))

(declare-fun m!1336751 () Bool)

(assert (=> b!1447891 m!1336751))

(declare-fun m!1336753 () Bool)

(assert (=> b!1447891 m!1336753))

(assert (=> b!1447891 m!1336731))

(declare-fun m!1336755 () Bool)

(assert (=> b!1447891 m!1336755))

(declare-fun m!1336757 () Bool)

(assert (=> b!1447891 m!1336757))

(assert (=> b!1447891 m!1336731))

(assert (=> b!1447898 m!1336731))

(assert (=> b!1447898 m!1336731))

(declare-fun m!1336759 () Bool)

(assert (=> b!1447898 m!1336759))

(assert (=> b!1447897 m!1336731))

(assert (=> b!1447897 m!1336731))

(declare-fun m!1336761 () Bool)

(assert (=> b!1447897 m!1336761))

(declare-fun m!1336763 () Bool)

(assert (=> start!124840 m!1336763))

(declare-fun m!1336765 () Bool)

(assert (=> start!124840 m!1336765))

(declare-fun m!1336767 () Bool)

(assert (=> b!1447896 m!1336767))

(assert (=> b!1447885 m!1336747))

(declare-fun m!1336769 () Bool)

(assert (=> b!1447885 m!1336769))

(assert (=> b!1447902 m!1336753))

(assert (=> b!1447902 m!1336747))

(assert (=> b!1447902 m!1336751))

(assert (=> b!1447902 m!1336731))

(declare-fun m!1336771 () Bool)

(assert (=> b!1447901 m!1336771))

(assert (=> b!1447895 m!1336731))

(assert (=> b!1447895 m!1336731))

(declare-fun m!1336773 () Bool)

(assert (=> b!1447895 m!1336773))

(declare-fun m!1336775 () Bool)

(assert (=> b!1447893 m!1336775))

(assert (=> b!1447893 m!1336775))

(declare-fun m!1336777 () Bool)

(assert (=> b!1447893 m!1336777))

(assert (=> b!1447893 m!1336747))

(declare-fun m!1336779 () Bool)

(assert (=> b!1447893 m!1336779))

(declare-fun m!1336781 () Bool)

(assert (=> b!1447894 m!1336781))

(assert (=> b!1447894 m!1336781))

(declare-fun m!1336783 () Bool)

(assert (=> b!1447894 m!1336783))

(push 1)

