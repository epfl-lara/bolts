; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123280 () Bool)

(assert start!123280)

(declare-fun b!1428856 () Bool)

(declare-fun res!963595 () Bool)

(declare-fun e!806933 () Bool)

(assert (=> b!1428856 (=> (not res!963595) (not e!806933))))

(declare-datatypes ((array!97359 0))(
  ( (array!97360 (arr!46987 (Array (_ BitVec 32) (_ BitVec 64))) (size!47538 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97359)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97359 (_ BitVec 32)) Bool)

(assert (=> b!1428856 (= res!963595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428857 () Bool)

(declare-fun e!806930 () Bool)

(assert (=> b!1428857 (= e!806930 (not true))))

(declare-fun e!806929 () Bool)

(assert (=> b!1428857 e!806929))

(declare-fun res!963599 () Bool)

(assert (=> b!1428857 (=> (not res!963599) (not e!806929))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1428857 (= res!963599 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48270 0))(
  ( (Unit!48271) )
))
(declare-fun lt!629112 () Unit!48270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48270)

(assert (=> b!1428857 (= lt!629112 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428858 () Bool)

(declare-fun e!806932 () Bool)

(assert (=> b!1428858 (= e!806933 e!806932)))

(declare-fun res!963603 () Bool)

(assert (=> b!1428858 (=> (not res!963603) (not e!806932))))

(declare-datatypes ((SeekEntryResult!11288 0))(
  ( (MissingZero!11288 (index!47543 (_ BitVec 32))) (Found!11288 (index!47544 (_ BitVec 32))) (Intermediate!11288 (undefined!12100 Bool) (index!47545 (_ BitVec 32)) (x!129189 (_ BitVec 32))) (Undefined!11288) (MissingVacant!11288 (index!47546 (_ BitVec 32))) )
))
(declare-fun lt!629114 () SeekEntryResult!11288)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97359 (_ BitVec 32)) SeekEntryResult!11288)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428858 (= res!963603 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46987 a!2831) j!81) mask!2608) (select (arr!46987 a!2831) j!81) a!2831 mask!2608) lt!629114))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1428858 (= lt!629114 (Intermediate!11288 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!963605 () Bool)

(assert (=> start!123280 (=> (not res!963605) (not e!806933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123280 (= res!963605 (validMask!0 mask!2608))))

(assert (=> start!123280 e!806933))

(assert (=> start!123280 true))

(declare-fun array_inv!35932 (array!97359) Bool)

(assert (=> start!123280 (array_inv!35932 a!2831)))

(declare-fun b!1428859 () Bool)

(declare-fun res!963596 () Bool)

(assert (=> b!1428859 (=> (not res!963596) (not e!806933))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428859 (= res!963596 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47538 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47538 a!2831))))))

(declare-fun b!1428860 () Bool)

(declare-fun res!963598 () Bool)

(assert (=> b!1428860 (=> (not res!963598) (not e!806930))))

(assert (=> b!1428860 (= res!963598 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46987 a!2831) j!81) a!2831 mask!2608) lt!629114))))

(declare-fun b!1428861 () Bool)

(declare-fun res!963601 () Bool)

