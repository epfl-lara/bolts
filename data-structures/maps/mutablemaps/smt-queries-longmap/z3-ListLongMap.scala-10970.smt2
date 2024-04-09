; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128532 () Bool)

(assert start!128532)

(declare-fun res!1026963 () Bool)

(declare-fun e!841964 () Bool)

(assert (=> start!128532 (=> (not res!1026963) (not e!841964))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128532 (= res!1026963 (validMask!0 mask!2512))))

(assert (=> start!128532 e!841964))

(assert (=> start!128532 true))

(declare-datatypes ((array!100457 0))(
  ( (array!100458 (arr!48467 (Array (_ BitVec 32) (_ BitVec 64))) (size!49018 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100457)

(declare-fun array_inv!37412 (array!100457) Bool)

(assert (=> start!128532 (array_inv!37412 a!2804)))

(declare-fun b!1506564 () Bool)

(declare-fun res!1026964 () Bool)

(assert (=> b!1506564 (=> (not res!1026964) (not e!841964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100457 (_ BitVec 32)) Bool)

(assert (=> b!1506564 (= res!1026964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506565 () Bool)

(declare-fun res!1026960 () Bool)

(assert (=> b!1506565 (=> (not res!1026960) (not e!841964))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506565 (= res!1026960 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49018 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49018 a!2804))))))

(declare-fun b!1506566 () Bool)

(declare-fun res!1026966 () Bool)

(assert (=> b!1506566 (=> (not res!1026966) (not e!841964))))

(declare-datatypes ((List!35130 0))(
  ( (Nil!35127) (Cons!35126 (h!36527 (_ BitVec 64)) (t!49831 List!35130)) )
))
(declare-fun arrayNoDuplicates!0 (array!100457 (_ BitVec 32) List!35130) Bool)

(assert (=> b!1506566 (= res!1026966 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35127))))

(declare-fun b!1506567 () Bool)

(assert (=> b!1506567 (= e!841964 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun b!1506568 () Bool)

(declare-fun res!1026959 () Bool)

(assert (=> b!1506568 (=> (not res!1026959) (not e!841964))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506568 (= res!1026959 (and (= (size!49018 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49018 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49018 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506569 () Bool)

(declare-fun res!1026965 () Bool)

(assert (=> b!1506569 (=> (not res!1026965) (not e!841964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506569 (= res!1026965 (validKeyInArray!0 (select (arr!48467 a!2804) j!70)))))

(declare-fun b!1506570 () Bool)

(declare-fun res!1026962 () Bool)

(assert (=> b!1506570 (=> (not res!1026962) (not e!841964))))

(declare-datatypes ((SeekEntryResult!12659 0))(
  ( (MissingZero!12659 (index!53030 (_ BitVec 32))) (Found!12659 (index!53031 (_ BitVec 32))) (Intermediate!12659 (undefined!13471 Bool) (index!53032 (_ BitVec 32)) (x!134798 (_ BitVec 32))) (Undefined!12659) (MissingVacant!12659 (index!53033 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100457 (_ BitVec 32)) SeekEntryResult!12659)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506570 (= res!1026962 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48467 a!2804) j!70) mask!2512) (select (arr!48467 a!2804) j!70) a!2804 mask!2512) (Intermediate!12659 false resIndex!21 resX!21)))))

(declare-fun b!1506571 () Bool)

(declare-fun res!1026961 () Bool)

(assert (=> b!1506571 (=> (not res!1026961) (not e!841964))))

(assert (=> b!1506571 (= res!1026961 (validKeyInArray!0 (select (arr!48467 a!2804) i!961)))))

(assert (= (and start!128532 res!1026963) b!1506568))

(assert (= (and b!1506568 res!1026959) b!1506571))

(assert (= (and b!1506571 res!1026961) b!1506569))

(assert (= (and b!1506569 res!1026965) b!1506564))

(assert (= (and b!1506564 res!1026964) b!1506566))

(assert (= (and b!1506566 res!1026966) b!1506565))

(assert (= (and b!1506565 res!1026960) b!1506570))

(assert (= (and b!1506570 res!1026962) b!1506567))

(declare-fun m!1389545 () Bool)

(assert (=> start!128532 m!1389545))

(declare-fun m!1389547 () Bool)

(assert (=> start!128532 m!1389547))

(declare-fun m!1389549 () Bool)

(assert (=> b!1506571 m!1389549))

(assert (=> b!1506571 m!1389549))

(declare-fun m!1389551 () Bool)

(assert (=> b!1506571 m!1389551))

(declare-fun m!1389553 () Bool)

(assert (=> b!1506564 m!1389553))

(declare-fun m!1389555 () Bool)

(assert (=> b!1506569 m!1389555))

(assert (=> b!1506569 m!1389555))

(declare-fun m!1389557 () Bool)

(assert (=> b!1506569 m!1389557))

(assert (=> b!1506570 m!1389555))

(assert (=> b!1506570 m!1389555))

(declare-fun m!1389559 () Bool)

(assert (=> b!1506570 m!1389559))

(assert (=> b!1506570 m!1389559))

(assert (=> b!1506570 m!1389555))

(declare-fun m!1389561 () Bool)

(assert (=> b!1506570 m!1389561))

(declare-fun m!1389563 () Bool)

(assert (=> b!1506566 m!1389563))

(check-sat (not start!128532) (not b!1506564) (not b!1506571) (not b!1506566) (not b!1506570) (not b!1506569))
(check-sat)
