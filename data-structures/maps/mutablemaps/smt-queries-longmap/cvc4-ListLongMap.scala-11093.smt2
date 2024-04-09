; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129616 () Bool)

(assert start!129616)

(declare-fun b!1521093 () Bool)

(declare-fun res!1040458 () Bool)

(declare-fun e!848426 () Bool)

(assert (=> b!1521093 (=> (not res!1040458) (not e!848426))))

(declare-datatypes ((array!101218 0))(
  ( (array!101219 (arr!48837 (Array (_ BitVec 32) (_ BitVec 64))) (size!49388 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101218)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101218 (_ BitVec 32)) Bool)

(assert (=> b!1521093 (= res!1040458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1040459 () Bool)

(assert (=> start!129616 (=> (not res!1040459) (not e!848426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129616 (= res!1040459 (validMask!0 mask!2512))))

(assert (=> start!129616 e!848426))

(assert (=> start!129616 true))

(declare-fun array_inv!37782 (array!101218) Bool)

(assert (=> start!129616 (array_inv!37782 a!2804)))

(declare-fun b!1521094 () Bool)

(declare-fun res!1040453 () Bool)

(assert (=> b!1521094 (=> (not res!1040453) (not e!848426))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521094 (= res!1040453 (validKeyInArray!0 (select (arr!48837 a!2804) i!961)))))

(declare-fun b!1521095 () Bool)

(declare-fun res!1040457 () Bool)

(assert (=> b!1521095 (=> (not res!1040457) (not e!848426))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521095 (= res!1040457 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49388 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49388 a!2804))))))

(declare-fun b!1521096 () Bool)

(declare-fun res!1040454 () Bool)

(assert (=> b!1521096 (=> (not res!1040454) (not e!848426))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1521096 (= res!1040454 (and (= (size!49388 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49388 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49388 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521097 () Bool)

(assert (=> b!1521097 (= e!848426 false)))

(declare-datatypes ((SeekEntryResult!13023 0))(
  ( (MissingZero!13023 (index!54486 (_ BitVec 32))) (Found!13023 (index!54487 (_ BitVec 32))) (Intermediate!13023 (undefined!13835 Bool) (index!54488 (_ BitVec 32)) (x!136190 (_ BitVec 32))) (Undefined!13023) (MissingVacant!13023 (index!54489 (_ BitVec 32))) )
))
(declare-fun lt!659245 () SeekEntryResult!13023)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101218 (_ BitVec 32)) SeekEntryResult!13023)

(assert (=> b!1521097 (= lt!659245 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48837 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521098 () Bool)

(declare-fun res!1040460 () Bool)

(assert (=> b!1521098 (=> (not res!1040460) (not e!848426))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521098 (= res!1040460 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48837 a!2804) j!70) mask!2512) (select (arr!48837 a!2804) j!70) a!2804 mask!2512) (Intermediate!13023 false resIndex!21 resX!21)))))

(declare-fun b!1521099 () Bool)

(declare-fun res!1040456 () Bool)

(assert (=> b!1521099 (=> (not res!1040456) (not e!848426))))

(declare-datatypes ((List!35500 0))(
  ( (Nil!35497) (Cons!35496 (h!36918 (_ BitVec 64)) (t!50201 List!35500)) )
))
(declare-fun arrayNoDuplicates!0 (array!101218 (_ BitVec 32) List!35500) Bool)

(assert (=> b!1521099 (= res!1040456 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35497))))

(declare-fun b!1521100 () Bool)

(declare-fun res!1040455 () Bool)

(assert (=> b!1521100 (=> (not res!1040455) (not e!848426))))

(assert (=> b!1521100 (= res!1040455 (validKeyInArray!0 (select (arr!48837 a!2804) j!70)))))

(assert (= (and start!129616 res!1040459) b!1521096))

(assert (= (and b!1521096 res!1040454) b!1521094))

(assert (= (and b!1521094 res!1040453) b!1521100))

(assert (= (and b!1521100 res!1040455) b!1521093))

(assert (= (and b!1521093 res!1040458) b!1521099))

(assert (= (and b!1521099 res!1040456) b!1521095))

(assert (= (and b!1521095 res!1040457) b!1521098))

(assert (= (and b!1521098 res!1040460) b!1521097))

(declare-fun m!1404253 () Bool)

(assert (=> b!1521099 m!1404253))

(declare-fun m!1404255 () Bool)

(assert (=> b!1521094 m!1404255))

(assert (=> b!1521094 m!1404255))

(declare-fun m!1404257 () Bool)

(assert (=> b!1521094 m!1404257))

(declare-fun m!1404259 () Bool)

(assert (=> b!1521100 m!1404259))

(assert (=> b!1521100 m!1404259))

(declare-fun m!1404261 () Bool)

(assert (=> b!1521100 m!1404261))

(assert (=> b!1521097 m!1404259))

(assert (=> b!1521097 m!1404259))

(declare-fun m!1404263 () Bool)

(assert (=> b!1521097 m!1404263))

(declare-fun m!1404265 () Bool)

(assert (=> b!1521093 m!1404265))

(assert (=> b!1521098 m!1404259))

(assert (=> b!1521098 m!1404259))

(declare-fun m!1404267 () Bool)

(assert (=> b!1521098 m!1404267))

(assert (=> b!1521098 m!1404267))

(assert (=> b!1521098 m!1404259))

(declare-fun m!1404269 () Bool)

(assert (=> b!1521098 m!1404269))

(declare-fun m!1404271 () Bool)

(assert (=> start!129616 m!1404271))

(declare-fun m!1404273 () Bool)

(assert (=> start!129616 m!1404273))

(push 1)

(assert (not b!1521097))

(assert (not b!1521093))

(assert (not b!1521094))

(assert (not b!1521098))

(assert (not b!1521099))

(assert (not b!1521100))

(assert (not start!129616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

