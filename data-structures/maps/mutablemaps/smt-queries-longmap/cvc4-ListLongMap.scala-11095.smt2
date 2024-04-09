; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129628 () Bool)

(assert start!129628)

(declare-fun res!1040599 () Bool)

(declare-fun e!848462 () Bool)

(assert (=> start!129628 (=> (not res!1040599) (not e!848462))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129628 (= res!1040599 (validMask!0 mask!2512))))

(assert (=> start!129628 e!848462))

(assert (=> start!129628 true))

(declare-datatypes ((array!101230 0))(
  ( (array!101231 (arr!48843 (Array (_ BitVec 32) (_ BitVec 64))) (size!49394 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101230)

(declare-fun array_inv!37788 (array!101230) Bool)

(assert (=> start!129628 (array_inv!37788 a!2804)))

(declare-fun b!1521237 () Bool)

(declare-fun res!1040601 () Bool)

(assert (=> b!1521237 (=> (not res!1040601) (not e!848462))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521237 (= res!1040601 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49394 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49394 a!2804))))))

(declare-fun b!1521238 () Bool)

(declare-fun res!1040600 () Bool)

(assert (=> b!1521238 (=> (not res!1040600) (not e!848462))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1521238 (= res!1040600 (and (= (size!49394 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49394 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49394 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521239 () Bool)

(declare-fun res!1040597 () Bool)

(assert (=> b!1521239 (=> (not res!1040597) (not e!848462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101230 (_ BitVec 32)) Bool)

(assert (=> b!1521239 (= res!1040597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521240 () Bool)

(declare-fun res!1040603 () Bool)

(assert (=> b!1521240 (=> (not res!1040603) (not e!848462))))

(declare-datatypes ((List!35506 0))(
  ( (Nil!35503) (Cons!35502 (h!36924 (_ BitVec 64)) (t!50207 List!35506)) )
))
(declare-fun arrayNoDuplicates!0 (array!101230 (_ BitVec 32) List!35506) Bool)

(assert (=> b!1521240 (= res!1040603 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35503))))

(declare-fun b!1521241 () Bool)

(declare-fun res!1040598 () Bool)

(assert (=> b!1521241 (=> (not res!1040598) (not e!848462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521241 (= res!1040598 (validKeyInArray!0 (select (arr!48843 a!2804) i!961)))))

(declare-fun b!1521242 () Bool)

(declare-fun res!1040602 () Bool)

(assert (=> b!1521242 (=> (not res!1040602) (not e!848462))))

(declare-datatypes ((SeekEntryResult!13029 0))(
  ( (MissingZero!13029 (index!54510 (_ BitVec 32))) (Found!13029 (index!54511 (_ BitVec 32))) (Intermediate!13029 (undefined!13841 Bool) (index!54512 (_ BitVec 32)) (x!136212 (_ BitVec 32))) (Undefined!13029) (MissingVacant!13029 (index!54513 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101230 (_ BitVec 32)) SeekEntryResult!13029)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521242 (= res!1040602 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48843 a!2804) j!70) mask!2512) (select (arr!48843 a!2804) j!70) a!2804 mask!2512) (Intermediate!13029 false resIndex!21 resX!21)))))

(declare-fun b!1521243 () Bool)

(declare-fun res!1040604 () Bool)

(assert (=> b!1521243 (=> (not res!1040604) (not e!848462))))

(assert (=> b!1521243 (= res!1040604 (validKeyInArray!0 (select (arr!48843 a!2804) j!70)))))

(declare-fun b!1521244 () Bool)

(assert (=> b!1521244 (= e!848462 false)))

(declare-fun lt!659263 () SeekEntryResult!13029)

(assert (=> b!1521244 (= lt!659263 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48843 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129628 res!1040599) b!1521238))

(assert (= (and b!1521238 res!1040600) b!1521241))

(assert (= (and b!1521241 res!1040598) b!1521243))

(assert (= (and b!1521243 res!1040604) b!1521239))

(assert (= (and b!1521239 res!1040597) b!1521240))

(assert (= (and b!1521240 res!1040603) b!1521237))

(assert (= (and b!1521237 res!1040601) b!1521242))

(assert (= (and b!1521242 res!1040602) b!1521244))

(declare-fun m!1404385 () Bool)

(assert (=> b!1521239 m!1404385))

(declare-fun m!1404387 () Bool)

(assert (=> b!1521241 m!1404387))

(assert (=> b!1521241 m!1404387))

(declare-fun m!1404389 () Bool)

(assert (=> b!1521241 m!1404389))

(declare-fun m!1404391 () Bool)

(assert (=> b!1521242 m!1404391))

(assert (=> b!1521242 m!1404391))

(declare-fun m!1404393 () Bool)

(assert (=> b!1521242 m!1404393))

(assert (=> b!1521242 m!1404393))

(assert (=> b!1521242 m!1404391))

(declare-fun m!1404395 () Bool)

(assert (=> b!1521242 m!1404395))

(assert (=> b!1521244 m!1404391))

(assert (=> b!1521244 m!1404391))

(declare-fun m!1404397 () Bool)

(assert (=> b!1521244 m!1404397))

(declare-fun m!1404399 () Bool)

(assert (=> start!129628 m!1404399))

(declare-fun m!1404401 () Bool)

(assert (=> start!129628 m!1404401))

(assert (=> b!1521243 m!1404391))

(assert (=> b!1521243 m!1404391))

(declare-fun m!1404403 () Bool)

(assert (=> b!1521243 m!1404403))

(declare-fun m!1404405 () Bool)

(assert (=> b!1521240 m!1404405))

(push 1)

(assert (not b!1521239))

(assert (not b!1521240))

(assert (not b!1521241))

(assert (not b!1521243))

(assert (not b!1521244))

(assert (not b!1521242))

(assert (not start!129628))

(check-sat)

