; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130098 () Bool)

(assert start!130098)

(declare-fun b!1526146 () Bool)

(declare-fun res!1044324 () Bool)

(declare-fun e!850706 () Bool)

(assert (=> b!1526146 (=> (not res!1044324) (not e!850706))))

(declare-datatypes ((SeekEntryResult!13127 0))(
  ( (MissingZero!13127 (index!54902 (_ BitVec 32))) (Found!13127 (index!54903 (_ BitVec 32))) (Intermediate!13127 (undefined!13939 Bool) (index!54904 (_ BitVec 32)) (x!136608 (_ BitVec 32))) (Undefined!13127) (MissingVacant!13127 (index!54905 (_ BitVec 32))) )
))
(declare-fun lt!660938 () SeekEntryResult!13127)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101438 0))(
  ( (array!101439 (arr!48941 (Array (_ BitVec 32) (_ BitVec 64))) (size!49492 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101438)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101438 (_ BitVec 32)) SeekEntryResult!13127)

(assert (=> b!1526146 (= res!1044324 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48941 a!2804) j!70) a!2804 mask!2512) lt!660938))))

(declare-fun b!1526147 () Bool)

(declare-fun res!1044318 () Bool)

(declare-fun e!850701 () Bool)

(assert (=> b!1526147 (=> (not res!1044318) (not e!850701))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526147 (= res!1044318 (validKeyInArray!0 (select (arr!48941 a!2804) j!70)))))

(declare-fun b!1526148 () Bool)

(declare-fun e!850704 () Bool)

(assert (=> b!1526148 (= e!850706 e!850704)))

(declare-fun res!1044322 () Bool)

(assert (=> b!1526148 (=> (not res!1044322) (not e!850704))))

(declare-fun lt!660936 () SeekEntryResult!13127)

(declare-fun lt!660939 () array!101438)

