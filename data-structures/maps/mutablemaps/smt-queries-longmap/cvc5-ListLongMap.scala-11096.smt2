; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129630 () Bool)

(assert start!129630)

(declare-fun res!1040622 () Bool)

(declare-fun e!848467 () Bool)

(assert (=> start!129630 (=> (not res!1040622) (not e!848467))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129630 (= res!1040622 (validMask!0 mask!2512))))

(assert (=> start!129630 e!848467))

(assert (=> start!129630 true))

(declare-datatypes ((array!101232 0))(
  ( (array!101233 (arr!48844 (Array (_ BitVec 32) (_ BitVec 64))) (size!49395 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101232)

(declare-fun array_inv!37789 (array!101232) Bool)

(assert (=> start!129630 (array_inv!37789 a!2804)))

(declare-fun b!1521261 () Bool)

(declare-fun res!1040623 () Bool)

(assert (=> b!1521261 (=> (not res!1040623) (not e!848467))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1521261 (= res!1040623 (and (= (size!49395 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49395 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49395 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521262 () Bool)

(assert (=> b!1521262 (= e!848467 false)))

(declare-datatypes ((SeekEntryResult!13030 0))(
  ( (MissingZero!13030 (index!54514 (_ BitVec 32))) (Found!13030 (index!54515 (_ BitVec 32))) (Intermediate!13030 (undefined!13842 Bool) (index!54516 (_ BitVec 32)) (x!136221 (_ BitVec 32))) (Undefined!13030) (MissingVacant!13030 (index!54517 (_ BitVec 32))) )
))
(declare-fun lt!659266 () SeekEntryResult!13030)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101232 (_ BitVec 32)) SeekEntryResult!13030)

(assert (=> b!1521262 (= lt!659266 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48844 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521263 () Bool)

(declare-fun res!1040626 () Bool)

(assert (=> b!1521263 (=> (not res!1040626) (not e!848467))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521263 (= res!1040626 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49395 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49395 a!2804))))))

(declare-fun b!1521264 () Bool)

(declare-fun res!1040621 () Bool)

(assert (=> b!1521264 (=> (not res!1040621) (not e!848467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101232 (_ BitVec 32)) Bool)

(assert (=> b!1521264 (= res!1040621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521265 () Bool)

(declare-fun res!1040627 () Bool)

(assert (=> b!1521265 (=> (not res!1040627) (not e!848467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521265 (= res!1040627 (validKeyInArray!0 (select (arr!48844 a!2804) i!961)))))

(declare-fun b!1521266 () Bool)

(declare-fun res!1040624 () Bool)

(assert (=> b!1521266 (=> (not res!1040624) (not e!848467))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521266 (= res!1040624 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48844 a!2804) j!70) mask!2512) (select (arr!48844 a!2804) j!70) a!2804 mask!2512) (Intermediate!13030 false resIndex!21 resX!21)))))

(declare-fun b!1521267 () Bool)

(declare-fun res!1040628 () Bool)

(assert (=> b!1521267 (=> (not res!1040628) (not e!848467))))

(declare-datatypes ((List!35507 0))(
  ( (Nil!35504) (Cons!35503 (h!36925 (_ BitVec 64)) (t!50208 List!35507)) )
))
(declare-fun arrayNoDuplicates!0 (array!101232 (_ BitVec 32) List!35507) Bool)

(assert (=> b!1521267 (= res!1040628 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35504))))

(declare-fun b!1521268 () Bool)

(declare-fun res!1040625 () Bool)

(assert (=> b!1521268 (=> (not res!1040625) (not e!848467))))

(assert (=> b!1521268 (= res!1040625 (validKeyInArray!0 (select (arr!48844 a!2804) j!70)))))

(assert (= (and start!129630 res!1040622) b!1521261))

(assert (= (and b!1521261 res!1040623) b!1521265))

(assert (= (and b!1521265 res!1040627) b!1521268))

(assert (= (and b!1521268 res!1040625) b!1521264))

(assert (= (and b!1521264 res!1040621) b!1521267))

(assert (= (and b!1521267 res!1040628) b!1521263))

(assert (= (and b!1521263 res!1040626) b!1521266))

(assert (= (and b!1521266 res!1040624) b!1521262))

(declare-fun m!1404407 () Bool)

(assert (=> b!1521265 m!1404407))

(assert (=> b!1521265 m!1404407))

(declare-fun m!1404409 () Bool)

(assert (=> b!1521265 m!1404409))

(declare-fun m!1404411 () Bool)

(assert (=> b!1521262 m!1404411))

(assert (=> b!1521262 m!1404411))

(declare-fun m!1404413 () Bool)

(assert (=> b!1521262 m!1404413))

(declare-fun m!1404415 () Bool)

(assert (=> b!1521264 m!1404415))

(declare-fun m!1404417 () Bool)

(assert (=> start!129630 m!1404417))

(declare-fun m!1404419 () Bool)

(assert (=> start!129630 m!1404419))

(assert (=> b!1521266 m!1404411))

(assert (=> b!1521266 m!1404411))

(declare-fun m!1404421 () Bool)

(assert (=> b!1521266 m!1404421))

(assert (=> b!1521266 m!1404421))

(assert (=> b!1521266 m!1404411))

(declare-fun m!1404423 () Bool)

(assert (=> b!1521266 m!1404423))

(assert (=> b!1521268 m!1404411))

(assert (=> b!1521268 m!1404411))

(declare-fun m!1404425 () Bool)

(assert (=> b!1521268 m!1404425))

(declare-fun m!1404427 () Bool)

(assert (=> b!1521267 m!1404427))

(push 1)

(assert (not b!1521262))

(assert (not b!1521266))

(assert (not b!1521267))

(assert (not b!1521268))

(assert (not start!129630))

(assert (not b!1521265))

(assert (not b!1521264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

