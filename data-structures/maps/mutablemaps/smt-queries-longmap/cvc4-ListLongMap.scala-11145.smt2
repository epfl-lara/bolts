; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130268 () Bool)

(assert start!130268)

(declare-fun b!1528685 () Bool)

(declare-fun e!852024 () Bool)

(assert (=> b!1528685 (= e!852024 true)))

(declare-fun lt!662148 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528685 (= lt!662148 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528686 () Bool)

(declare-fun res!1046532 () Bool)

(declare-fun e!852023 () Bool)

(assert (=> b!1528686 (=> (not res!1046532) (not e!852023))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101545 0))(
  ( (array!101546 (arr!48993 (Array (_ BitVec 32) (_ BitVec 64))) (size!49544 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101545)

(declare-datatypes ((SeekEntryResult!13179 0))(
  ( (MissingZero!13179 (index!55110 (_ BitVec 32))) (Found!13179 (index!55111 (_ BitVec 32))) (Intermediate!13179 (undefined!13991 Bool) (index!55112 (_ BitVec 32)) (x!136805 (_ BitVec 32))) (Undefined!13179) (MissingVacant!13179 (index!55113 (_ BitVec 32))) )
))
(declare-fun lt!662147 () SeekEntryResult!13179)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101545 (_ BitVec 32)) SeekEntryResult!13179)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528686 (= res!1046532 (= lt!662147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48993 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48993 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101546 (store (arr!48993 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49544 a!2804)) mask!2512)))))

(declare-fun b!1528687 () Bool)

(declare-fun e!852025 () Bool)

(assert (=> b!1528687 (= e!852025 e!852023)))

(declare-fun res!1046537 () Bool)

(assert (=> b!1528687 (=> (not res!1046537) (not e!852023))))

(declare-fun lt!662149 () SeekEntryResult!13179)

(assert (=> b!1528687 (= res!1046537 (= lt!662147 lt!662149))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528687 (= lt!662149 (Intermediate!13179 false resIndex!21 resX!21))))

