; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128880 () Bool)

(assert start!128880)

(declare-fun b!1509711 () Bool)

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100649 0))(
  ( (array!100650 (arr!48557 (Array (_ BitVec 32) (_ BitVec 64))) (size!49108 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100649)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun e!843213 () Bool)

(assert (=> b!1509711 (= e!843213 (not (or (not (= (select (arr!48557 a!2804) j!70) (select (store (arr!48557 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48557 a!2804) index!487) (select (arr!48557 a!2804) j!70))) (not (= j!70 index!487)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!843215 () Bool)

(assert (=> b!1509711 e!843215))

(declare-fun res!1029686 () Bool)

(assert (=> b!1509711 (=> (not res!1029686) (not e!843215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100649 (_ BitVec 32)) Bool)

(assert (=> b!1509711 (= res!1029686 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50322 0))(
  ( (Unit!50323) )
))
(declare-fun lt!654945 () Unit!50322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50322)

(assert (=> b!1509711 (= lt!654945 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509712 () Bool)

(declare-fun res!1029693 () Bool)

(declare-fun e!843214 () Bool)

(assert (=> b!1509712 (=> (not res!1029693) (not e!843214))))

(assert (=> b!1509712 (= res!1029693 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49108 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49108 a!2804))))))

(declare-fun res!1029694 () Bool)

(assert (=> start!128880 (=> (not res!1029694) (not e!843214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128880 (= res!1029694 (validMask!0 mask!2512))))

(assert (=> start!128880 e!843214))

(assert (=> start!128880 true))

(declare-fun array_inv!37502 (array!100649) Bool)

(assert (=> start!128880 (array_inv!37502 a!2804)))

(declare-fun b!1509713 () Bool)

(assert (=> b!1509713 (= e!843214 e!843213)))

(declare-fun res!1029695 () Bool)

(assert (=> b!1509713 (=> (not res!1029695) (not e!843213))))

(declare-datatypes ((SeekEntryResult!12749 0))(
  ( (MissingZero!12749 (index!53390 (_ BitVec 32))) (Found!12749 (index!53391 (_ BitVec 32))) (Intermediate!12749 (undefined!13561 Bool) (index!53392 (_ BitVec 32)) (x!135152 (_ BitVec 32))) (Undefined!12749) (MissingVacant!12749 (index!53393 (_ BitVec 32))) )
))
(declare-fun lt!654946 () SeekEntryResult!12749)

(declare-fun lt!654944 () SeekEntryResult!12749)

(assert (=> b!1509713 (= res!1029695 (= lt!654946 lt!654944))))

(assert (=> b!1509713 (= lt!654944 (Intermediate!12749 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100649 (_ BitVec 32)) SeekEntryResult!12749)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509713 (= lt!654946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48557 a!2804) j!70) mask!2512) (select (arr!48557 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509714 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100649 (_ BitVec 32)) SeekEntryResult!12749)

(assert (=> b!1509714 (= e!843215 (= (seekEntry!0 (select (arr!48557 a!2804) j!70) a!2804 mask!2512) (Found!12749 j!70)))))

(declare-fun b!1509715 () Bool)

(declare-fun res!1029689 () Bool)

(assert (=> b!1509715 (=> (not res!1029689) (not e!843214))))

(declare-datatypes ((List!35220 0))(
  ( (Nil!35217) (Cons!35216 (h!36629 (_ BitVec 64)) (t!49921 List!35220)) )
))
(declare-fun arrayNoDuplicates!0 (array!100649 (_ BitVec 32) List!35220) Bool)

(assert (=> b!1509715 (= res!1029689 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35217))))

(declare-fun b!1509716 () Bool)

(declare-fun res!1029688 () Bool)

(assert (=> b!1509716 (=> (not res!1029688) (not e!843214))))

(assert (=> b!1509716 (= res!1029688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509717 () Bool)

(declare-fun res!1029696 () Bool)

(assert (=> b!1509717 (=> (not res!1029696) (not e!843214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509717 (= res!1029696 (validKeyInArray!0 (select (arr!48557 a!2804) i!961)))))

(declare-fun b!1509718 () Bool)

(declare-fun res!1029687 () Bool)

(assert (=> b!1509718 (=> (not res!1029687) (not e!843213))))

(assert (=> b!1509718 (= res!1029687 (= lt!654946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48557 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48557 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100650 (store (arr!48557 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49108 a!2804)) mask!2512)))))

(declare-fun b!1509719 () Bool)

(declare-fun res!1029691 () Bool)

(assert (=> b!1509719 (=> (not res!1029691) (not e!843213))))

(assert (=> b!1509719 (= res!1029691 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48557 a!2804) j!70) a!2804 mask!2512) lt!654944))))

(declare-fun b!1509720 () Bool)

(declare-fun res!1029692 () Bool)

(assert (=> b!1509720 (=> (not res!1029692) (not e!843214))))

(assert (=> b!1509720 (= res!1029692 (validKeyInArray!0 (select (arr!48557 a!2804) j!70)))))

(declare-fun b!1509721 () Bool)

(declare-fun res!1029690 () Bool)

(assert (=> b!1509721 (=> (not res!1029690) (not e!843214))))

(assert (=> b!1509721 (= res!1029690 (and (= (size!49108 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49108 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49108 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128880 res!1029694) b!1509721))

(assert (= (and b!1509721 res!1029690) b!1509717))

(assert (= (and b!1509717 res!1029696) b!1509720))

(assert (= (and b!1509720 res!1029692) b!1509716))

(assert (= (and b!1509716 res!1029688) b!1509715))

(assert (= (and b!1509715 res!1029689) b!1509712))

(assert (= (and b!1509712 res!1029693) b!1509713))

(assert (= (and b!1509713 res!1029695) b!1509719))

(assert (= (and b!1509719 res!1029691) b!1509718))

(assert (= (and b!1509718 res!1029687) b!1509711))

(assert (= (and b!1509711 res!1029686) b!1509714))

(declare-fun m!1392281 () Bool)

(assert (=> b!1509711 m!1392281))

(declare-fun m!1392283 () Bool)

(assert (=> b!1509711 m!1392283))

(declare-fun m!1392285 () Bool)

(assert (=> b!1509711 m!1392285))

(declare-fun m!1392287 () Bool)

(assert (=> b!1509711 m!1392287))

(declare-fun m!1392289 () Bool)

(assert (=> b!1509711 m!1392289))

(declare-fun m!1392291 () Bool)

(assert (=> b!1509711 m!1392291))

(assert (=> b!1509718 m!1392285))

(assert (=> b!1509718 m!1392289))

(assert (=> b!1509718 m!1392289))

(declare-fun m!1392293 () Bool)

(assert (=> b!1509718 m!1392293))

(assert (=> b!1509718 m!1392293))

(assert (=> b!1509718 m!1392289))

(declare-fun m!1392295 () Bool)

(assert (=> b!1509718 m!1392295))

(declare-fun m!1392297 () Bool)

(assert (=> start!128880 m!1392297))

(declare-fun m!1392299 () Bool)

(assert (=> start!128880 m!1392299))

(assert (=> b!1509719 m!1392281))

(assert (=> b!1509719 m!1392281))

(declare-fun m!1392301 () Bool)

(assert (=> b!1509719 m!1392301))

(assert (=> b!1509720 m!1392281))

(assert (=> b!1509720 m!1392281))

(declare-fun m!1392303 () Bool)

(assert (=> b!1509720 m!1392303))

(declare-fun m!1392305 () Bool)

(assert (=> b!1509717 m!1392305))

(assert (=> b!1509717 m!1392305))

(declare-fun m!1392307 () Bool)

(assert (=> b!1509717 m!1392307))

(assert (=> b!1509714 m!1392281))

(assert (=> b!1509714 m!1392281))

(declare-fun m!1392309 () Bool)

(assert (=> b!1509714 m!1392309))

(assert (=> b!1509713 m!1392281))

(assert (=> b!1509713 m!1392281))

(declare-fun m!1392311 () Bool)

(assert (=> b!1509713 m!1392311))

(assert (=> b!1509713 m!1392311))

(assert (=> b!1509713 m!1392281))

(declare-fun m!1392313 () Bool)

(assert (=> b!1509713 m!1392313))

(declare-fun m!1392315 () Bool)

(assert (=> b!1509715 m!1392315))

(declare-fun m!1392317 () Bool)

(assert (=> b!1509716 m!1392317))

(check-sat (not b!1509711) (not start!128880) (not b!1509715) (not b!1509718) (not b!1509713) (not b!1509716) (not b!1509714) (not b!1509720) (not b!1509717) (not b!1509719))
(check-sat)
