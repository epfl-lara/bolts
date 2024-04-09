; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125922 () Bool)

(assert start!125922)

(declare-fun b!1473371 () Bool)

(declare-fun e!826827 () Bool)

(declare-fun e!826831 () Bool)

(assert (=> b!1473371 (= e!826827 e!826831)))

(declare-fun res!1000805 () Bool)

(assert (=> b!1473371 (=> (not res!1000805) (not e!826831))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12100 0))(
  ( (MissingZero!12100 (index!50791 (_ BitVec 32))) (Found!12100 (index!50792 (_ BitVec 32))) (Intermediate!12100 (undefined!12912 Bool) (index!50793 (_ BitVec 32)) (x!132379 (_ BitVec 32))) (Undefined!12100) (MissingVacant!12100 (index!50794 (_ BitVec 32))) )
))
(declare-fun lt!643876 () SeekEntryResult!12100)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1473371 (= res!1000805 (= lt!643876 (Intermediate!12100 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99116 0))(
  ( (array!99117 (arr!47837 (Array (_ BitVec 32) (_ BitVec 64))) (size!48388 (_ BitVec 32))) )
))
(declare-fun lt!643873 () array!99116)

(declare-fun lt!643875 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99116 (_ BitVec 32)) SeekEntryResult!12100)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473371 (= lt!643876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643875 mask!2687) lt!643875 lt!643873 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99116)

(assert (=> b!1473371 (= lt!643875 (select (store (arr!47837 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473372 () Bool)

(declare-fun e!826829 () Bool)

(assert (=> b!1473372 (= e!826829 true)))

(declare-fun lt!643871 () SeekEntryResult!12100)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99116 (_ BitVec 32)) SeekEntryResult!12100)

(assert (=> b!1473372 (= lt!643871 (seekEntryOrOpen!0 lt!643875 lt!643873 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!826828 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1473373 () Bool)

(assert (=> b!1473373 (= e!826828 (= lt!643876 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643875 lt!643873 mask!2687)))))

(declare-fun b!1473374 () Bool)

(declare-fun e!826826 () Bool)

(assert (=> b!1473374 (= e!826826 e!826827)))

(declare-fun res!1000809 () Bool)

(assert (=> b!1473374 (=> (not res!1000809) (not e!826827))))

(declare-fun lt!643872 () SeekEntryResult!12100)

(assert (=> b!1473374 (= res!1000809 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47837 a!2862) j!93) mask!2687) (select (arr!47837 a!2862) j!93) a!2862 mask!2687) lt!643872))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1473374 (= lt!643872 (Intermediate!12100 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1473375 () Bool)

(declare-fun res!1000807 () Bool)

(declare-fun e!826830 () Bool)

(assert (=> b!1473375 (=> (not res!1000807) (not e!826830))))

(declare-datatypes ((List!34518 0))(
  ( (Nil!34515) (Cons!34514 (h!35873 (_ BitVec 64)) (t!49219 List!34518)) )
))
(declare-fun arrayNoDuplicates!0 (array!99116 (_ BitVec 32) List!34518) Bool)

(assert (=> b!1473375 (= res!1000807 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34515))))

(declare-fun b!1473376 () Bool)

(declare-fun res!1000808 () Bool)

(declare-fun e!826832 () Bool)

(assert (=> b!1473376 (=> (not res!1000808) (not e!826832))))

(assert (=> b!1473376 (= res!1000808 (= (seekEntryOrOpen!0 (select (arr!47837 a!2862) j!93) a!2862 mask!2687) (Found!12100 j!93)))))

(declare-fun b!1473377 () Bool)

(declare-fun res!1000798 () Bool)

(assert (=> b!1473377 (=> (not res!1000798) (not e!826830))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99116 (_ BitVec 32)) Bool)

(assert (=> b!1473377 (= res!1000798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473378 () Bool)

(assert (=> b!1473378 (= e!826831 (not e!826829))))

(declare-fun res!1000796 () Bool)

(assert (=> b!1473378 (=> res!1000796 e!826829)))

(assert (=> b!1473378 (= res!1000796 (or (not (= (select (arr!47837 a!2862) index!646) (select (store (arr!47837 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47837 a!2862) index!646) (select (arr!47837 a!2862) j!93)))))))

(assert (=> b!1473378 e!826832))

(declare-fun res!1000804 () Bool)

(assert (=> b!1473378 (=> (not res!1000804) (not e!826832))))

(assert (=> b!1473378 (= res!1000804 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49488 0))(
  ( (Unit!49489) )
))
(declare-fun lt!643874 () Unit!49488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99116 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49488)

(assert (=> b!1473378 (= lt!643874 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473379 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99116 (_ BitVec 32)) SeekEntryResult!12100)

(assert (=> b!1473379 (= e!826828 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643875 lt!643873 mask!2687) (seekEntryOrOpen!0 lt!643875 lt!643873 mask!2687)))))

(declare-fun b!1473380 () Bool)

(declare-fun res!1000801 () Bool)

(assert (=> b!1473380 (=> (not res!1000801) (not e!826827))))

(assert (=> b!1473380 (= res!1000801 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47837 a!2862) j!93) a!2862 mask!2687) lt!643872))))

