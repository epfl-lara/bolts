; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129634 () Bool)

(assert start!129634)

(declare-fun b!1521309 () Bool)

(declare-fun res!1040670 () Bool)

(declare-fun e!848479 () Bool)

(assert (=> b!1521309 (=> (not res!1040670) (not e!848479))))

(declare-datatypes ((array!101236 0))(
  ( (array!101237 (arr!48846 (Array (_ BitVec 32) (_ BitVec 64))) (size!49397 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101236)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521309 (= res!1040670 (validKeyInArray!0 (select (arr!48846 a!2804) j!70)))))

(declare-fun b!1521310 () Bool)

(declare-fun res!1040671 () Bool)

(assert (=> b!1521310 (=> (not res!1040671) (not e!848479))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1521310 (= res!1040671 (and (= (size!49397 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49397 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49397 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521311 () Bool)

(declare-fun res!1040674 () Bool)

(assert (=> b!1521311 (=> (not res!1040674) (not e!848479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101236 (_ BitVec 32)) Bool)

(assert (=> b!1521311 (= res!1040674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521312 () Bool)

(declare-fun res!1040676 () Bool)

(assert (=> b!1521312 (=> (not res!1040676) (not e!848479))))

(declare-datatypes ((List!35509 0))(
  ( (Nil!35506) (Cons!35505 (h!36927 (_ BitVec 64)) (t!50210 List!35509)) )
))
(declare-fun arrayNoDuplicates!0 (array!101236 (_ BitVec 32) List!35509) Bool)

(assert (=> b!1521312 (= res!1040676 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35506))))

(declare-fun b!1521313 () Bool)

(assert (=> b!1521313 (= e!848479 false)))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13032 0))(
  ( (MissingZero!13032 (index!54522 (_ BitVec 32))) (Found!13032 (index!54523 (_ BitVec 32))) (Intermediate!13032 (undefined!13844 Bool) (index!54524 (_ BitVec 32)) (x!136223 (_ BitVec 32))) (Undefined!13032) (MissingVacant!13032 (index!54525 (_ BitVec 32))) )
))
(declare-fun lt!659272 () SeekEntryResult!13032)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101236 (_ BitVec 32)) SeekEntryResult!13032)

(assert (=> b!1521313 (= lt!659272 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48846 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1040675 () Bool)

(assert (=> start!129634 (=> (not res!1040675) (not e!848479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129634 (= res!1040675 (validMask!0 mask!2512))))

(assert (=> start!129634 e!848479))

(assert (=> start!129634 true))

(declare-fun array_inv!37791 (array!101236) Bool)

(assert (=> start!129634 (array_inv!37791 a!2804)))

(declare-fun b!1521314 () Bool)

(declare-fun res!1040669 () Bool)

(assert (=> b!1521314 (=> (not res!1040669) (not e!848479))))

(assert (=> b!1521314 (= res!1040669 (validKeyInArray!0 (select (arr!48846 a!2804) i!961)))))

(declare-fun b!1521315 () Bool)

(declare-fun res!1040673 () Bool)

(assert (=> b!1521315 (=> (not res!1040673) (not e!848479))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521315 (= res!1040673 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49397 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49397 a!2804))))))

(declare-fun b!1521316 () Bool)

(declare-fun res!1040672 () Bool)

(assert (=> b!1521316 (=> (not res!1040672) (not e!848479))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521316 (= res!1040672 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48846 a!2804) j!70) mask!2512) (select (arr!48846 a!2804) j!70) a!2804 mask!2512) (Intermediate!13032 false resIndex!21 resX!21)))))

(assert (= (and start!129634 res!1040675) b!1521310))

(assert (= (and b!1521310 res!1040671) b!1521314))

(assert (= (and b!1521314 res!1040669) b!1521309))

(assert (= (and b!1521309 res!1040670) b!1521311))

(assert (= (and b!1521311 res!1040674) b!1521312))

(assert (= (and b!1521312 res!1040676) b!1521315))

(assert (= (and b!1521315 res!1040673) b!1521316))

(assert (= (and b!1521316 res!1040672) b!1521313))

(declare-fun m!1404451 () Bool)

(assert (=> b!1521312 m!1404451))

(declare-fun m!1404453 () Bool)

(assert (=> b!1521311 m!1404453))

(declare-fun m!1404455 () Bool)

(assert (=> b!1521314 m!1404455))

(assert (=> b!1521314 m!1404455))

(declare-fun m!1404457 () Bool)

(assert (=> b!1521314 m!1404457))

(declare-fun m!1404459 () Bool)

(assert (=> b!1521309 m!1404459))

(assert (=> b!1521309 m!1404459))

(declare-fun m!1404461 () Bool)

(assert (=> b!1521309 m!1404461))

(declare-fun m!1404463 () Bool)

(assert (=> start!129634 m!1404463))

(declare-fun m!1404465 () Bool)

(assert (=> start!129634 m!1404465))

(assert (=> b!1521316 m!1404459))

(assert (=> b!1521316 m!1404459))

(declare-fun m!1404467 () Bool)

(assert (=> b!1521316 m!1404467))

(assert (=> b!1521316 m!1404467))

(assert (=> b!1521316 m!1404459))

(declare-fun m!1404469 () Bool)

(assert (=> b!1521316 m!1404469))

(assert (=> b!1521313 m!1404459))

(assert (=> b!1521313 m!1404459))

(declare-fun m!1404471 () Bool)

(assert (=> b!1521313 m!1404471))

(push 1)

(assert (not b!1521312))

(assert (not b!1521309))

(assert (not b!1521314))

(assert (not b!1521316))

(assert (not b!1521311))

(assert (not b!1521313))

(assert (not start!129634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

