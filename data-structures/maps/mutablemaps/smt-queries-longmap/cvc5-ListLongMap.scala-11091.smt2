; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129600 () Bool)

(assert start!129600)

(declare-fun b!1520908 () Bool)

(declare-fun res!1040269 () Bool)

(declare-fun e!848378 () Bool)

(assert (=> b!1520908 (=> (not res!1040269) (not e!848378))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101202 0))(
  ( (array!101203 (arr!48829 (Array (_ BitVec 32) (_ BitVec 64))) (size!49380 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101202)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1520908 (= res!1040269 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49380 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49380 a!2804))))))

(declare-fun b!1520909 () Bool)

(declare-fun res!1040270 () Bool)

(assert (=> b!1520909 (=> (not res!1040270) (not e!848378))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101202 (_ BitVec 32)) Bool)

(assert (=> b!1520909 (= res!1040270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1040272 () Bool)

(assert (=> start!129600 (=> (not res!1040272) (not e!848378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129600 (= res!1040272 (validMask!0 mask!2512))))

(assert (=> start!129600 e!848378))

(assert (=> start!129600 true))

(declare-fun array_inv!37774 (array!101202) Bool)

(assert (=> start!129600 (array_inv!37774 a!2804)))

(declare-fun b!1520910 () Bool)

(declare-fun res!1040268 () Bool)

(assert (=> b!1520910 (=> (not res!1040268) (not e!848378))))

(declare-datatypes ((List!35492 0))(
  ( (Nil!35489) (Cons!35488 (h!36910 (_ BitVec 64)) (t!50193 List!35492)) )
))
(declare-fun arrayNoDuplicates!0 (array!101202 (_ BitVec 32) List!35492) Bool)

(assert (=> b!1520910 (= res!1040268 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35489))))

(declare-fun b!1520911 () Bool)

(assert (=> b!1520911 (= e!848378 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13015 0))(
  ( (MissingZero!13015 (index!54454 (_ BitVec 32))) (Found!13015 (index!54455 (_ BitVec 32))) (Intermediate!13015 (undefined!13827 Bool) (index!54456 (_ BitVec 32)) (x!136166 (_ BitVec 32))) (Undefined!13015) (MissingVacant!13015 (index!54457 (_ BitVec 32))) )
))
(declare-fun lt!659221 () SeekEntryResult!13015)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101202 (_ BitVec 32)) SeekEntryResult!13015)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520911 (= lt!659221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48829 a!2804) j!70) mask!2512) (select (arr!48829 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520912 () Bool)

(declare-fun res!1040273 () Bool)

(assert (=> b!1520912 (=> (not res!1040273) (not e!848378))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520912 (= res!1040273 (validKeyInArray!0 (select (arr!48829 a!2804) i!961)))))

(declare-fun b!1520913 () Bool)

(declare-fun res!1040274 () Bool)

(assert (=> b!1520913 (=> (not res!1040274) (not e!848378))))

(assert (=> b!1520913 (= res!1040274 (validKeyInArray!0 (select (arr!48829 a!2804) j!70)))))

(declare-fun b!1520914 () Bool)

(declare-fun res!1040271 () Bool)

(assert (=> b!1520914 (=> (not res!1040271) (not e!848378))))

(assert (=> b!1520914 (= res!1040271 (and (= (size!49380 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49380 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49380 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129600 res!1040272) b!1520914))

(assert (= (and b!1520914 res!1040271) b!1520912))

(assert (= (and b!1520912 res!1040273) b!1520913))

(assert (= (and b!1520913 res!1040274) b!1520909))

(assert (= (and b!1520909 res!1040270) b!1520910))

(assert (= (and b!1520910 res!1040268) b!1520908))

(assert (= (and b!1520908 res!1040269) b!1520911))

(declare-fun m!1404083 () Bool)

(assert (=> b!1520910 m!1404083))

(declare-fun m!1404085 () Bool)

(assert (=> start!129600 m!1404085))

(declare-fun m!1404087 () Bool)

(assert (=> start!129600 m!1404087))

(declare-fun m!1404089 () Bool)

(assert (=> b!1520913 m!1404089))

(assert (=> b!1520913 m!1404089))

(declare-fun m!1404091 () Bool)

(assert (=> b!1520913 m!1404091))

(assert (=> b!1520911 m!1404089))

(assert (=> b!1520911 m!1404089))

(declare-fun m!1404093 () Bool)

(assert (=> b!1520911 m!1404093))

(assert (=> b!1520911 m!1404093))

(assert (=> b!1520911 m!1404089))

(declare-fun m!1404095 () Bool)

(assert (=> b!1520911 m!1404095))

(declare-fun m!1404097 () Bool)

(assert (=> b!1520909 m!1404097))

(declare-fun m!1404099 () Bool)

(assert (=> b!1520912 m!1404099))

(assert (=> b!1520912 m!1404099))

(declare-fun m!1404101 () Bool)

(assert (=> b!1520912 m!1404101))

(push 1)

(assert (not b!1520910))

(assert (not b!1520911))

(assert (not b!1520909))

(assert (not start!129600))

(assert (not b!1520912))

(assert (not b!1520913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

