; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129624 () Bool)

(assert start!129624)

(declare-fun b!1521189 () Bool)

(declare-fun res!1040551 () Bool)

(declare-fun e!848450 () Bool)

(assert (=> b!1521189 (=> (not res!1040551) (not e!848450))))

(declare-datatypes ((array!101226 0))(
  ( (array!101227 (arr!48841 (Array (_ BitVec 32) (_ BitVec 64))) (size!49392 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101226)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101226 (_ BitVec 32)) Bool)

(assert (=> b!1521189 (= res!1040551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521190 () Bool)

(assert (=> b!1521190 (= e!848450 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13027 0))(
  ( (MissingZero!13027 (index!54502 (_ BitVec 32))) (Found!13027 (index!54503 (_ BitVec 32))) (Intermediate!13027 (undefined!13839 Bool) (index!54504 (_ BitVec 32)) (x!136210 (_ BitVec 32))) (Undefined!13027) (MissingVacant!13027 (index!54505 (_ BitVec 32))) )
))
(declare-fun lt!659257 () SeekEntryResult!13027)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101226 (_ BitVec 32)) SeekEntryResult!13027)

(assert (=> b!1521190 (= lt!659257 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48841 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521191 () Bool)

(declare-fun res!1040550 () Bool)

(assert (=> b!1521191 (=> (not res!1040550) (not e!848450))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521191 (= res!1040550 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49392 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49392 a!2804))))))

(declare-fun b!1521192 () Bool)

(declare-fun res!1040552 () Bool)

(assert (=> b!1521192 (=> (not res!1040552) (not e!848450))))

(declare-datatypes ((List!35504 0))(
  ( (Nil!35501) (Cons!35500 (h!36922 (_ BitVec 64)) (t!50205 List!35504)) )
))
(declare-fun arrayNoDuplicates!0 (array!101226 (_ BitVec 32) List!35504) Bool)

(assert (=> b!1521192 (= res!1040552 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35501))))

(declare-fun b!1521193 () Bool)

(declare-fun res!1040555 () Bool)

(assert (=> b!1521193 (=> (not res!1040555) (not e!848450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521193 (= res!1040555 (validKeyInArray!0 (select (arr!48841 a!2804) j!70)))))

(declare-fun res!1040549 () Bool)

(assert (=> start!129624 (=> (not res!1040549) (not e!848450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129624 (= res!1040549 (validMask!0 mask!2512))))

(assert (=> start!129624 e!848450))

(assert (=> start!129624 true))

(declare-fun array_inv!37786 (array!101226) Bool)

(assert (=> start!129624 (array_inv!37786 a!2804)))

(declare-fun b!1521194 () Bool)

(declare-fun res!1040554 () Bool)

(assert (=> b!1521194 (=> (not res!1040554) (not e!848450))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521194 (= res!1040554 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48841 a!2804) j!70) mask!2512) (select (arr!48841 a!2804) j!70) a!2804 mask!2512) (Intermediate!13027 false resIndex!21 resX!21)))))

(declare-fun b!1521195 () Bool)

(declare-fun res!1040556 () Bool)

(assert (=> b!1521195 (=> (not res!1040556) (not e!848450))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1521195 (= res!1040556 (and (= (size!49392 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49392 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49392 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521196 () Bool)

(declare-fun res!1040553 () Bool)

(assert (=> b!1521196 (=> (not res!1040553) (not e!848450))))

(assert (=> b!1521196 (= res!1040553 (validKeyInArray!0 (select (arr!48841 a!2804) i!961)))))

(assert (= (and start!129624 res!1040549) b!1521195))

(assert (= (and b!1521195 res!1040556) b!1521196))

(assert (= (and b!1521196 res!1040553) b!1521193))

(assert (= (and b!1521193 res!1040555) b!1521189))

(assert (= (and b!1521189 res!1040551) b!1521192))

(assert (= (and b!1521192 res!1040552) b!1521191))

(assert (= (and b!1521191 res!1040550) b!1521194))

(assert (= (and b!1521194 res!1040554) b!1521190))

(declare-fun m!1404341 () Bool)

(assert (=> b!1521189 m!1404341))

(declare-fun m!1404343 () Bool)

(assert (=> start!129624 m!1404343))

(declare-fun m!1404345 () Bool)

(assert (=> start!129624 m!1404345))

(declare-fun m!1404347 () Bool)

(assert (=> b!1521190 m!1404347))

(assert (=> b!1521190 m!1404347))

(declare-fun m!1404349 () Bool)

(assert (=> b!1521190 m!1404349))

(assert (=> b!1521193 m!1404347))

(assert (=> b!1521193 m!1404347))

(declare-fun m!1404351 () Bool)

(assert (=> b!1521193 m!1404351))

(declare-fun m!1404353 () Bool)

(assert (=> b!1521192 m!1404353))

(declare-fun m!1404355 () Bool)

(assert (=> b!1521196 m!1404355))

(assert (=> b!1521196 m!1404355))

(declare-fun m!1404357 () Bool)

(assert (=> b!1521196 m!1404357))

(assert (=> b!1521194 m!1404347))

(assert (=> b!1521194 m!1404347))

(declare-fun m!1404359 () Bool)

(assert (=> b!1521194 m!1404359))

(assert (=> b!1521194 m!1404359))

(assert (=> b!1521194 m!1404347))

(declare-fun m!1404361 () Bool)

(assert (=> b!1521194 m!1404361))

(push 1)

(assert (not b!1521193))

(assert (not b!1521189))

(assert (not b!1521190))

(assert (not b!1521194))

(assert (not b!1521196))

(assert (not start!129624))

(assert (not b!1521192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

