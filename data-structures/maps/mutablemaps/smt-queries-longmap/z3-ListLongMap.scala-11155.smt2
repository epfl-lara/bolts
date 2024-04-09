; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130326 () Bool)

(assert start!130326)

(declare-fun b!1529729 () Bool)

(declare-fun e!852461 () Bool)

(assert (=> b!1529729 (= e!852461 true)))

(declare-fun lt!662497 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529729 (= lt!662497 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529730 () Bool)

(declare-fun res!1047579 () Bool)

(declare-fun e!852459 () Bool)

(assert (=> b!1529730 (=> (not res!1047579) (not e!852459))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101603 0))(
  ( (array!101604 (arr!49022 (Array (_ BitVec 32) (_ BitVec 64))) (size!49573 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101603)

(declare-datatypes ((SeekEntryResult!13208 0))(
  ( (MissingZero!13208 (index!55226 (_ BitVec 32))) (Found!13208 (index!55227 (_ BitVec 32))) (Intermediate!13208 (undefined!14020 Bool) (index!55228 (_ BitVec 32)) (x!136914 (_ BitVec 32))) (Undefined!13208) (MissingVacant!13208 (index!55229 (_ BitVec 32))) )
))
(declare-fun lt!662494 () SeekEntryResult!13208)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101603 (_ BitVec 32)) SeekEntryResult!13208)

(assert (=> b!1529730 (= res!1047579 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49022 a!2804) j!70) a!2804 mask!2512) lt!662494))))

(declare-fun b!1529731 () Bool)

(assert (=> b!1529731 (= e!852459 (not e!852461))))

(declare-fun res!1047584 () Bool)

