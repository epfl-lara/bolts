; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130104 () Bool)

(assert start!130104)

(declare-fun b!1526271 () Bool)

(declare-fun res!1044448 () Bool)

(declare-fun e!850765 () Bool)

(assert (=> b!1526271 (=> (not res!1044448) (not e!850765))))

(declare-datatypes ((SeekEntryResult!13130 0))(
  ( (MissingZero!13130 (index!54914 (_ BitVec 32))) (Found!13130 (index!54915 (_ BitVec 32))) (Intermediate!13130 (undefined!13942 Bool) (index!54916 (_ BitVec 32)) (x!136619 (_ BitVec 32))) (Undefined!13130) (MissingVacant!13130 (index!54917 (_ BitVec 32))) )
))
(declare-fun lt!660982 () SeekEntryResult!13130)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101444 0))(
  ( (array!101445 (arr!48944 (Array (_ BitVec 32) (_ BitVec 64))) (size!49495 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101444)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101444 (_ BitVec 32)) SeekEntryResult!13130)

(assert (=> b!1526271 (= res!1044448 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48944 a!2804) j!70) a!2804 mask!2512) lt!660982))))

(declare-fun b!1526272 () Bool)

(declare-fun res!1044454 () Bool)

(declare-fun e!850769 () Bool)

(assert (=> b!1526272 (=> (not res!1044454) (not e!850769))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526272 (= res!1044454 (validKeyInArray!0 (select (arr!48944 a!2804) i!961)))))

(declare-fun b!1526273 () Bool)

(declare-fun e!850767 () Bool)

(declare-fun e!850766 () Bool)

(assert (=> b!1526273 (= e!850767 e!850766)))

(declare-fun res!1044447 () Bool)

(assert (=> b!1526273 (=> res!1044447 e!850766)))

