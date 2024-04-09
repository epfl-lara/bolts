; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130550 () Bool)

(assert start!130550)

(declare-fun b!1531411 () Bool)

(declare-fun e!853345 () Bool)

(declare-fun e!853342 () Bool)

(assert (=> b!1531411 (= e!853345 (not e!853342))))

(declare-fun res!1048691 () Bool)

(assert (=> b!1531411 (=> res!1048691 e!853342)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101656 0))(
  ( (array!101657 (arr!49044 (Array (_ BitVec 32) (_ BitVec 64))) (size!49595 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101656)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1531411 (= res!1048691 (or (not (= (select (arr!49044 a!2804) j!70) (select (store (arr!49044 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853344 () Bool)

(assert (=> b!1531411 e!853344))

(declare-fun res!1048689 () Bool)

(assert (=> b!1531411 (=> (not res!1048689) (not e!853344))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101656 (_ BitVec 32)) Bool)

(assert (=> b!1531411 (= res!1048689 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51200 0))(
  ( (Unit!51201) )
))
(declare-fun lt!663205 () Unit!51200)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51200)

(assert (=> b!1531411 (= lt!663205 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531412 () Bool)

(declare-fun res!1048694 () Bool)

(declare-fun e!853343 () Bool)

(assert (=> b!1531412 (=> (not res!1048694) (not e!853343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531412 (= res!1048694 (validKeyInArray!0 (select (arr!49044 a!2804) i!961)))))

(declare-fun b!1531413 () Bool)

(declare-fun res!1048700 () Bool)

(assert (=> b!1531413 (=> (not res!1048700) (not e!853343))))

(assert (=> b!1531413 (= res!1048700 (validKeyInArray!0 (select (arr!49044 a!2804) j!70)))))

(declare-fun res!1048693 () Bool)

(assert (=> start!130550 (=> (not res!1048693) (not e!853343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130550 (= res!1048693 (validMask!0 mask!2512))))

(assert (=> start!130550 e!853343))

(assert (=> start!130550 true))

(declare-fun array_inv!37989 (array!101656) Bool)

(assert (=> start!130550 (array_inv!37989 a!2804)))

(declare-fun b!1531414 () Bool)

(declare-fun res!1048701 () Bool)

(assert (=> b!1531414 (=> (not res!1048701) (not e!853343))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1531414 (= res!1048701 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49595 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49595 a!2804))))))

(declare-fun b!1531415 () Bool)

(declare-datatypes ((SeekEntryResult!13230 0))(
  ( (MissingZero!13230 (index!55314 (_ BitVec 32))) (Found!13230 (index!55315 (_ BitVec 32))) (Intermediate!13230 (undefined!14042 Bool) (index!55316 (_ BitVec 32)) (x!137019 (_ BitVec 32))) (Undefined!13230) (MissingVacant!13230 (index!55317 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101656 (_ BitVec 32)) SeekEntryResult!13230)

(assert (=> b!1531415 (= e!853344 (= (seekEntry!0 (select (arr!49044 a!2804) j!70) a!2804 mask!2512) (Found!13230 j!70)))))

(declare-fun b!1531416 () Bool)

(declare-fun e!853346 () Bool)

(assert (=> b!1531416 (= e!853342 e!853346)))

(declare-fun res!1048692 () Bool)

(assert (=> b!1531416 (=> res!1048692 e!853346)))

(declare-fun lt!663207 () (_ BitVec 32))

(assert (=> b!1531416 (= res!1048692 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663207 #b00000000000000000000000000000000) (bvsge lt!663207 (size!49595 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531416 (= lt!663207 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531417 () Bool)

(declare-fun res!1048698 () Bool)

(assert (=> b!1531417 (=> (not res!1048698) (not e!853343))))

(assert (=> b!1531417 (= res!1048698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531418 () Bool)

(declare-fun res!1048696 () Bool)

(assert (=> b!1531418 (=> (not res!1048696) (not e!853345))))

(declare-fun lt!663206 () SeekEntryResult!13230)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101656 (_ BitVec 32)) SeekEntryResult!13230)

(assert (=> b!1531418 (= res!1048696 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49044 a!2804) j!70) a!2804 mask!2512) lt!663206))))

(declare-fun b!1531419 () Bool)

(declare-fun res!1048699 () Bool)

(assert (=> b!1531419 (=> (not res!1048699) (not e!853345))))

(declare-fun lt!663208 () SeekEntryResult!13230)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531419 (= res!1048699 (= lt!663208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49044 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49044 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101657 (store (arr!49044 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49595 a!2804)) mask!2512)))))

(declare-fun b!1531420 () Bool)

(assert (=> b!1531420 (= e!853346 true)))

(declare-fun lt!663204 () SeekEntryResult!13230)

(assert (=> b!1531420 (= lt!663204 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663207 (select (arr!49044 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531421 () Bool)

(declare-fun res!1048695 () Bool)

(assert (=> b!1531421 (=> (not res!1048695) (not e!853343))))

(assert (=> b!1531421 (= res!1048695 (and (= (size!49595 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49595 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49595 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531422 () Bool)

(assert (=> b!1531422 (= e!853343 e!853345)))

(declare-fun res!1048690 () Bool)

(assert (=> b!1531422 (=> (not res!1048690) (not e!853345))))

(assert (=> b!1531422 (= res!1048690 (= lt!663208 lt!663206))))

(assert (=> b!1531422 (= lt!663206 (Intermediate!13230 false resIndex!21 resX!21))))

(assert (=> b!1531422 (= lt!663208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49044 a!2804) j!70) mask!2512) (select (arr!49044 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531423 () Bool)

(declare-fun res!1048697 () Bool)

(assert (=> b!1531423 (=> (not res!1048697) (not e!853343))))

(declare-datatypes ((List!35707 0))(
  ( (Nil!35704) (Cons!35703 (h!37149 (_ BitVec 64)) (t!50408 List!35707)) )
))
(declare-fun arrayNoDuplicates!0 (array!101656 (_ BitVec 32) List!35707) Bool)

(assert (=> b!1531423 (= res!1048697 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35704))))

(assert (= (and start!130550 res!1048693) b!1531421))

(assert (= (and b!1531421 res!1048695) b!1531412))

(assert (= (and b!1531412 res!1048694) b!1531413))

(assert (= (and b!1531413 res!1048700) b!1531417))

(assert (= (and b!1531417 res!1048698) b!1531423))

(assert (= (and b!1531423 res!1048697) b!1531414))

(assert (= (and b!1531414 res!1048701) b!1531422))

(assert (= (and b!1531422 res!1048690) b!1531418))

(assert (= (and b!1531418 res!1048696) b!1531419))

(assert (= (and b!1531419 res!1048699) b!1531411))

(assert (= (and b!1531411 res!1048689) b!1531415))

(assert (= (and b!1531411 (not res!1048691)) b!1531416))

(assert (= (and b!1531416 (not res!1048692)) b!1531420))

(declare-fun m!1414121 () Bool)

(assert (=> b!1531416 m!1414121))

(declare-fun m!1414123 () Bool)

(assert (=> b!1531413 m!1414123))

(assert (=> b!1531413 m!1414123))

(declare-fun m!1414125 () Bool)

(assert (=> b!1531413 m!1414125))

(assert (=> b!1531418 m!1414123))

(assert (=> b!1531418 m!1414123))

(declare-fun m!1414127 () Bool)

(assert (=> b!1531418 m!1414127))

(assert (=> b!1531415 m!1414123))

(assert (=> b!1531415 m!1414123))

(declare-fun m!1414129 () Bool)

(assert (=> b!1531415 m!1414129))

(assert (=> b!1531420 m!1414123))

(assert (=> b!1531420 m!1414123))

(declare-fun m!1414131 () Bool)

(assert (=> b!1531420 m!1414131))

(assert (=> b!1531422 m!1414123))

(assert (=> b!1531422 m!1414123))

(declare-fun m!1414133 () Bool)

(assert (=> b!1531422 m!1414133))

(assert (=> b!1531422 m!1414133))

(assert (=> b!1531422 m!1414123))

(declare-fun m!1414135 () Bool)

(assert (=> b!1531422 m!1414135))

(declare-fun m!1414137 () Bool)

(assert (=> b!1531419 m!1414137))

(declare-fun m!1414139 () Bool)

(assert (=> b!1531419 m!1414139))

(assert (=> b!1531419 m!1414139))

(declare-fun m!1414141 () Bool)

(assert (=> b!1531419 m!1414141))

(assert (=> b!1531419 m!1414141))

(assert (=> b!1531419 m!1414139))

(declare-fun m!1414143 () Bool)

(assert (=> b!1531419 m!1414143))

(declare-fun m!1414145 () Bool)

(assert (=> b!1531417 m!1414145))

(declare-fun m!1414147 () Bool)

(assert (=> b!1531423 m!1414147))

(declare-fun m!1414149 () Bool)

(assert (=> start!130550 m!1414149))

(declare-fun m!1414151 () Bool)

(assert (=> start!130550 m!1414151))

(declare-fun m!1414153 () Bool)

(assert (=> b!1531412 m!1414153))

(assert (=> b!1531412 m!1414153))

(declare-fun m!1414155 () Bool)

(assert (=> b!1531412 m!1414155))

(assert (=> b!1531411 m!1414123))

(declare-fun m!1414157 () Bool)

(assert (=> b!1531411 m!1414157))

(assert (=> b!1531411 m!1414137))

(assert (=> b!1531411 m!1414139))

(declare-fun m!1414159 () Bool)

(assert (=> b!1531411 m!1414159))

(push 1)

(assert (not b!1531417))

(assert (not b!1531422))

(assert (not b!1531419))

(assert (not b!1531411))

(assert (not b!1531413))

(assert (not b!1531418))

(assert (not b!1531412))

(assert (not b!1531423))

(assert (not b!1531420))

(assert (not b!1531416))

(assert (not start!130550))

(assert (not b!1531415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

