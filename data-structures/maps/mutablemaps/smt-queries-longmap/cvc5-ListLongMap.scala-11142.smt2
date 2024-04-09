; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130246 () Bool)

(assert start!130246)

(declare-fun res!1046115 () Bool)

(declare-fun e!851807 () Bool)

(assert (=> start!130246 (=> (not res!1046115) (not e!851807))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130246 (= res!1046115 (validMask!0 mask!2512))))

(assert (=> start!130246 e!851807))

(assert (=> start!130246 true))

(declare-datatypes ((array!101523 0))(
  ( (array!101524 (arr!48982 (Array (_ BitVec 32) (_ BitVec 64))) (size!49533 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101523)

(declare-fun array_inv!37927 (array!101523) Bool)

(assert (=> start!130246 (array_inv!37927 a!2804)))

(declare-fun b!1528264 () Bool)

(declare-fun e!851813 () Bool)

(declare-fun e!851812 () Bool)

(assert (=> b!1528264 (= e!851813 e!851812)))

(declare-fun res!1046121 () Bool)

(assert (=> b!1528264 (=> (not res!1046121) (not e!851812))))

(declare-fun lt!661869 () (_ BitVec 64))

(declare-fun lt!661864 () array!101523)

(declare-datatypes ((SeekEntryResult!13168 0))(
  ( (MissingZero!13168 (index!55066 (_ BitVec 32))) (Found!13168 (index!55067 (_ BitVec 32))) (Intermediate!13168 (undefined!13980 Bool) (index!55068 (_ BitVec 32)) (x!136770 (_ BitVec 32))) (Undefined!13168) (MissingVacant!13168 (index!55069 (_ BitVec 32))) )
))
(declare-fun lt!661872 () SeekEntryResult!13168)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101523 (_ BitVec 32)) SeekEntryResult!13168)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528264 (= res!1046121 (= lt!661872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661869 mask!2512) lt!661869 lt!661864 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1528264 (= lt!661869 (select (store (arr!48982 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528264 (= lt!661864 (array!101524 (store (arr!48982 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49533 a!2804)))))

(declare-fun b!1528265 () Bool)

(declare-fun res!1046116 () Bool)

(assert (=> b!1528265 (=> (not res!1046116) (not e!851807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528265 (= res!1046116 (validKeyInArray!0 (select (arr!48982 a!2804) i!961)))))

(declare-fun b!1528266 () Bool)

(declare-fun res!1046113 () Bool)

(assert (=> b!1528266 (=> (not res!1046113) (not e!851807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101523 (_ BitVec 32)) Bool)

(assert (=> b!1528266 (= res!1046113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528267 () Bool)

(declare-fun res!1046109 () Bool)

(assert (=> b!1528267 (=> (not res!1046109) (not e!851813))))

(declare-fun lt!661871 () SeekEntryResult!13168)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1528267 (= res!1046109 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48982 a!2804) j!70) a!2804 mask!2512) lt!661871))))

(declare-fun b!1528268 () Bool)

(declare-fun res!1046118 () Bool)

(assert (=> b!1528268 (=> (not res!1046118) (not e!851807))))

(assert (=> b!1528268 (= res!1046118 (validKeyInArray!0 (select (arr!48982 a!2804) j!70)))))

(declare-fun b!1528269 () Bool)

(declare-fun e!851808 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101523 (_ BitVec 32)) SeekEntryResult!13168)

(assert (=> b!1528269 (= e!851808 (= (seekEntry!0 (select (arr!48982 a!2804) j!70) a!2804 mask!2512) (Found!13168 j!70)))))

(declare-fun b!1528270 () Bool)

(declare-fun e!851809 () Bool)

(assert (=> b!1528270 (= e!851812 (not e!851809))))

(declare-fun res!1046114 () Bool)

(assert (=> b!1528270 (=> res!1046114 e!851809)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528270 (= res!1046114 (or (not (= (select (arr!48982 a!2804) j!70) lt!661869)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48982 a!2804) index!487) (select (arr!48982 a!2804) j!70)) (not (= (select (arr!48982 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1528270 e!851808))

(declare-fun res!1046112 () Bool)

(assert (=> b!1528270 (=> (not res!1046112) (not e!851808))))

(assert (=> b!1528270 (= res!1046112 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51076 0))(
  ( (Unit!51077) )
))
(declare-fun lt!661865 () Unit!51076)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51076)

(assert (=> b!1528270 (= lt!661865 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528271 () Bool)

(assert (=> b!1528271 (= e!851807 e!851813)))

(declare-fun res!1046120 () Bool)

(assert (=> b!1528271 (=> (not res!1046120) (not e!851813))))

(assert (=> b!1528271 (= res!1046120 (= lt!661872 lt!661871))))

(assert (=> b!1528271 (= lt!661871 (Intermediate!13168 false resIndex!21 resX!21))))

(assert (=> b!1528271 (= lt!661872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48982 a!2804) j!70) mask!2512) (select (arr!48982 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528272 () Bool)

(declare-fun e!851810 () Bool)

(assert (=> b!1528272 (= e!851809 e!851810)))

(declare-fun res!1046111 () Bool)

(assert (=> b!1528272 (=> res!1046111 e!851810)))

(declare-fun lt!661866 () SeekEntryResult!13168)

(assert (=> b!1528272 (= res!1046111 (not (= lt!661866 (Found!13168 j!70))))))

(declare-fun lt!661868 () SeekEntryResult!13168)

(declare-fun lt!661867 () SeekEntryResult!13168)

(assert (=> b!1528272 (= lt!661868 lt!661867)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101523 (_ BitVec 32)) SeekEntryResult!13168)

(assert (=> b!1528272 (= lt!661867 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661869 lt!661864 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101523 (_ BitVec 32)) SeekEntryResult!13168)

(assert (=> b!1528272 (= lt!661868 (seekEntryOrOpen!0 lt!661869 lt!661864 mask!2512))))

(declare-fun lt!661870 () SeekEntryResult!13168)

(assert (=> b!1528272 (= lt!661870 lt!661866)))

(assert (=> b!1528272 (= lt!661866 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48982 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528272 (= lt!661870 (seekEntryOrOpen!0 (select (arr!48982 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528273 () Bool)

(declare-fun res!1046110 () Bool)

(assert (=> b!1528273 (=> (not res!1046110) (not e!851807))))

(assert (=> b!1528273 (= res!1046110 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49533 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49533 a!2804))))))

(declare-fun b!1528274 () Bool)

(declare-fun res!1046117 () Bool)

(assert (=> b!1528274 (=> (not res!1046117) (not e!851807))))

(assert (=> b!1528274 (= res!1046117 (and (= (size!49533 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49533 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49533 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528275 () Bool)

(assert (=> b!1528275 (= e!851810 true)))

(assert (=> b!1528275 (= lt!661867 lt!661866)))

(declare-fun lt!661873 () Unit!51076)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51076)

(assert (=> b!1528275 (= lt!661873 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528276 () Bool)

(declare-fun res!1046119 () Bool)

(assert (=> b!1528276 (=> (not res!1046119) (not e!851807))))

(declare-datatypes ((List!35645 0))(
  ( (Nil!35642) (Cons!35641 (h!37078 (_ BitVec 64)) (t!50346 List!35645)) )
))
(declare-fun arrayNoDuplicates!0 (array!101523 (_ BitVec 32) List!35645) Bool)

(assert (=> b!1528276 (= res!1046119 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35642))))

(assert (= (and start!130246 res!1046115) b!1528274))

(assert (= (and b!1528274 res!1046117) b!1528265))

(assert (= (and b!1528265 res!1046116) b!1528268))

(assert (= (and b!1528268 res!1046118) b!1528266))

(assert (= (and b!1528266 res!1046113) b!1528276))

(assert (= (and b!1528276 res!1046119) b!1528273))

(assert (= (and b!1528273 res!1046110) b!1528271))

(assert (= (and b!1528271 res!1046120) b!1528267))

(assert (= (and b!1528267 res!1046109) b!1528264))

(assert (= (and b!1528264 res!1046121) b!1528270))

(assert (= (and b!1528270 res!1046112) b!1528269))

(assert (= (and b!1528270 (not res!1046114)) b!1528272))

(assert (= (and b!1528272 (not res!1046111)) b!1528275))

(declare-fun m!1411137 () Bool)

(assert (=> start!130246 m!1411137))

(declare-fun m!1411139 () Bool)

(assert (=> start!130246 m!1411139))

(declare-fun m!1411141 () Bool)

(assert (=> b!1528272 m!1411141))

(declare-fun m!1411143 () Bool)

(assert (=> b!1528272 m!1411143))

(assert (=> b!1528272 m!1411141))

(declare-fun m!1411145 () Bool)

(assert (=> b!1528272 m!1411145))

(assert (=> b!1528272 m!1411141))

(declare-fun m!1411147 () Bool)

(assert (=> b!1528272 m!1411147))

(declare-fun m!1411149 () Bool)

(assert (=> b!1528272 m!1411149))

(assert (=> b!1528267 m!1411141))

(assert (=> b!1528267 m!1411141))

(declare-fun m!1411151 () Bool)

(assert (=> b!1528267 m!1411151))

(declare-fun m!1411153 () Bool)

(assert (=> b!1528266 m!1411153))

(declare-fun m!1411155 () Bool)

(assert (=> b!1528275 m!1411155))

(assert (=> b!1528271 m!1411141))

(assert (=> b!1528271 m!1411141))

(declare-fun m!1411157 () Bool)

(assert (=> b!1528271 m!1411157))

(assert (=> b!1528271 m!1411157))

(assert (=> b!1528271 m!1411141))

(declare-fun m!1411159 () Bool)

(assert (=> b!1528271 m!1411159))

(assert (=> b!1528268 m!1411141))

(assert (=> b!1528268 m!1411141))

(declare-fun m!1411161 () Bool)

(assert (=> b!1528268 m!1411161))

(declare-fun m!1411163 () Bool)

(assert (=> b!1528265 m!1411163))

(assert (=> b!1528265 m!1411163))

(declare-fun m!1411165 () Bool)

(assert (=> b!1528265 m!1411165))

(declare-fun m!1411167 () Bool)

(assert (=> b!1528264 m!1411167))

(assert (=> b!1528264 m!1411167))

(declare-fun m!1411169 () Bool)

(assert (=> b!1528264 m!1411169))

(declare-fun m!1411171 () Bool)

(assert (=> b!1528264 m!1411171))

(declare-fun m!1411173 () Bool)

(assert (=> b!1528264 m!1411173))

(assert (=> b!1528269 m!1411141))

(assert (=> b!1528269 m!1411141))

(declare-fun m!1411175 () Bool)

(assert (=> b!1528269 m!1411175))

(declare-fun m!1411177 () Bool)

(assert (=> b!1528276 m!1411177))

(assert (=> b!1528270 m!1411141))

(declare-fun m!1411179 () Bool)

(assert (=> b!1528270 m!1411179))

(declare-fun m!1411181 () Bool)

(assert (=> b!1528270 m!1411181))

(declare-fun m!1411183 () Bool)

(assert (=> b!1528270 m!1411183))

(push 1)