(assert (=> b!1529731 (=> res!1047584 e!852461)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529731 (= res!1047584 (or (not (= (select (arr!49022 a!2804) j!70) (select (store (arr!49022 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852460 () Bool)

(assert (=> b!1529731 e!852460))

(declare-fun res!1047583 () Bool)

(assert (=> b!1529731 (=> (not res!1047583) (not e!852460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101603 (_ BitVec 32)) Bool)

(assert (=> b!1529731 (= res!1047583 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51156 0))(
  ( (Unit!51157) )
))
(declare-fun lt!662495 () Unit!51156)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101603 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51156)

(assert (=> b!1529731 (= lt!662495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529733 () Bool)

(declare-fun res!1047582 () Bool)

(assert (=> b!1529733 (=> (not res!1047582) (not e!852459))))

(declare-fun lt!662496 () SeekEntryResult!13208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529733 (= res!1047582 (= lt!662496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49022 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49022 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101604 (store (arr!49022 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49573 a!2804)) mask!2512)))))

(declare-fun b!1529734 () Bool)

(declare-fun res!1047581 () Bool)

(declare-fun e!852458 () Bool)

(assert (=> b!1529734 (=> (not res!1047581) (not e!852458))))

(assert (=> b!1529734 (= res!1047581 (and (= (size!49573 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49573 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49573 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529735 () Bool)

(assert (=> b!1529735 (= e!852458 e!852459)))

(declare-fun res!1047578 () Bool)

(assert (=> b!1529735 (=> (not res!1047578) (not e!852459))))

(assert (=> b!1529735 (= res!1047578 (= lt!662496 lt!662494))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529735 (= lt!662494 (Intermediate!13208 false resIndex!21 resX!21))))

(assert (=> b!1529735 (= lt!662496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49022 a!2804) j!70) mask!2512) (select (arr!49022 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529736 () Bool)

(declare-fun res!1047574 () Bool)

(assert (=> b!1529736 (=> (not res!1047574) (not e!852458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529736 (= res!1047574 (validKeyInArray!0 (select (arr!49022 a!2804) i!961)))))

(declare-fun b!1529737 () Bool)

(declare-fun res!1047577 () Bool)

(assert (=> b!1529737 (=> (not res!1047577) (not e!852458))))

(declare-datatypes ((List!35685 0))(
  ( (Nil!35682) (Cons!35681 (h!37118 (_ BitVec 64)) (t!50386 List!35685)) )
))
(declare-fun arrayNoDuplicates!0 (array!101603 (_ BitVec 32) List!35685) Bool)

(assert (=> b!1529737 (= res!1047577 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35682))))

(declare-fun b!1529738 () Bool)

(declare-fun res!1047575 () Bool)

(assert (=> b!1529738 (=> (not res!1047575) (not e!852458))))

(assert (=> b!1529738 (= res!1047575 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49573 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49573 a!2804))))))

(declare-fun b!1529739 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101603 (_ BitVec 32)) SeekEntryResult!13208)

(assert (=> b!1529739 (= e!852460 (= (seekEntry!0 (select (arr!49022 a!2804) j!70) a!2804 mask!2512) (Found!13208 j!70)))))

(declare-fun b!1529740 () Bool)

(declare-fun res!1047580 () Bool)

(assert (=> b!1529740 (=> (not res!1047580) (not e!852458))))

(assert (=> b!1529740 (= res!1047580 (validKeyInArray!0 (select (arr!49022 a!2804) j!70)))))

(declare-fun res!1047576 () Bool)

(assert (=> start!130326 (=> (not res!1047576) (not e!852458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130326 (= res!1047576 (validMask!0 mask!2512))))

(assert (=> start!130326 e!852458))

(assert (=> start!130326 true))

(declare-fun array_inv!37967 (array!101603) Bool)

(assert (=> start!130326 (array_inv!37967 a!2804)))

(declare-fun b!1529732 () Bool)

(declare-fun res!1047585 () Bool)

(assert (=> b!1529732 (=> (not res!1047585) (not e!852458))))

(assert (=> b!1529732 (= res!1047585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130326 res!1047576) b!1529734))

(assert (= (and b!1529734 res!1047581) b!1529736))

(assert (= (and b!1529736 res!1047574) b!1529740))

(assert (= (and b!1529740 res!1047580) b!1529732))

(assert (= (and b!1529732 res!1047585) b!1529737))

(assert (= (and b!1529737 res!1047577) b!1529738))

(assert (= (and b!1529738 res!1047575) b!1529735))

(assert (= (and b!1529735 res!1047578) b!1529730))

(assert (= (and b!1529730 res!1047579) b!1529733))

(assert (= (and b!1529733 res!1047582) b!1529731))

(assert (= (and b!1529731 res!1047583) b!1529739))

(assert (= (and b!1529731 (not res!1047584)) b!1529729))

(declare-fun m!1412747 () Bool)

(assert (=> b!1529735 m!1412747))

(assert (=> b!1529735 m!1412747))

(declare-fun m!1412749 () Bool)

(assert (=> b!1529735 m!1412749))

(assert (=> b!1529735 m!1412749))

(assert (=> b!1529735 m!1412747))

(declare-fun m!1412751 () Bool)

(assert (=> b!1529735 m!1412751))

(declare-fun m!1412753 () Bool)

(assert (=> b!1529736 m!1412753))

(assert (=> b!1529736 m!1412753))

(declare-fun m!1412755 () Bool)

(assert (=> b!1529736 m!1412755))

(assert (=> b!1529740 m!1412747))

(assert (=> b!1529740 m!1412747))

(declare-fun m!1412757 () Bool)

(assert (=> b!1529740 m!1412757))

(declare-fun m!1412759 () Bool)

(assert (=> b!1529737 m!1412759))

(assert (=> b!1529730 m!1412747))

(assert (=> b!1529730 m!1412747))

(declare-fun m!1412761 () Bool)

(assert (=> b!1529730 m!1412761))

(declare-fun m!1412763 () Bool)

(assert (=> b!1529729 m!1412763))

(declare-fun m!1412765 () Bool)

(assert (=> b!1529732 m!1412765))

(assert (=> b!1529731 m!1412747))

(declare-fun m!1412767 () Bool)

(assert (=> b!1529731 m!1412767))

(declare-fun m!1412769 () Bool)

(assert (=> b!1529731 m!1412769))

(declare-fun m!1412771 () Bool)

(assert (=> b!1529731 m!1412771))

(declare-fun m!1412773 () Bool)

(assert (=> b!1529731 m!1412773))

(assert (=> b!1529733 m!1412769))

(assert (=> b!1529733 m!1412771))

(assert (=> b!1529733 m!1412771))

(declare-fun m!1412775 () Bool)

(assert (=> b!1529733 m!1412775))

(assert (=> b!1529733 m!1412775))

(assert (=> b!1529733 m!1412771))

(declare-fun m!1412777 () Bool)

(assert (=> b!1529733 m!1412777))

(assert (=> b!1529739 m!1412747))

(assert (=> b!1529739 m!1412747))

(declare-fun m!1412779 () Bool)

(assert (=> b!1529739 m!1412779))

(declare-fun m!1412781 () Bool)

(assert (=> start!130326 m!1412781))

(declare-fun m!1412783 () Bool)

(assert (=> start!130326 m!1412783))

(check-sat (not b!1529740) (not b!1529733) (not b!1529736) (not b!1529730) (not b!1529737) (not b!1529731) (not b!1529735) (not start!130326) (not b!1529729) (not b!1529732) (not b!1529739))
(check-sat)
