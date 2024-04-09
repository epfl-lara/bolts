; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130580 () Bool)

(assert start!130580)

(declare-fun b!1532040 () Bool)

(declare-fun e!853652 () Bool)

(assert (=> b!1532040 (= e!853652 true)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun lt!663493 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101686 0))(
  ( (array!101687 (arr!49059 (Array (_ BitVec 32) (_ BitVec 64))) (size!49610 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101686)

(declare-fun lt!663496 () array!101686)

(declare-datatypes ((SeekEntryResult!13245 0))(
  ( (MissingZero!13245 (index!55374 (_ BitVec 32))) (Found!13245 (index!55375 (_ BitVec 32))) (Intermediate!13245 (undefined!14057 Bool) (index!55376 (_ BitVec 32)) (x!137074 (_ BitVec 32))) (Undefined!13245) (MissingVacant!13245 (index!55377 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101686 (_ BitVec 32)) SeekEntryResult!13245)

(assert (=> b!1532040 (= (seekEntryOrOpen!0 (select (arr!49059 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663493 lt!663496 mask!2512))))

(declare-fun lt!663495 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-datatypes ((Unit!51230 0))(
  ( (Unit!51231) )
))
(declare-fun lt!663490 () Unit!51230)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101686 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51230)

(assert (=> b!1532040 (= lt!663490 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663495 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1532041 () Bool)

(declare-fun res!1049323 () Bool)

(assert (=> b!1532041 (=> res!1049323 e!853652)))

(declare-fun lt!663491 () SeekEntryResult!13245)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101686 (_ BitVec 32)) SeekEntryResult!13245)

(assert (=> b!1532041 (= res!1049323 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663495 (select (arr!49059 a!2804) j!70) a!2804 mask!2512) lt!663491)))))

(declare-fun b!1532042 () Bool)

(declare-fun e!853648 () Bool)

(declare-fun e!853651 () Bool)

(assert (=> b!1532042 (= e!853648 e!853651)))

(declare-fun res!1049329 () Bool)

(assert (=> b!1532042 (=> (not res!1049329) (not e!853651))))

(declare-fun lt!663494 () SeekEntryResult!13245)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1532042 (= res!1049329 (= lt!663494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663493 mask!2512) lt!663493 lt!663496 mask!2512)))))