(assert (=> b!1428861 (=> (not res!963601) (not e!806933))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428861 (= res!963601 (and (= (size!47538 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47538 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47538 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428862 () Bool)

(declare-fun res!963604 () Bool)

(assert (=> b!1428862 (=> (not res!963604) (not e!806933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428862 (= res!963604 (validKeyInArray!0 (select (arr!46987 a!2831) i!982)))))

(declare-fun b!1428863 () Bool)

(declare-fun res!963602 () Bool)

(assert (=> b!1428863 (=> (not res!963602) (not e!806933))))

(declare-datatypes ((List!33677 0))(
  ( (Nil!33674) (Cons!33673 (h!34987 (_ BitVec 64)) (t!48378 List!33677)) )
))
(declare-fun arrayNoDuplicates!0 (array!97359 (_ BitVec 32) List!33677) Bool)

(assert (=> b!1428863 (= res!963602 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33674))))

(declare-fun b!1428864 () Bool)

(declare-fun res!963594 () Bool)

(assert (=> b!1428864 (=> (not res!963594) (not e!806930))))

(declare-fun lt!629115 () array!97359)

(declare-fun lt!629116 () SeekEntryResult!11288)

(declare-fun lt!629113 () (_ BitVec 64))

(assert (=> b!1428864 (= res!963594 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629113 lt!629115 mask!2608) lt!629116))))

(declare-fun b!1428865 () Bool)

(declare-fun res!963600 () Bool)

(assert (=> b!1428865 (=> (not res!963600) (not e!806930))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428865 (= res!963600 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428866 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97359 (_ BitVec 32)) SeekEntryResult!11288)

(assert (=> b!1428866 (= e!806929 (= (seekEntryOrOpen!0 (select (arr!46987 a!2831) j!81) a!2831 mask!2608) (Found!11288 j!81)))))

(declare-fun b!1428867 () Bool)

(assert (=> b!1428867 (= e!806932 e!806930)))

(declare-fun res!963606 () Bool)

(assert (=> b!1428867 (=> (not res!963606) (not e!806930))))

(assert (=> b!1428867 (= res!963606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629113 mask!2608) lt!629113 lt!629115 mask!2608) lt!629116))))

(assert (=> b!1428867 (= lt!629116 (Intermediate!11288 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1428867 (= lt!629113 (select (store (arr!46987 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428867 (= lt!629115 (array!97360 (store (arr!46987 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47538 a!2831)))))

(declare-fun b!1428868 () Bool)

(declare-fun res!963597 () Bool)

(assert (=> b!1428868 (=> (not res!963597) (not e!806933))))

(assert (=> b!1428868 (= res!963597 (validKeyInArray!0 (select (arr!46987 a!2831) j!81)))))

(assert (= (and start!123280 res!963605) b!1428861))

(assert (= (and b!1428861 res!963601) b!1428862))

(assert (= (and b!1428862 res!963604) b!1428868))

(assert (= (and b!1428868 res!963597) b!1428856))

(assert (= (and b!1428856 res!963595) b!1428863))

(assert (= (and b!1428863 res!963602) b!1428859))

(assert (= (and b!1428859 res!963596) b!1428858))

(assert (= (and b!1428858 res!963603) b!1428867))

(assert (= (and b!1428867 res!963606) b!1428860))

(assert (= (and b!1428860 res!963598) b!1428864))

(assert (= (and b!1428864 res!963594) b!1428865))

(assert (= (and b!1428865 res!963600) b!1428857))

(assert (= (and b!1428857 res!963599) b!1428866))

(declare-fun m!1319027 () Bool)

(assert (=> b!1428864 m!1319027))

(declare-fun m!1319029 () Bool)

(assert (=> b!1428867 m!1319029))

(assert (=> b!1428867 m!1319029))

(declare-fun m!1319031 () Bool)

(assert (=> b!1428867 m!1319031))

(declare-fun m!1319033 () Bool)

(assert (=> b!1428867 m!1319033))

(declare-fun m!1319035 () Bool)

(assert (=> b!1428867 m!1319035))

(declare-fun m!1319037 () Bool)

(assert (=> b!1428862 m!1319037))

(assert (=> b!1428862 m!1319037))

(declare-fun m!1319039 () Bool)

(assert (=> b!1428862 m!1319039))

(declare-fun m!1319041 () Bool)

(assert (=> start!123280 m!1319041))

(declare-fun m!1319043 () Bool)

(assert (=> start!123280 m!1319043))

(declare-fun m!1319045 () Bool)

(assert (=> b!1428860 m!1319045))

(assert (=> b!1428860 m!1319045))

(declare-fun m!1319047 () Bool)

(assert (=> b!1428860 m!1319047))

(assert (=> b!1428858 m!1319045))

(assert (=> b!1428858 m!1319045))

(declare-fun m!1319049 () Bool)

(assert (=> b!1428858 m!1319049))

(assert (=> b!1428858 m!1319049))

(assert (=> b!1428858 m!1319045))

(declare-fun m!1319051 () Bool)

(assert (=> b!1428858 m!1319051))

(declare-fun m!1319053 () Bool)

(assert (=> b!1428857 m!1319053))

(declare-fun m!1319055 () Bool)

(assert (=> b!1428857 m!1319055))

(declare-fun m!1319057 () Bool)

(assert (=> b!1428863 m!1319057))

(assert (=> b!1428868 m!1319045))

(assert (=> b!1428868 m!1319045))

(declare-fun m!1319059 () Bool)

(assert (=> b!1428868 m!1319059))

(assert (=> b!1428866 m!1319045))

(assert (=> b!1428866 m!1319045))

(declare-fun m!1319061 () Bool)

(assert (=> b!1428866 m!1319061))

(declare-fun m!1319063 () Bool)

(assert (=> b!1428856 m!1319063))

(push 1)

