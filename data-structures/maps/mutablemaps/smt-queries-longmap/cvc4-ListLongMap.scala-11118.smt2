; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129908 () Bool)

(assert start!129908)

(declare-fun res!1042971 () Bool)

(declare-fun e!849703 () Bool)

(assert (=> start!129908 (=> (not res!1042971) (not e!849703))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129908 (= res!1042971 (validMask!0 mask!2512))))

(assert (=> start!129908 e!849703))

(assert (=> start!129908 true))

(declare-datatypes ((array!101374 0))(
  ( (array!101375 (arr!48912 (Array (_ BitVec 32) (_ BitVec 64))) (size!49463 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101374)

(declare-fun array_inv!37857 (array!101374) Bool)

(assert (=> start!129908 (array_inv!37857 a!2804)))

(declare-fun b!1524177 () Bool)

(declare-fun res!1042970 () Bool)

(declare-fun e!849701 () Bool)

(assert (=> b!1524177 (=> (not res!1042970) (not e!849701))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13098 0))(
  ( (MissingZero!13098 (index!54786 (_ BitVec 32))) (Found!13098 (index!54787 (_ BitVec 32))) (Intermediate!13098 (undefined!13910 Bool) (index!54788 (_ BitVec 32)) (x!136481 (_ BitVec 32))) (Undefined!13098) (MissingVacant!13098 (index!54789 (_ BitVec 32))) )
))
(declare-fun lt!660200 () SeekEntryResult!13098)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101374 (_ BitVec 32)) SeekEntryResult!13098)

(assert (=> b!1524177 (= res!1042970 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48912 a!2804) j!70) a!2804 mask!2512) lt!660200))))

(declare-fun b!1524178 () Bool)

(declare-fun res!1042977 () Bool)

(assert (=> b!1524178 (=> (not res!1042977) (not e!849701))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!660201 () SeekEntryResult!13098)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524178 (= res!1042977 (= lt!660201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48912 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48912 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101375 (store (arr!48912 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49463 a!2804)) mask!2512)))))

(declare-fun b!1524179 () Bool)

(declare-fun res!1042968 () Bool)

(assert (=> b!1524179 (=> (not res!1042968) (not e!849703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101374 (_ BitVec 32)) Bool)

(assert (=> b!1524179 (= res!1042968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524180 () Bool)

(declare-fun e!849704 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101374 (_ BitVec 32)) SeekEntryResult!13098)

(assert (=> b!1524180 (= e!849704 (= (seekEntry!0 (select (arr!48912 a!2804) j!70) a!2804 mask!2512) (Found!13098 j!70)))))

(declare-fun b!1524181 () Bool)

(declare-fun res!1042975 () Bool)

(assert (=> b!1524181 (=> (not res!1042975) (not e!849703))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524181 (= res!1042975 (validKeyInArray!0 (select (arr!48912 a!2804) i!961)))))

(declare-fun b!1524182 () Bool)

(assert (=> b!1524182 (= e!849703 e!849701)))

(declare-fun res!1042974 () Bool)

(assert (=> b!1524182 (=> (not res!1042974) (not e!849701))))

(assert (=> b!1524182 (= res!1042974 (= lt!660201 lt!660200))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524182 (= lt!660200 (Intermediate!13098 false resIndex!21 resX!21))))

(assert (=> b!1524182 (= lt!660201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48912 a!2804) j!70) mask!2512) (select (arr!48912 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524183 () Bool)

(declare-fun res!1042969 () Bool)

(assert (=> b!1524183 (=> (not res!1042969) (not e!849703))))

(assert (=> b!1524183 (= res!1042969 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49463 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49463 a!2804))))))

(declare-fun b!1524184 () Bool)

(declare-fun res!1042967 () Bool)

(assert (=> b!1524184 (=> (not res!1042967) (not e!849703))))

(declare-datatypes ((List!35575 0))(
  ( (Nil!35572) (Cons!35571 (h!36999 (_ BitVec 64)) (t!50276 List!35575)) )
))
(declare-fun arrayNoDuplicates!0 (array!101374 (_ BitVec 32) List!35575) Bool)

(assert (=> b!1524184 (= res!1042967 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35572))))

