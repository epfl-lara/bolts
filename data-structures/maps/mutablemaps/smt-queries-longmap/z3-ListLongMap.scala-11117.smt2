; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129900 () Bool)

(assert start!129900)

(declare-fun b!1524045 () Bool)

(declare-fun res!1042837 () Bool)

(declare-fun e!849655 () Bool)

(assert (=> b!1524045 (=> (not res!1042837) (not e!849655))))

(declare-datatypes ((SeekEntryResult!13094 0))(
  ( (MissingZero!13094 (index!54770 (_ BitVec 32))) (Found!13094 (index!54771 (_ BitVec 32))) (Intermediate!13094 (undefined!13906 Bool) (index!54772 (_ BitVec 32)) (x!136469 (_ BitVec 32))) (Undefined!13094) (MissingVacant!13094 (index!54773 (_ BitVec 32))) )
))
(declare-fun lt!660166 () SeekEntryResult!13094)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101366 0))(
  ( (array!101367 (arr!48908 (Array (_ BitVec 32) (_ BitVec 64))) (size!49459 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101366)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101366 (_ BitVec 32)) SeekEntryResult!13094)

(assert (=> b!1524045 (= res!1042837 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48908 a!2804) j!70) a!2804 mask!2512) lt!660166))))

(declare-fun b!1524046 () Bool)

(declare-fun e!849653 () Bool)

(assert (=> b!1524046 (= e!849653 e!849655)))

(declare-fun res!1042844 () Bool)

(assert (=> b!1524046 (=> (not res!1042844) (not e!849655))))

(declare-fun lt!660165 () SeekEntryResult!13094)

