; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128892 () Bool)

(assert start!128892)

(declare-fun b!1509909 () Bool)

(declare-fun e!843287 () Bool)

(assert (=> b!1509909 (= e!843287 (not true))))

(declare-fun e!843285 () Bool)

(assert (=> b!1509909 e!843285))

(declare-fun res!1029891 () Bool)

(assert (=> b!1509909 (=> (not res!1029891) (not e!843285))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100661 0))(
  ( (array!100662 (arr!48563 (Array (_ BitVec 32) (_ BitVec 64))) (size!49114 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100661)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100661 (_ BitVec 32)) Bool)

(assert (=> b!1509909 (= res!1029891 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50334 0))(
  ( (Unit!50335) )
))
(declare-fun lt!655000 () Unit!50334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50334)

(assert (=> b!1509909 (= lt!655000 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509910 () Bool)

(declare-fun res!1029887 () Bool)

(declare-fun e!843284 () Bool)

(assert (=> b!1509910 (=> (not res!1029887) (not e!843284))))

(assert (=> b!1509910 (= res!1029887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509911 () Bool)

(declare-datatypes ((SeekEntryResult!12755 0))(
  ( (MissingZero!12755 (index!53414 (_ BitVec 32))) (Found!12755 (index!53415 (_ BitVec 32))) (Intermediate!12755 (undefined!13567 Bool) (index!53416 (_ BitVec 32)) (x!135174 (_ BitVec 32))) (Undefined!12755) (MissingVacant!12755 (index!53417 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100661 (_ BitVec 32)) SeekEntryResult!12755)

(assert (=> b!1509911 (= e!843285 (= (seekEntry!0 (select (arr!48563 a!2804) j!70) a!2804 mask!2512) (Found!12755 j!70)))))

(declare-fun b!1509912 () Bool)

(declare-fun res!1029886 () Bool)

(assert (=> b!1509912 (=> (not res!1029886) (not e!843284))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1509912 (= res!1029886 (and (= (size!49114 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49114 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49114 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509913 () Bool)

(declare-fun res!1029890 () Bool)

(assert (=> b!1509913 (=> (not res!1029890) (not e!843284))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509913 (= res!1029890 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49114 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49114 a!2804))))))

(declare-fun b!1509914 () Bool)

(assert (=> b!1509914 (= e!843284 e!843287)))

(declare-fun res!1029884 () Bool)

(assert (=> b!1509914 (=> (not res!1029884) (not e!843287))))

(declare-fun lt!654998 () SeekEntryResult!12755)

(declare-fun lt!654999 () SeekEntryResult!12755)

(assert (=> b!1509914 (= res!1029884 (= lt!654998 lt!654999))))

(assert (=> b!1509914 (= lt!654999 (Intermediate!12755 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100661 (_ BitVec 32)) SeekEntryResult!12755)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509914 (= lt!654998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48563 a!2804) j!70) mask!2512) (select (arr!48563 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509915 () Bool)

(declare-fun res!1029893 () Bool)

(assert (=> b!1509915 (=> (not res!1029893) (not e!843284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509915 (= res!1029893 (validKeyInArray!0 (select (arr!48563 a!2804) i!961)))))

(declare-fun b!1509917 () Bool)

(declare-fun res!1029892 () Bool)

(assert (=> b!1509917 (=> (not res!1029892) (not e!843284))))

(declare-datatypes ((List!35226 0))(
  ( (Nil!35223) (Cons!35222 (h!36635 (_ BitVec 64)) (t!49927 List!35226)) )
))
(declare-fun arrayNoDuplicates!0 (array!100661 (_ BitVec 32) List!35226) Bool)

(assert (=> b!1509917 (= res!1029892 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35223))))

(declare-fun b!1509918 () Bool)

(declare-fun res!1029894 () Bool)

(assert (=> b!1509918 (=> (not res!1029894) (not e!843287))))

(assert (=> b!1509918 (= res!1029894 (= lt!654998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48563 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48563 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100662 (store (arr!48563 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49114 a!2804)) mask!2512)))))

(declare-fun b!1509919 () Bool)

(declare-fun res!1029888 () Bool)

(assert (=> b!1509919 (=> (not res!1029888) (not e!843284))))

(assert (=> b!1509919 (= res!1029888 (validKeyInArray!0 (select (arr!48563 a!2804) j!70)))))

(declare-fun res!1029889 () Bool)

(assert (=> start!128892 (=> (not res!1029889) (not e!843284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128892 (= res!1029889 (validMask!0 mask!2512))))

(assert (=> start!128892 e!843284))

(assert (=> start!128892 true))

(declare-fun array_inv!37508 (array!100661) Bool)

(assert (=> start!128892 (array_inv!37508 a!2804)))

(declare-fun b!1509916 () Bool)

(declare-fun res!1029885 () Bool)

(assert (=> b!1509916 (=> (not res!1029885) (not e!843287))))

(assert (=> b!1509916 (= res!1029885 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48563 a!2804) j!70) a!2804 mask!2512) lt!654999))))

(assert (= (and start!128892 res!1029889) b!1509912))

(assert (= (and b!1509912 res!1029886) b!1509915))

(assert (= (and b!1509915 res!1029893) b!1509919))

(assert (= (and b!1509919 res!1029888) b!1509910))

(assert (= (and b!1509910 res!1029887) b!1509917))

(assert (= (and b!1509917 res!1029892) b!1509913))

(assert (= (and b!1509913 res!1029890) b!1509914))

(assert (= (and b!1509914 res!1029884) b!1509916))

(assert (= (and b!1509916 res!1029885) b!1509918))

(assert (= (and b!1509918 res!1029894) b!1509909))

(assert (= (and b!1509909 res!1029891) b!1509911))

(declare-fun m!1392501 () Bool)

(assert (=> start!128892 m!1392501))

(declare-fun m!1392503 () Bool)

(assert (=> start!128892 m!1392503))

(declare-fun m!1392505 () Bool)

(assert (=> b!1509914 m!1392505))

(assert (=> b!1509914 m!1392505))

(declare-fun m!1392507 () Bool)

(assert (=> b!1509914 m!1392507))

(assert (=> b!1509914 m!1392507))

(assert (=> b!1509914 m!1392505))

(declare-fun m!1392509 () Bool)

(assert (=> b!1509914 m!1392509))

(assert (=> b!1509919 m!1392505))

(assert (=> b!1509919 m!1392505))

(declare-fun m!1392511 () Bool)

(assert (=> b!1509919 m!1392511))

(declare-fun m!1392513 () Bool)

(assert (=> b!1509910 m!1392513))

(declare-fun m!1392515 () Bool)

(assert (=> b!1509917 m!1392515))

(assert (=> b!1509911 m!1392505))

(assert (=> b!1509911 m!1392505))

(declare-fun m!1392517 () Bool)

(assert (=> b!1509911 m!1392517))

(declare-fun m!1392519 () Bool)

(assert (=> b!1509909 m!1392519))

(declare-fun m!1392521 () Bool)

(assert (=> b!1509909 m!1392521))

(declare-fun m!1392523 () Bool)

(assert (=> b!1509918 m!1392523))

(declare-fun m!1392525 () Bool)

(assert (=> b!1509918 m!1392525))

(assert (=> b!1509918 m!1392525))

(declare-fun m!1392527 () Bool)

(assert (=> b!1509918 m!1392527))

(assert (=> b!1509918 m!1392527))

(assert (=> b!1509918 m!1392525))

(declare-fun m!1392529 () Bool)

(assert (=> b!1509918 m!1392529))

(assert (=> b!1509916 m!1392505))

(assert (=> b!1509916 m!1392505))

(declare-fun m!1392531 () Bool)

(assert (=> b!1509916 m!1392531))

(declare-fun m!1392533 () Bool)

(assert (=> b!1509915 m!1392533))

(assert (=> b!1509915 m!1392533))

(declare-fun m!1392535 () Bool)

(assert (=> b!1509915 m!1392535))

(check-sat (not b!1509916) (not b!1509917) (not b!1509918) (not b!1509909) (not b!1509919) (not b!1509911) (not b!1509914) (not b!1509915) (not b!1509910) (not start!128892))
(check-sat)