(declare-fun lt!660984 () (_ BitVec 64))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526273 (= res!1044447 (or (not (= (select (arr!48944 a!2804) j!70) lt!660984)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48944 a!2804) index!487) (select (arr!48944 a!2804) j!70)) (not (= (select (arr!48944 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526274 () Bool)

(declare-fun res!1044443 () Bool)

(assert (=> b!1526274 (=> (not res!1044443) (not e!850769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101444 (_ BitVec 32)) Bool)

(assert (=> b!1526274 (= res!1044443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526275 () Bool)

(assert (=> b!1526275 (= e!850769 e!850765)))

(declare-fun res!1044455 () Bool)

(assert (=> b!1526275 (=> (not res!1044455) (not e!850765))))

(declare-fun lt!660981 () SeekEntryResult!13130)

(assert (=> b!1526275 (= res!1044455 (= lt!660981 lt!660982))))

(assert (=> b!1526275 (= lt!660982 (Intermediate!13130 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526275 (= lt!660981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48944 a!2804) j!70) mask!2512) (select (arr!48944 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!850764 () Bool)

(declare-fun b!1526276 () Bool)

(declare-fun lt!660985 () array!101444)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101444 (_ BitVec 32)) SeekEntryResult!13130)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101444 (_ BitVec 32)) SeekEntryResult!13130)

(assert (=> b!1526276 (= e!850764 (= (seekEntryOrOpen!0 lt!660984 lt!660985 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660984 lt!660985 mask!2512)))))

(declare-fun b!1526277 () Bool)

(declare-fun e!850763 () Bool)

(assert (=> b!1526277 (= e!850765 e!850763)))

(declare-fun res!1044451 () Bool)

(assert (=> b!1526277 (=> (not res!1044451) (not e!850763))))

(assert (=> b!1526277 (= res!1044451 (= lt!660981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660984 mask!2512) lt!660984 lt!660985 mask!2512)))))

(assert (=> b!1526277 (= lt!660984 (select (store (arr!48944 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526277 (= lt!660985 (array!101445 (store (arr!48944 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49495 a!2804)))))

(declare-fun b!1526278 () Bool)

(declare-fun res!1044445 () Bool)

(assert (=> b!1526278 (=> (not res!1044445) (not e!850769))))

(assert (=> b!1526278 (= res!1044445 (validKeyInArray!0 (select (arr!48944 a!2804) j!70)))))

(declare-fun b!1526279 () Bool)

(declare-fun res!1044450 () Bool)

(assert (=> b!1526279 (=> (not res!1044450) (not e!850769))))

(assert (=> b!1526279 (= res!1044450 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49495 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49495 a!2804))))))

(declare-fun res!1044449 () Bool)

(assert (=> start!130104 (=> (not res!1044449) (not e!850769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130104 (= res!1044449 (validMask!0 mask!2512))))

(assert (=> start!130104 e!850769))

(assert (=> start!130104 true))

(declare-fun array_inv!37889 (array!101444) Bool)

(assert (=> start!130104 (array_inv!37889 a!2804)))

(declare-fun b!1526280 () Bool)

(declare-fun res!1044453 () Bool)

(assert (=> b!1526280 (=> (not res!1044453) (not e!850769))))

(assert (=> b!1526280 (= res!1044453 (and (= (size!49495 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49495 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49495 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526281 () Bool)

(assert (=> b!1526281 (= e!850763 (not true))))

(assert (=> b!1526281 e!850767))

(declare-fun res!1044444 () Bool)

(assert (=> b!1526281 (=> (not res!1044444) (not e!850767))))

(assert (=> b!1526281 (= res!1044444 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51000 0))(
  ( (Unit!51001) )
))
(declare-fun lt!660983 () Unit!51000)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101444 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51000)

(assert (=> b!1526281 (= lt!660983 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526282 () Bool)

(assert (=> b!1526282 (= e!850766 e!850764)))

(declare-fun res!1044452 () Bool)

(assert (=> b!1526282 (=> (not res!1044452) (not e!850764))))

(assert (=> b!1526282 (= res!1044452 (= (seekEntryOrOpen!0 (select (arr!48944 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48944 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526283 () Bool)

(declare-fun res!1044456 () Bool)

(assert (=> b!1526283 (=> (not res!1044456) (not e!850767))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101444 (_ BitVec 32)) SeekEntryResult!13130)

(assert (=> b!1526283 (= res!1044456 (= (seekEntry!0 (select (arr!48944 a!2804) j!70) a!2804 mask!2512) (Found!13130 j!70)))))

(declare-fun b!1526284 () Bool)

(declare-fun res!1044446 () Bool)

(assert (=> b!1526284 (=> (not res!1044446) (not e!850769))))

(declare-datatypes ((List!35607 0))(
  ( (Nil!35604) (Cons!35603 (h!37037 (_ BitVec 64)) (t!50308 List!35607)) )
))
(declare-fun arrayNoDuplicates!0 (array!101444 (_ BitVec 32) List!35607) Bool)

(assert (=> b!1526284 (= res!1044446 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35604))))

(assert (= (and start!130104 res!1044449) b!1526280))

(assert (= (and b!1526280 res!1044453) b!1526272))

(assert (= (and b!1526272 res!1044454) b!1526278))

(assert (= (and b!1526278 res!1044445) b!1526274))

(assert (= (and b!1526274 res!1044443) b!1526284))

(assert (= (and b!1526284 res!1044446) b!1526279))

(assert (= (and b!1526279 res!1044450) b!1526275))

(assert (= (and b!1526275 res!1044455) b!1526271))

(assert (= (and b!1526271 res!1044448) b!1526277))

(assert (= (and b!1526277 res!1044451) b!1526281))

(assert (= (and b!1526281 res!1044444) b!1526283))

(assert (= (and b!1526283 res!1044456) b!1526273))

(assert (= (and b!1526273 (not res!1044447)) b!1526282))

(assert (= (and b!1526282 res!1044452) b!1526276))

(declare-fun m!1409119 () Bool)

(assert (=> b!1526275 m!1409119))

(assert (=> b!1526275 m!1409119))

(declare-fun m!1409121 () Bool)

(assert (=> b!1526275 m!1409121))

(assert (=> b!1526275 m!1409121))

(assert (=> b!1526275 m!1409119))

(declare-fun m!1409123 () Bool)

(assert (=> b!1526275 m!1409123))

(assert (=> b!1526278 m!1409119))

(assert (=> b!1526278 m!1409119))

(declare-fun m!1409125 () Bool)

(assert (=> b!1526278 m!1409125))

(declare-fun m!1409127 () Bool)

(assert (=> b!1526284 m!1409127))

(declare-fun m!1409129 () Bool)

(assert (=> start!130104 m!1409129))

(declare-fun m!1409131 () Bool)

(assert (=> start!130104 m!1409131))

(declare-fun m!1409133 () Bool)

(assert (=> b!1526272 m!1409133))

(assert (=> b!1526272 m!1409133))

(declare-fun m!1409135 () Bool)

(assert (=> b!1526272 m!1409135))

(assert (=> b!1526282 m!1409119))

(assert (=> b!1526282 m!1409119))

(declare-fun m!1409137 () Bool)

(assert (=> b!1526282 m!1409137))

(assert (=> b!1526282 m!1409119))

(declare-fun m!1409139 () Bool)

(assert (=> b!1526282 m!1409139))

(assert (=> b!1526271 m!1409119))

(assert (=> b!1526271 m!1409119))

(declare-fun m!1409141 () Bool)

(assert (=> b!1526271 m!1409141))

(declare-fun m!1409143 () Bool)

(assert (=> b!1526277 m!1409143))

(assert (=> b!1526277 m!1409143))

(declare-fun m!1409145 () Bool)

(assert (=> b!1526277 m!1409145))

(declare-fun m!1409147 () Bool)

(assert (=> b!1526277 m!1409147))

(declare-fun m!1409149 () Bool)

(assert (=> b!1526277 m!1409149))

(assert (=> b!1526273 m!1409119))

(declare-fun m!1409151 () Bool)

(assert (=> b!1526273 m!1409151))

(declare-fun m!1409153 () Bool)

(assert (=> b!1526274 m!1409153))

(assert (=> b!1526283 m!1409119))

(assert (=> b!1526283 m!1409119))

(declare-fun m!1409155 () Bool)

(assert (=> b!1526283 m!1409155))

(declare-fun m!1409157 () Bool)

(assert (=> b!1526281 m!1409157))

(declare-fun m!1409159 () Bool)

(assert (=> b!1526281 m!1409159))

(declare-fun m!1409161 () Bool)

(assert (=> b!1526276 m!1409161))

(declare-fun m!1409163 () Bool)

(assert (=> b!1526276 m!1409163))

(check-sat (not b!1526284) (not b!1526276) (not b!1526277) (not b!1526274) (not start!130104) (not b!1526271) (not b!1526281) (not b!1526278) (not b!1526272) (not b!1526282) (not b!1526283) (not b!1526275))
(check-sat)