(assert (=> b!1524046 (= res!1042844 (= lt!660165 lt!660166))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524046 (= lt!660166 (Intermediate!13094 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524046 (= lt!660165 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48908 a!2804) j!70) mask!2512) (select (arr!48908 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524047 () Bool)

(declare-fun res!1042842 () Bool)

(assert (=> b!1524047 (=> (not res!1042842) (not e!849653))))

(declare-datatypes ((List!35571 0))(
  ( (Nil!35568) (Cons!35567 (h!36995 (_ BitVec 64)) (t!50272 List!35571)) )
))
(declare-fun arrayNoDuplicates!0 (array!101366 (_ BitVec 32) List!35571) Bool)

(assert (=> b!1524047 (= res!1042842 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35568))))

(declare-fun b!1524048 () Bool)

(declare-fun res!1042843 () Bool)

(assert (=> b!1524048 (=> (not res!1042843) (not e!849653))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524048 (= res!1042843 (validKeyInArray!0 (select (arr!48908 a!2804) i!961)))))

(declare-fun res!1042839 () Bool)

(assert (=> start!129900 (=> (not res!1042839) (not e!849653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129900 (= res!1042839 (validMask!0 mask!2512))))

(assert (=> start!129900 e!849653))

(assert (=> start!129900 true))

(declare-fun array_inv!37853 (array!101366) Bool)

(assert (=> start!129900 (array_inv!37853 a!2804)))

(declare-fun b!1524049 () Bool)

(declare-fun res!1042841 () Bool)

(assert (=> b!1524049 (=> (not res!1042841) (not e!849655))))

(assert (=> b!1524049 (= res!1042841 (= lt!660165 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48908 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48908 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101367 (store (arr!48908 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49459 a!2804)) mask!2512)))))

(declare-fun e!849654 () Bool)

(declare-fun b!1524050 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101366 (_ BitVec 32)) SeekEntryResult!13094)

(assert (=> b!1524050 (= e!849654 (= (seekEntry!0 (select (arr!48908 a!2804) j!70) a!2804 mask!2512) (Found!13094 j!70)))))

(declare-fun b!1524051 () Bool)

(declare-fun res!1042835 () Bool)

(assert (=> b!1524051 (=> (not res!1042835) (not e!849653))))

(assert (=> b!1524051 (= res!1042835 (and (= (size!49459 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49459 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49459 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524052 () Bool)

(declare-fun res!1042840 () Bool)

(assert (=> b!1524052 (=> (not res!1042840) (not e!849653))))

(assert (=> b!1524052 (= res!1042840 (validKeyInArray!0 (select (arr!48908 a!2804) j!70)))))

(declare-fun b!1524053 () Bool)

(declare-fun res!1042845 () Bool)

(assert (=> b!1524053 (=> (not res!1042845) (not e!849653))))

(assert (=> b!1524053 (= res!1042845 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49459 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49459 a!2804))))))

(declare-fun b!1524054 () Bool)

(declare-fun res!1042838 () Bool)

(assert (=> b!1524054 (=> (not res!1042838) (not e!849653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101366 (_ BitVec 32)) Bool)

(assert (=> b!1524054 (= res!1042838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524055 () Bool)

(assert (=> b!1524055 (= e!849655 (not true))))

(assert (=> b!1524055 e!849654))

(declare-fun res!1042836 () Bool)

(assert (=> b!1524055 (=> (not res!1042836) (not e!849654))))

(assert (=> b!1524055 (= res!1042836 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50928 0))(
  ( (Unit!50929) )
))
(declare-fun lt!660164 () Unit!50928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101366 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50928)

(assert (=> b!1524055 (= lt!660164 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129900 res!1042839) b!1524051))

(assert (= (and b!1524051 res!1042835) b!1524048))

(assert (= (and b!1524048 res!1042843) b!1524052))

(assert (= (and b!1524052 res!1042840) b!1524054))

(assert (= (and b!1524054 res!1042838) b!1524047))

(assert (= (and b!1524047 res!1042842) b!1524053))

(assert (= (and b!1524053 res!1042845) b!1524046))

(assert (= (and b!1524046 res!1042844) b!1524045))

(assert (= (and b!1524045 res!1042837) b!1524049))

(assert (= (and b!1524049 res!1042841) b!1524055))

(assert (= (and b!1524055 res!1042836) b!1524050))

(declare-fun m!1407117 () Bool)

(assert (=> b!1524055 m!1407117))

(declare-fun m!1407119 () Bool)

(assert (=> b!1524055 m!1407119))

(declare-fun m!1407121 () Bool)

(assert (=> b!1524047 m!1407121))

(declare-fun m!1407123 () Bool)

(assert (=> b!1524045 m!1407123))

(assert (=> b!1524045 m!1407123))

(declare-fun m!1407125 () Bool)

(assert (=> b!1524045 m!1407125))

(declare-fun m!1407127 () Bool)

(assert (=> b!1524049 m!1407127))

(declare-fun m!1407129 () Bool)

(assert (=> b!1524049 m!1407129))

(assert (=> b!1524049 m!1407129))

(declare-fun m!1407131 () Bool)

(assert (=> b!1524049 m!1407131))

(assert (=> b!1524049 m!1407131))

(assert (=> b!1524049 m!1407129))

(declare-fun m!1407133 () Bool)

(assert (=> b!1524049 m!1407133))

(assert (=> b!1524046 m!1407123))

(assert (=> b!1524046 m!1407123))

(declare-fun m!1407135 () Bool)

(assert (=> b!1524046 m!1407135))

(assert (=> b!1524046 m!1407135))

(assert (=> b!1524046 m!1407123))

(declare-fun m!1407137 () Bool)

(assert (=> b!1524046 m!1407137))

(declare-fun m!1407139 () Bool)

(assert (=> b!1524054 m!1407139))

(declare-fun m!1407141 () Bool)

(assert (=> b!1524048 m!1407141))

(assert (=> b!1524048 m!1407141))

(declare-fun m!1407143 () Bool)

(assert (=> b!1524048 m!1407143))

(assert (=> b!1524052 m!1407123))

(assert (=> b!1524052 m!1407123))

(declare-fun m!1407145 () Bool)

(assert (=> b!1524052 m!1407145))

(declare-fun m!1407147 () Bool)

(assert (=> start!129900 m!1407147))

(declare-fun m!1407149 () Bool)

(assert (=> start!129900 m!1407149))

(assert (=> b!1524050 m!1407123))

(assert (=> b!1524050 m!1407123))

(declare-fun m!1407151 () Bool)

(assert (=> b!1524050 m!1407151))

(check-sat (not b!1524048) (not b!1524049) (not b!1524054) (not start!129900) (not b!1524052) (not b!1524045) (not b!1524046) (not b!1524055) (not b!1524050) (not b!1524047))
(check-sat)
