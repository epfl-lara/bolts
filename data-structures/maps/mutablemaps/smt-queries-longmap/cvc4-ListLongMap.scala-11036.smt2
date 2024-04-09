; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129098 () Bool)

(assert start!129098)

(declare-fun b!1513710 () Bool)

(declare-fun res!1033691 () Bool)

(declare-fun e!844832 () Bool)

(assert (=> b!1513710 (=> (not res!1033691) (not e!844832))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100867 0))(
  ( (array!100868 (arr!48666 (Array (_ BitVec 32) (_ BitVec 64))) (size!49217 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100867)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513710 (= res!1033691 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49217 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49217 a!2804))))))

(declare-fun b!1513711 () Bool)

(declare-fun res!1033687 () Bool)

(assert (=> b!1513711 (=> (not res!1033687) (not e!844832))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1513711 (= res!1033687 (and (= (size!49217 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49217 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49217 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513712 () Bool)

(declare-fun e!844838 () Bool)

(declare-fun e!844833 () Bool)

(assert (=> b!1513712 (= e!844838 e!844833)))

(declare-fun res!1033688 () Bool)

(assert (=> b!1513712 (=> res!1033688 e!844833)))

(declare-fun lt!656053 () (_ BitVec 64))

(assert (=> b!1513712 (= res!1033688 (or (not (= (select (arr!48666 a!2804) j!70) lt!656053)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48666 a!2804) index!487) (select (arr!48666 a!2804) j!70)) (not (= (select (arr!48666 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513713 () Bool)

(declare-fun res!1033693 () Bool)

(assert (=> b!1513713 (=> (not res!1033693) (not e!844832))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513713 (= res!1033693 (validKeyInArray!0 (select (arr!48666 a!2804) j!70)))))

(declare-fun b!1513714 () Bool)

(declare-fun e!844835 () Bool)

(assert (=> b!1513714 (= e!844833 e!844835)))

(declare-fun res!1033689 () Bool)

(assert (=> b!1513714 (=> (not res!1033689) (not e!844835))))

(declare-datatypes ((SeekEntryResult!12858 0))(
  ( (MissingZero!12858 (index!53826 (_ BitVec 32))) (Found!12858 (index!53827 (_ BitVec 32))) (Intermediate!12858 (undefined!13670 Bool) (index!53828 (_ BitVec 32)) (x!135549 (_ BitVec 32))) (Undefined!12858) (MissingVacant!12858 (index!53829 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100867 (_ BitVec 32)) SeekEntryResult!12858)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100867 (_ BitVec 32)) SeekEntryResult!12858)

(assert (=> b!1513714 (= res!1033689 (= (seekEntryOrOpen!0 (select (arr!48666 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48666 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513715 () Bool)

(declare-fun e!844834 () Bool)

(declare-fun e!844836 () Bool)

(assert (=> b!1513715 (= e!844834 e!844836)))

(declare-fun res!1033685 () Bool)

(assert (=> b!1513715 (=> (not res!1033685) (not e!844836))))

(declare-fun lt!656052 () SeekEntryResult!12858)

(declare-fun lt!656051 () array!100867)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100867 (_ BitVec 32)) SeekEntryResult!12858)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513715 (= res!1033685 (= lt!656052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656053 mask!2512) lt!656053 lt!656051 mask!2512)))))

(assert (=> b!1513715 (= lt!656053 (select (store (arr!48666 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513715 (= lt!656051 (array!100868 (store (arr!48666 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49217 a!2804)))))

(declare-fun b!1513717 () Bool)

(assert (=> b!1513717 (= e!844832 e!844834)))

(declare-fun res!1033686 () Bool)

(assert (=> b!1513717 (=> (not res!1033686) (not e!844834))))

(declare-fun lt!656049 () SeekEntryResult!12858)

(assert (=> b!1513717 (= res!1033686 (= lt!656052 lt!656049))))

(assert (=> b!1513717 (= lt!656049 (Intermediate!12858 false resIndex!21 resX!21))))

(assert (=> b!1513717 (= lt!656052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48666 a!2804) j!70) mask!2512) (select (arr!48666 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513718 () Bool)

(assert (=> b!1513718 (= e!844835 (= (seekEntryOrOpen!0 lt!656053 lt!656051 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656053 lt!656051 mask!2512)))))

(declare-fun b!1513719 () Bool)

(declare-fun res!1033694 () Bool)

(assert (=> b!1513719 (=> (not res!1033694) (not e!844838))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100867 (_ BitVec 32)) SeekEntryResult!12858)

(assert (=> b!1513719 (= res!1033694 (= (seekEntry!0 (select (arr!48666 a!2804) j!70) a!2804 mask!2512) (Found!12858 j!70)))))

(declare-fun b!1513720 () Bool)

(declare-fun res!1033697 () Bool)

(assert (=> b!1513720 (=> (not res!1033697) (not e!844832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100867 (_ BitVec 32)) Bool)

(assert (=> b!1513720 (= res!1033697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513721 () Bool)

(declare-fun res!1033696 () Bool)

(assert (=> b!1513721 (=> (not res!1033696) (not e!844832))))

(assert (=> b!1513721 (= res!1033696 (validKeyInArray!0 (select (arr!48666 a!2804) i!961)))))

(declare-fun b!1513722 () Bool)

(assert (=> b!1513722 (= e!844836 (not true))))

(assert (=> b!1513722 e!844838))

(declare-fun res!1033698 () Bool)

(assert (=> b!1513722 (=> (not res!1033698) (not e!844838))))

(assert (=> b!1513722 (= res!1033698 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50540 0))(
  ( (Unit!50541) )
))
(declare-fun lt!656050 () Unit!50540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100867 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50540)

(assert (=> b!1513722 (= lt!656050 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513723 () Bool)

(declare-fun res!1033690 () Bool)

(assert (=> b!1513723 (=> (not res!1033690) (not e!844832))))

(declare-datatypes ((List!35329 0))(
  ( (Nil!35326) (Cons!35325 (h!36738 (_ BitVec 64)) (t!50030 List!35329)) )
))
(declare-fun arrayNoDuplicates!0 (array!100867 (_ BitVec 32) List!35329) Bool)

(assert (=> b!1513723 (= res!1033690 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35326))))

(declare-fun b!1513716 () Bool)

(declare-fun res!1033692 () Bool)

(assert (=> b!1513716 (=> (not res!1033692) (not e!844834))))

(assert (=> b!1513716 (= res!1033692 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48666 a!2804) j!70) a!2804 mask!2512) lt!656049))))

(declare-fun res!1033695 () Bool)

(assert (=> start!129098 (=> (not res!1033695) (not e!844832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129098 (= res!1033695 (validMask!0 mask!2512))))

(assert (=> start!129098 e!844832))

(assert (=> start!129098 true))

(declare-fun array_inv!37611 (array!100867) Bool)

(assert (=> start!129098 (array_inv!37611 a!2804)))

(assert (= (and start!129098 res!1033695) b!1513711))

(assert (= (and b!1513711 res!1033687) b!1513721))

(assert (= (and b!1513721 res!1033696) b!1513713))

(assert (= (and b!1513713 res!1033693) b!1513720))

(assert (= (and b!1513720 res!1033697) b!1513723))

(assert (= (and b!1513723 res!1033690) b!1513710))

(assert (= (and b!1513710 res!1033691) b!1513717))

(assert (= (and b!1513717 res!1033686) b!1513716))

(assert (= (and b!1513716 res!1033692) b!1513715))

(assert (= (and b!1513715 res!1033685) b!1513722))

(assert (= (and b!1513722 res!1033698) b!1513719))

(assert (= (and b!1513719 res!1033694) b!1513712))

(assert (= (and b!1513712 (not res!1033688)) b!1513714))

(assert (= (and b!1513714 res!1033689) b!1513718))

(declare-fun m!1396655 () Bool)

(assert (=> b!1513720 m!1396655))

(declare-fun m!1396657 () Bool)

(assert (=> b!1513712 m!1396657))

(declare-fun m!1396659 () Bool)

(assert (=> b!1513712 m!1396659))

(assert (=> b!1513716 m!1396657))

(assert (=> b!1513716 m!1396657))

(declare-fun m!1396661 () Bool)

(assert (=> b!1513716 m!1396661))

(declare-fun m!1396663 () Bool)

(assert (=> b!1513723 m!1396663))

(assert (=> b!1513713 m!1396657))

(assert (=> b!1513713 m!1396657))

(declare-fun m!1396665 () Bool)

(assert (=> b!1513713 m!1396665))

(assert (=> b!1513714 m!1396657))

(assert (=> b!1513714 m!1396657))

(declare-fun m!1396667 () Bool)

(assert (=> b!1513714 m!1396667))

(assert (=> b!1513714 m!1396657))

(declare-fun m!1396669 () Bool)

(assert (=> b!1513714 m!1396669))

(declare-fun m!1396671 () Bool)

(assert (=> b!1513718 m!1396671))

(declare-fun m!1396673 () Bool)

(assert (=> b!1513718 m!1396673))

(assert (=> b!1513719 m!1396657))

(assert (=> b!1513719 m!1396657))

(declare-fun m!1396675 () Bool)

(assert (=> b!1513719 m!1396675))

(declare-fun m!1396677 () Bool)

(assert (=> b!1513722 m!1396677))

(declare-fun m!1396679 () Bool)

(assert (=> b!1513722 m!1396679))

(assert (=> b!1513717 m!1396657))

(assert (=> b!1513717 m!1396657))

(declare-fun m!1396681 () Bool)

(assert (=> b!1513717 m!1396681))

(assert (=> b!1513717 m!1396681))

(assert (=> b!1513717 m!1396657))

(declare-fun m!1396683 () Bool)

(assert (=> b!1513717 m!1396683))

(declare-fun m!1396685 () Bool)

(assert (=> start!129098 m!1396685))

(declare-fun m!1396687 () Bool)

(assert (=> start!129098 m!1396687))

(declare-fun m!1396689 () Bool)

(assert (=> b!1513721 m!1396689))

(assert (=> b!1513721 m!1396689))

(declare-fun m!1396691 () Bool)

(assert (=> b!1513721 m!1396691))

(declare-fun m!1396693 () Bool)

(assert (=> b!1513715 m!1396693))

(assert (=> b!1513715 m!1396693))

(declare-fun m!1396695 () Bool)

(assert (=> b!1513715 m!1396695))

(declare-fun m!1396697 () Bool)

(assert (=> b!1513715 m!1396697))

(declare-fun m!1396699 () Bool)

(assert (=> b!1513715 m!1396699))

(push 1)

