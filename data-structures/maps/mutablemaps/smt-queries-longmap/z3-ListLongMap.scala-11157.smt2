; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130398 () Bool)

(assert start!130398)

(declare-fun b!1530227 () Bool)

(declare-fun e!852722 () Bool)

(declare-fun e!852723 () Bool)

(assert (=> b!1530227 (= e!852722 e!852723)))

(declare-fun res!1047892 () Bool)

(assert (=> b!1530227 (=> (not res!1047892) (not e!852723))))

(declare-datatypes ((SeekEntryResult!13214 0))(
  ( (MissingZero!13214 (index!55250 (_ BitVec 32))) (Found!13214 (index!55251 (_ BitVec 32))) (Intermediate!13214 (undefined!14026 Bool) (index!55252 (_ BitVec 32)) (x!136945 (_ BitVec 32))) (Undefined!13214) (MissingVacant!13214 (index!55253 (_ BitVec 32))) )
))
(declare-fun lt!662711 () SeekEntryResult!13214)

(declare-fun lt!662713 () SeekEntryResult!13214)

(assert (=> b!1530227 (= res!1047892 (= lt!662711 lt!662713))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1530227 (= lt!662713 (Intermediate!13214 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101618 0))(
  ( (array!101619 (arr!49028 (Array (_ BitVec 32) (_ BitVec 64))) (size!49579 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101618)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101618 (_ BitVec 32)) SeekEntryResult!13214)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530227 (= lt!662711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49028 a!2804) j!70) mask!2512) (select (arr!49028 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530228 () Bool)

(declare-fun res!1047900 () Bool)

(assert (=> b!1530228 (=> (not res!1047900) (not e!852722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530228 (= res!1047900 (validKeyInArray!0 (select (arr!49028 a!2804) j!70)))))

(declare-fun b!1530229 () Bool)

(declare-fun res!1047889 () Bool)

(assert (=> b!1530229 (=> (not res!1047889) (not e!852722))))

(declare-datatypes ((List!35691 0))(
  ( (Nil!35688) (Cons!35687 (h!37127 (_ BitVec 64)) (t!50392 List!35691)) )
))
(declare-fun arrayNoDuplicates!0 (array!101618 (_ BitVec 32) List!35691) Bool)

(assert (=> b!1530229 (= res!1047889 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35688))))

(declare-fun b!1530230 () Bool)

(declare-fun res!1047890 () Bool)

(assert (=> b!1530230 (=> (not res!1047890) (not e!852722))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1530230 (= res!1047890 (validKeyInArray!0 (select (arr!49028 a!2804) i!961)))))

(declare-fun b!1530231 () Bool)

(declare-fun res!1047897 () Bool)

(assert (=> b!1530231 (=> (not res!1047897) (not e!852722))))

(assert (=> b!1530231 (= res!1047897 (and (= (size!49579 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49579 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49579 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1047895 () Bool)

(assert (=> start!130398 (=> (not res!1047895) (not e!852722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130398 (= res!1047895 (validMask!0 mask!2512))))

(assert (=> start!130398 e!852722))

(assert (=> start!130398 true))

(declare-fun array_inv!37973 (array!101618) Bool)

(assert (=> start!130398 (array_inv!37973 a!2804)))

(declare-fun b!1530232 () Bool)

(declare-fun res!1047898 () Bool)

(assert (=> b!1530232 (=> (not res!1047898) (not e!852723))))

(assert (=> b!1530232 (= res!1047898 (= lt!662711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49028 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49028 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101619 (store (arr!49028 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49579 a!2804)) mask!2512)))))

(declare-fun b!1530233 () Bool)

(declare-fun e!852725 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101618 (_ BitVec 32)) SeekEntryResult!13214)

(assert (=> b!1530233 (= e!852725 (= (seekEntry!0 (select (arr!49028 a!2804) j!70) a!2804 mask!2512) (Found!13214 j!70)))))

(declare-fun b!1530234 () Bool)

(declare-fun e!852721 () Bool)

(assert (=> b!1530234 (= e!852721 true)))

(declare-fun lt!662710 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530234 (= lt!662710 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530235 () Bool)

(assert (=> b!1530235 (= e!852723 (not e!852721))))

(declare-fun res!1047896 () Bool)

(assert (=> b!1530235 (=> res!1047896 e!852721)))

(assert (=> b!1530235 (= res!1047896 (or (not (= (select (arr!49028 a!2804) j!70) (select (store (arr!49028 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1530235 e!852725))

(declare-fun res!1047893 () Bool)

(assert (=> b!1530235 (=> (not res!1047893) (not e!852725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101618 (_ BitVec 32)) Bool)

(assert (=> b!1530235 (= res!1047893 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51168 0))(
  ( (Unit!51169) )
))
(declare-fun lt!662712 () Unit!51168)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51168)

(assert (=> b!1530235 (= lt!662712 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530236 () Bool)

(declare-fun res!1047899 () Bool)

(assert (=> b!1530236 (=> (not res!1047899) (not e!852723))))

(assert (=> b!1530236 (= res!1047899 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49028 a!2804) j!70) a!2804 mask!2512) lt!662713))))

(declare-fun b!1530237 () Bool)

(declare-fun res!1047891 () Bool)

(assert (=> b!1530237 (=> (not res!1047891) (not e!852722))))

(assert (=> b!1530237 (= res!1047891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530238 () Bool)

(declare-fun res!1047894 () Bool)

(assert (=> b!1530238 (=> (not res!1047894) (not e!852722))))

(assert (=> b!1530238 (= res!1047894 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49579 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49579 a!2804))))))

(assert (= (and start!130398 res!1047895) b!1530231))

(assert (= (and b!1530231 res!1047897) b!1530230))

(assert (= (and b!1530230 res!1047890) b!1530228))

(assert (= (and b!1530228 res!1047900) b!1530237))

(assert (= (and b!1530237 res!1047891) b!1530229))

(assert (= (and b!1530229 res!1047889) b!1530238))

(assert (= (and b!1530238 res!1047894) b!1530227))

(assert (= (and b!1530227 res!1047892) b!1530236))

(assert (= (and b!1530236 res!1047899) b!1530232))

(assert (= (and b!1530232 res!1047898) b!1530235))

(assert (= (and b!1530235 res!1047893) b!1530233))

(assert (= (and b!1530235 (not res!1047896)) b!1530234))

(declare-fun m!1413143 () Bool)

(assert (=> b!1530234 m!1413143))

(declare-fun m!1413145 () Bool)

(assert (=> b!1530227 m!1413145))

(assert (=> b!1530227 m!1413145))

(declare-fun m!1413147 () Bool)

(assert (=> b!1530227 m!1413147))

(assert (=> b!1530227 m!1413147))

(assert (=> b!1530227 m!1413145))

(declare-fun m!1413149 () Bool)

(assert (=> b!1530227 m!1413149))

(declare-fun m!1413151 () Bool)

(assert (=> b!1530237 m!1413151))

(declare-fun m!1413153 () Bool)

(assert (=> b!1530230 m!1413153))

(assert (=> b!1530230 m!1413153))

(declare-fun m!1413155 () Bool)

(assert (=> b!1530230 m!1413155))

(assert (=> b!1530236 m!1413145))

(assert (=> b!1530236 m!1413145))

(declare-fun m!1413157 () Bool)

(assert (=> b!1530236 m!1413157))

(assert (=> b!1530235 m!1413145))

(declare-fun m!1413159 () Bool)

(assert (=> b!1530235 m!1413159))

(declare-fun m!1413161 () Bool)

(assert (=> b!1530235 m!1413161))

(declare-fun m!1413163 () Bool)

(assert (=> b!1530235 m!1413163))

(declare-fun m!1413165 () Bool)

(assert (=> b!1530235 m!1413165))

(declare-fun m!1413167 () Bool)

(assert (=> b!1530229 m!1413167))

(assert (=> b!1530232 m!1413161))

(assert (=> b!1530232 m!1413163))

(assert (=> b!1530232 m!1413163))

(declare-fun m!1413169 () Bool)

(assert (=> b!1530232 m!1413169))

(assert (=> b!1530232 m!1413169))

(assert (=> b!1530232 m!1413163))

(declare-fun m!1413171 () Bool)

(assert (=> b!1530232 m!1413171))

(declare-fun m!1413173 () Bool)

(assert (=> start!130398 m!1413173))

(declare-fun m!1413175 () Bool)

(assert (=> start!130398 m!1413175))

(assert (=> b!1530233 m!1413145))

(assert (=> b!1530233 m!1413145))

(declare-fun m!1413177 () Bool)

(assert (=> b!1530233 m!1413177))

(assert (=> b!1530228 m!1413145))

(assert (=> b!1530228 m!1413145))

(declare-fun m!1413179 () Bool)

(assert (=> b!1530228 m!1413179))

(check-sat (not b!1530235) (not b!1530236) (not b!1530230) (not b!1530227) (not b!1530234) (not b!1530233) (not b!1530237) (not start!130398) (not b!1530229) (not b!1530232) (not b!1530228))
(check-sat)
