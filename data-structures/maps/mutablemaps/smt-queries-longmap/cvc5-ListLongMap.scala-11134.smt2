; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130132 () Bool)

(assert start!130132)

(declare-fun b!1526859 () Bool)

(declare-fun e!851060 () Bool)

(assert (=> b!1526859 (= e!851060 (not true))))

(declare-fun e!851058 () Bool)

(assert (=> b!1526859 e!851058))

(declare-fun res!1045037 () Bool)

(assert (=> b!1526859 (=> (not res!1045037) (not e!851058))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101472 0))(
  ( (array!101473 (arr!48958 (Array (_ BitVec 32) (_ BitVec 64))) (size!49509 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101472)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101472 (_ BitVec 32)) Bool)

(assert (=> b!1526859 (= res!1045037 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51028 0))(
  ( (Unit!51029) )
))
(declare-fun lt!661194 () Unit!51028)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51028)

(assert (=> b!1526859 (= lt!661194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526860 () Bool)

(declare-fun res!1045039 () Bool)

(declare-fun e!851063 () Bool)

(assert (=> b!1526860 (=> (not res!1045039) (not e!851063))))

(assert (=> b!1526860 (= res!1045039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526861 () Bool)

(declare-fun e!851059 () Bool)

(assert (=> b!1526861 (= e!851063 e!851059)))

(declare-fun res!1045035 () Bool)

(assert (=> b!1526861 (=> (not res!1045035) (not e!851059))))

(declare-datatypes ((SeekEntryResult!13144 0))(
  ( (MissingZero!13144 (index!54970 (_ BitVec 32))) (Found!13144 (index!54971 (_ BitVec 32))) (Intermediate!13144 (undefined!13956 Bool) (index!54972 (_ BitVec 32)) (x!136673 (_ BitVec 32))) (Undefined!13144) (MissingVacant!13144 (index!54973 (_ BitVec 32))) )
))
(declare-fun lt!661193 () SeekEntryResult!13144)

(declare-fun lt!661192 () SeekEntryResult!13144)

(assert (=> b!1526861 (= res!1045035 (= lt!661193 lt!661192))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1526861 (= lt!661192 (Intermediate!13144 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101472 (_ BitVec 32)) SeekEntryResult!13144)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526861 (= lt!661193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48958 a!2804) j!70) mask!2512) (select (arr!48958 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526862 () Bool)

(declare-fun e!851062 () Bool)

(assert (=> b!1526862 (= e!851058 e!851062)))

(declare-fun res!1045043 () Bool)

(assert (=> b!1526862 (=> res!1045043 e!851062)))

(declare-fun lt!661191 () (_ BitVec 64))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1526862 (= res!1045043 (or (not (= (select (arr!48958 a!2804) j!70) lt!661191)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48958 a!2804) index!487) (select (arr!48958 a!2804) j!70)) (not (= (select (arr!48958 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526863 () Bool)

(declare-fun res!1045032 () Bool)

(assert (=> b!1526863 (=> (not res!1045032) (not e!851059))))

(assert (=> b!1526863 (= res!1045032 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48958 a!2804) j!70) a!2804 mask!2512) lt!661192))))

(declare-fun b!1526864 () Bool)

(declare-fun res!1045042 () Bool)

(assert (=> b!1526864 (=> (not res!1045042) (not e!851063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526864 (= res!1045042 (validKeyInArray!0 (select (arr!48958 a!2804) j!70)))))

(declare-fun b!1526866 () Bool)

(declare-fun e!851057 () Bool)

(assert (=> b!1526866 (= e!851062 e!851057)))

(declare-fun res!1045034 () Bool)

(assert (=> b!1526866 (=> (not res!1045034) (not e!851057))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101472 (_ BitVec 32)) SeekEntryResult!13144)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101472 (_ BitVec 32)) SeekEntryResult!13144)

(assert (=> b!1526866 (= res!1045034 (= (seekEntryOrOpen!0 (select (arr!48958 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48958 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526867 () Bool)

(declare-fun res!1045041 () Bool)

(assert (=> b!1526867 (=> (not res!1045041) (not e!851063))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526867 (= res!1045041 (validKeyInArray!0 (select (arr!48958 a!2804) i!961)))))

(declare-fun b!1526868 () Bool)

(declare-fun res!1045044 () Bool)

(assert (=> b!1526868 (=> (not res!1045044) (not e!851063))))

(assert (=> b!1526868 (= res!1045044 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49509 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49509 a!2804))))))

(declare-fun b!1526869 () Bool)

(declare-fun lt!661195 () array!101472)

(assert (=> b!1526869 (= e!851057 (= (seekEntryOrOpen!0 lt!661191 lt!661195 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661191 lt!661195 mask!2512)))))

(declare-fun b!1526870 () Bool)

(assert (=> b!1526870 (= e!851059 e!851060)))

(declare-fun res!1045036 () Bool)

(assert (=> b!1526870 (=> (not res!1045036) (not e!851060))))

(assert (=> b!1526870 (= res!1045036 (= lt!661193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661191 mask!2512) lt!661191 lt!661195 mask!2512)))))

(assert (=> b!1526870 (= lt!661191 (select (store (arr!48958 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526870 (= lt!661195 (array!101473 (store (arr!48958 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49509 a!2804)))))

(declare-fun b!1526871 () Bool)

(declare-fun res!1045040 () Bool)

(assert (=> b!1526871 (=> (not res!1045040) (not e!851063))))

(declare-datatypes ((List!35621 0))(
  ( (Nil!35618) (Cons!35617 (h!37051 (_ BitVec 64)) (t!50322 List!35621)) )
))
(declare-fun arrayNoDuplicates!0 (array!101472 (_ BitVec 32) List!35621) Bool)

(assert (=> b!1526871 (= res!1045040 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35618))))

(declare-fun b!1526872 () Bool)

(declare-fun res!1045038 () Bool)

(assert (=> b!1526872 (=> (not res!1045038) (not e!851058))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101472 (_ BitVec 32)) SeekEntryResult!13144)

(assert (=> b!1526872 (= res!1045038 (= (seekEntry!0 (select (arr!48958 a!2804) j!70) a!2804 mask!2512) (Found!13144 j!70)))))

(declare-fun res!1045033 () Bool)

(assert (=> start!130132 (=> (not res!1045033) (not e!851063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130132 (= res!1045033 (validMask!0 mask!2512))))

(assert (=> start!130132 e!851063))

(assert (=> start!130132 true))

(declare-fun array_inv!37903 (array!101472) Bool)

(assert (=> start!130132 (array_inv!37903 a!2804)))

(declare-fun b!1526865 () Bool)

(declare-fun res!1045031 () Bool)

(assert (=> b!1526865 (=> (not res!1045031) (not e!851063))))

(assert (=> b!1526865 (= res!1045031 (and (= (size!49509 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49509 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49509 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130132 res!1045033) b!1526865))

(assert (= (and b!1526865 res!1045031) b!1526867))

(assert (= (and b!1526867 res!1045041) b!1526864))

(assert (= (and b!1526864 res!1045042) b!1526860))

(assert (= (and b!1526860 res!1045039) b!1526871))

(assert (= (and b!1526871 res!1045040) b!1526868))

(assert (= (and b!1526868 res!1045044) b!1526861))

(assert (= (and b!1526861 res!1045035) b!1526863))

(assert (= (and b!1526863 res!1045032) b!1526870))

(assert (= (and b!1526870 res!1045036) b!1526859))

(assert (= (and b!1526859 res!1045037) b!1526872))

(assert (= (and b!1526872 res!1045038) b!1526862))

(assert (= (and b!1526862 (not res!1045043)) b!1526866))

(assert (= (and b!1526866 res!1045034) b!1526869))

(declare-fun m!1409763 () Bool)

(assert (=> b!1526870 m!1409763))

(assert (=> b!1526870 m!1409763))

(declare-fun m!1409765 () Bool)

(assert (=> b!1526870 m!1409765))

(declare-fun m!1409767 () Bool)

(assert (=> b!1526870 m!1409767))

(declare-fun m!1409769 () Bool)

(assert (=> b!1526870 m!1409769))

(declare-fun m!1409771 () Bool)

(assert (=> b!1526867 m!1409771))

(assert (=> b!1526867 m!1409771))

(declare-fun m!1409773 () Bool)

(assert (=> b!1526867 m!1409773))

(declare-fun m!1409775 () Bool)

(assert (=> b!1526860 m!1409775))

(declare-fun m!1409777 () Bool)

(assert (=> b!1526872 m!1409777))

(assert (=> b!1526872 m!1409777))

(declare-fun m!1409779 () Bool)

(assert (=> b!1526872 m!1409779))

(assert (=> b!1526866 m!1409777))

(assert (=> b!1526866 m!1409777))

(declare-fun m!1409781 () Bool)

(assert (=> b!1526866 m!1409781))

(assert (=> b!1526866 m!1409777))

(declare-fun m!1409783 () Bool)

(assert (=> b!1526866 m!1409783))

(declare-fun m!1409785 () Bool)

(assert (=> b!1526859 m!1409785))

(declare-fun m!1409787 () Bool)

(assert (=> b!1526859 m!1409787))

(assert (=> b!1526864 m!1409777))

(assert (=> b!1526864 m!1409777))

(declare-fun m!1409789 () Bool)

(assert (=> b!1526864 m!1409789))

(declare-fun m!1409791 () Bool)

(assert (=> b!1526869 m!1409791))

(declare-fun m!1409793 () Bool)

(assert (=> b!1526869 m!1409793))

(declare-fun m!1409795 () Bool)

(assert (=> b!1526871 m!1409795))

(assert (=> b!1526862 m!1409777))

(declare-fun m!1409797 () Bool)

(assert (=> b!1526862 m!1409797))

(declare-fun m!1409799 () Bool)

(assert (=> start!130132 m!1409799))

(declare-fun m!1409801 () Bool)

(assert (=> start!130132 m!1409801))

(assert (=> b!1526863 m!1409777))

(assert (=> b!1526863 m!1409777))

(declare-fun m!1409803 () Bool)

(assert (=> b!1526863 m!1409803))

(assert (=> b!1526861 m!1409777))

(assert (=> b!1526861 m!1409777))

(declare-fun m!1409805 () Bool)

(assert (=> b!1526861 m!1409805))

(assert (=> b!1526861 m!1409805))

(assert (=> b!1526861 m!1409777))

(declare-fun m!1409807 () Bool)

(assert (=> b!1526861 m!1409807))

(push 1)