(declare-fun b!1524185 () Bool)

(assert (=> b!1524185 (= e!849701 (not true))))

(assert (=> b!1524185 e!849704))

(declare-fun res!1042973 () Bool)

(assert (=> b!1524185 (=> (not res!1042973) (not e!849704))))

(assert (=> b!1524185 (= res!1042973 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50936 0))(
  ( (Unit!50937) )
))
(declare-fun lt!660202 () Unit!50936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101374 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50936)

(assert (=> b!1524185 (= lt!660202 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524186 () Bool)

(declare-fun res!1042976 () Bool)

(assert (=> b!1524186 (=> (not res!1042976) (not e!849703))))

(assert (=> b!1524186 (= res!1042976 (validKeyInArray!0 (select (arr!48912 a!2804) j!70)))))

(declare-fun b!1524187 () Bool)

(declare-fun res!1042972 () Bool)

(assert (=> b!1524187 (=> (not res!1042972) (not e!849703))))

(assert (=> b!1524187 (= res!1042972 (and (= (size!49463 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49463 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49463 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129908 res!1042971) b!1524187))

(assert (= (and b!1524187 res!1042972) b!1524181))

(assert (= (and b!1524181 res!1042975) b!1524186))

(assert (= (and b!1524186 res!1042976) b!1524179))

(assert (= (and b!1524179 res!1042968) b!1524184))

(assert (= (and b!1524184 res!1042967) b!1524183))

(assert (= (and b!1524183 res!1042969) b!1524182))

(assert (= (and b!1524182 res!1042974) b!1524177))

(assert (= (and b!1524177 res!1042970) b!1524178))

(assert (= (and b!1524178 res!1042977) b!1524185))

(assert (= (and b!1524185 res!1042973) b!1524180))

(declare-fun m!1407261 () Bool)

(assert (=> b!1524185 m!1407261))

(declare-fun m!1407263 () Bool)

(assert (=> b!1524185 m!1407263))

(declare-fun m!1407265 () Bool)

(assert (=> b!1524177 m!1407265))

(assert (=> b!1524177 m!1407265))

(declare-fun m!1407267 () Bool)

(assert (=> b!1524177 m!1407267))

(declare-fun m!1407269 () Bool)

(assert (=> start!129908 m!1407269))

(declare-fun m!1407271 () Bool)

(assert (=> start!129908 m!1407271))

(declare-fun m!1407273 () Bool)

(assert (=> b!1524178 m!1407273))

(declare-fun m!1407275 () Bool)

(assert (=> b!1524178 m!1407275))

(assert (=> b!1524178 m!1407275))

(declare-fun m!1407277 () Bool)

(assert (=> b!1524178 m!1407277))

(assert (=> b!1524178 m!1407277))

(assert (=> b!1524178 m!1407275))

(declare-fun m!1407279 () Bool)

(assert (=> b!1524178 m!1407279))

(declare-fun m!1407281 () Bool)

(assert (=> b!1524179 m!1407281))

(assert (=> b!1524180 m!1407265))

(assert (=> b!1524180 m!1407265))

(declare-fun m!1407283 () Bool)

(assert (=> b!1524180 m!1407283))

(declare-fun m!1407285 () Bool)

(assert (=> b!1524184 m!1407285))

(assert (=> b!1524186 m!1407265))

(assert (=> b!1524186 m!1407265))

(declare-fun m!1407287 () Bool)

(assert (=> b!1524186 m!1407287))

(declare-fun m!1407289 () Bool)

(assert (=> b!1524181 m!1407289))

(assert (=> b!1524181 m!1407289))

(declare-fun m!1407291 () Bool)

(assert (=> b!1524181 m!1407291))

(assert (=> b!1524182 m!1407265))

(assert (=> b!1524182 m!1407265))

(declare-fun m!1407293 () Bool)

(assert (=> b!1524182 m!1407293))

(assert (=> b!1524182 m!1407293))

(assert (=> b!1524182 m!1407265))

(declare-fun m!1407295 () Bool)

(assert (=> b!1524182 m!1407295))

(push 1)

(assert (not b!1524178))

