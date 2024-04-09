; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128630 () Bool)

(assert start!128630)

(declare-fun b!1507425 () Bool)

(declare-fun res!1027718 () Bool)

(declare-fun e!842282 () Bool)

(assert (=> b!1507425 (=> (not res!1027718) (not e!842282))))

(declare-datatypes ((array!100516 0))(
  ( (array!100517 (arr!48495 (Array (_ BitVec 32) (_ BitVec 64))) (size!49046 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100516)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507425 (= res!1027718 (validKeyInArray!0 (select (arr!48495 a!2804) i!961)))))

(declare-fun res!1027719 () Bool)

(assert (=> start!128630 (=> (not res!1027719) (not e!842282))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128630 (= res!1027719 (validMask!0 mask!2512))))

(assert (=> start!128630 e!842282))

(assert (=> start!128630 true))

(declare-fun array_inv!37440 (array!100516) Bool)

(assert (=> start!128630 (array_inv!37440 a!2804)))

(declare-fun b!1507426 () Bool)

(assert (=> b!1507426 (= e!842282 false)))

(declare-datatypes ((SeekEntryResult!12687 0))(
  ( (MissingZero!12687 (index!53142 (_ BitVec 32))) (Found!12687 (index!53143 (_ BitVec 32))) (Intermediate!12687 (undefined!13499 Bool) (index!53144 (_ BitVec 32)) (x!134904 (_ BitVec 32))) (Undefined!12687) (MissingVacant!12687 (index!53145 (_ BitVec 32))) )
))
(declare-fun lt!654355 () SeekEntryResult!12687)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100516 (_ BitVec 32)) SeekEntryResult!12687)

(assert (=> b!1507426 (= lt!654355 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48495 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507427 () Bool)

(declare-fun res!1027717 () Bool)

(assert (=> b!1507427 (=> (not res!1027717) (not e!842282))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507427 (= res!1027717 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49046 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49046 a!2804))))))

(declare-fun b!1507428 () Bool)

(declare-fun res!1027715 () Bool)

(assert (=> b!1507428 (=> (not res!1027715) (not e!842282))))

(assert (=> b!1507428 (= res!1027715 (and (= (size!49046 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49046 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49046 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507429 () Bool)

(declare-fun res!1027716 () Bool)

(assert (=> b!1507429 (=> (not res!1027716) (not e!842282))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507429 (= res!1027716 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48495 a!2804) j!70) mask!2512) (select (arr!48495 a!2804) j!70) a!2804 mask!2512) (Intermediate!12687 false resIndex!21 resX!21)))))

(declare-fun b!1507430 () Bool)

(declare-fun res!1027721 () Bool)

(assert (=> b!1507430 (=> (not res!1027721) (not e!842282))))

(declare-datatypes ((List!35158 0))(
  ( (Nil!35155) (Cons!35154 (h!36558 (_ BitVec 64)) (t!49859 List!35158)) )
))
(declare-fun arrayNoDuplicates!0 (array!100516 (_ BitVec 32) List!35158) Bool)

(assert (=> b!1507430 (= res!1027721 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35155))))

(declare-fun b!1507431 () Bool)

(declare-fun res!1027720 () Bool)

(assert (=> b!1507431 (=> (not res!1027720) (not e!842282))))

(assert (=> b!1507431 (= res!1027720 (validKeyInArray!0 (select (arr!48495 a!2804) j!70)))))

(declare-fun b!1507432 () Bool)

(declare-fun res!1027722 () Bool)

(assert (=> b!1507432 (=> (not res!1027722) (not e!842282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100516 (_ BitVec 32)) Bool)

(assert (=> b!1507432 (= res!1027722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128630 res!1027719) b!1507428))

(assert (= (and b!1507428 res!1027715) b!1507425))

(assert (= (and b!1507425 res!1027718) b!1507431))

(assert (= (and b!1507431 res!1027720) b!1507432))

(assert (= (and b!1507432 res!1027722) b!1507430))

(assert (= (and b!1507430 res!1027721) b!1507427))

(assert (= (and b!1507427 res!1027717) b!1507429))

(assert (= (and b!1507429 res!1027716) b!1507426))

(declare-fun m!1390229 () Bool)

(assert (=> b!1507425 m!1390229))

(assert (=> b!1507425 m!1390229))

(declare-fun m!1390231 () Bool)

(assert (=> b!1507425 m!1390231))

(declare-fun m!1390233 () Bool)

(assert (=> b!1507426 m!1390233))

(assert (=> b!1507426 m!1390233))

(declare-fun m!1390235 () Bool)

(assert (=> b!1507426 m!1390235))

(declare-fun m!1390237 () Bool)

(assert (=> start!128630 m!1390237))

(declare-fun m!1390239 () Bool)

(assert (=> start!128630 m!1390239))

(assert (=> b!1507431 m!1390233))

(assert (=> b!1507431 m!1390233))

(declare-fun m!1390241 () Bool)

(assert (=> b!1507431 m!1390241))

(assert (=> b!1507429 m!1390233))

(assert (=> b!1507429 m!1390233))

(declare-fun m!1390243 () Bool)

(assert (=> b!1507429 m!1390243))

(assert (=> b!1507429 m!1390243))

(assert (=> b!1507429 m!1390233))

(declare-fun m!1390245 () Bool)

(assert (=> b!1507429 m!1390245))

(declare-fun m!1390247 () Bool)

(assert (=> b!1507432 m!1390247))

(declare-fun m!1390249 () Bool)

(assert (=> b!1507430 m!1390249))

(push 1)

(assert (not b!1507426))

(assert (not b!1507432))

(assert (not b!1507431))

(assert (not b!1507430))

(assert (not b!1507429))

(assert (not b!1507425))

(assert (not start!128630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