(assert (=> b!1528687 (= lt!662147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48993 a!2804) j!70) mask!2512) (select (arr!48993 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1046539 () Bool)

(assert (=> start!130268 (=> (not res!1046539) (not e!852025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130268 (= res!1046539 (validMask!0 mask!2512))))

(assert (=> start!130268 e!852025))

(assert (=> start!130268 true))

(declare-fun array_inv!37938 (array!101545) Bool)

(assert (=> start!130268 (array_inv!37938 a!2804)))

(declare-fun b!1528688 () Bool)

(declare-fun res!1046538 () Bool)

(assert (=> b!1528688 (=> (not res!1046538) (not e!852025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101545 (_ BitVec 32)) Bool)

(assert (=> b!1528688 (= res!1046538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528689 () Bool)

(declare-fun res!1046533 () Bool)

(assert (=> b!1528689 (=> (not res!1046533) (not e!852025))))

(assert (=> b!1528689 (= res!1046533 (and (= (size!49544 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49544 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49544 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528690 () Bool)

(declare-fun res!1046531 () Bool)

(assert (=> b!1528690 (=> (not res!1046531) (not e!852025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528690 (= res!1046531 (validKeyInArray!0 (select (arr!48993 a!2804) j!70)))))

(declare-fun e!852026 () Bool)

(declare-fun b!1528691 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101545 (_ BitVec 32)) SeekEntryResult!13179)

(assert (=> b!1528691 (= e!852026 (= (seekEntry!0 (select (arr!48993 a!2804) j!70) a!2804 mask!2512) (Found!13179 j!70)))))

(declare-fun b!1528692 () Bool)

(assert (=> b!1528692 (= e!852023 (not e!852024))))

(declare-fun res!1046530 () Bool)

(assert (=> b!1528692 (=> res!1046530 e!852024)))

(assert (=> b!1528692 (= res!1046530 (or (not (= (select (arr!48993 a!2804) j!70) (select (store (arr!48993 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1528692 e!852026))

(declare-fun res!1046535 () Bool)

(assert (=> b!1528692 (=> (not res!1046535) (not e!852026))))

(assert (=> b!1528692 (= res!1046535 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51098 0))(
  ( (Unit!51099) )
))
(declare-fun lt!662146 () Unit!51098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101545 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51098)

(assert (=> b!1528692 (= lt!662146 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528693 () Bool)

(declare-fun res!1046541 () Bool)

(assert (=> b!1528693 (=> (not res!1046541) (not e!852025))))

(assert (=> b!1528693 (= res!1046541 (validKeyInArray!0 (select (arr!48993 a!2804) i!961)))))

(declare-fun b!1528694 () Bool)

(declare-fun res!1046536 () Bool)

(assert (=> b!1528694 (=> (not res!1046536) (not e!852025))))

(declare-datatypes ((List!35656 0))(
  ( (Nil!35653) (Cons!35652 (h!37089 (_ BitVec 64)) (t!50357 List!35656)) )
))
(declare-fun arrayNoDuplicates!0 (array!101545 (_ BitVec 32) List!35656) Bool)

(assert (=> b!1528694 (= res!1046536 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35653))))

(declare-fun b!1528695 () Bool)

(declare-fun res!1046534 () Bool)

(assert (=> b!1528695 (=> (not res!1046534) (not e!852023))))

(assert (=> b!1528695 (= res!1046534 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48993 a!2804) j!70) a!2804 mask!2512) lt!662149))))

(declare-fun b!1528696 () Bool)

(declare-fun res!1046540 () Bool)

(assert (=> b!1528696 (=> (not res!1046540) (not e!852025))))

(assert (=> b!1528696 (= res!1046540 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49544 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49544 a!2804))))))

(assert (= (and start!130268 res!1046539) b!1528689))

(assert (= (and b!1528689 res!1046533) b!1528693))

(assert (= (and b!1528693 res!1046541) b!1528690))

(assert (= (and b!1528690 res!1046531) b!1528688))

(assert (= (and b!1528688 res!1046538) b!1528694))

(assert (= (and b!1528694 res!1046536) b!1528696))

(assert (= (and b!1528696 res!1046540) b!1528687))

(assert (= (and b!1528687 res!1046537) b!1528695))

(assert (= (and b!1528695 res!1046534) b!1528686))

(assert (= (and b!1528686 res!1046532) b!1528692))

(assert (= (and b!1528692 res!1046535) b!1528691))

(assert (= (and b!1528692 (not res!1046530)) b!1528685))

(declare-fun m!1411645 () Bool)

(assert (=> b!1528686 m!1411645))

(declare-fun m!1411647 () Bool)

(assert (=> b!1528686 m!1411647))

(assert (=> b!1528686 m!1411647))

(declare-fun m!1411649 () Bool)

(assert (=> b!1528686 m!1411649))

(assert (=> b!1528686 m!1411649))

(assert (=> b!1528686 m!1411647))

(declare-fun m!1411651 () Bool)

(assert (=> b!1528686 m!1411651))

(declare-fun m!1411653 () Bool)

(assert (=> b!1528687 m!1411653))

(assert (=> b!1528687 m!1411653))

(declare-fun m!1411655 () Bool)

(assert (=> b!1528687 m!1411655))

(assert (=> b!1528687 m!1411655))

(assert (=> b!1528687 m!1411653))

(declare-fun m!1411657 () Bool)

(assert (=> b!1528687 m!1411657))

(declare-fun m!1411659 () Bool)

(assert (=> b!1528685 m!1411659))

(declare-fun m!1411661 () Bool)

(assert (=> start!130268 m!1411661))

(declare-fun m!1411663 () Bool)

(assert (=> start!130268 m!1411663))

(declare-fun m!1411665 () Bool)

(assert (=> b!1528688 m!1411665))

(assert (=> b!1528692 m!1411653))

(declare-fun m!1411667 () Bool)

(assert (=> b!1528692 m!1411667))

(assert (=> b!1528692 m!1411645))

(assert (=> b!1528692 m!1411647))

(declare-fun m!1411669 () Bool)

(assert (=> b!1528692 m!1411669))

(assert (=> b!1528690 m!1411653))

(assert (=> b!1528690 m!1411653))

(declare-fun m!1411671 () Bool)

(assert (=> b!1528690 m!1411671))

(declare-fun m!1411673 () Bool)

(assert (=> b!1528693 m!1411673))

(assert (=> b!1528693 m!1411673))

(declare-fun m!1411675 () Bool)

(assert (=> b!1528693 m!1411675))

(assert (=> b!1528691 m!1411653))

(assert (=> b!1528691 m!1411653))

(declare-fun m!1411677 () Bool)

(assert (=> b!1528691 m!1411677))

(declare-fun m!1411679 () Bool)

(assert (=> b!1528694 m!1411679))

(assert (=> b!1528695 m!1411653))

(assert (=> b!1528695 m!1411653))

(declare-fun m!1411681 () Bool)

(assert (=> b!1528695 m!1411681))

(push 1)

(assert (not b!1528687))

(assert (not b!1528685))

(assert (not b!1528693))

(assert (not b!1528691))

(assert (not b!1528695))

(assert (not start!130268))

(assert (not b!1528690))

(assert (not b!1528694))

(assert (not b!1528686))

(assert (not b!1528688))

(assert (not b!1528692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

