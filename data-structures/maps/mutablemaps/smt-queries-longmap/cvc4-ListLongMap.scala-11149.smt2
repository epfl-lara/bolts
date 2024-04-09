; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130292 () Bool)

(assert start!130292)

(declare-fun b!1529117 () Bool)

(declare-fun e!852202 () Bool)

(assert (=> b!1529117 (= e!852202 true)))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!662292 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529117 (= lt!662292 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1046969 () Bool)

(declare-fun e!852204 () Bool)

(assert (=> start!130292 (=> (not res!1046969) (not e!852204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130292 (= res!1046969 (validMask!0 mask!2512))))

(assert (=> start!130292 e!852204))

(assert (=> start!130292 true))

(declare-datatypes ((array!101569 0))(
  ( (array!101570 (arr!49005 (Array (_ BitVec 32) (_ BitVec 64))) (size!49556 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101569)

(declare-fun array_inv!37950 (array!101569) Bool)

(assert (=> start!130292 (array_inv!37950 a!2804)))

(declare-fun b!1529118 () Bool)

(declare-fun res!1046971 () Bool)

(assert (=> b!1529118 (=> (not res!1046971) (not e!852204))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529118 (= res!1046971 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49556 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49556 a!2804))))))

(declare-fun b!1529119 () Bool)

(declare-fun res!1046963 () Bool)

(assert (=> b!1529119 (=> (not res!1046963) (not e!852204))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529119 (= res!1046963 (validKeyInArray!0 (select (arr!49005 a!2804) j!70)))))

(declare-fun e!852206 () Bool)

(declare-fun b!1529120 () Bool)

(declare-datatypes ((SeekEntryResult!13191 0))(
  ( (MissingZero!13191 (index!55158 (_ BitVec 32))) (Found!13191 (index!55159 (_ BitVec 32))) (Intermediate!13191 (undefined!14003 Bool) (index!55160 (_ BitVec 32)) (x!136849 (_ BitVec 32))) (Undefined!13191) (MissingVacant!13191 (index!55161 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101569 (_ BitVec 32)) SeekEntryResult!13191)

(assert (=> b!1529120 (= e!852206 (= (seekEntry!0 (select (arr!49005 a!2804) j!70) a!2804 mask!2512) (Found!13191 j!70)))))

(declare-fun b!1529121 () Bool)

(declare-fun e!852203 () Bool)

(assert (=> b!1529121 (= e!852203 (not e!852202))))

(declare-fun res!1046973 () Bool)

(assert (=> b!1529121 (=> res!1046973 e!852202)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529121 (= res!1046973 (or (not (= (select (arr!49005 a!2804) j!70) (select (store (arr!49005 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529121 e!852206))

(declare-fun res!1046967 () Bool)

(assert (=> b!1529121 (=> (not res!1046967) (not e!852206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101569 (_ BitVec 32)) Bool)

(assert (=> b!1529121 (= res!1046967 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51122 0))(
  ( (Unit!51123) )
))
(declare-fun lt!662291 () Unit!51122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101569 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51122)

(assert (=> b!1529121 (= lt!662291 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529122 () Bool)

(declare-fun res!1046962 () Bool)

(assert (=> b!1529122 (=> (not res!1046962) (not e!852204))))

(declare-datatypes ((List!35668 0))(
  ( (Nil!35665) (Cons!35664 (h!37101 (_ BitVec 64)) (t!50369 List!35668)) )
))
(declare-fun arrayNoDuplicates!0 (array!101569 (_ BitVec 32) List!35668) Bool)

(assert (=> b!1529122 (= res!1046962 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35665))))

(declare-fun b!1529123 () Bool)

(declare-fun res!1046968 () Bool)

(assert (=> b!1529123 (=> (not res!1046968) (not e!852204))))

(assert (=> b!1529123 (= res!1046968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529124 () Bool)

(assert (=> b!1529124 (= e!852204 e!852203)))

(declare-fun res!1046970 () Bool)

(assert (=> b!1529124 (=> (not res!1046970) (not e!852203))))

(declare-fun lt!662290 () SeekEntryResult!13191)

(declare-fun lt!662293 () SeekEntryResult!13191)

(assert (=> b!1529124 (= res!1046970 (= lt!662290 lt!662293))))

(assert (=> b!1529124 (= lt!662293 (Intermediate!13191 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101569 (_ BitVec 32)) SeekEntryResult!13191)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529124 (= lt!662290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49005 a!2804) j!70) mask!2512) (select (arr!49005 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529125 () Bool)

(declare-fun res!1046964 () Bool)

(assert (=> b!1529125 (=> (not res!1046964) (not e!852204))))

(assert (=> b!1529125 (= res!1046964 (validKeyInArray!0 (select (arr!49005 a!2804) i!961)))))

(declare-fun b!1529126 () Bool)

(declare-fun res!1046965 () Bool)

(assert (=> b!1529126 (=> (not res!1046965) (not e!852203))))

(assert (=> b!1529126 (= res!1046965 (= lt!662290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49005 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49005 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101570 (store (arr!49005 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49556 a!2804)) mask!2512)))))

(declare-fun b!1529127 () Bool)

(declare-fun res!1046972 () Bool)

(assert (=> b!1529127 (=> (not res!1046972) (not e!852204))))

(assert (=> b!1529127 (= res!1046972 (and (= (size!49556 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49556 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49556 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529128 () Bool)

(declare-fun res!1046966 () Bool)

(assert (=> b!1529128 (=> (not res!1046966) (not e!852203))))

(assert (=> b!1529128 (= res!1046966 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49005 a!2804) j!70) a!2804 mask!2512) lt!662293))))

(assert (= (and start!130292 res!1046969) b!1529127))

(assert (= (and b!1529127 res!1046972) b!1529125))

(assert (= (and b!1529125 res!1046964) b!1529119))

(assert (= (and b!1529119 res!1046963) b!1529123))

(assert (= (and b!1529123 res!1046968) b!1529122))

(assert (= (and b!1529122 res!1046962) b!1529118))

(assert (= (and b!1529118 res!1046971) b!1529124))

(assert (= (and b!1529124 res!1046970) b!1529128))

(assert (= (and b!1529128 res!1046966) b!1529126))

(assert (= (and b!1529126 res!1046965) b!1529121))

(assert (= (and b!1529121 res!1046967) b!1529120))

(assert (= (and b!1529121 (not res!1046973)) b!1529117))

(declare-fun m!1412101 () Bool)

(assert (=> b!1529124 m!1412101))

(assert (=> b!1529124 m!1412101))

(declare-fun m!1412103 () Bool)

(assert (=> b!1529124 m!1412103))

(assert (=> b!1529124 m!1412103))

(assert (=> b!1529124 m!1412101))

(declare-fun m!1412105 () Bool)

(assert (=> b!1529124 m!1412105))

(declare-fun m!1412107 () Bool)

(assert (=> start!130292 m!1412107))

(declare-fun m!1412109 () Bool)

(assert (=> start!130292 m!1412109))

(assert (=> b!1529121 m!1412101))

(declare-fun m!1412111 () Bool)

(assert (=> b!1529121 m!1412111))

(declare-fun m!1412113 () Bool)

(assert (=> b!1529121 m!1412113))

(declare-fun m!1412115 () Bool)

(assert (=> b!1529121 m!1412115))

(declare-fun m!1412117 () Bool)

(assert (=> b!1529121 m!1412117))

(assert (=> b!1529126 m!1412113))

(assert (=> b!1529126 m!1412115))

(assert (=> b!1529126 m!1412115))

(declare-fun m!1412119 () Bool)

(assert (=> b!1529126 m!1412119))

(assert (=> b!1529126 m!1412119))

(assert (=> b!1529126 m!1412115))

(declare-fun m!1412121 () Bool)

(assert (=> b!1529126 m!1412121))

(assert (=> b!1529128 m!1412101))

(assert (=> b!1529128 m!1412101))

(declare-fun m!1412123 () Bool)

(assert (=> b!1529128 m!1412123))

(declare-fun m!1412125 () Bool)

(assert (=> b!1529123 m!1412125))

(assert (=> b!1529120 m!1412101))

(assert (=> b!1529120 m!1412101))

(declare-fun m!1412127 () Bool)

(assert (=> b!1529120 m!1412127))

(declare-fun m!1412129 () Bool)

(assert (=> b!1529122 m!1412129))

(declare-fun m!1412131 () Bool)

(assert (=> b!1529117 m!1412131))

(declare-fun m!1412133 () Bool)

(assert (=> b!1529125 m!1412133))

(assert (=> b!1529125 m!1412133))

(declare-fun m!1412135 () Bool)

(assert (=> b!1529125 m!1412135))

(assert (=> b!1529119 m!1412101))

(assert (=> b!1529119 m!1412101))

(declare-fun m!1412137 () Bool)

(assert (=> b!1529119 m!1412137))

(push 1)

