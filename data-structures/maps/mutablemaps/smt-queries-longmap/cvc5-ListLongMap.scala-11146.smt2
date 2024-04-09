; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130270 () Bool)

(assert start!130270)

(declare-fun b!1528721 () Bool)

(declare-fun e!852037 () Bool)

(declare-fun e!852041 () Bool)

(assert (=> b!1528721 (= e!852037 e!852041)))

(declare-fun res!1046566 () Bool)

(assert (=> b!1528721 (=> (not res!1046566) (not e!852041))))

(declare-datatypes ((SeekEntryResult!13180 0))(
  ( (MissingZero!13180 (index!55114 (_ BitVec 32))) (Found!13180 (index!55115 (_ BitVec 32))) (Intermediate!13180 (undefined!13992 Bool) (index!55116 (_ BitVec 32)) (x!136814 (_ BitVec 32))) (Undefined!13180) (MissingVacant!13180 (index!55117 (_ BitVec 32))) )
))
(declare-fun lt!662160 () SeekEntryResult!13180)

(declare-fun lt!662159 () SeekEntryResult!13180)

(assert (=> b!1528721 (= res!1046566 (= lt!662160 lt!662159))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528721 (= lt!662159 (Intermediate!13180 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101547 0))(
  ( (array!101548 (arr!48994 (Array (_ BitVec 32) (_ BitVec 64))) (size!49545 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101547)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101547 (_ BitVec 32)) SeekEntryResult!13180)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528721 (= lt!662160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48994 a!2804) j!70) mask!2512) (select (arr!48994 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528722 () Bool)

(declare-fun e!852038 () Bool)

(assert (=> b!1528722 (= e!852038 true)))

(declare-fun lt!662161 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528722 (= lt!662161 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528723 () Bool)

(declare-fun res!1046572 () Bool)

(assert (=> b!1528723 (=> (not res!1046572) (not e!852037))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1528723 (= res!1046572 (and (= (size!49545 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49545 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49545 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528724 () Bool)

(declare-fun res!1046576 () Bool)

(assert (=> b!1528724 (=> (not res!1046576) (not e!852041))))

(assert (=> b!1528724 (= res!1046576 (= lt!662160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48994 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48994 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101548 (store (arr!48994 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49545 a!2804)) mask!2512)))))

(declare-fun b!1528725 () Bool)

(declare-fun res!1046573 () Bool)

(assert (=> b!1528725 (=> (not res!1046573) (not e!852037))))

(declare-datatypes ((List!35657 0))(
  ( (Nil!35654) (Cons!35653 (h!37090 (_ BitVec 64)) (t!50358 List!35657)) )
))
(declare-fun arrayNoDuplicates!0 (array!101547 (_ BitVec 32) List!35657) Bool)

(assert (=> b!1528725 (= res!1046573 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35654))))

(declare-fun b!1528726 () Bool)

(assert (=> b!1528726 (= e!852041 (not e!852038))))

(declare-fun res!1046569 () Bool)

(assert (=> b!1528726 (=> res!1046569 e!852038)))

(assert (=> b!1528726 (= res!1046569 (or (not (= (select (arr!48994 a!2804) j!70) (select (store (arr!48994 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852039 () Bool)

(assert (=> b!1528726 e!852039))

(declare-fun res!1046574 () Bool)

(assert (=> b!1528726 (=> (not res!1046574) (not e!852039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101547 (_ BitVec 32)) Bool)

(assert (=> b!1528726 (= res!1046574 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51100 0))(
  ( (Unit!51101) )
))
(declare-fun lt!662158 () Unit!51100)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101547 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51100)

(assert (=> b!1528726 (= lt!662158 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528727 () Bool)

(declare-fun res!1046567 () Bool)

(assert (=> b!1528727 (=> (not res!1046567) (not e!852037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528727 (= res!1046567 (validKeyInArray!0 (select (arr!48994 a!2804) i!961)))))

(declare-fun b!1528729 () Bool)

(declare-fun res!1046577 () Bool)

(assert (=> b!1528729 (=> (not res!1046577) (not e!852037))))

(assert (=> b!1528729 (= res!1046577 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49545 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49545 a!2804))))))

(declare-fun b!1528730 () Bool)

(declare-fun res!1046575 () Bool)

(assert (=> b!1528730 (=> (not res!1046575) (not e!852037))))

(assert (=> b!1528730 (= res!1046575 (validKeyInArray!0 (select (arr!48994 a!2804) j!70)))))

(declare-fun b!1528731 () Bool)

(declare-fun res!1046570 () Bool)

(assert (=> b!1528731 (=> (not res!1046570) (not e!852041))))

(assert (=> b!1528731 (= res!1046570 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48994 a!2804) j!70) a!2804 mask!2512) lt!662159))))

(declare-fun b!1528732 () Bool)

(declare-fun res!1046568 () Bool)

(assert (=> b!1528732 (=> (not res!1046568) (not e!852037))))

(assert (=> b!1528732 (= res!1046568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1046571 () Bool)

(assert (=> start!130270 (=> (not res!1046571) (not e!852037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130270 (= res!1046571 (validMask!0 mask!2512))))

(assert (=> start!130270 e!852037))

(assert (=> start!130270 true))

(declare-fun array_inv!37939 (array!101547) Bool)

(assert (=> start!130270 (array_inv!37939 a!2804)))

(declare-fun b!1528728 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101547 (_ BitVec 32)) SeekEntryResult!13180)

(assert (=> b!1528728 (= e!852039 (= (seekEntry!0 (select (arr!48994 a!2804) j!70) a!2804 mask!2512) (Found!13180 j!70)))))

(assert (= (and start!130270 res!1046571) b!1528723))

(assert (= (and b!1528723 res!1046572) b!1528727))

(assert (= (and b!1528727 res!1046567) b!1528730))

(assert (= (and b!1528730 res!1046575) b!1528732))

(assert (= (and b!1528732 res!1046568) b!1528725))

(assert (= (and b!1528725 res!1046573) b!1528729))

(assert (= (and b!1528729 res!1046577) b!1528721))

(assert (= (and b!1528721 res!1046566) b!1528731))

(assert (= (and b!1528731 res!1046570) b!1528724))

(assert (= (and b!1528724 res!1046576) b!1528726))

(assert (= (and b!1528726 res!1046574) b!1528728))

(assert (= (and b!1528726 (not res!1046569)) b!1528722))

(declare-fun m!1411683 () Bool)

(assert (=> b!1528724 m!1411683))

(declare-fun m!1411685 () Bool)

(assert (=> b!1528724 m!1411685))

(assert (=> b!1528724 m!1411685))

(declare-fun m!1411687 () Bool)

(assert (=> b!1528724 m!1411687))

(assert (=> b!1528724 m!1411687))

(assert (=> b!1528724 m!1411685))

(declare-fun m!1411689 () Bool)

(assert (=> b!1528724 m!1411689))

(declare-fun m!1411691 () Bool)

(assert (=> start!130270 m!1411691))

(declare-fun m!1411693 () Bool)

(assert (=> start!130270 m!1411693))

(declare-fun m!1411695 () Bool)

(assert (=> b!1528732 m!1411695))

(declare-fun m!1411697 () Bool)

(assert (=> b!1528721 m!1411697))

(assert (=> b!1528721 m!1411697))

(declare-fun m!1411699 () Bool)

(assert (=> b!1528721 m!1411699))

(assert (=> b!1528721 m!1411699))

(assert (=> b!1528721 m!1411697))

(declare-fun m!1411701 () Bool)

(assert (=> b!1528721 m!1411701))

(declare-fun m!1411703 () Bool)

(assert (=> b!1528727 m!1411703))

(assert (=> b!1528727 m!1411703))

(declare-fun m!1411705 () Bool)

(assert (=> b!1528727 m!1411705))

(assert (=> b!1528730 m!1411697))

(assert (=> b!1528730 m!1411697))

(declare-fun m!1411707 () Bool)

(assert (=> b!1528730 m!1411707))

(assert (=> b!1528726 m!1411697))

(declare-fun m!1411709 () Bool)

(assert (=> b!1528726 m!1411709))

(assert (=> b!1528726 m!1411683))

(assert (=> b!1528726 m!1411685))

(declare-fun m!1411711 () Bool)

(assert (=> b!1528726 m!1411711))

(declare-fun m!1411713 () Bool)

(assert (=> b!1528725 m!1411713))

(assert (=> b!1528728 m!1411697))

(assert (=> b!1528728 m!1411697))

(declare-fun m!1411715 () Bool)

(assert (=> b!1528728 m!1411715))

(assert (=> b!1528731 m!1411697))

(assert (=> b!1528731 m!1411697))

(declare-fun m!1411717 () Bool)

(assert (=> b!1528731 m!1411717))

(declare-fun m!1411719 () Bool)

(assert (=> b!1528722 m!1411719))

(push 1)

