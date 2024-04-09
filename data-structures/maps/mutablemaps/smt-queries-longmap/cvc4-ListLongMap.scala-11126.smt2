; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130088 () Bool)

(assert start!130088)

(declare-fun res!1044119 () Bool)

(declare-fun e!850599 () Bool)

(assert (=> start!130088 (=> (not res!1044119) (not e!850599))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130088 (= res!1044119 (validMask!0 mask!2512))))

(assert (=> start!130088 e!850599))

(assert (=> start!130088 true))

(declare-datatypes ((array!101428 0))(
  ( (array!101429 (arr!48936 (Array (_ BitVec 32) (_ BitVec 64))) (size!49487 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101428)

(declare-fun array_inv!37881 (array!101428) Bool)

(assert (=> start!130088 (array_inv!37881 a!2804)))

(declare-fun b!1525935 () Bool)

(declare-fun res!1044107 () Bool)

(assert (=> b!1525935 (=> (not res!1044107) (not e!850599))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525935 (= res!1044107 (validKeyInArray!0 (select (arr!48936 a!2804) j!70)))))

(declare-fun b!1525936 () Bool)

(declare-fun res!1044110 () Bool)

(assert (=> b!1525936 (=> (not res!1044110) (not e!850599))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1525936 (= res!1044110 (validKeyInArray!0 (select (arr!48936 a!2804) i!961)))))

(declare-fun b!1525937 () Bool)

(declare-fun e!850595 () Bool)

(declare-fun e!850596 () Bool)

(assert (=> b!1525937 (= e!850595 e!850596)))

(declare-fun res!1044111 () Bool)

(assert (=> b!1525937 (=> (not res!1044111) (not e!850596))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13122 0))(
  ( (MissingZero!13122 (index!54882 (_ BitVec 32))) (Found!13122 (index!54883 (_ BitVec 32))) (Intermediate!13122 (undefined!13934 Bool) (index!54884 (_ BitVec 32)) (x!136587 (_ BitVec 32))) (Undefined!13122) (MissingVacant!13122 (index!54885 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101428 (_ BitVec 32)) SeekEntryResult!13122)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101428 (_ BitVec 32)) SeekEntryResult!13122)

(assert (=> b!1525937 (= res!1044111 (= (seekEntryOrOpen!0 (select (arr!48936 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48936 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525938 () Bool)

(declare-fun e!850601 () Bool)

(assert (=> b!1525938 (= e!850599 e!850601)))

(declare-fun res!1044115 () Bool)

(assert (=> b!1525938 (=> (not res!1044115) (not e!850601))))

(declare-fun lt!660864 () SeekEntryResult!13122)

(declare-fun lt!660863 () SeekEntryResult!13122)

(assert (=> b!1525938 (= res!1044115 (= lt!660864 lt!660863))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1525938 (= lt!660863 (Intermediate!13122 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101428 (_ BitVec 32)) SeekEntryResult!13122)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525938 (= lt!660864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48936 a!2804) j!70) mask!2512) (select (arr!48936 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525939 () Bool)

(declare-fun res!1044118 () Bool)

(assert (=> b!1525939 (=> (not res!1044118) (not e!850599))))

(assert (=> b!1525939 (= res!1044118 (and (= (size!49487 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49487 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49487 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525940 () Bool)

(declare-fun lt!660862 () array!101428)

(declare-fun lt!660861 () (_ BitVec 64))

(assert (=> b!1525940 (= e!850596 (= (seekEntryOrOpen!0 lt!660861 lt!660862 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660861 lt!660862 mask!2512)))))

(declare-fun b!1525941 () Bool)

(declare-fun res!1044113 () Bool)

(assert (=> b!1525941 (=> (not res!1044113) (not e!850599))))

(declare-datatypes ((List!35599 0))(
  ( (Nil!35596) (Cons!35595 (h!37029 (_ BitVec 64)) (t!50300 List!35599)) )
))
(declare-fun arrayNoDuplicates!0 (array!101428 (_ BitVec 32) List!35599) Bool)

(assert (=> b!1525941 (= res!1044113 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35596))))

(declare-fun b!1525942 () Bool)

(declare-fun res!1044117 () Bool)

(assert (=> b!1525942 (=> (not res!1044117) (not e!850601))))

(assert (=> b!1525942 (= res!1044117 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48936 a!2804) j!70) a!2804 mask!2512) lt!660863))))

(declare-fun b!1525943 () Bool)

(declare-fun e!850600 () Bool)

(assert (=> b!1525943 (= e!850600 (not true))))

(declare-fun e!850598 () Bool)

(assert (=> b!1525943 e!850598))

(declare-fun res!1044108 () Bool)

(assert (=> b!1525943 (=> (not res!1044108) (not e!850598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101428 (_ BitVec 32)) Bool)

(assert (=> b!1525943 (= res!1044108 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50984 0))(
  ( (Unit!50985) )
))
(declare-fun lt!660865 () Unit!50984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101428 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50984)

(assert (=> b!1525943 (= lt!660865 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525944 () Bool)

(assert (=> b!1525944 (= e!850598 e!850595)))

(declare-fun res!1044120 () Bool)

(assert (=> b!1525944 (=> res!1044120 e!850595)))

(assert (=> b!1525944 (= res!1044120 (or (not (= (select (arr!48936 a!2804) j!70) lt!660861)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48936 a!2804) index!487) (select (arr!48936 a!2804) j!70)) (not (= (select (arr!48936 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525945 () Bool)

(declare-fun res!1044114 () Bool)

(assert (=> b!1525945 (=> (not res!1044114) (not e!850599))))

(assert (=> b!1525945 (= res!1044114 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49487 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49487 a!2804))))))

(declare-fun b!1525946 () Bool)

(declare-fun res!1044112 () Bool)

(assert (=> b!1525946 (=> (not res!1044112) (not e!850599))))

(assert (=> b!1525946 (= res!1044112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525947 () Bool)

(assert (=> b!1525947 (= e!850601 e!850600)))

(declare-fun res!1044109 () Bool)

(assert (=> b!1525947 (=> (not res!1044109) (not e!850600))))

(assert (=> b!1525947 (= res!1044109 (= lt!660864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660861 mask!2512) lt!660861 lt!660862 mask!2512)))))

(assert (=> b!1525947 (= lt!660861 (select (store (arr!48936 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525947 (= lt!660862 (array!101429 (store (arr!48936 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49487 a!2804)))))

(declare-fun b!1525948 () Bool)

(declare-fun res!1044116 () Bool)

(assert (=> b!1525948 (=> (not res!1044116) (not e!850598))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101428 (_ BitVec 32)) SeekEntryResult!13122)

(assert (=> b!1525948 (= res!1044116 (= (seekEntry!0 (select (arr!48936 a!2804) j!70) a!2804 mask!2512) (Found!13122 j!70)))))

(assert (= (and start!130088 res!1044119) b!1525939))

(assert (= (and b!1525939 res!1044118) b!1525936))

(assert (= (and b!1525936 res!1044110) b!1525935))

(assert (= (and b!1525935 res!1044107) b!1525946))

(assert (= (and b!1525946 res!1044112) b!1525941))

(assert (= (and b!1525941 res!1044113) b!1525945))

(assert (= (and b!1525945 res!1044114) b!1525938))

(assert (= (and b!1525938 res!1044115) b!1525942))

(assert (= (and b!1525942 res!1044117) b!1525947))

(assert (= (and b!1525947 res!1044109) b!1525943))

(assert (= (and b!1525943 res!1044108) b!1525948))

(assert (= (and b!1525948 res!1044116) b!1525944))

(assert (= (and b!1525944 (not res!1044120)) b!1525937))

(assert (= (and b!1525937 res!1044111) b!1525940))

(declare-fun m!1408751 () Bool)

(assert (=> b!1525942 m!1408751))

(assert (=> b!1525942 m!1408751))

(declare-fun m!1408753 () Bool)

(assert (=> b!1525942 m!1408753))

(declare-fun m!1408755 () Bool)

(assert (=> b!1525940 m!1408755))

(declare-fun m!1408757 () Bool)

(assert (=> b!1525940 m!1408757))

(declare-fun m!1408759 () Bool)

(assert (=> b!1525936 m!1408759))

(assert (=> b!1525936 m!1408759))

(declare-fun m!1408761 () Bool)

(assert (=> b!1525936 m!1408761))

(declare-fun m!1408763 () Bool)

(assert (=> b!1525946 m!1408763))

(declare-fun m!1408765 () Bool)

(assert (=> b!1525941 m!1408765))

(assert (=> b!1525944 m!1408751))

(declare-fun m!1408767 () Bool)

(assert (=> b!1525944 m!1408767))

(assert (=> b!1525948 m!1408751))

(assert (=> b!1525948 m!1408751))

(declare-fun m!1408769 () Bool)

(assert (=> b!1525948 m!1408769))

(assert (=> b!1525938 m!1408751))

(assert (=> b!1525938 m!1408751))

(declare-fun m!1408771 () Bool)

(assert (=> b!1525938 m!1408771))

(assert (=> b!1525938 m!1408771))

(assert (=> b!1525938 m!1408751))

(declare-fun m!1408773 () Bool)

(assert (=> b!1525938 m!1408773))

(declare-fun m!1408775 () Bool)

(assert (=> b!1525947 m!1408775))

(assert (=> b!1525947 m!1408775))

(declare-fun m!1408777 () Bool)

(assert (=> b!1525947 m!1408777))

(declare-fun m!1408779 () Bool)

(assert (=> b!1525947 m!1408779))

(declare-fun m!1408781 () Bool)

(assert (=> b!1525947 m!1408781))

(assert (=> b!1525935 m!1408751))

(assert (=> b!1525935 m!1408751))

(declare-fun m!1408783 () Bool)

(assert (=> b!1525935 m!1408783))

(declare-fun m!1408785 () Bool)

(assert (=> b!1525943 m!1408785))

(declare-fun m!1408787 () Bool)

(assert (=> b!1525943 m!1408787))

(assert (=> b!1525937 m!1408751))

(assert (=> b!1525937 m!1408751))

(declare-fun m!1408789 () Bool)

(assert (=> b!1525937 m!1408789))

(assert (=> b!1525937 m!1408751))

(declare-fun m!1408791 () Bool)

(assert (=> b!1525937 m!1408791))

(declare-fun m!1408793 () Bool)

(assert (=> start!130088 m!1408793))

(declare-fun m!1408795 () Bool)

(assert (=> start!130088 m!1408795))

(push 1)

