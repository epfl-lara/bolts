; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129798 () Bool)

(assert start!129798)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101321 0))(
  ( (array!101322 (arr!48887 (Array (_ BitVec 32) (_ BitVec 64))) (size!49438 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101321)

(declare-fun e!849174 () Bool)

(declare-fun b!1522989 () Bool)

(declare-datatypes ((SeekEntryResult!13073 0))(
  ( (MissingZero!13073 (index!54686 (_ BitVec 32))) (Found!13073 (index!54687 (_ BitVec 32))) (Intermediate!13073 (undefined!13885 Bool) (index!54688 (_ BitVec 32)) (x!136386 (_ BitVec 32))) (Undefined!13073) (MissingVacant!13073 (index!54689 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101321 (_ BitVec 32)) SeekEntryResult!13073)

(assert (=> b!1522989 (= e!849174 (= (seekEntry!0 (select (arr!48887 a!2804) j!70) a!2804 mask!2512) (Found!13073 j!70)))))

(declare-fun b!1522990 () Bool)

(declare-fun res!1042037 () Bool)

(declare-fun e!849176 () Bool)

(assert (=> b!1522990 (=> (not res!1042037) (not e!849176))))

(declare-datatypes ((List!35550 0))(
  ( (Nil!35547) (Cons!35546 (h!36971 (_ BitVec 64)) (t!50251 List!35550)) )
))
(declare-fun arrayNoDuplicates!0 (array!101321 (_ BitVec 32) List!35550) Bool)

(assert (=> b!1522990 (= res!1042037 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35547))))

(declare-fun b!1522991 () Bool)

(declare-fun res!1042036 () Bool)

(assert (=> b!1522991 (=> (not res!1042036) (not e!849176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522991 (= res!1042036 (validKeyInArray!0 (select (arr!48887 a!2804) j!70)))))

(declare-fun res!1042039 () Bool)

(assert (=> start!129798 (=> (not res!1042039) (not e!849176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129798 (= res!1042039 (validMask!0 mask!2512))))

(assert (=> start!129798 e!849176))

(assert (=> start!129798 true))

(declare-fun array_inv!37832 (array!101321) Bool)

(assert (=> start!129798 (array_inv!37832 a!2804)))

(declare-fun b!1522992 () Bool)

(declare-fun res!1042035 () Bool)

(assert (=> b!1522992 (=> (not res!1042035) (not e!849176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101321 (_ BitVec 32)) Bool)

(assert (=> b!1522992 (= res!1042035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522993 () Bool)

(declare-fun e!849175 () Bool)

(assert (=> b!1522993 (= e!849176 e!849175)))

(declare-fun res!1042042 () Bool)

(assert (=> b!1522993 (=> (not res!1042042) (not e!849175))))

(declare-fun lt!659787 () SeekEntryResult!13073)

(declare-fun lt!659788 () SeekEntryResult!13073)

(assert (=> b!1522993 (= res!1042042 (= lt!659787 lt!659788))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1522993 (= lt!659788 (Intermediate!13073 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101321 (_ BitVec 32)) SeekEntryResult!13073)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522993 (= lt!659787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48887 a!2804) j!70) mask!2512) (select (arr!48887 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522994 () Bool)

(declare-fun res!1042040 () Bool)

(assert (=> b!1522994 (=> (not res!1042040) (not e!849175))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522994 (= res!1042040 (= lt!659787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48887 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48887 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101322 (store (arr!48887 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49438 a!2804)) mask!2512)))))

(declare-fun b!1522995 () Bool)

(declare-fun res!1042034 () Bool)

(assert (=> b!1522995 (=> (not res!1042034) (not e!849176))))

(assert (=> b!1522995 (= res!1042034 (and (= (size!49438 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49438 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49438 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522996 () Bool)

(assert (=> b!1522996 (= e!849175 (not true))))

(assert (=> b!1522996 e!849174))

(declare-fun res!1042041 () Bool)

(assert (=> b!1522996 (=> (not res!1042041) (not e!849174))))

(assert (=> b!1522996 (= res!1042041 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50886 0))(
  ( (Unit!50887) )
))
(declare-fun lt!659786 () Unit!50886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50886)

(assert (=> b!1522996 (= lt!659786 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522997 () Bool)

(declare-fun res!1042044 () Bool)

(assert (=> b!1522997 (=> (not res!1042044) (not e!849176))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1522997 (= res!1042044 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49438 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49438 a!2804))))))

(declare-fun b!1522998 () Bool)

(declare-fun res!1042043 () Bool)

(assert (=> b!1522998 (=> (not res!1042043) (not e!849175))))

(assert (=> b!1522998 (= res!1042043 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48887 a!2804) j!70) a!2804 mask!2512) lt!659788))))

(declare-fun b!1522999 () Bool)

(declare-fun res!1042038 () Bool)

(assert (=> b!1522999 (=> (not res!1042038) (not e!849176))))

(assert (=> b!1522999 (= res!1042038 (validKeyInArray!0 (select (arr!48887 a!2804) i!961)))))

(assert (= (and start!129798 res!1042039) b!1522995))

(assert (= (and b!1522995 res!1042034) b!1522999))

(assert (= (and b!1522999 res!1042038) b!1522991))

(assert (= (and b!1522991 res!1042036) b!1522992))

(assert (= (and b!1522992 res!1042035) b!1522990))

(assert (= (and b!1522990 res!1042037) b!1522997))

(assert (= (and b!1522997 res!1042044) b!1522993))

(assert (= (and b!1522993 res!1042042) b!1522998))

(assert (= (and b!1522998 res!1042043) b!1522994))

(assert (= (and b!1522994 res!1042040) b!1522996))

(assert (= (and b!1522996 res!1042041) b!1522989))

(declare-fun m!1406127 () Bool)

(assert (=> b!1522990 m!1406127))

(declare-fun m!1406129 () Bool)

(assert (=> b!1522989 m!1406129))

(assert (=> b!1522989 m!1406129))

(declare-fun m!1406131 () Bool)

(assert (=> b!1522989 m!1406131))

(declare-fun m!1406133 () Bool)

(assert (=> b!1522999 m!1406133))

(assert (=> b!1522999 m!1406133))

(declare-fun m!1406135 () Bool)

(assert (=> b!1522999 m!1406135))

(declare-fun m!1406137 () Bool)

(assert (=> b!1522994 m!1406137))

(declare-fun m!1406139 () Bool)

(assert (=> b!1522994 m!1406139))

(assert (=> b!1522994 m!1406139))

(declare-fun m!1406141 () Bool)

(assert (=> b!1522994 m!1406141))

(assert (=> b!1522994 m!1406141))

(assert (=> b!1522994 m!1406139))

(declare-fun m!1406143 () Bool)

(assert (=> b!1522994 m!1406143))

(assert (=> b!1522993 m!1406129))

(assert (=> b!1522993 m!1406129))

(declare-fun m!1406145 () Bool)

(assert (=> b!1522993 m!1406145))

(assert (=> b!1522993 m!1406145))

(assert (=> b!1522993 m!1406129))

(declare-fun m!1406147 () Bool)

(assert (=> b!1522993 m!1406147))

(declare-fun m!1406149 () Bool)

(assert (=> b!1522996 m!1406149))

(declare-fun m!1406151 () Bool)

(assert (=> b!1522996 m!1406151))

(declare-fun m!1406153 () Bool)

(assert (=> b!1522992 m!1406153))

(assert (=> b!1522998 m!1406129))

(assert (=> b!1522998 m!1406129))

(declare-fun m!1406155 () Bool)

(assert (=> b!1522998 m!1406155))

(assert (=> b!1522991 m!1406129))

(assert (=> b!1522991 m!1406129))

(declare-fun m!1406157 () Bool)

(assert (=> b!1522991 m!1406157))

(declare-fun m!1406159 () Bool)

(assert (=> start!129798 m!1406159))

(declare-fun m!1406161 () Bool)

(assert (=> start!129798 m!1406161))

(check-sat (not b!1522989) (not b!1522992) (not b!1522991) (not b!1522994) (not b!1522999) (not start!129798) (not b!1522998) (not b!1522990) (not b!1522993) (not b!1522996))
(check-sat)
