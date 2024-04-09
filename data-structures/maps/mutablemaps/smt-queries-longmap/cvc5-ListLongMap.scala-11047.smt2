; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129160 () Bool)

(assert start!129160)

(declare-fun res!1034988 () Bool)

(declare-fun e!845487 () Bool)

(assert (=> start!129160 (=> (not res!1034988) (not e!845487))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129160 (= res!1034988 (validMask!0 mask!2512))))

(assert (=> start!129160 e!845487))

(assert (=> start!129160 true))

(declare-datatypes ((array!100929 0))(
  ( (array!100930 (arr!48697 (Array (_ BitVec 32) (_ BitVec 64))) (size!49248 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100929)

(declare-fun array_inv!37642 (array!100929) Bool)

(assert (=> start!129160 (array_inv!37642 a!2804)))

(declare-fun b!1515010 () Bool)

(declare-fun res!1034993 () Bool)

(assert (=> b!1515010 (=> (not res!1034993) (not e!845487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100929 (_ BitVec 32)) Bool)

(assert (=> b!1515010 (= res!1034993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515011 () Bool)

(declare-fun res!1034991 () Bool)

(assert (=> b!1515011 (=> (not res!1034991) (not e!845487))))

(declare-datatypes ((List!35360 0))(
  ( (Nil!35357) (Cons!35356 (h!36769 (_ BitVec 64)) (t!50061 List!35360)) )
))
(declare-fun arrayNoDuplicates!0 (array!100929 (_ BitVec 32) List!35360) Bool)

(assert (=> b!1515011 (= res!1034991 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35357))))

(declare-fun b!1515012 () Bool)

(declare-fun e!845488 () Bool)

(declare-fun e!845483 () Bool)

(assert (=> b!1515012 (= e!845488 (not e!845483))))

(declare-fun res!1034992 () Bool)

(assert (=> b!1515012 (=> res!1034992 e!845483)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!656531 () (_ BitVec 64))

(assert (=> b!1515012 (= res!1034992 (or (not (= (select (arr!48697 a!2804) j!70) lt!656531)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48697 a!2804) index!487) (select (arr!48697 a!2804) j!70)) (not (= (select (arr!48697 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845485 () Bool)

(assert (=> b!1515012 e!845485))

(declare-fun res!1034990 () Bool)

(assert (=> b!1515012 (=> (not res!1034990) (not e!845485))))

(assert (=> b!1515012 (= res!1034990 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50602 0))(
  ( (Unit!50603) )
))
(declare-fun lt!656526 () Unit!50602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50602)

(assert (=> b!1515012 (= lt!656526 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515013 () Bool)

(declare-fun res!1034994 () Bool)

(assert (=> b!1515013 (=> (not res!1034994) (not e!845487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515013 (= res!1034994 (validKeyInArray!0 (select (arr!48697 a!2804) j!70)))))

(declare-fun b!1515014 () Bool)

(declare-fun e!845489 () Bool)

(assert (=> b!1515014 (= e!845483 e!845489)))

(declare-fun res!1034987 () Bool)

(assert (=> b!1515014 (=> res!1034987 e!845489)))

(declare-datatypes ((SeekEntryResult!12889 0))(
  ( (MissingZero!12889 (index!53950 (_ BitVec 32))) (Found!12889 (index!53951 (_ BitVec 32))) (Intermediate!12889 (undefined!13701 Bool) (index!53952 (_ BitVec 32)) (x!135668 (_ BitVec 32))) (Undefined!12889) (MissingVacant!12889 (index!53953 (_ BitVec 32))) )
))
(declare-fun lt!656530 () SeekEntryResult!12889)

(assert (=> b!1515014 (= res!1034987 (not (= lt!656530 (Found!12889 j!70))))))

(declare-fun lt!656525 () SeekEntryResult!12889)

(declare-fun lt!656529 () SeekEntryResult!12889)

(assert (=> b!1515014 (= lt!656525 lt!656529)))

(declare-fun lt!656524 () array!100929)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100929 (_ BitVec 32)) SeekEntryResult!12889)

(assert (=> b!1515014 (= lt!656529 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656531 lt!656524 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100929 (_ BitVec 32)) SeekEntryResult!12889)

(assert (=> b!1515014 (= lt!656525 (seekEntryOrOpen!0 lt!656531 lt!656524 mask!2512))))

(declare-fun lt!656532 () SeekEntryResult!12889)

(assert (=> b!1515014 (= lt!656532 lt!656530)))

(assert (=> b!1515014 (= lt!656530 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48697 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515014 (= lt!656532 (seekEntryOrOpen!0 (select (arr!48697 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515015 () Bool)

(declare-fun res!1034997 () Bool)

(declare-fun e!845486 () Bool)

(assert (=> b!1515015 (=> (not res!1034997) (not e!845486))))

(declare-fun lt!656527 () SeekEntryResult!12889)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100929 (_ BitVec 32)) SeekEntryResult!12889)

(assert (=> b!1515015 (= res!1034997 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48697 a!2804) j!70) a!2804 mask!2512) lt!656527))))

(declare-fun b!1515016 () Bool)

(assert (=> b!1515016 (= e!845487 e!845486)))

(declare-fun res!1034996 () Bool)

(assert (=> b!1515016 (=> (not res!1034996) (not e!845486))))

(declare-fun lt!656533 () SeekEntryResult!12889)

(assert (=> b!1515016 (= res!1034996 (= lt!656533 lt!656527))))

(assert (=> b!1515016 (= lt!656527 (Intermediate!12889 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515016 (= lt!656533 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48697 a!2804) j!70) mask!2512) (select (arr!48697 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515017 () Bool)

(assert (=> b!1515017 (= e!845486 e!845488)))

(declare-fun res!1034989 () Bool)

(assert (=> b!1515017 (=> (not res!1034989) (not e!845488))))

(assert (=> b!1515017 (= res!1034989 (= lt!656533 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656531 mask!2512) lt!656531 lt!656524 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515017 (= lt!656531 (select (store (arr!48697 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515017 (= lt!656524 (array!100930 (store (arr!48697 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49248 a!2804)))))

(declare-fun b!1515018 () Bool)

(declare-fun res!1034986 () Bool)

(assert (=> b!1515018 (=> (not res!1034986) (not e!845487))))

(assert (=> b!1515018 (= res!1034986 (and (= (size!49248 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49248 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49248 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515019 () Bool)

(declare-fun res!1034985 () Bool)

(assert (=> b!1515019 (=> (not res!1034985) (not e!845487))))

(assert (=> b!1515019 (= res!1034985 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49248 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49248 a!2804))))))

(declare-fun b!1515020 () Bool)

(assert (=> b!1515020 (= e!845489 true)))

(assert (=> b!1515020 (= lt!656529 lt!656530)))

(declare-fun lt!656528 () Unit!50602)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50602)

(assert (=> b!1515020 (= lt!656528 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515021 () Bool)

(declare-fun res!1034995 () Bool)

(assert (=> b!1515021 (=> (not res!1034995) (not e!845487))))

(assert (=> b!1515021 (= res!1034995 (validKeyInArray!0 (select (arr!48697 a!2804) i!961)))))

(declare-fun b!1515022 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100929 (_ BitVec 32)) SeekEntryResult!12889)

(assert (=> b!1515022 (= e!845485 (= (seekEntry!0 (select (arr!48697 a!2804) j!70) a!2804 mask!2512) (Found!12889 j!70)))))

(assert (= (and start!129160 res!1034988) b!1515018))

(assert (= (and b!1515018 res!1034986) b!1515021))

(assert (= (and b!1515021 res!1034995) b!1515013))

(assert (= (and b!1515013 res!1034994) b!1515010))

(assert (= (and b!1515010 res!1034993) b!1515011))

(assert (= (and b!1515011 res!1034991) b!1515019))

(assert (= (and b!1515019 res!1034985) b!1515016))

(assert (= (and b!1515016 res!1034996) b!1515015))

(assert (= (and b!1515015 res!1034997) b!1515017))

(assert (= (and b!1515017 res!1034989) b!1515012))

(assert (= (and b!1515012 res!1034990) b!1515022))

(assert (= (and b!1515012 (not res!1034992)) b!1515014))

(assert (= (and b!1515014 (not res!1034987)) b!1515020))

(declare-fun m!1398081 () Bool)

(assert (=> b!1515011 m!1398081))

(declare-fun m!1398083 () Bool)

(assert (=> b!1515022 m!1398083))

(assert (=> b!1515022 m!1398083))

(declare-fun m!1398085 () Bool)

(assert (=> b!1515022 m!1398085))

(assert (=> b!1515012 m!1398083))

(declare-fun m!1398087 () Bool)

(assert (=> b!1515012 m!1398087))

(declare-fun m!1398089 () Bool)

(assert (=> b!1515012 m!1398089))

(declare-fun m!1398091 () Bool)

(assert (=> b!1515012 m!1398091))

(assert (=> b!1515014 m!1398083))

(declare-fun m!1398093 () Bool)

(assert (=> b!1515014 m!1398093))

(assert (=> b!1515014 m!1398083))

(declare-fun m!1398095 () Bool)

(assert (=> b!1515014 m!1398095))

(declare-fun m!1398097 () Bool)

(assert (=> b!1515014 m!1398097))

(assert (=> b!1515014 m!1398083))

(declare-fun m!1398099 () Bool)

(assert (=> b!1515014 m!1398099))

(assert (=> b!1515016 m!1398083))

(assert (=> b!1515016 m!1398083))

(declare-fun m!1398101 () Bool)

(assert (=> b!1515016 m!1398101))

(assert (=> b!1515016 m!1398101))

(assert (=> b!1515016 m!1398083))

(declare-fun m!1398103 () Bool)

(assert (=> b!1515016 m!1398103))

(assert (=> b!1515015 m!1398083))

(assert (=> b!1515015 m!1398083))

(declare-fun m!1398105 () Bool)

(assert (=> b!1515015 m!1398105))

(declare-fun m!1398107 () Bool)

(assert (=> b!1515017 m!1398107))

(assert (=> b!1515017 m!1398107))

(declare-fun m!1398109 () Bool)

(assert (=> b!1515017 m!1398109))

(declare-fun m!1398111 () Bool)

(assert (=> b!1515017 m!1398111))

(declare-fun m!1398113 () Bool)

(assert (=> b!1515017 m!1398113))

(declare-fun m!1398115 () Bool)

(assert (=> b!1515010 m!1398115))

(declare-fun m!1398117 () Bool)

(assert (=> b!1515021 m!1398117))

(assert (=> b!1515021 m!1398117))

(declare-fun m!1398119 () Bool)

(assert (=> b!1515021 m!1398119))

(declare-fun m!1398121 () Bool)

(assert (=> start!129160 m!1398121))

(declare-fun m!1398123 () Bool)

(assert (=> start!129160 m!1398123))

(assert (=> b!1515013 m!1398083))

(assert (=> b!1515013 m!1398083))

(declare-fun m!1398125 () Bool)

(assert (=> b!1515013 m!1398125))

(declare-fun m!1398127 () Bool)

(assert (=> b!1515020 m!1398127))

(push 1)