(declare-fun b!1473381 () Bool)

(assert (=> b!1473381 (= e!826832 (or (= (select (arr!47837 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47837 a!2862) intermediateBeforeIndex!19) (select (arr!47837 a!2862) j!93))))))

(declare-fun b!1473382 () Bool)

(declare-fun res!1000794 () Bool)

(assert (=> b!1473382 (=> (not res!1000794) (not e!826831))))

(assert (=> b!1473382 (= res!1000794 e!826828)))

(declare-fun c!135806 () Bool)

(assert (=> b!1473382 (= c!135806 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1000803 () Bool)

(assert (=> start!125922 (=> (not res!1000803) (not e!826830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125922 (= res!1000803 (validMask!0 mask!2687))))

(assert (=> start!125922 e!826830))

(assert (=> start!125922 true))

(declare-fun array_inv!36782 (array!99116) Bool)

(assert (=> start!125922 (array_inv!36782 a!2862)))

(declare-fun b!1473383 () Bool)

(declare-fun res!1000797 () Bool)

(assert (=> b!1473383 (=> (not res!1000797) (not e!826830))))

(assert (=> b!1473383 (= res!1000797 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48388 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48388 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48388 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473384 () Bool)

(declare-fun res!1000799 () Bool)

(assert (=> b!1473384 (=> (not res!1000799) (not e!826830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473384 (= res!1000799 (validKeyInArray!0 (select (arr!47837 a!2862) i!1006)))))

(declare-fun b!1473385 () Bool)

(declare-fun res!1000800 () Bool)

(assert (=> b!1473385 (=> (not res!1000800) (not e!826830))))

(assert (=> b!1473385 (= res!1000800 (and (= (size!48388 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48388 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48388 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473386 () Bool)

(declare-fun res!1000802 () Bool)

(assert (=> b!1473386 (=> (not res!1000802) (not e!826830))))

(assert (=> b!1473386 (= res!1000802 (validKeyInArray!0 (select (arr!47837 a!2862) j!93)))))

(declare-fun b!1473387 () Bool)

(declare-fun res!1000795 () Bool)

(assert (=> b!1473387 (=> (not res!1000795) (not e!826831))))

(assert (=> b!1473387 (= res!1000795 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473388 () Bool)

(assert (=> b!1473388 (= e!826830 e!826826)))

(declare-fun res!1000806 () Bool)

(assert (=> b!1473388 (=> (not res!1000806) (not e!826826))))

(assert (=> b!1473388 (= res!1000806 (= (select (store (arr!47837 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473388 (= lt!643873 (array!99117 (store (arr!47837 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48388 a!2862)))))

(assert (= (and start!125922 res!1000803) b!1473385))

(assert (= (and b!1473385 res!1000800) b!1473384))

(assert (= (and b!1473384 res!1000799) b!1473386))

(assert (= (and b!1473386 res!1000802) b!1473377))

(assert (= (and b!1473377 res!1000798) b!1473375))

(assert (= (and b!1473375 res!1000807) b!1473383))

(assert (= (and b!1473383 res!1000797) b!1473388))

(assert (= (and b!1473388 res!1000806) b!1473374))

(assert (= (and b!1473374 res!1000809) b!1473380))

(assert (= (and b!1473380 res!1000801) b!1473371))

(assert (= (and b!1473371 res!1000805) b!1473382))

(assert (= (and b!1473382 c!135806) b!1473373))

(assert (= (and b!1473382 (not c!135806)) b!1473379))

(assert (= (and b!1473382 res!1000794) b!1473387))

(assert (= (and b!1473387 res!1000795) b!1473378))

(assert (= (and b!1473378 res!1000804) b!1473376))

(assert (= (and b!1473376 res!1000808) b!1473381))

(assert (= (and b!1473378 (not res!1000796)) b!1473372))

(declare-fun m!1359953 () Bool)

(assert (=> b!1473377 m!1359953))

(declare-fun m!1359955 () Bool)

(assert (=> b!1473376 m!1359955))

(assert (=> b!1473376 m!1359955))

(declare-fun m!1359957 () Bool)

(assert (=> b!1473376 m!1359957))

(declare-fun m!1359959 () Bool)

(assert (=> b!1473375 m!1359959))

(assert (=> b!1473380 m!1359955))

(assert (=> b!1473380 m!1359955))

(declare-fun m!1359961 () Bool)

(assert (=> b!1473380 m!1359961))

(declare-fun m!1359963 () Bool)

(assert (=> b!1473371 m!1359963))

(assert (=> b!1473371 m!1359963))

(declare-fun m!1359965 () Bool)

(assert (=> b!1473371 m!1359965))

(declare-fun m!1359967 () Bool)

(assert (=> b!1473371 m!1359967))

(declare-fun m!1359969 () Bool)

(assert (=> b!1473371 m!1359969))

(declare-fun m!1359971 () Bool)

(assert (=> b!1473372 m!1359971))

(assert (=> b!1473374 m!1359955))

(assert (=> b!1473374 m!1359955))

(declare-fun m!1359973 () Bool)

(assert (=> b!1473374 m!1359973))

(assert (=> b!1473374 m!1359973))

(assert (=> b!1473374 m!1359955))

(declare-fun m!1359975 () Bool)

(assert (=> b!1473374 m!1359975))

(declare-fun m!1359977 () Bool)

(assert (=> b!1473379 m!1359977))

(assert (=> b!1473379 m!1359971))

(assert (=> b!1473386 m!1359955))

(assert (=> b!1473386 m!1359955))

(declare-fun m!1359979 () Bool)

(assert (=> b!1473386 m!1359979))

(declare-fun m!1359981 () Bool)

(assert (=> b!1473373 m!1359981))

(declare-fun m!1359983 () Bool)

(assert (=> start!125922 m!1359983))

(declare-fun m!1359985 () Bool)

(assert (=> start!125922 m!1359985))

(declare-fun m!1359987 () Bool)

(assert (=> b!1473378 m!1359987))

(assert (=> b!1473378 m!1359967))

(declare-fun m!1359989 () Bool)

(assert (=> b!1473378 m!1359989))

(declare-fun m!1359991 () Bool)

(assert (=> b!1473378 m!1359991))

(declare-fun m!1359993 () Bool)

(assert (=> b!1473378 m!1359993))

(assert (=> b!1473378 m!1359955))

(declare-fun m!1359995 () Bool)

(assert (=> b!1473381 m!1359995))

(assert (=> b!1473381 m!1359955))

(declare-fun m!1359997 () Bool)

(assert (=> b!1473384 m!1359997))

(assert (=> b!1473384 m!1359997))

(declare-fun m!1359999 () Bool)

(assert (=> b!1473384 m!1359999))

(assert (=> b!1473388 m!1359967))

(declare-fun m!1360001 () Bool)

(assert (=> b!1473388 m!1360001))

(check-sat (not b!1473375) (not b!1473376) (not b!1473380) (not b!1473373) (not b!1473372) (not b!1473384) (not b!1473377) (not b!1473374) (not b!1473379) (not b!1473371) (not b!1473386) (not b!1473378) (not start!125922))
(check-sat)
