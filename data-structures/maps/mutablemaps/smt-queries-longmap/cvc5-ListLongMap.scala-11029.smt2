; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129052 () Bool)

(assert start!129052)

(declare-fun b!1512751 () Bool)

(declare-fun res!1032738 () Bool)

(declare-fun e!844361 () Bool)

(assert (=> b!1512751 (=> (not res!1032738) (not e!844361))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-datatypes ((array!100821 0))(
  ( (array!100822 (arr!48643 (Array (_ BitVec 32) (_ BitVec 64))) (size!49194 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100821)

(assert (=> b!1512751 (= res!1032738 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49194 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49194 a!2804))))))

(declare-fun res!1032733 () Bool)

(assert (=> start!129052 (=> (not res!1032733) (not e!844361))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129052 (= res!1032733 (validMask!0 mask!2512))))

(assert (=> start!129052 e!844361))

(assert (=> start!129052 true))

(declare-fun array_inv!37588 (array!100821) Bool)

(assert (=> start!129052 (array_inv!37588 a!2804)))

(declare-fun b!1512752 () Bool)

(declare-fun res!1032735 () Bool)

(assert (=> b!1512752 (=> (not res!1032735) (not e!844361))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512752 (= res!1032735 (validKeyInArray!0 (select (arr!48643 a!2804) i!961)))))

(declare-fun b!1512753 () Bool)

(declare-fun res!1032734 () Bool)

(assert (=> b!1512753 (=> (not res!1032734) (not e!844361))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1512753 (= res!1032734 (and (= (size!49194 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49194 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49194 a!2804)) (not (= i!961 j!70))))))

(declare-fun e!844359 () Bool)

(declare-fun b!1512754 () Bool)

(declare-datatypes ((SeekEntryResult!12835 0))(
  ( (MissingZero!12835 (index!53734 (_ BitVec 32))) (Found!12835 (index!53735 (_ BitVec 32))) (Intermediate!12835 (undefined!13647 Bool) (index!53736 (_ BitVec 32)) (x!135470 (_ BitVec 32))) (Undefined!12835) (MissingVacant!12835 (index!53737 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100821 (_ BitVec 32)) SeekEntryResult!12835)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100821 (_ BitVec 32)) SeekEntryResult!12835)

(assert (=> b!1512754 (= e!844359 (= (seekEntryOrOpen!0 (select (arr!48643 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48643 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512755 () Bool)

(declare-fun res!1032726 () Bool)

(declare-fun e!844357 () Bool)

(assert (=> b!1512755 (=> (not res!1032726) (not e!844357))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100821 (_ BitVec 32)) SeekEntryResult!12835)

(assert (=> b!1512755 (= res!1032726 (= (seekEntry!0 (select (arr!48643 a!2804) j!70) a!2804 mask!2512) (Found!12835 j!70)))))

(declare-fun b!1512756 () Bool)

(assert (=> b!1512756 (= e!844357 e!844359)))

(declare-fun res!1032728 () Bool)

(assert (=> b!1512756 (=> res!1032728 e!844359)))

(declare-fun lt!655723 () (_ BitVec 64))

(assert (=> b!1512756 (= res!1032728 (or (not (= (select (arr!48643 a!2804) j!70) lt!655723)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48643 a!2804) index!487) (select (arr!48643 a!2804) j!70)) (not (= (select (arr!48643 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!844356 () Bool)

(declare-fun b!1512757 () Bool)

(assert (=> b!1512757 (= e!844356 (not (or (not (= (select (arr!48643 a!2804) j!70) lt!655723)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48643 a!2804) index!487) (select (arr!48643 a!2804) j!70)) (not (= (select (arr!48643 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512)) (= (select (store (arr!48643 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1512757 e!844357))

(declare-fun res!1032737 () Bool)

(assert (=> b!1512757 (=> (not res!1032737) (not e!844357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100821 (_ BitVec 32)) Bool)

(assert (=> b!1512757 (= res!1032737 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50494 0))(
  ( (Unit!50495) )
))
(declare-fun lt!655722 () Unit!50494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50494)

(assert (=> b!1512757 (= lt!655722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512758 () Bool)

(declare-fun res!1032727 () Bool)

(declare-fun e!844358 () Bool)

(assert (=> b!1512758 (=> (not res!1032727) (not e!844358))))

(declare-fun lt!655721 () SeekEntryResult!12835)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100821 (_ BitVec 32)) SeekEntryResult!12835)

(assert (=> b!1512758 (= res!1032727 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48643 a!2804) j!70) a!2804 mask!2512) lt!655721))))

(declare-fun b!1512759 () Bool)

(assert (=> b!1512759 (= e!844361 e!844358)))

(declare-fun res!1032732 () Bool)

(assert (=> b!1512759 (=> (not res!1032732) (not e!844358))))

(declare-fun lt!655720 () SeekEntryResult!12835)

(assert (=> b!1512759 (= res!1032732 (= lt!655720 lt!655721))))

(assert (=> b!1512759 (= lt!655721 (Intermediate!12835 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512759 (= lt!655720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48643 a!2804) j!70) mask!2512) (select (arr!48643 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512760 () Bool)

(declare-fun res!1032731 () Bool)

(assert (=> b!1512760 (=> (not res!1032731) (not e!844361))))

(declare-datatypes ((List!35306 0))(
  ( (Nil!35303) (Cons!35302 (h!36715 (_ BitVec 64)) (t!50007 List!35306)) )
))
(declare-fun arrayNoDuplicates!0 (array!100821 (_ BitVec 32) List!35306) Bool)

(assert (=> b!1512760 (= res!1032731 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35303))))

(declare-fun b!1512761 () Bool)

(declare-fun res!1032730 () Bool)

(assert (=> b!1512761 (=> (not res!1032730) (not e!844361))))

(assert (=> b!1512761 (= res!1032730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512762 () Bool)

(declare-fun res!1032729 () Bool)

(assert (=> b!1512762 (=> (not res!1032729) (not e!844361))))

(assert (=> b!1512762 (= res!1032729 (validKeyInArray!0 (select (arr!48643 a!2804) j!70)))))

(declare-fun b!1512763 () Bool)

(assert (=> b!1512763 (= e!844358 e!844356)))

(declare-fun res!1032736 () Bool)

(assert (=> b!1512763 (=> (not res!1032736) (not e!844356))))

(assert (=> b!1512763 (= res!1032736 (= lt!655720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655723 mask!2512) lt!655723 (array!100822 (store (arr!48643 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49194 a!2804)) mask!2512)))))

(assert (=> b!1512763 (= lt!655723 (select (store (arr!48643 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (= (and start!129052 res!1032733) b!1512753))

(assert (= (and b!1512753 res!1032734) b!1512752))

(assert (= (and b!1512752 res!1032735) b!1512762))

(assert (= (and b!1512762 res!1032729) b!1512761))

(assert (= (and b!1512761 res!1032730) b!1512760))

(assert (= (and b!1512760 res!1032731) b!1512751))

(assert (= (and b!1512751 res!1032738) b!1512759))

(assert (= (and b!1512759 res!1032732) b!1512758))

(assert (= (and b!1512758 res!1032727) b!1512763))

(assert (= (and b!1512763 res!1032736) b!1512757))

(assert (= (and b!1512757 res!1032737) b!1512755))

(assert (= (and b!1512755 res!1032726) b!1512756))

(assert (= (and b!1512756 (not res!1032728)) b!1512754))

(declare-fun m!1395603 () Bool)

(assert (=> b!1512755 m!1395603))

(assert (=> b!1512755 m!1395603))

(declare-fun m!1395605 () Bool)

(assert (=> b!1512755 m!1395605))

(assert (=> b!1512758 m!1395603))

(assert (=> b!1512758 m!1395603))

(declare-fun m!1395607 () Bool)

(assert (=> b!1512758 m!1395607))

(declare-fun m!1395609 () Bool)

(assert (=> b!1512761 m!1395609))

(assert (=> b!1512759 m!1395603))

(assert (=> b!1512759 m!1395603))

(declare-fun m!1395611 () Bool)

(assert (=> b!1512759 m!1395611))

(assert (=> b!1512759 m!1395611))

(assert (=> b!1512759 m!1395603))

(declare-fun m!1395613 () Bool)

(assert (=> b!1512759 m!1395613))

(assert (=> b!1512756 m!1395603))

(declare-fun m!1395615 () Bool)

(assert (=> b!1512756 m!1395615))

(declare-fun m!1395617 () Bool)

(assert (=> b!1512760 m!1395617))

(declare-fun m!1395619 () Bool)

(assert (=> b!1512763 m!1395619))

(declare-fun m!1395621 () Bool)

(assert (=> b!1512763 m!1395621))

(assert (=> b!1512763 m!1395619))

(declare-fun m!1395623 () Bool)

(assert (=> b!1512763 m!1395623))

(declare-fun m!1395625 () Bool)

(assert (=> b!1512763 m!1395625))

(assert (=> b!1512762 m!1395603))

(assert (=> b!1512762 m!1395603))

(declare-fun m!1395627 () Bool)

(assert (=> b!1512762 m!1395627))

(declare-fun m!1395629 () Bool)

(assert (=> b!1512752 m!1395629))

(assert (=> b!1512752 m!1395629))

(declare-fun m!1395631 () Bool)

(assert (=> b!1512752 m!1395631))

(assert (=> b!1512754 m!1395603))

(assert (=> b!1512754 m!1395603))

(declare-fun m!1395633 () Bool)

(assert (=> b!1512754 m!1395633))

(assert (=> b!1512754 m!1395603))

(declare-fun m!1395635 () Bool)

(assert (=> b!1512754 m!1395635))

(assert (=> b!1512757 m!1395603))

(declare-fun m!1395637 () Bool)

(assert (=> b!1512757 m!1395637))

(assert (=> b!1512757 m!1395621))

(assert (=> b!1512757 m!1395615))

(declare-fun m!1395639 () Bool)

(assert (=> b!1512757 m!1395639))

(declare-fun m!1395641 () Bool)

(assert (=> b!1512757 m!1395641))

(declare-fun m!1395643 () Bool)

(assert (=> start!129052 m!1395643))

(declare-fun m!1395645 () Bool)

(assert (=> start!129052 m!1395645))

(push 1)

