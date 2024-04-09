; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125926 () Bool)

(assert start!125926)

(declare-fun b!1473479 () Bool)

(declare-fun e!826879 () Bool)

(declare-fun e!826880 () Bool)

(assert (=> b!1473479 (= e!826879 e!826880)))

(declare-fun res!1000897 () Bool)

(assert (=> b!1473479 (=> (not res!1000897) (not e!826880))))

(declare-datatypes ((array!99120 0))(
  ( (array!99121 (arr!47839 (Array (_ BitVec 32) (_ BitVec 64))) (size!48390 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99120)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12102 0))(
  ( (MissingZero!12102 (index!50799 (_ BitVec 32))) (Found!12102 (index!50800 (_ BitVec 32))) (Intermediate!12102 (undefined!12914 Bool) (index!50801 (_ BitVec 32)) (x!132389 (_ BitVec 32))) (Undefined!12102) (MissingVacant!12102 (index!50802 (_ BitVec 32))) )
))
(declare-fun lt!643907 () SeekEntryResult!12102)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99120 (_ BitVec 32)) SeekEntryResult!12102)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473479 (= res!1000897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47839 a!2862) j!93) mask!2687) (select (arr!47839 a!2862) j!93) a!2862 mask!2687) lt!643907))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1473479 (= lt!643907 (Intermediate!12102 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1000896 () Bool)

(declare-fun e!826873 () Bool)

(assert (=> start!125926 (=> (not res!1000896) (not e!826873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125926 (= res!1000896 (validMask!0 mask!2687))))

(assert (=> start!125926 e!826873))

(assert (=> start!125926 true))

(declare-fun array_inv!36784 (array!99120) Bool)

(assert (=> start!125926 (array_inv!36784 a!2862)))

(declare-fun b!1473480 () Bool)

(declare-fun res!1000904 () Bool)

(assert (=> b!1473480 (=> (not res!1000904) (not e!826873))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1473480 (= res!1000904 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48390 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48390 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48390 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473481 () Bool)

(declare-fun e!826877 () Bool)

(assert (=> b!1473481 (= e!826877 (or (= (select (arr!47839 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47839 a!2862) intermediateBeforeIndex!19) (select (arr!47839 a!2862) j!93))))))

(declare-fun e!826876 () Bool)

(declare-fun b!1473482 () Bool)

(declare-fun lt!643911 () array!99120)

(declare-fun lt!643908 () SeekEntryResult!12102)

(declare-fun lt!643909 () (_ BitVec 64))

(assert (=> b!1473482 (= e!826876 (= lt!643908 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643909 lt!643911 mask!2687)))))

(declare-fun b!1473483 () Bool)

(declare-fun res!1000892 () Bool)

(assert (=> b!1473483 (=> (not res!1000892) (not e!826873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99120 (_ BitVec 32)) Bool)

(assert (=> b!1473483 (= res!1000892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473484 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99120 (_ BitVec 32)) SeekEntryResult!12102)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99120 (_ BitVec 32)) SeekEntryResult!12102)

(assert (=> b!1473484 (= e!826876 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643909 lt!643911 mask!2687) (seekEntryOrOpen!0 lt!643909 lt!643911 mask!2687)))))

(declare-fun b!1473485 () Bool)

(declare-fun res!1000890 () Bool)

(assert (=> b!1473485 (=> (not res!1000890) (not e!826877))))

(assert (=> b!1473485 (= res!1000890 (= (seekEntryOrOpen!0 (select (arr!47839 a!2862) j!93) a!2862 mask!2687) (Found!12102 j!93)))))

(declare-fun b!1473486 () Bool)

(declare-fun res!1000899 () Bool)

(declare-fun e!826874 () Bool)

(assert (=> b!1473486 (=> (not res!1000899) (not e!826874))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1473486 (= res!1000899 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473487 () Bool)

(assert (=> b!1473487 (= e!826873 e!826879)))

(declare-fun res!1000898 () Bool)

(assert (=> b!1473487 (=> (not res!1000898) (not e!826879))))

(assert (=> b!1473487 (= res!1000898 (= (select (store (arr!47839 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473487 (= lt!643911 (array!99121 (store (arr!47839 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48390 a!2862)))))

(declare-fun b!1473488 () Bool)

(declare-fun e!826875 () Bool)

(assert (=> b!1473488 (= e!826874 (not e!826875))))

(declare-fun res!1000893 () Bool)

(assert (=> b!1473488 (=> res!1000893 e!826875)))

(assert (=> b!1473488 (= res!1000893 (or (not (= (select (arr!47839 a!2862) index!646) (select (store (arr!47839 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47839 a!2862) index!646) (select (arr!47839 a!2862) j!93)))))))

(assert (=> b!1473488 e!826877))

(declare-fun res!1000903 () Bool)

(assert (=> b!1473488 (=> (not res!1000903) (not e!826877))))

(assert (=> b!1473488 (= res!1000903 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49492 0))(
  ( (Unit!49493) )
))
(declare-fun lt!643912 () Unit!49492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49492)

(assert (=> b!1473488 (= lt!643912 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473489 () Bool)

(declare-fun res!1000895 () Bool)

(assert (=> b!1473489 (=> (not res!1000895) (not e!826873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473489 (= res!1000895 (validKeyInArray!0 (select (arr!47839 a!2862) j!93)))))

(declare-fun b!1473490 () Bool)

(declare-fun res!1000902 () Bool)

(assert (=> b!1473490 (=> (not res!1000902) (not e!826873))))

(declare-datatypes ((List!34520 0))(
  ( (Nil!34517) (Cons!34516 (h!35875 (_ BitVec 64)) (t!49221 List!34520)) )
))
(declare-fun arrayNoDuplicates!0 (array!99120 (_ BitVec 32) List!34520) Bool)

(assert (=> b!1473490 (= res!1000902 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34517))))

(declare-fun b!1473491 () Bool)

(assert (=> b!1473491 (= e!826875 true)))

(declare-fun lt!643910 () SeekEntryResult!12102)

(assert (=> b!1473491 (= lt!643910 (seekEntryOrOpen!0 lt!643909 lt!643911 mask!2687))))

(declare-fun b!1473492 () Bool)

(declare-fun res!1000894 () Bool)

(assert (=> b!1473492 (=> (not res!1000894) (not e!826874))))

(assert (=> b!1473492 (= res!1000894 e!826876)))

(declare-fun c!135812 () Bool)

(assert (=> b!1473492 (= c!135812 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473493 () Bool)

(assert (=> b!1473493 (= e!826880 e!826874)))

(declare-fun res!1000905 () Bool)

(assert (=> b!1473493 (=> (not res!1000905) (not e!826874))))

(assert (=> b!1473493 (= res!1000905 (= lt!643908 (Intermediate!12102 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1473493 (= lt!643908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643909 mask!2687) lt!643909 lt!643911 mask!2687))))

(assert (=> b!1473493 (= lt!643909 (select (store (arr!47839 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473494 () Bool)

(declare-fun res!1000901 () Bool)

(assert (=> b!1473494 (=> (not res!1000901) (not e!826873))))

(assert (=> b!1473494 (= res!1000901 (validKeyInArray!0 (select (arr!47839 a!2862) i!1006)))))

(declare-fun b!1473495 () Bool)

(declare-fun res!1000900 () Bool)

(assert (=> b!1473495 (=> (not res!1000900) (not e!826873))))

(assert (=> b!1473495 (= res!1000900 (and (= (size!48390 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48390 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48390 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473496 () Bool)

(declare-fun res!1000891 () Bool)

(assert (=> b!1473496 (=> (not res!1000891) (not e!826880))))

(assert (=> b!1473496 (= res!1000891 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47839 a!2862) j!93) a!2862 mask!2687) lt!643907))))

(assert (= (and start!125926 res!1000896) b!1473495))

(assert (= (and b!1473495 res!1000900) b!1473494))

(assert (= (and b!1473494 res!1000901) b!1473489))

(assert (= (and b!1473489 res!1000895) b!1473483))

(assert (= (and b!1473483 res!1000892) b!1473490))

(assert (= (and b!1473490 res!1000902) b!1473480))

(assert (= (and b!1473480 res!1000904) b!1473487))

(assert (= (and b!1473487 res!1000898) b!1473479))

(assert (= (and b!1473479 res!1000897) b!1473496))

(assert (= (and b!1473496 res!1000891) b!1473493))

(assert (= (and b!1473493 res!1000905) b!1473492))

(assert (= (and b!1473492 c!135812) b!1473482))

(assert (= (and b!1473492 (not c!135812)) b!1473484))

(assert (= (and b!1473492 res!1000894) b!1473486))

(assert (= (and b!1473486 res!1000899) b!1473488))

(assert (= (and b!1473488 res!1000903) b!1473485))

(assert (= (and b!1473485 res!1000890) b!1473481))

(assert (= (and b!1473488 (not res!1000893)) b!1473491))

(declare-fun m!1360053 () Bool)

(assert (=> b!1473490 m!1360053))

(declare-fun m!1360055 () Bool)

(assert (=> b!1473484 m!1360055))

(declare-fun m!1360057 () Bool)

(assert (=> b!1473484 m!1360057))

(assert (=> b!1473491 m!1360057))

(declare-fun m!1360059 () Bool)

(assert (=> start!125926 m!1360059))

(declare-fun m!1360061 () Bool)

(assert (=> start!125926 m!1360061))

(declare-fun m!1360063 () Bool)

(assert (=> b!1473482 m!1360063))

(declare-fun m!1360065 () Bool)

(assert (=> b!1473481 m!1360065))

(declare-fun m!1360067 () Bool)

(assert (=> b!1473481 m!1360067))

(assert (=> b!1473479 m!1360067))

(assert (=> b!1473479 m!1360067))

(declare-fun m!1360069 () Bool)

(assert (=> b!1473479 m!1360069))

(assert (=> b!1473479 m!1360069))

(assert (=> b!1473479 m!1360067))

(declare-fun m!1360071 () Bool)

(assert (=> b!1473479 m!1360071))

(declare-fun m!1360073 () Bool)

(assert (=> b!1473493 m!1360073))

(assert (=> b!1473493 m!1360073))

(declare-fun m!1360075 () Bool)

(assert (=> b!1473493 m!1360075))

(declare-fun m!1360077 () Bool)

(assert (=> b!1473493 m!1360077))

(declare-fun m!1360079 () Bool)

(assert (=> b!1473493 m!1360079))

(assert (=> b!1473487 m!1360077))

(declare-fun m!1360081 () Bool)

(assert (=> b!1473487 m!1360081))

(assert (=> b!1473485 m!1360067))

(assert (=> b!1473485 m!1360067))

(declare-fun m!1360083 () Bool)

(assert (=> b!1473485 m!1360083))

(assert (=> b!1473489 m!1360067))

(assert (=> b!1473489 m!1360067))

(declare-fun m!1360085 () Bool)

(assert (=> b!1473489 m!1360085))

(assert (=> b!1473496 m!1360067))

(assert (=> b!1473496 m!1360067))

(declare-fun m!1360087 () Bool)

(assert (=> b!1473496 m!1360087))

(declare-fun m!1360089 () Bool)

(assert (=> b!1473488 m!1360089))

(assert (=> b!1473488 m!1360077))

(declare-fun m!1360091 () Bool)

(assert (=> b!1473488 m!1360091))

(declare-fun m!1360093 () Bool)

(assert (=> b!1473488 m!1360093))

(declare-fun m!1360095 () Bool)

(assert (=> b!1473488 m!1360095))

(assert (=> b!1473488 m!1360067))

(declare-fun m!1360097 () Bool)

(assert (=> b!1473483 m!1360097))

(declare-fun m!1360099 () Bool)

(assert (=> b!1473494 m!1360099))

(assert (=> b!1473494 m!1360099))

(declare-fun m!1360101 () Bool)

(assert (=> b!1473494 m!1360101))

(push 1)

