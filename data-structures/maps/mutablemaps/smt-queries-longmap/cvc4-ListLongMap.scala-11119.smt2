; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129914 () Bool)

(assert start!129914)

(declare-fun b!1524276 () Bool)

(declare-fun e!849738 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101380 0))(
  ( (array!101381 (arr!48915 (Array (_ BitVec 32) (_ BitVec 64))) (size!49466 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101380)

(declare-datatypes ((SeekEntryResult!13101 0))(
  ( (MissingZero!13101 (index!54798 (_ BitVec 32))) (Found!13101 (index!54799 (_ BitVec 32))) (Intermediate!13101 (undefined!13913 Bool) (index!54800 (_ BitVec 32)) (x!136492 (_ BitVec 32))) (Undefined!13101) (MissingVacant!13101 (index!54801 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101380 (_ BitVec 32)) SeekEntryResult!13101)

(assert (=> b!1524276 (= e!849738 (= (seekEntry!0 (select (arr!48915 a!2804) j!70) a!2804 mask!2512) (Found!13101 j!70)))))

(declare-fun b!1524277 () Bool)

(declare-fun res!1043074 () Bool)

(declare-fun e!849737 () Bool)

(assert (=> b!1524277 (=> (not res!1043074) (not e!849737))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1524277 (= res!1043074 (and (= (size!49466 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49466 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49466 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524278 () Bool)

(declare-fun res!1043070 () Bool)

(assert (=> b!1524278 (=> (not res!1043070) (not e!849737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101380 (_ BitVec 32)) Bool)

(assert (=> b!1524278 (= res!1043070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524279 () Bool)

(declare-fun res!1043068 () Bool)

(assert (=> b!1524279 (=> (not res!1043068) (not e!849737))))

(declare-datatypes ((List!35578 0))(
  ( (Nil!35575) (Cons!35574 (h!37002 (_ BitVec 64)) (t!50279 List!35578)) )
))
(declare-fun arrayNoDuplicates!0 (array!101380 (_ BitVec 32) List!35578) Bool)

(assert (=> b!1524279 (= res!1043068 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35575))))

(declare-fun b!1524280 () Bool)

(declare-fun e!849739 () Bool)

(assert (=> b!1524280 (= e!849737 e!849739)))

(declare-fun res!1043069 () Bool)

(assert (=> b!1524280 (=> (not res!1043069) (not e!849739))))

(declare-fun lt!660228 () SeekEntryResult!13101)

(declare-fun lt!660227 () SeekEntryResult!13101)

(assert (=> b!1524280 (= res!1043069 (= lt!660228 lt!660227))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524280 (= lt!660227 (Intermediate!13101 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101380 (_ BitVec 32)) SeekEntryResult!13101)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524280 (= lt!660228 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48915 a!2804) j!70) mask!2512) (select (arr!48915 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524281 () Bool)

(assert (=> b!1524281 (= e!849739 (not true))))

(assert (=> b!1524281 e!849738))

(declare-fun res!1043071 () Bool)

(assert (=> b!1524281 (=> (not res!1043071) (not e!849738))))

(assert (=> b!1524281 (= res!1043071 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50942 0))(
  ( (Unit!50943) )
))
(declare-fun lt!660229 () Unit!50942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101380 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50942)

(assert (=> b!1524281 (= lt!660229 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524282 () Bool)

(declare-fun res!1043067 () Bool)

(assert (=> b!1524282 (=> (not res!1043067) (not e!849737))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1524282 (= res!1043067 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49466 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49466 a!2804))))))

(declare-fun b!1524283 () Bool)

(declare-fun res!1043072 () Bool)

(assert (=> b!1524283 (=> (not res!1043072) (not e!849739))))

(assert (=> b!1524283 (= res!1043072 (= lt!660228 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48915 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48915 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101381 (store (arr!48915 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49466 a!2804)) mask!2512)))))

(declare-fun b!1524285 () Bool)

(declare-fun res!1043076 () Bool)

(assert (=> b!1524285 (=> (not res!1043076) (not e!849739))))

(assert (=> b!1524285 (= res!1043076 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48915 a!2804) j!70) a!2804 mask!2512) lt!660227))))

(declare-fun b!1524286 () Bool)

(declare-fun res!1043066 () Bool)

(assert (=> b!1524286 (=> (not res!1043066) (not e!849737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524286 (= res!1043066 (validKeyInArray!0 (select (arr!48915 a!2804) i!961)))))

(declare-fun res!1043073 () Bool)

(assert (=> start!129914 (=> (not res!1043073) (not e!849737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129914 (= res!1043073 (validMask!0 mask!2512))))

(assert (=> start!129914 e!849737))

(assert (=> start!129914 true))

(declare-fun array_inv!37860 (array!101380) Bool)

(assert (=> start!129914 (array_inv!37860 a!2804)))

(declare-fun b!1524284 () Bool)

(declare-fun res!1043075 () Bool)

(assert (=> b!1524284 (=> (not res!1043075) (not e!849737))))

(assert (=> b!1524284 (= res!1043075 (validKeyInArray!0 (select (arr!48915 a!2804) j!70)))))

(assert (= (and start!129914 res!1043073) b!1524277))

(assert (= (and b!1524277 res!1043074) b!1524286))

(assert (= (and b!1524286 res!1043066) b!1524284))

(assert (= (and b!1524284 res!1043075) b!1524278))

(assert (= (and b!1524278 res!1043070) b!1524279))

(assert (= (and b!1524279 res!1043068) b!1524282))

(assert (= (and b!1524282 res!1043067) b!1524280))

(assert (= (and b!1524280 res!1043069) b!1524285))

(assert (= (and b!1524285 res!1043076) b!1524283))

(assert (= (and b!1524283 res!1043072) b!1524281))

(assert (= (and b!1524281 res!1043071) b!1524276))

(declare-fun m!1407369 () Bool)

(assert (=> b!1524284 m!1407369))

(assert (=> b!1524284 m!1407369))

(declare-fun m!1407371 () Bool)

(assert (=> b!1524284 m!1407371))

(declare-fun m!1407373 () Bool)

(assert (=> b!1524283 m!1407373))

(declare-fun m!1407375 () Bool)

(assert (=> b!1524283 m!1407375))

(assert (=> b!1524283 m!1407375))

(declare-fun m!1407377 () Bool)

(assert (=> b!1524283 m!1407377))

(assert (=> b!1524283 m!1407377))

(assert (=> b!1524283 m!1407375))

(declare-fun m!1407379 () Bool)

(assert (=> b!1524283 m!1407379))

(assert (=> b!1524280 m!1407369))

(assert (=> b!1524280 m!1407369))

(declare-fun m!1407381 () Bool)

(assert (=> b!1524280 m!1407381))

(assert (=> b!1524280 m!1407381))

(assert (=> b!1524280 m!1407369))

(declare-fun m!1407383 () Bool)

(assert (=> b!1524280 m!1407383))

(assert (=> b!1524285 m!1407369))

(assert (=> b!1524285 m!1407369))

(declare-fun m!1407385 () Bool)

(assert (=> b!1524285 m!1407385))

(declare-fun m!1407387 () Bool)

(assert (=> b!1524279 m!1407387))

(assert (=> b!1524276 m!1407369))

(assert (=> b!1524276 m!1407369))

(declare-fun m!1407389 () Bool)

(assert (=> b!1524276 m!1407389))

(declare-fun m!1407391 () Bool)

(assert (=> start!129914 m!1407391))

(declare-fun m!1407393 () Bool)

(assert (=> start!129914 m!1407393))

(declare-fun m!1407395 () Bool)

(assert (=> b!1524281 m!1407395))

(declare-fun m!1407397 () Bool)

(assert (=> b!1524281 m!1407397))

(declare-fun m!1407399 () Bool)

(assert (=> b!1524278 m!1407399))

(declare-fun m!1407401 () Bool)

(assert (=> b!1524286 m!1407401))

(assert (=> b!1524286 m!1407401))

(declare-fun m!1407403 () Bool)

(assert (=> b!1524286 m!1407403))

(push 1)

(assert (not b!1524279))

(assert (not start!129914))