(assert (=> b!1532042 (= lt!663493 (select (store (arr!49059 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1532042 (= lt!663496 (array!101687 (store (arr!49059 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49610 a!2804)))))

(declare-fun b!1532043 () Bool)

(declare-fun res!1049328 () Bool)

(declare-fun e!853650 () Bool)

(assert (=> b!1532043 (=> (not res!1049328) (not e!853650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532043 (= res!1049328 (validKeyInArray!0 (select (arr!49059 a!2804) i!961)))))

(declare-fun b!1532044 () Bool)

(declare-fun e!853646 () Bool)

(assert (=> b!1532044 (= e!853651 (not e!853646))))

(declare-fun res!1049331 () Bool)

(assert (=> b!1532044 (=> res!1049331 e!853646)))

(assert (=> b!1532044 (= res!1049331 (or (not (= (select (arr!49059 a!2804) j!70) lt!663493)) (= x!534 resX!21)))))

(declare-fun e!853649 () Bool)

(assert (=> b!1532044 e!853649))

(declare-fun res!1049321 () Bool)

(assert (=> b!1532044 (=> (not res!1049321) (not e!853649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101686 (_ BitVec 32)) Bool)

(assert (=> b!1532044 (= res!1049321 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663492 () Unit!51230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101686 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51230)

(assert (=> b!1532044 (= lt!663492 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1532045 () Bool)

(assert (=> b!1532045 (= e!853646 e!853652)))

(declare-fun res!1049318 () Bool)

(assert (=> b!1532045 (=> res!1049318 e!853652)))

(assert (=> b!1532045 (= res!1049318 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663495 #b00000000000000000000000000000000) (bvsge lt!663495 (size!49610 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1532045 (= lt!663495 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1532046 () Bool)

(declare-fun res!1049325 () Bool)

(assert (=> b!1532046 (=> (not res!1049325) (not e!853650))))

(assert (=> b!1532046 (= res!1049325 (and (= (size!49610 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49610 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49610 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1532047 () Bool)

(declare-fun res!1049330 () Bool)

(assert (=> b!1532047 (=> (not res!1049330) (not e!853650))))

(assert (=> b!1532047 (= res!1049330 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49610 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49610 a!2804))))))

(declare-fun res!1049326 () Bool)

(assert (=> start!130580 (=> (not res!1049326) (not e!853650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130580 (= res!1049326 (validMask!0 mask!2512))))

(assert (=> start!130580 e!853650))

(assert (=> start!130580 true))

(declare-fun array_inv!38004 (array!101686) Bool)

(assert (=> start!130580 (array_inv!38004 a!2804)))

(declare-fun b!1532048 () Bool)

(declare-fun res!1049319 () Bool)

(assert (=> b!1532048 (=> (not res!1049319) (not e!853650))))

(declare-datatypes ((List!35722 0))(
  ( (Nil!35719) (Cons!35718 (h!37164 (_ BitVec 64)) (t!50423 List!35722)) )
))
(declare-fun arrayNoDuplicates!0 (array!101686 (_ BitVec 32) List!35722) Bool)

(assert (=> b!1532048 (= res!1049319 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35719))))

(declare-fun b!1532049 () Bool)

(declare-fun res!1049327 () Bool)

(assert (=> b!1532049 (=> (not res!1049327) (not e!853650))))

(assert (=> b!1532049 (= res!1049327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1532050 () Bool)

(declare-fun res!1049320 () Bool)

(assert (=> b!1532050 (=> (not res!1049320) (not e!853648))))

(assert (=> b!1532050 (= res!1049320 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49059 a!2804) j!70) a!2804 mask!2512) lt!663491))))

(declare-fun b!1532051 () Bool)

(declare-fun res!1049324 () Bool)

(assert (=> b!1532051 (=> (not res!1049324) (not e!853650))))

(assert (=> b!1532051 (= res!1049324 (validKeyInArray!0 (select (arr!49059 a!2804) j!70)))))

(declare-fun b!1532052 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101686 (_ BitVec 32)) SeekEntryResult!13245)

(assert (=> b!1532052 (= e!853649 (= (seekEntry!0 (select (arr!49059 a!2804) j!70) a!2804 mask!2512) (Found!13245 j!70)))))

(declare-fun b!1532053 () Bool)

(assert (=> b!1532053 (= e!853650 e!853648)))

(declare-fun res!1049322 () Bool)

(assert (=> b!1532053 (=> (not res!1049322) (not e!853648))))

(assert (=> b!1532053 (= res!1049322 (= lt!663494 lt!663491))))

(assert (=> b!1532053 (= lt!663491 (Intermediate!13245 false resIndex!21 resX!21))))

(assert (=> b!1532053 (= lt!663494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49059 a!2804) j!70) mask!2512) (select (arr!49059 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130580 res!1049326) b!1532046))

(assert (= (and b!1532046 res!1049325) b!1532043))

(assert (= (and b!1532043 res!1049328) b!1532051))

(assert (= (and b!1532051 res!1049324) b!1532049))

(assert (= (and b!1532049 res!1049327) b!1532048))

(assert (= (and b!1532048 res!1049319) b!1532047))

(assert (= (and b!1532047 res!1049330) b!1532053))

(assert (= (and b!1532053 res!1049322) b!1532050))

(assert (= (and b!1532050 res!1049320) b!1532042))

(assert (= (and b!1532042 res!1049329) b!1532044))

(assert (= (and b!1532044 res!1049321) b!1532052))

(assert (= (and b!1532044 (not res!1049331)) b!1532045))

(assert (= (and b!1532045 (not res!1049318)) b!1532041))

(assert (= (and b!1532041 (not res!1049323)) b!1532040))

(declare-fun m!1414787 () Bool)

(assert (=> b!1532042 m!1414787))

(assert (=> b!1532042 m!1414787))

(declare-fun m!1414789 () Bool)

(assert (=> b!1532042 m!1414789))

(declare-fun m!1414791 () Bool)

(assert (=> b!1532042 m!1414791))

(declare-fun m!1414793 () Bool)

(assert (=> b!1532042 m!1414793))

(declare-fun m!1414795 () Bool)

(assert (=> b!1532051 m!1414795))

(assert (=> b!1532051 m!1414795))

(declare-fun m!1414797 () Bool)

(assert (=> b!1532051 m!1414797))

(declare-fun m!1414799 () Bool)

(assert (=> b!1532048 m!1414799))

(assert (=> b!1532053 m!1414795))

(assert (=> b!1532053 m!1414795))

(declare-fun m!1414801 () Bool)

(assert (=> b!1532053 m!1414801))

(assert (=> b!1532053 m!1414801))

(assert (=> b!1532053 m!1414795))

(declare-fun m!1414803 () Bool)

(assert (=> b!1532053 m!1414803))

(assert (=> b!1532052 m!1414795))

(assert (=> b!1532052 m!1414795))

(declare-fun m!1414805 () Bool)

(assert (=> b!1532052 m!1414805))

(declare-fun m!1414807 () Bool)

(assert (=> b!1532045 m!1414807))

(assert (=> b!1532041 m!1414795))

(assert (=> b!1532041 m!1414795))

(declare-fun m!1414809 () Bool)

(assert (=> b!1532041 m!1414809))

(assert (=> b!1532050 m!1414795))

(assert (=> b!1532050 m!1414795))

(declare-fun m!1414811 () Bool)

(assert (=> b!1532050 m!1414811))

(declare-fun m!1414813 () Bool)

(assert (=> b!1532043 m!1414813))

(assert (=> b!1532043 m!1414813))

(declare-fun m!1414815 () Bool)

(assert (=> b!1532043 m!1414815))

(declare-fun m!1414817 () Bool)

(assert (=> b!1532049 m!1414817))

(declare-fun m!1414819 () Bool)

(assert (=> start!130580 m!1414819))

(declare-fun m!1414821 () Bool)

(assert (=> start!130580 m!1414821))

(assert (=> b!1532040 m!1414795))

(assert (=> b!1532040 m!1414795))

(declare-fun m!1414823 () Bool)

(assert (=> b!1532040 m!1414823))

(declare-fun m!1414825 () Bool)

(assert (=> b!1532040 m!1414825))

(declare-fun m!1414827 () Bool)

(assert (=> b!1532040 m!1414827))

(assert (=> b!1532044 m!1414795))

(declare-fun m!1414829 () Bool)

(assert (=> b!1532044 m!1414829))

(declare-fun m!1414831 () Bool)

(assert (=> b!1532044 m!1414831))

(push 1)

