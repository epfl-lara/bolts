; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128542 () Bool)

(assert start!128542)

(declare-fun b!1506675 () Bool)

(declare-fun res!1027075 () Bool)

(declare-fun e!841993 () Bool)

(assert (=> b!1506675 (=> (not res!1027075) (not e!841993))))

(declare-datatypes ((array!100467 0))(
  ( (array!100468 (arr!48472 (Array (_ BitVec 32) (_ BitVec 64))) (size!49023 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100467)

(declare-datatypes ((List!35135 0))(
  ( (Nil!35132) (Cons!35131 (h!36532 (_ BitVec 64)) (t!49836 List!35135)) )
))
(declare-fun arrayNoDuplicates!0 (array!100467 (_ BitVec 32) List!35135) Bool)

(assert (=> b!1506675 (= res!1027075 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35132))))

(declare-fun b!1506676 () Bool)

(declare-fun res!1027077 () Bool)

(assert (=> b!1506676 (=> (not res!1027077) (not e!841993))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100467 (_ BitVec 32)) Bool)

(assert (=> b!1506676 (= res!1027077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1027076 () Bool)

(assert (=> start!128542 (=> (not res!1027076) (not e!841993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128542 (= res!1027076 (validMask!0 mask!2512))))

(assert (=> start!128542 e!841993))

(assert (=> start!128542 true))

(declare-fun array_inv!37417 (array!100467) Bool)

(assert (=> start!128542 (array_inv!37417 a!2804)))

(declare-fun b!1506677 () Bool)

(declare-fun res!1027074 () Bool)

(assert (=> b!1506677 (=> (not res!1027074) (not e!841993))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12664 0))(
  ( (MissingZero!12664 (index!53050 (_ BitVec 32))) (Found!12664 (index!53051 (_ BitVec 32))) (Intermediate!12664 (undefined!13476 Bool) (index!53052 (_ BitVec 32)) (x!134819 (_ BitVec 32))) (Undefined!12664) (MissingVacant!12664 (index!53053 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100467 (_ BitVec 32)) SeekEntryResult!12664)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506677 (= res!1027074 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48472 a!2804) j!70) mask!2512) (select (arr!48472 a!2804) j!70) a!2804 mask!2512) (Intermediate!12664 false resIndex!21 resX!21)))))

(declare-fun b!1506678 () Bool)

(declare-fun res!1027070 () Bool)

(assert (=> b!1506678 (=> (not res!1027070) (not e!841993))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506678 (= res!1027070 (and (= (size!49023 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49023 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49023 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506679 () Bool)

(declare-fun res!1027071 () Bool)

(assert (=> b!1506679 (=> (not res!1027071) (not e!841993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506679 (= res!1027071 (validKeyInArray!0 (select (arr!48472 a!2804) i!961)))))

(declare-fun b!1506680 () Bool)

(declare-fun res!1027072 () Bool)

(assert (=> b!1506680 (=> (not res!1027072) (not e!841993))))

(assert (=> b!1506680 (= res!1027072 (validKeyInArray!0 (select (arr!48472 a!2804) j!70)))))

(declare-fun b!1506681 () Bool)

(declare-fun res!1027073 () Bool)

(assert (=> b!1506681 (=> (not res!1027073) (not e!841993))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1506681 (= res!1027073 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49023 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49023 a!2804))))))

(declare-fun b!1506682 () Bool)

(assert (=> b!1506682 (= e!841993 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512))))))

(assert (= (and start!128542 res!1027076) b!1506678))

(assert (= (and b!1506678 res!1027070) b!1506679))

(assert (= (and b!1506679 res!1027071) b!1506680))

(assert (= (and b!1506680 res!1027072) b!1506676))

(assert (= (and b!1506676 res!1027077) b!1506675))

(assert (= (and b!1506675 res!1027075) b!1506681))

(assert (= (and b!1506681 res!1027073) b!1506677))

(assert (= (and b!1506677 res!1027074) b!1506682))

(declare-fun m!1389645 () Bool)

(assert (=> b!1506677 m!1389645))

(assert (=> b!1506677 m!1389645))

(declare-fun m!1389647 () Bool)

(assert (=> b!1506677 m!1389647))

(assert (=> b!1506677 m!1389647))

(assert (=> b!1506677 m!1389645))

(declare-fun m!1389649 () Bool)

(assert (=> b!1506677 m!1389649))

(declare-fun m!1389651 () Bool)

(assert (=> b!1506675 m!1389651))

(declare-fun m!1389653 () Bool)

(assert (=> b!1506676 m!1389653))

(declare-fun m!1389655 () Bool)

(assert (=> b!1506679 m!1389655))

(assert (=> b!1506679 m!1389655))

(declare-fun m!1389657 () Bool)

(assert (=> b!1506679 m!1389657))

(assert (=> b!1506680 m!1389645))

(assert (=> b!1506680 m!1389645))

(declare-fun m!1389659 () Bool)

(assert (=> b!1506680 m!1389659))

(declare-fun m!1389661 () Bool)

(assert (=> start!128542 m!1389661))

(declare-fun m!1389663 () Bool)

(assert (=> start!128542 m!1389663))

(push 1)

(assert (not b!1506680))

(assert (not b!1506679))

(assert (not b!1506676))

(assert (not start!128542))

(assert (not b!1506675))

(assert (not b!1506677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

