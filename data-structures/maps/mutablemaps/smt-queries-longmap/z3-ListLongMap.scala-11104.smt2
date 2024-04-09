; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129680 () Bool)

(assert start!129680)

(declare-fun b!1521948 () Bool)

(declare-fun res!1041309 () Bool)

(declare-fun e!848687 () Bool)

(assert (=> b!1521948 (=> (not res!1041309) (not e!848687))))

(declare-datatypes ((SeekEntryResult!13055 0))(
  ( (MissingZero!13055 (index!54614 (_ BitVec 32))) (Found!13055 (index!54615 (_ BitVec 32))) (Intermediate!13055 (undefined!13867 Bool) (index!54616 (_ BitVec 32)) (x!136310 (_ BitVec 32))) (Undefined!13055) (MissingVacant!13055 (index!54617 (_ BitVec 32))) )
))
(declare-fun lt!659410 () SeekEntryResult!13055)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101282 0))(
  ( (array!101283 (arr!48869 (Array (_ BitVec 32) (_ BitVec 64))) (size!49420 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101282)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101282 (_ BitVec 32)) SeekEntryResult!13055)

(assert (=> b!1521948 (= res!1041309 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48869 a!2804) j!70) a!2804 mask!2512) lt!659410))))

(declare-fun b!1521949 () Bool)

(declare-fun res!1041310 () Bool)

(declare-fun e!848686 () Bool)

(assert (=> b!1521949 (=> (not res!1041310) (not e!848686))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1521949 (= res!1041310 (and (= (size!49420 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49420 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49420 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521950 () Bool)

(assert (=> b!1521950 (= e!848686 e!848687)))

(declare-fun res!1041312 () Bool)

(assert (=> b!1521950 (=> (not res!1041312) (not e!848687))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521950 (= res!1041312 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48869 a!2804) j!70) mask!2512) (select (arr!48869 a!2804) j!70) a!2804 mask!2512) lt!659410))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521950 (= lt!659410 (Intermediate!13055 false resIndex!21 resX!21))))

(declare-fun b!1521951 () Bool)

(declare-fun res!1041315 () Bool)

(assert (=> b!1521951 (=> (not res!1041315) (not e!848686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521951 (= res!1041315 (validKeyInArray!0 (select (arr!48869 a!2804) i!961)))))

(declare-fun b!1521952 () Bool)

(assert (=> b!1521952 (= e!848687 false)))

(declare-fun lt!659409 () SeekEntryResult!13055)

(assert (=> b!1521952 (= lt!659409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48869 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48869 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101283 (store (arr!48869 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49420 a!2804)) mask!2512))))

(declare-fun b!1521953 () Bool)

(declare-fun res!1041313 () Bool)

(assert (=> b!1521953 (=> (not res!1041313) (not e!848686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101282 (_ BitVec 32)) Bool)

(assert (=> b!1521953 (= res!1041313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521954 () Bool)

(declare-fun res!1041314 () Bool)

(assert (=> b!1521954 (=> (not res!1041314) (not e!848686))))

(declare-datatypes ((List!35532 0))(
  ( (Nil!35529) (Cons!35528 (h!36950 (_ BitVec 64)) (t!50233 List!35532)) )
))
(declare-fun arrayNoDuplicates!0 (array!101282 (_ BitVec 32) List!35532) Bool)

(assert (=> b!1521954 (= res!1041314 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35529))))

(declare-fun b!1521955 () Bool)

(declare-fun res!1041308 () Bool)

(assert (=> b!1521955 (=> (not res!1041308) (not e!848686))))

(assert (=> b!1521955 (= res!1041308 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49420 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49420 a!2804))))))

(declare-fun res!1041311 () Bool)

(assert (=> start!129680 (=> (not res!1041311) (not e!848686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129680 (= res!1041311 (validMask!0 mask!2512))))

(assert (=> start!129680 e!848686))

(assert (=> start!129680 true))

(declare-fun array_inv!37814 (array!101282) Bool)

(assert (=> start!129680 (array_inv!37814 a!2804)))

(declare-fun b!1521947 () Bool)

(declare-fun res!1041307 () Bool)

(assert (=> b!1521947 (=> (not res!1041307) (not e!848686))))

(assert (=> b!1521947 (= res!1041307 (validKeyInArray!0 (select (arr!48869 a!2804) j!70)))))

(assert (= (and start!129680 res!1041311) b!1521949))

(assert (= (and b!1521949 res!1041310) b!1521951))

(assert (= (and b!1521951 res!1041315) b!1521947))

(assert (= (and b!1521947 res!1041307) b!1521953))

(assert (= (and b!1521953 res!1041313) b!1521954))

(assert (= (and b!1521954 res!1041314) b!1521955))

(assert (= (and b!1521955 res!1041308) b!1521950))

(assert (= (and b!1521950 res!1041312) b!1521948))

(assert (= (and b!1521948 res!1041309) b!1521952))

(declare-fun m!1405121 () Bool)

(assert (=> b!1521948 m!1405121))

(assert (=> b!1521948 m!1405121))

(declare-fun m!1405123 () Bool)

(assert (=> b!1521948 m!1405123))

(declare-fun m!1405125 () Bool)

(assert (=> start!129680 m!1405125))

(declare-fun m!1405127 () Bool)

(assert (=> start!129680 m!1405127))

(assert (=> b!1521950 m!1405121))

(assert (=> b!1521950 m!1405121))

(declare-fun m!1405129 () Bool)

(assert (=> b!1521950 m!1405129))

(assert (=> b!1521950 m!1405129))

(assert (=> b!1521950 m!1405121))

(declare-fun m!1405131 () Bool)

(assert (=> b!1521950 m!1405131))

(declare-fun m!1405133 () Bool)

(assert (=> b!1521952 m!1405133))

(declare-fun m!1405135 () Bool)

(assert (=> b!1521952 m!1405135))

(assert (=> b!1521952 m!1405135))

(declare-fun m!1405137 () Bool)

(assert (=> b!1521952 m!1405137))

(assert (=> b!1521952 m!1405137))

(assert (=> b!1521952 m!1405135))

(declare-fun m!1405139 () Bool)

(assert (=> b!1521952 m!1405139))

(declare-fun m!1405141 () Bool)

(assert (=> b!1521954 m!1405141))

(declare-fun m!1405143 () Bool)

(assert (=> b!1521951 m!1405143))

(assert (=> b!1521951 m!1405143))

(declare-fun m!1405145 () Bool)

(assert (=> b!1521951 m!1405145))

(declare-fun m!1405147 () Bool)

(assert (=> b!1521953 m!1405147))

(assert (=> b!1521947 m!1405121))

(assert (=> b!1521947 m!1405121))

(declare-fun m!1405149 () Bool)

(assert (=> b!1521947 m!1405149))

(check-sat (not b!1521953) (not b!1521952) (not b!1521954) (not b!1521951) (not start!129680) (not b!1521947) (not b!1521948) (not b!1521950))
(check-sat)
