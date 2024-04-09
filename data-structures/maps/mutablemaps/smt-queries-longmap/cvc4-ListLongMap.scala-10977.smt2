; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128618 () Bool)

(assert start!128618)

(declare-fun b!1507272 () Bool)

(declare-fun res!1027565 () Bool)

(declare-fun e!842237 () Bool)

(assert (=> b!1507272 (=> (not res!1027565) (not e!842237))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100504 0))(
  ( (array!100505 (arr!48489 (Array (_ BitVec 32) (_ BitVec 64))) (size!49040 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100504)

(assert (=> b!1507272 (= res!1027565 (and (= (size!49040 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49040 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49040 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507273 () Bool)

(declare-fun res!1027563 () Bool)

(assert (=> b!1507273 (=> (not res!1027563) (not e!842237))))

(declare-datatypes ((List!35152 0))(
  ( (Nil!35149) (Cons!35148 (h!36552 (_ BitVec 64)) (t!49853 List!35152)) )
))
(declare-fun arrayNoDuplicates!0 (array!100504 (_ BitVec 32) List!35152) Bool)

(assert (=> b!1507273 (= res!1027563 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35149))))

(declare-fun b!1507274 () Bool)

(declare-fun res!1027562 () Bool)

(assert (=> b!1507274 (=> (not res!1027562) (not e!842237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100504 (_ BitVec 32)) Bool)

(assert (=> b!1507274 (= res!1027562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507275 () Bool)

(declare-fun res!1027564 () Bool)

(assert (=> b!1507275 (=> (not res!1027564) (not e!842237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507275 (= res!1027564 (validKeyInArray!0 (select (arr!48489 a!2804) j!70)))))

(declare-fun b!1507276 () Bool)

(declare-fun res!1027566 () Bool)

(assert (=> b!1507276 (=> (not res!1027566) (not e!842237))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507276 (= res!1027566 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49040 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49040 a!2804))))))

(declare-fun b!1507277 () Bool)

(assert (=> b!1507277 (= e!842237 false)))

(declare-datatypes ((SeekEntryResult!12681 0))(
  ( (MissingZero!12681 (index!53118 (_ BitVec 32))) (Found!12681 (index!53119 (_ BitVec 32))) (Intermediate!12681 (undefined!13493 Bool) (index!53120 (_ BitVec 32)) (x!134882 (_ BitVec 32))) (Undefined!12681) (MissingVacant!12681 (index!53121 (_ BitVec 32))) )
))
(declare-fun lt!654337 () SeekEntryResult!12681)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100504 (_ BitVec 32)) SeekEntryResult!12681)

(assert (=> b!1507277 (= lt!654337 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48489 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507278 () Bool)

(declare-fun res!1027569 () Bool)

(assert (=> b!1507278 (=> (not res!1027569) (not e!842237))))

(assert (=> b!1507278 (= res!1027569 (validKeyInArray!0 (select (arr!48489 a!2804) i!961)))))

(declare-fun b!1507279 () Bool)

(declare-fun res!1027567 () Bool)

(assert (=> b!1507279 (=> (not res!1027567) (not e!842237))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507279 (= res!1027567 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48489 a!2804) j!70) mask!2512) (select (arr!48489 a!2804) j!70) a!2804 mask!2512) (Intermediate!12681 false resIndex!21 resX!21)))))

(declare-fun res!1027568 () Bool)

(assert (=> start!128618 (=> (not res!1027568) (not e!842237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128618 (= res!1027568 (validMask!0 mask!2512))))

(assert (=> start!128618 e!842237))

(assert (=> start!128618 true))

(declare-fun array_inv!37434 (array!100504) Bool)

(assert (=> start!128618 (array_inv!37434 a!2804)))

(assert (= (and start!128618 res!1027568) b!1507272))

(assert (= (and b!1507272 res!1027565) b!1507278))

(assert (= (and b!1507278 res!1027569) b!1507275))

(assert (= (and b!1507275 res!1027564) b!1507274))

(assert (= (and b!1507274 res!1027562) b!1507273))

(assert (= (and b!1507273 res!1027563) b!1507276))

(assert (= (and b!1507276 res!1027566) b!1507279))

(assert (= (and b!1507279 res!1027567) b!1507277))

(declare-fun m!1390097 () Bool)

(assert (=> b!1507275 m!1390097))

(assert (=> b!1507275 m!1390097))

(declare-fun m!1390099 () Bool)

(assert (=> b!1507275 m!1390099))

(declare-fun m!1390101 () Bool)

(assert (=> start!128618 m!1390101))

(declare-fun m!1390103 () Bool)

(assert (=> start!128618 m!1390103))

(declare-fun m!1390105 () Bool)

(assert (=> b!1507278 m!1390105))

(assert (=> b!1507278 m!1390105))

(declare-fun m!1390107 () Bool)

(assert (=> b!1507278 m!1390107))

(declare-fun m!1390109 () Bool)

(assert (=> b!1507273 m!1390109))

(assert (=> b!1507277 m!1390097))

(assert (=> b!1507277 m!1390097))

(declare-fun m!1390111 () Bool)

(assert (=> b!1507277 m!1390111))

(assert (=> b!1507279 m!1390097))

(assert (=> b!1507279 m!1390097))

(declare-fun m!1390113 () Bool)

(assert (=> b!1507279 m!1390113))

(assert (=> b!1507279 m!1390113))

(assert (=> b!1507279 m!1390097))

(declare-fun m!1390115 () Bool)

(assert (=> b!1507279 m!1390115))

(declare-fun m!1390117 () Bool)

(assert (=> b!1507274 m!1390117))

(push 1)

(assert (not b!1507275))

(assert (not b!1507278))

(assert (not start!128618))

(assert (not b!1507273))

(assert (not b!1507274))

(assert (not b!1507277))

(assert (not b!1507279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

