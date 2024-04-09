; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129298 () Bool)

(assert start!129298)

(declare-fun b!1517638 () Bool)

(declare-fun res!1037622 () Bool)

(declare-fun e!846736 () Bool)

(assert (=> b!1517638 (=> (not res!1037622) (not e!846736))))

(declare-datatypes ((SeekEntryResult!12958 0))(
  ( (MissingZero!12958 (index!54226 (_ BitVec 32))) (Found!12958 (index!54227 (_ BitVec 32))) (Intermediate!12958 (undefined!13770 Bool) (index!54228 (_ BitVec 32)) (x!135921 (_ BitVec 32))) (Undefined!12958) (MissingVacant!12958 (index!54229 (_ BitVec 32))) )
))
(declare-fun lt!657841 () SeekEntryResult!12958)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((array!101067 0))(
  ( (array!101068 (arr!48766 (Array (_ BitVec 32) (_ BitVec 64))) (size!49317 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101067)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101067 (_ BitVec 32)) SeekEntryResult!12958)

(assert (=> b!1517638 (= res!1037622 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48766 a!2804) j!70) a!2804 mask!2512) lt!657841))))

(declare-fun res!1037625 () Bool)

(declare-fun e!846733 () Bool)

(assert (=> start!129298 (=> (not res!1037625) (not e!846733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129298 (= res!1037625 (validMask!0 mask!2512))))

(assert (=> start!129298 e!846733))

(assert (=> start!129298 true))

(declare-fun array_inv!37711 (array!101067) Bool)

(assert (=> start!129298 (array_inv!37711 a!2804)))

(declare-fun b!1517639 () Bool)

(declare-fun e!846732 () Bool)

(assert (=> b!1517639 (= e!846732 true)))

(declare-fun lt!657840 () (_ BitVec 32))

(declare-fun lt!657837 () SeekEntryResult!12958)

(assert (=> b!1517639 (= lt!657837 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657840 (select (arr!48766 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517640 () Bool)

(declare-fun e!846735 () Bool)

(assert (=> b!1517640 (= e!846736 (not e!846735))))

(declare-fun res!1037620 () Bool)

(assert (=> b!1517640 (=> res!1037620 e!846735)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517640 (= res!1037620 (or (not (= (select (arr!48766 a!2804) j!70) (select (store (arr!48766 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846737 () Bool)

(assert (=> b!1517640 e!846737))

(declare-fun res!1037621 () Bool)

(assert (=> b!1517640 (=> (not res!1037621) (not e!846737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101067 (_ BitVec 32)) Bool)

(assert (=> b!1517640 (= res!1037621 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50740 0))(
  ( (Unit!50741) )
))
(declare-fun lt!657839 () Unit!50740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50740)

(assert (=> b!1517640 (= lt!657839 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517641 () Bool)

(assert (=> b!1517641 (= e!846735 e!846732)))

(declare-fun res!1037616 () Bool)

(assert (=> b!1517641 (=> res!1037616 e!846732)))

(assert (=> b!1517641 (= res!1037616 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657840 #b00000000000000000000000000000000) (bvsge lt!657840 (size!49317 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517641 (= lt!657840 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517642 () Bool)

(declare-fun res!1037619 () Bool)

(assert (=> b!1517642 (=> (not res!1037619) (not e!846733))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517642 (= res!1037619 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49317 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49317 a!2804))))))

(declare-fun b!1517643 () Bool)

(declare-fun res!1037615 () Bool)

(assert (=> b!1517643 (=> (not res!1037615) (not e!846733))))

(assert (=> b!1517643 (= res!1037615 (and (= (size!49317 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49317 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49317 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517644 () Bool)

(declare-fun res!1037624 () Bool)

(assert (=> b!1517644 (=> (not res!1037624) (not e!846736))))

(declare-fun lt!657838 () SeekEntryResult!12958)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517644 (= res!1037624 (= lt!657838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48766 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48766 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101068 (store (arr!48766 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49317 a!2804)) mask!2512)))))

(declare-fun b!1517645 () Bool)

(declare-fun res!1037613 () Bool)

(assert (=> b!1517645 (=> (not res!1037613) (not e!846733))))

(declare-datatypes ((List!35429 0))(
  ( (Nil!35426) (Cons!35425 (h!36838 (_ BitVec 64)) (t!50130 List!35429)) )
))
(declare-fun arrayNoDuplicates!0 (array!101067 (_ BitVec 32) List!35429) Bool)

(assert (=> b!1517645 (= res!1037613 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35426))))

(declare-fun b!1517646 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101067 (_ BitVec 32)) SeekEntryResult!12958)

(assert (=> b!1517646 (= e!846737 (= (seekEntry!0 (select (arr!48766 a!2804) j!70) a!2804 mask!2512) (Found!12958 j!70)))))

(declare-fun b!1517647 () Bool)

(declare-fun res!1037623 () Bool)

(assert (=> b!1517647 (=> (not res!1037623) (not e!846733))))

(assert (=> b!1517647 (= res!1037623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517648 () Bool)

(declare-fun res!1037614 () Bool)

(assert (=> b!1517648 (=> (not res!1037614) (not e!846733))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517648 (= res!1037614 (validKeyInArray!0 (select (arr!48766 a!2804) i!961)))))

(declare-fun b!1517649 () Bool)

(assert (=> b!1517649 (= e!846733 e!846736)))

(declare-fun res!1037618 () Bool)

(assert (=> b!1517649 (=> (not res!1037618) (not e!846736))))

(assert (=> b!1517649 (= res!1037618 (= lt!657838 lt!657841))))

(assert (=> b!1517649 (= lt!657841 (Intermediate!12958 false resIndex!21 resX!21))))

(assert (=> b!1517649 (= lt!657838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48766 a!2804) j!70) mask!2512) (select (arr!48766 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517650 () Bool)

(declare-fun res!1037617 () Bool)

(assert (=> b!1517650 (=> (not res!1037617) (not e!846733))))

(assert (=> b!1517650 (= res!1037617 (validKeyInArray!0 (select (arr!48766 a!2804) j!70)))))

(assert (= (and start!129298 res!1037625) b!1517643))

(assert (= (and b!1517643 res!1037615) b!1517648))

(assert (= (and b!1517648 res!1037614) b!1517650))

(assert (= (and b!1517650 res!1037617) b!1517647))

(assert (= (and b!1517647 res!1037623) b!1517645))

(assert (= (and b!1517645 res!1037613) b!1517642))

(assert (= (and b!1517642 res!1037619) b!1517649))

(assert (= (and b!1517649 res!1037618) b!1517638))

(assert (= (and b!1517638 res!1037622) b!1517644))

(assert (= (and b!1517644 res!1037624) b!1517640))

(assert (= (and b!1517640 res!1037621) b!1517646))

(assert (= (and b!1517640 (not res!1037620)) b!1517641))

(assert (= (and b!1517641 (not res!1037616)) b!1517639))

(declare-fun m!1400991 () Bool)

(assert (=> b!1517648 m!1400991))

(assert (=> b!1517648 m!1400991))

(declare-fun m!1400993 () Bool)

(assert (=> b!1517648 m!1400993))

(declare-fun m!1400995 () Bool)

(assert (=> b!1517644 m!1400995))

(declare-fun m!1400997 () Bool)

(assert (=> b!1517644 m!1400997))

(assert (=> b!1517644 m!1400997))

(declare-fun m!1400999 () Bool)

(assert (=> b!1517644 m!1400999))

(assert (=> b!1517644 m!1400999))

(assert (=> b!1517644 m!1400997))

(declare-fun m!1401001 () Bool)

(assert (=> b!1517644 m!1401001))

(declare-fun m!1401003 () Bool)

(assert (=> b!1517646 m!1401003))

(assert (=> b!1517646 m!1401003))

(declare-fun m!1401005 () Bool)

(assert (=> b!1517646 m!1401005))

(declare-fun m!1401007 () Bool)

(assert (=> b!1517645 m!1401007))

(declare-fun m!1401009 () Bool)

(assert (=> start!129298 m!1401009))

(declare-fun m!1401011 () Bool)

(assert (=> start!129298 m!1401011))

(declare-fun m!1401013 () Bool)

(assert (=> b!1517641 m!1401013))

(declare-fun m!1401015 () Bool)

(assert (=> b!1517647 m!1401015))

(assert (=> b!1517638 m!1401003))

(assert (=> b!1517638 m!1401003))

(declare-fun m!1401017 () Bool)

(assert (=> b!1517638 m!1401017))

(assert (=> b!1517649 m!1401003))

(assert (=> b!1517649 m!1401003))

(declare-fun m!1401019 () Bool)

(assert (=> b!1517649 m!1401019))

(assert (=> b!1517649 m!1401019))

(assert (=> b!1517649 m!1401003))

(declare-fun m!1401021 () Bool)

(assert (=> b!1517649 m!1401021))

(assert (=> b!1517639 m!1401003))

(assert (=> b!1517639 m!1401003))

(declare-fun m!1401023 () Bool)

(assert (=> b!1517639 m!1401023))

(assert (=> b!1517640 m!1401003))

(declare-fun m!1401025 () Bool)

(assert (=> b!1517640 m!1401025))

(assert (=> b!1517640 m!1400995))

(assert (=> b!1517640 m!1400997))

(declare-fun m!1401027 () Bool)

(assert (=> b!1517640 m!1401027))

(assert (=> b!1517650 m!1401003))

(assert (=> b!1517650 m!1401003))

(declare-fun m!1401029 () Bool)

(assert (=> b!1517650 m!1401029))

(push 1)

