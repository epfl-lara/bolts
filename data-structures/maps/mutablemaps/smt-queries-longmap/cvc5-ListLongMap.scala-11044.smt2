; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129142 () Bool)

(assert start!129142)

(declare-fun b!1514634 () Bool)

(declare-fun e!845300 () Bool)

(declare-fun e!845299 () Bool)

(assert (=> b!1514634 (= e!845300 e!845299)))

(declare-fun res!1034618 () Bool)

(assert (=> b!1514634 (=> (not res!1034618) (not e!845299))))

(declare-datatypes ((SeekEntryResult!12880 0))(
  ( (MissingZero!12880 (index!53914 (_ BitVec 32))) (Found!12880 (index!53915 (_ BitVec 32))) (Intermediate!12880 (undefined!13692 Bool) (index!53916 (_ BitVec 32)) (x!135635 (_ BitVec 32))) (Undefined!12880) (MissingVacant!12880 (index!53917 (_ BitVec 32))) )
))
(declare-fun lt!656379 () SeekEntryResult!12880)

(declare-fun lt!656382 () SeekEntryResult!12880)

(assert (=> b!1514634 (= res!1034618 (= lt!656379 lt!656382))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514634 (= lt!656382 (Intermediate!12880 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100911 0))(
  ( (array!100912 (arr!48688 (Array (_ BitVec 32) (_ BitVec 64))) (size!49239 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100911)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100911 (_ BitVec 32)) SeekEntryResult!12880)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514634 (= lt!656379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48688 a!2804) j!70) mask!2512) (select (arr!48688 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514635 () Bool)

(declare-fun res!1034613 () Bool)

(assert (=> b!1514635 (=> (not res!1034613) (not e!845300))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514635 (= res!1034613 (validKeyInArray!0 (select (arr!48688 a!2804) i!961)))))

(declare-fun b!1514636 () Bool)

(declare-fun res!1034621 () Bool)

(assert (=> b!1514636 (=> (not res!1034621) (not e!845300))))

(assert (=> b!1514636 (= res!1034621 (validKeyInArray!0 (select (arr!48688 a!2804) j!70)))))

(declare-fun b!1514637 () Bool)

(declare-fun e!845295 () Bool)

(assert (=> b!1514637 (= e!845295 (not true))))

(declare-fun e!845296 () Bool)

(assert (=> b!1514637 e!845296))

(declare-fun res!1034617 () Bool)

(assert (=> b!1514637 (=> (not res!1034617) (not e!845296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100911 (_ BitVec 32)) Bool)

(assert (=> b!1514637 (= res!1034617 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50584 0))(
  ( (Unit!50585) )
))
(declare-fun lt!656381 () Unit!50584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100911 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50584)

(assert (=> b!1514637 (= lt!656381 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514638 () Bool)

(declare-fun res!1034609 () Bool)

(assert (=> b!1514638 (=> (not res!1034609) (not e!845296))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100911 (_ BitVec 32)) SeekEntryResult!12880)

(assert (=> b!1514638 (= res!1034609 (= (seekEntry!0 (select (arr!48688 a!2804) j!70) a!2804 mask!2512) (Found!12880 j!70)))))

(declare-fun b!1514639 () Bool)

(declare-fun res!1034619 () Bool)

(assert (=> b!1514639 (=> (not res!1034619) (not e!845300))))

(assert (=> b!1514639 (= res!1034619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514640 () Bool)

(declare-fun res!1034622 () Bool)

(assert (=> b!1514640 (=> (not res!1034622) (not e!845300))))

(assert (=> b!1514640 (= res!1034622 (and (= (size!49239 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49239 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49239 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514641 () Bool)

(declare-fun res!1034611 () Bool)

(assert (=> b!1514641 (=> (not res!1034611) (not e!845300))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1514641 (= res!1034611 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49239 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49239 a!2804))))))

(declare-fun b!1514642 () Bool)

(declare-fun res!1034612 () Bool)

(assert (=> b!1514642 (=> (not res!1034612) (not e!845300))))

(declare-datatypes ((List!35351 0))(
  ( (Nil!35348) (Cons!35347 (h!36760 (_ BitVec 64)) (t!50052 List!35351)) )
))
(declare-fun arrayNoDuplicates!0 (array!100911 (_ BitVec 32) List!35351) Bool)

(assert (=> b!1514642 (= res!1034612 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35348))))

(declare-fun res!1034610 () Bool)

(assert (=> start!129142 (=> (not res!1034610) (not e!845300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129142 (= res!1034610 (validMask!0 mask!2512))))

(assert (=> start!129142 e!845300))

(assert (=> start!129142 true))

(declare-fun array_inv!37633 (array!100911) Bool)

(assert (=> start!129142 (array_inv!37633 a!2804)))

(declare-fun b!1514643 () Bool)

(assert (=> b!1514643 (= e!845299 e!845295)))

(declare-fun res!1034616 () Bool)

(assert (=> b!1514643 (=> (not res!1034616) (not e!845295))))

(declare-fun lt!656380 () (_ BitVec 64))

(declare-fun lt!656383 () array!100911)

(assert (=> b!1514643 (= res!1034616 (= lt!656379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656380 mask!2512) lt!656380 lt!656383 mask!2512)))))

(assert (=> b!1514643 (= lt!656380 (select (store (arr!48688 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514643 (= lt!656383 (array!100912 (store (arr!48688 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49239 a!2804)))))

(declare-fun b!1514644 () Bool)

(declare-fun e!845297 () Bool)

(assert (=> b!1514644 (= e!845296 e!845297)))

(declare-fun res!1034614 () Bool)

(assert (=> b!1514644 (=> res!1034614 e!845297)))

(assert (=> b!1514644 (= res!1034614 (or (not (= (select (arr!48688 a!2804) j!70) lt!656380)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48688 a!2804) index!487) (select (arr!48688 a!2804) j!70)) (not (= (select (arr!48688 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845294 () Bool)

(declare-fun b!1514645 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100911 (_ BitVec 32)) SeekEntryResult!12880)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100911 (_ BitVec 32)) SeekEntryResult!12880)

(assert (=> b!1514645 (= e!845294 (= (seekEntryOrOpen!0 lt!656380 lt!656383 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656380 lt!656383 mask!2512)))))

(declare-fun b!1514646 () Bool)

(declare-fun res!1034620 () Bool)

(assert (=> b!1514646 (=> (not res!1034620) (not e!845299))))

(assert (=> b!1514646 (= res!1034620 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48688 a!2804) j!70) a!2804 mask!2512) lt!656382))))

(declare-fun b!1514647 () Bool)

(assert (=> b!1514647 (= e!845297 e!845294)))

(declare-fun res!1034615 () Bool)

(assert (=> b!1514647 (=> (not res!1034615) (not e!845294))))

(assert (=> b!1514647 (= res!1034615 (= (seekEntryOrOpen!0 (select (arr!48688 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48688 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!129142 res!1034610) b!1514640))

(assert (= (and b!1514640 res!1034622) b!1514635))

(assert (= (and b!1514635 res!1034613) b!1514636))

(assert (= (and b!1514636 res!1034621) b!1514639))

(assert (= (and b!1514639 res!1034619) b!1514642))

(assert (= (and b!1514642 res!1034612) b!1514641))

(assert (= (and b!1514641 res!1034611) b!1514634))

(assert (= (and b!1514634 res!1034618) b!1514646))

(assert (= (and b!1514646 res!1034620) b!1514643))

(assert (= (and b!1514643 res!1034616) b!1514637))

(assert (= (and b!1514637 res!1034617) b!1514638))

(assert (= (and b!1514638 res!1034609) b!1514644))

(assert (= (and b!1514644 (not res!1034614)) b!1514647))

(assert (= (and b!1514647 res!1034615) b!1514645))

(declare-fun m!1397667 () Bool)

(assert (=> b!1514634 m!1397667))

(assert (=> b!1514634 m!1397667))

(declare-fun m!1397669 () Bool)

(assert (=> b!1514634 m!1397669))

(assert (=> b!1514634 m!1397669))

(assert (=> b!1514634 m!1397667))

(declare-fun m!1397671 () Bool)

(assert (=> b!1514634 m!1397671))

(assert (=> b!1514636 m!1397667))

(assert (=> b!1514636 m!1397667))

(declare-fun m!1397673 () Bool)

(assert (=> b!1514636 m!1397673))

(declare-fun m!1397675 () Bool)

(assert (=> b!1514637 m!1397675))

(declare-fun m!1397677 () Bool)

(assert (=> b!1514637 m!1397677))

(assert (=> b!1514644 m!1397667))

(declare-fun m!1397679 () Bool)

(assert (=> b!1514644 m!1397679))

(declare-fun m!1397681 () Bool)

(assert (=> start!129142 m!1397681))

(declare-fun m!1397683 () Bool)

(assert (=> start!129142 m!1397683))

(assert (=> b!1514646 m!1397667))

(assert (=> b!1514646 m!1397667))

(declare-fun m!1397685 () Bool)

(assert (=> b!1514646 m!1397685))

(assert (=> b!1514638 m!1397667))

(assert (=> b!1514638 m!1397667))

(declare-fun m!1397687 () Bool)

(assert (=> b!1514638 m!1397687))

(declare-fun m!1397689 () Bool)

(assert (=> b!1514645 m!1397689))

(declare-fun m!1397691 () Bool)

(assert (=> b!1514645 m!1397691))

(assert (=> b!1514647 m!1397667))

(assert (=> b!1514647 m!1397667))

(declare-fun m!1397693 () Bool)

(assert (=> b!1514647 m!1397693))

(assert (=> b!1514647 m!1397667))

(declare-fun m!1397695 () Bool)

(assert (=> b!1514647 m!1397695))

(declare-fun m!1397697 () Bool)

(assert (=> b!1514639 m!1397697))

(declare-fun m!1397699 () Bool)

(assert (=> b!1514642 m!1397699))

(declare-fun m!1397701 () Bool)

(assert (=> b!1514643 m!1397701))

(assert (=> b!1514643 m!1397701))

(declare-fun m!1397703 () Bool)

(assert (=> b!1514643 m!1397703))

(declare-fun m!1397705 () Bool)

(assert (=> b!1514643 m!1397705))

(declare-fun m!1397707 () Bool)

(assert (=> b!1514643 m!1397707))

(declare-fun m!1397709 () Bool)

(assert (=> b!1514635 m!1397709))

(assert (=> b!1514635 m!1397709))

(declare-fun m!1397711 () Bool)

(assert (=> b!1514635 m!1397711))

(push 1)

