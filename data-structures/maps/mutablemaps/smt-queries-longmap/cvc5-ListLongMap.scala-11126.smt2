; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130084 () Bool)

(assert start!130084)

(declare-fun b!1525851 () Bool)

(declare-fun e!850558 () Bool)

(declare-fun e!850556 () Bool)

(assert (=> b!1525851 (= e!850558 e!850556)))

(declare-fun res!1044036 () Bool)

(assert (=> b!1525851 (=> (not res!1044036) (not e!850556))))

(declare-datatypes ((SeekEntryResult!13120 0))(
  ( (MissingZero!13120 (index!54874 (_ BitVec 32))) (Found!13120 (index!54875 (_ BitVec 32))) (Intermediate!13120 (undefined!13932 Bool) (index!54876 (_ BitVec 32)) (x!136585 (_ BitVec 32))) (Undefined!13120) (MissingVacant!13120 (index!54877 (_ BitVec 32))) )
))
(declare-fun lt!660832 () SeekEntryResult!13120)

(declare-fun lt!660835 () SeekEntryResult!13120)

(assert (=> b!1525851 (= res!1044036 (= lt!660832 lt!660835))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1525851 (= lt!660835 (Intermediate!13120 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101424 0))(
  ( (array!101425 (arr!48934 (Array (_ BitVec 32) (_ BitVec 64))) (size!49485 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101424)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101424 (_ BitVec 32)) SeekEntryResult!13120)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525851 (= lt!660832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48934 a!2804) j!70) mask!2512) (select (arr!48934 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525852 () Bool)

(declare-fun res!1044024 () Bool)

(declare-fun e!850557 () Bool)

(assert (=> b!1525852 (=> (not res!1044024) (not e!850557))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101424 (_ BitVec 32)) SeekEntryResult!13120)

(assert (=> b!1525852 (= res!1044024 (= (seekEntry!0 (select (arr!48934 a!2804) j!70) a!2804 mask!2512) (Found!13120 j!70)))))

(declare-fun b!1525853 () Bool)

(declare-fun res!1044031 () Bool)

(assert (=> b!1525853 (=> (not res!1044031) (not e!850558))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525853 (= res!1044031 (validKeyInArray!0 (select (arr!48934 a!2804) i!961)))))

(declare-fun b!1525854 () Bool)

(declare-fun res!1044033 () Bool)

(assert (=> b!1525854 (=> (not res!1044033) (not e!850556))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1525854 (= res!1044033 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48934 a!2804) j!70) a!2804 mask!2512) lt!660835))))

(declare-fun lt!660833 () (_ BitVec 64))

(declare-fun b!1525855 () Bool)

(declare-fun lt!660834 () array!101424)

(declare-fun e!850555 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101424 (_ BitVec 32)) SeekEntryResult!13120)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101424 (_ BitVec 32)) SeekEntryResult!13120)

(assert (=> b!1525855 (= e!850555 (= (seekEntryOrOpen!0 lt!660833 lt!660834 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660833 lt!660834 mask!2512)))))

(declare-fun b!1525856 () Bool)

(declare-fun res!1044027 () Bool)

(assert (=> b!1525856 (=> (not res!1044027) (not e!850558))))

(assert (=> b!1525856 (= res!1044027 (validKeyInArray!0 (select (arr!48934 a!2804) j!70)))))

(declare-fun b!1525857 () Bool)

(declare-fun res!1044025 () Bool)

(assert (=> b!1525857 (=> (not res!1044025) (not e!850558))))

(assert (=> b!1525857 (= res!1044025 (and (= (size!49485 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49485 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49485 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525859 () Bool)

(declare-fun res!1044035 () Bool)

(assert (=> b!1525859 (=> (not res!1044035) (not e!850558))))

(assert (=> b!1525859 (= res!1044035 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49485 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49485 a!2804))))))

(declare-fun b!1525860 () Bool)

(declare-fun e!850553 () Bool)

(assert (=> b!1525860 (= e!850556 e!850553)))

(declare-fun res!1044026 () Bool)

(assert (=> b!1525860 (=> (not res!1044026) (not e!850553))))

(assert (=> b!1525860 (= res!1044026 (= lt!660832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660833 mask!2512) lt!660833 lt!660834 mask!2512)))))