(declare-fun lt!660937 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526148 (= res!1044322 (= lt!660936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660937 mask!2512) lt!660937 lt!660939 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526148 (= lt!660937 (select (store (arr!48941 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526148 (= lt!660939 (array!101439 (store (arr!48941 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49492 a!2804)))))

(declare-fun b!1526149 () Bool)

(declare-fun res!1044329 () Bool)

(declare-fun e!850703 () Bool)

(assert (=> b!1526149 (=> (not res!1044329) (not e!850703))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101438 (_ BitVec 32)) SeekEntryResult!13127)

(assert (=> b!1526149 (= res!1044329 (= (seekEntry!0 (select (arr!48941 a!2804) j!70) a!2804 mask!2512) (Found!13127 j!70)))))

(declare-fun b!1526150 () Bool)

(declare-fun res!1044323 () Bool)

(assert (=> b!1526150 (=> (not res!1044323) (not e!850701))))

(assert (=> b!1526150 (= res!1044323 (validKeyInArray!0 (select (arr!48941 a!2804) i!961)))))

(declare-fun b!1526151 () Bool)

(declare-fun e!850702 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101438 (_ BitVec 32)) SeekEntryResult!13127)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101438 (_ BitVec 32)) SeekEntryResult!13127)

(assert (=> b!1526151 (= e!850702 (= (seekEntryOrOpen!0 lt!660937 lt!660939 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660937 lt!660939 mask!2512)))))

(declare-fun b!1526152 () Bool)

(declare-fun res!1044320 () Bool)

(assert (=> b!1526152 (=> (not res!1044320) (not e!850701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101438 (_ BitVec 32)) Bool)

(assert (=> b!1526152 (= res!1044320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526153 () Bool)

(declare-fun e!850700 () Bool)

(assert (=> b!1526153 (= e!850703 e!850700)))

(declare-fun res!1044317 () Bool)

(assert (=> b!1526153 (=> res!1044317 e!850700)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526153 (= res!1044317 (or (not (= (select (arr!48941 a!2804) j!70) lt!660937)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48941 a!2804) index!487) (select (arr!48941 a!2804) j!70)) (not (= (select (arr!48941 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526154 () Bool)

(assert (=> b!1526154 (= e!850700 e!850702)))

(declare-fun res!1044319 () Bool)

(assert (=> b!1526154 (=> (not res!1044319) (not e!850702))))

(assert (=> b!1526154 (= res!1044319 (= (seekEntryOrOpen!0 (select (arr!48941 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48941 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526145 () Bool)

(declare-fun res!1044327 () Bool)

(assert (=> b!1526145 (=> (not res!1044327) (not e!850701))))

(assert (=> b!1526145 (= res!1044327 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49492 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49492 a!2804))))))

(declare-fun res!1044326 () Bool)

(assert (=> start!130098 (=> (not res!1044326) (not e!850701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130098 (= res!1044326 (validMask!0 mask!2512))))

(assert (=> start!130098 e!850701))

(assert (=> start!130098 true))

(declare-fun array_inv!37886 (array!101438) Bool)

(assert (=> start!130098 (array_inv!37886 a!2804)))

(declare-fun b!1526155 () Bool)

(assert (=> b!1526155 (= e!850704 (not true))))

(assert (=> b!1526155 e!850703))

(declare-fun res!1044325 () Bool)

(assert (=> b!1526155 (=> (not res!1044325) (not e!850703))))

(assert (=> b!1526155 (= res!1044325 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50994 0))(
  ( (Unit!50995) )
))
(declare-fun lt!660940 () Unit!50994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50994)

(assert (=> b!1526155 (= lt!660940 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526156 () Bool)

(declare-fun res!1044321 () Bool)

(assert (=> b!1526156 (=> (not res!1044321) (not e!850701))))

(assert (=> b!1526156 (= res!1044321 (and (= (size!49492 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49492 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49492 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526157 () Bool)

(declare-fun res!1044328 () Bool)

(assert (=> b!1526157 (=> (not res!1044328) (not e!850701))))

(declare-datatypes ((List!35604 0))(
  ( (Nil!35601) (Cons!35600 (h!37034 (_ BitVec 64)) (t!50305 List!35604)) )
))
(declare-fun arrayNoDuplicates!0 (array!101438 (_ BitVec 32) List!35604) Bool)

(assert (=> b!1526157 (= res!1044328 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35601))))

(declare-fun b!1526158 () Bool)

(assert (=> b!1526158 (= e!850701 e!850706)))

(declare-fun res!1044330 () Bool)

(assert (=> b!1526158 (=> (not res!1044330) (not e!850706))))

(assert (=> b!1526158 (= res!1044330 (= lt!660936 lt!660938))))

(assert (=> b!1526158 (= lt!660938 (Intermediate!13127 false resIndex!21 resX!21))))

(assert (=> b!1526158 (= lt!660936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48941 a!2804) j!70) mask!2512) (select (arr!48941 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130098 res!1044326) b!1526156))

(assert (= (and b!1526156 res!1044321) b!1526150))

(assert (= (and b!1526150 res!1044323) b!1526147))

(assert (= (and b!1526147 res!1044318) b!1526152))

(assert (= (and b!1526152 res!1044320) b!1526157))

(assert (= (and b!1526157 res!1044328) b!1526145))

(assert (= (and b!1526145 res!1044327) b!1526158))

(assert (= (and b!1526158 res!1044330) b!1526146))

(assert (= (and b!1526146 res!1044324) b!1526148))

(assert (= (and b!1526148 res!1044322) b!1526155))

(assert (= (and b!1526155 res!1044325) b!1526149))

(assert (= (and b!1526149 res!1044329) b!1526153))

(assert (= (and b!1526153 (not res!1044317)) b!1526154))

(assert (= (and b!1526154 res!1044319) b!1526151))

(declare-fun m!1408981 () Bool)

(assert (=> b!1526146 m!1408981))

(assert (=> b!1526146 m!1408981))

(declare-fun m!1408983 () Bool)

(assert (=> b!1526146 m!1408983))

(declare-fun m!1408985 () Bool)

(assert (=> b!1526152 m!1408985))

(declare-fun m!1408987 () Bool)

(assert (=> b!1526150 m!1408987))

(assert (=> b!1526150 m!1408987))

(declare-fun m!1408989 () Bool)

(assert (=> b!1526150 m!1408989))

(declare-fun m!1408991 () Bool)

(assert (=> b!1526157 m!1408991))

(declare-fun m!1408993 () Bool)

(assert (=> start!130098 m!1408993))

(declare-fun m!1408995 () Bool)

(assert (=> start!130098 m!1408995))

(assert (=> b!1526147 m!1408981))

(assert (=> b!1526147 m!1408981))

(declare-fun m!1408997 () Bool)

(assert (=> b!1526147 m!1408997))

(assert (=> b!1526153 m!1408981))

(declare-fun m!1408999 () Bool)

(assert (=> b!1526153 m!1408999))

(assert (=> b!1526154 m!1408981))

(assert (=> b!1526154 m!1408981))

(declare-fun m!1409001 () Bool)

(assert (=> b!1526154 m!1409001))

(assert (=> b!1526154 m!1408981))

(declare-fun m!1409003 () Bool)

(assert (=> b!1526154 m!1409003))

(assert (=> b!1526149 m!1408981))

(assert (=> b!1526149 m!1408981))

(declare-fun m!1409005 () Bool)

(assert (=> b!1526149 m!1409005))

(declare-fun m!1409007 () Bool)

(assert (=> b!1526155 m!1409007))

(declare-fun m!1409009 () Bool)

(assert (=> b!1526155 m!1409009))

(declare-fun m!1409011 () Bool)

(assert (=> b!1526148 m!1409011))

(assert (=> b!1526148 m!1409011))

(declare-fun m!1409013 () Bool)

(assert (=> b!1526148 m!1409013))

(declare-fun m!1409015 () Bool)

(assert (=> b!1526148 m!1409015))

(declare-fun m!1409017 () Bool)

(assert (=> b!1526148 m!1409017))

(declare-fun m!1409019 () Bool)

(assert (=> b!1526151 m!1409019))

(declare-fun m!1409021 () Bool)

(assert (=> b!1526151 m!1409021))

(assert (=> b!1526158 m!1408981))

(assert (=> b!1526158 m!1408981))

(declare-fun m!1409023 () Bool)

(assert (=> b!1526158 m!1409023))

(assert (=> b!1526158 m!1409023))

(assert (=> b!1526158 m!1408981))

(declare-fun m!1409025 () Bool)

(assert (=> b!1526158 m!1409025))

(check-sat (not b!1526150) (not b!1526151) (not b!1526152) (not b!1526147) (not b!1526148) (not b!1526157) (not b!1526146) (not b!1526158) (not b!1526154) (not b!1526155) (not start!130098) (not b!1526149))
(check-sat)
