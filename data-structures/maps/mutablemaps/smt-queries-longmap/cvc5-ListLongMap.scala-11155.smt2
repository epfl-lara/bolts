; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130324 () Bool)

(assert start!130324)

(declare-fun b!1529693 () Bool)

(declare-fun e!852442 () Bool)

(declare-fun e!852444 () Bool)

(assert (=> b!1529693 (= e!852442 (not e!852444))))

(declare-fun res!1047548 () Bool)

(assert (=> b!1529693 (=> res!1047548 e!852444)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101601 0))(
  ( (array!101602 (arr!49021 (Array (_ BitVec 32) (_ BitVec 64))) (size!49572 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101601)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529693 (= res!1047548 (or (not (= (select (arr!49021 a!2804) j!70) (select (store (arr!49021 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852446 () Bool)

(assert (=> b!1529693 e!852446))

(declare-fun res!1047544 () Bool)

(assert (=> b!1529693 (=> (not res!1047544) (not e!852446))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101601 (_ BitVec 32)) Bool)

(assert (=> b!1529693 (= res!1047544 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51154 0))(
  ( (Unit!51155) )
))
(declare-fun lt!662484 () Unit!51154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51154)

(assert (=> b!1529693 (= lt!662484 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529694 () Bool)

(declare-fun res!1047543 () Bool)

(assert (=> b!1529694 (=> (not res!1047543) (not e!852442))))

(declare-datatypes ((SeekEntryResult!13207 0))(
  ( (MissingZero!13207 (index!55222 (_ BitVec 32))) (Found!13207 (index!55223 (_ BitVec 32))) (Intermediate!13207 (undefined!14019 Bool) (index!55224 (_ BitVec 32)) (x!136913 (_ BitVec 32))) (Undefined!13207) (MissingVacant!13207 (index!55225 (_ BitVec 32))) )
))
(declare-fun lt!662485 () SeekEntryResult!13207)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101601 (_ BitVec 32)) SeekEntryResult!13207)

(assert (=> b!1529694 (= res!1047543 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49021 a!2804) j!70) a!2804 mask!2512) lt!662485))))

(declare-fun b!1529695 () Bool)

(declare-fun res!1047547 () Bool)

(declare-fun e!852445 () Bool)

(assert (=> b!1529695 (=> (not res!1047547) (not e!852445))))

(assert (=> b!1529695 (= res!1047547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529696 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101601 (_ BitVec 32)) SeekEntryResult!13207)

(assert (=> b!1529696 (= e!852446 (= (seekEntry!0 (select (arr!49021 a!2804) j!70) a!2804 mask!2512) (Found!13207 j!70)))))

(declare-fun b!1529697 () Bool)

(assert (=> b!1529697 (= e!852444 true)))

(declare-fun lt!662482 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529697 (= lt!662482 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529698 () Bool)

(declare-fun res!1047539 () Bool)

(assert (=> b!1529698 (=> (not res!1047539) (not e!852445))))

(assert (=> b!1529698 (= res!1047539 (and (= (size!49572 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49572 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49572 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529699 () Bool)

(declare-fun res!1047540 () Bool)

(assert (=> b!1529699 (=> (not res!1047540) (not e!852445))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529699 (= res!1047540 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49572 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49572 a!2804))))))

(declare-fun b!1529700 () Bool)

(declare-fun res!1047546 () Bool)

(assert (=> b!1529700 (=> (not res!1047546) (not e!852442))))

(declare-fun lt!662483 () SeekEntryResult!13207)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529700 (= res!1047546 (= lt!662483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49021 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49021 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101602 (store (arr!49021 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49572 a!2804)) mask!2512)))))

(declare-fun res!1047545 () Bool)

(assert (=> start!130324 (=> (not res!1047545) (not e!852445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130324 (= res!1047545 (validMask!0 mask!2512))))

(assert (=> start!130324 e!852445))

(assert (=> start!130324 true))

(declare-fun array_inv!37966 (array!101601) Bool)

(assert (=> start!130324 (array_inv!37966 a!2804)))

(declare-fun b!1529701 () Bool)

(declare-fun res!1047541 () Bool)

(assert (=> b!1529701 (=> (not res!1047541) (not e!852445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529701 (= res!1047541 (validKeyInArray!0 (select (arr!49021 a!2804) i!961)))))

(declare-fun b!1529702 () Bool)

(declare-fun res!1047549 () Bool)

(assert (=> b!1529702 (=> (not res!1047549) (not e!852445))))

(assert (=> b!1529702 (= res!1047549 (validKeyInArray!0 (select (arr!49021 a!2804) j!70)))))

(declare-fun b!1529703 () Bool)

(declare-fun res!1047538 () Bool)

(assert (=> b!1529703 (=> (not res!1047538) (not e!852445))))

(declare-datatypes ((List!35684 0))(
  ( (Nil!35681) (Cons!35680 (h!37117 (_ BitVec 64)) (t!50385 List!35684)) )
))
(declare-fun arrayNoDuplicates!0 (array!101601 (_ BitVec 32) List!35684) Bool)

(assert (=> b!1529703 (= res!1047538 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35681))))

(declare-fun b!1529704 () Bool)

(assert (=> b!1529704 (= e!852445 e!852442)))

(declare-fun res!1047542 () Bool)

(assert (=> b!1529704 (=> (not res!1047542) (not e!852442))))

(assert (=> b!1529704 (= res!1047542 (= lt!662483 lt!662485))))

(assert (=> b!1529704 (= lt!662485 (Intermediate!13207 false resIndex!21 resX!21))))

(assert (=> b!1529704 (= lt!662483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49021 a!2804) j!70) mask!2512) (select (arr!49021 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130324 res!1047545) b!1529698))

(assert (= (and b!1529698 res!1047539) b!1529701))

(assert (= (and b!1529701 res!1047541) b!1529702))

(assert (= (and b!1529702 res!1047549) b!1529695))

(assert (= (and b!1529695 res!1047547) b!1529703))

(assert (= (and b!1529703 res!1047538) b!1529699))

(assert (= (and b!1529699 res!1047540) b!1529704))

(assert (= (and b!1529704 res!1047542) b!1529694))

(assert (= (and b!1529694 res!1047543) b!1529700))

(assert (= (and b!1529700 res!1047546) b!1529693))

(assert (= (and b!1529693 res!1047544) b!1529696))

(assert (= (and b!1529693 (not res!1047548)) b!1529697))

(declare-fun m!1412709 () Bool)

(assert (=> b!1529697 m!1412709))

(declare-fun m!1412711 () Bool)

(assert (=> b!1529693 m!1412711))

(declare-fun m!1412713 () Bool)

(assert (=> b!1529693 m!1412713))

(declare-fun m!1412715 () Bool)

(assert (=> b!1529693 m!1412715))

(declare-fun m!1412717 () Bool)

(assert (=> b!1529693 m!1412717))

(declare-fun m!1412719 () Bool)

(assert (=> b!1529693 m!1412719))

(assert (=> b!1529694 m!1412711))

(assert (=> b!1529694 m!1412711))

(declare-fun m!1412721 () Bool)

(assert (=> b!1529694 m!1412721))

(declare-fun m!1412723 () Bool)

(assert (=> b!1529703 m!1412723))

(declare-fun m!1412725 () Bool)

(assert (=> b!1529701 m!1412725))

(assert (=> b!1529701 m!1412725))

(declare-fun m!1412727 () Bool)

(assert (=> b!1529701 m!1412727))

(assert (=> b!1529696 m!1412711))

(assert (=> b!1529696 m!1412711))

(declare-fun m!1412729 () Bool)

(assert (=> b!1529696 m!1412729))

(declare-fun m!1412731 () Bool)

(assert (=> start!130324 m!1412731))

(declare-fun m!1412733 () Bool)

(assert (=> start!130324 m!1412733))

(assert (=> b!1529700 m!1412715))

(assert (=> b!1529700 m!1412717))

(assert (=> b!1529700 m!1412717))

(declare-fun m!1412735 () Bool)

(assert (=> b!1529700 m!1412735))

(assert (=> b!1529700 m!1412735))

(assert (=> b!1529700 m!1412717))

(declare-fun m!1412737 () Bool)

(assert (=> b!1529700 m!1412737))

(declare-fun m!1412739 () Bool)

(assert (=> b!1529695 m!1412739))

(assert (=> b!1529704 m!1412711))

(assert (=> b!1529704 m!1412711))

(declare-fun m!1412741 () Bool)

(assert (=> b!1529704 m!1412741))

(assert (=> b!1529704 m!1412741))

(assert (=> b!1529704 m!1412711))

(declare-fun m!1412743 () Bool)

(assert (=> b!1529704 m!1412743))

(assert (=> b!1529702 m!1412711))

(assert (=> b!1529702 m!1412711))

(declare-fun m!1412745 () Bool)

(assert (=> b!1529702 m!1412745))

(push 1)

(assert (not b!1529695))

(assert (not b!1529703))

(assert (not start!130324))

(assert (not b!1529696))

(assert (not b!1529704))