(assert (=> b!1525860 (= lt!660833 (select (store (arr!48934 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525860 (= lt!660834 (array!101425 (store (arr!48934 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49485 a!2804)))))

(declare-fun b!1525861 () Bool)

(declare-fun res!1044032 () Bool)

(assert (=> b!1525861 (=> (not res!1044032) (not e!850558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101424 (_ BitVec 32)) Bool)

(assert (=> b!1525861 (= res!1044032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525862 () Bool)

(declare-fun e!850559 () Bool)

(assert (=> b!1525862 (= e!850559 e!850555)))

(declare-fun res!1044029 () Bool)

(assert (=> b!1525862 (=> (not res!1044029) (not e!850555))))

(assert (=> b!1525862 (= res!1044029 (= (seekEntryOrOpen!0 (select (arr!48934 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48934 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525863 () Bool)

(declare-fun res!1044034 () Bool)

(assert (=> b!1525863 (=> (not res!1044034) (not e!850558))))

(declare-datatypes ((List!35597 0))(
  ( (Nil!35594) (Cons!35593 (h!37027 (_ BitVec 64)) (t!50298 List!35597)) )
))
(declare-fun arrayNoDuplicates!0 (array!101424 (_ BitVec 32) List!35597) Bool)

(assert (=> b!1525863 (= res!1044034 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35594))))

(declare-fun b!1525864 () Bool)

(assert (=> b!1525864 (= e!850553 (not true))))

(assert (=> b!1525864 e!850557))

(declare-fun res!1044030 () Bool)

(assert (=> b!1525864 (=> (not res!1044030) (not e!850557))))

(assert (=> b!1525864 (= res!1044030 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50980 0))(
  ( (Unit!50981) )
))
(declare-fun lt!660831 () Unit!50980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101424 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50980)

(assert (=> b!1525864 (= lt!660831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1044023 () Bool)

(assert (=> start!130084 (=> (not res!1044023) (not e!850558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130084 (= res!1044023 (validMask!0 mask!2512))))

(assert (=> start!130084 e!850558))

(assert (=> start!130084 true))

(declare-fun array_inv!37879 (array!101424) Bool)

(assert (=> start!130084 (array_inv!37879 a!2804)))

(declare-fun b!1525858 () Bool)

(assert (=> b!1525858 (= e!850557 e!850559)))

(declare-fun res!1044028 () Bool)

(assert (=> b!1525858 (=> res!1044028 e!850559)))

(assert (=> b!1525858 (= res!1044028 (or (not (= (select (arr!48934 a!2804) j!70) lt!660833)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48934 a!2804) index!487) (select (arr!48934 a!2804) j!70)) (not (= (select (arr!48934 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!130084 res!1044023) b!1525857))

(assert (= (and b!1525857 res!1044025) b!1525853))

(assert (= (and b!1525853 res!1044031) b!1525856))

(assert (= (and b!1525856 res!1044027) b!1525861))

(assert (= (and b!1525861 res!1044032) b!1525863))

(assert (= (and b!1525863 res!1044034) b!1525859))

(assert (= (and b!1525859 res!1044035) b!1525851))

(assert (= (and b!1525851 res!1044036) b!1525854))

(assert (= (and b!1525854 res!1044033) b!1525860))

(assert (= (and b!1525860 res!1044026) b!1525864))

(assert (= (and b!1525864 res!1044030) b!1525852))

(assert (= (and b!1525852 res!1044024) b!1525858))

(assert (= (and b!1525858 (not res!1044028)) b!1525862))

(assert (= (and b!1525862 res!1044029) b!1525855))

(declare-fun m!1408659 () Bool)

(assert (=> b!1525860 m!1408659))

(assert (=> b!1525860 m!1408659))

(declare-fun m!1408661 () Bool)

(assert (=> b!1525860 m!1408661))

(declare-fun m!1408663 () Bool)

(assert (=> b!1525860 m!1408663))

(declare-fun m!1408665 () Bool)

(assert (=> b!1525860 m!1408665))

(declare-fun m!1408667 () Bool)

(assert (=> b!1525851 m!1408667))

(assert (=> b!1525851 m!1408667))

(declare-fun m!1408669 () Bool)

(assert (=> b!1525851 m!1408669))

(assert (=> b!1525851 m!1408669))

(assert (=> b!1525851 m!1408667))

(declare-fun m!1408671 () Bool)

(assert (=> b!1525851 m!1408671))

(declare-fun m!1408673 () Bool)

(assert (=> b!1525855 m!1408673))

(declare-fun m!1408675 () Bool)

(assert (=> b!1525855 m!1408675))

(assert (=> b!1525854 m!1408667))

(assert (=> b!1525854 m!1408667))

(declare-fun m!1408677 () Bool)

(assert (=> b!1525854 m!1408677))

(declare-fun m!1408679 () Bool)

(assert (=> b!1525864 m!1408679))

(declare-fun m!1408681 () Bool)

(assert (=> b!1525864 m!1408681))

(declare-fun m!1408683 () Bool)

(assert (=> start!130084 m!1408683))

(declare-fun m!1408685 () Bool)

(assert (=> start!130084 m!1408685))

(declare-fun m!1408687 () Bool)

(assert (=> b!1525861 m!1408687))

(assert (=> b!1525856 m!1408667))

(assert (=> b!1525856 m!1408667))

(declare-fun m!1408689 () Bool)

(assert (=> b!1525856 m!1408689))

(assert (=> b!1525858 m!1408667))

(declare-fun m!1408691 () Bool)

(assert (=> b!1525858 m!1408691))

(declare-fun m!1408693 () Bool)

(assert (=> b!1525853 m!1408693))

(assert (=> b!1525853 m!1408693))

(declare-fun m!1408695 () Bool)

(assert (=> b!1525853 m!1408695))

(declare-fun m!1408697 () Bool)

(assert (=> b!1525863 m!1408697))

(assert (=> b!1525852 m!1408667))

(assert (=> b!1525852 m!1408667))

(declare-fun m!1408699 () Bool)

(assert (=> b!1525852 m!1408699))

(assert (=> b!1525862 m!1408667))

(assert (=> b!1525862 m!1408667))

(declare-fun m!1408701 () Bool)

(assert (=> b!1525862 m!1408701))

(assert (=> b!1525862 m!1408667))

(declare-fun m!1408703 () Bool)

(assert (=> b!1525862 m!1408703))

(push 1)

