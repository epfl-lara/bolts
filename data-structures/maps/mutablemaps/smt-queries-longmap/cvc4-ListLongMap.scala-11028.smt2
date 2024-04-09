; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129050 () Bool)

(assert start!129050)

(declare-fun b!1512712 () Bool)

(declare-fun res!1032690 () Bool)

(declare-fun e!844342 () Bool)

(assert (=> b!1512712 (=> (not res!1032690) (not e!844342))))

(declare-datatypes ((SeekEntryResult!12834 0))(
  ( (MissingZero!12834 (index!53730 (_ BitVec 32))) (Found!12834 (index!53731 (_ BitVec 32))) (Intermediate!12834 (undefined!13646 Bool) (index!53732 (_ BitVec 32)) (x!135461 (_ BitVec 32))) (Undefined!12834) (MissingVacant!12834 (index!53733 (_ BitVec 32))) )
))
(declare-fun lt!655710 () SeekEntryResult!12834)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100819 0))(
  ( (array!100820 (arr!48642 (Array (_ BitVec 32) (_ BitVec 64))) (size!49193 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100819)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100819 (_ BitVec 32)) SeekEntryResult!12834)

(assert (=> b!1512712 (= res!1032690 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48642 a!2804) j!70) a!2804 mask!2512) lt!655710))))

(declare-fun b!1512713 () Bool)

(declare-fun e!844341 () Bool)

(declare-fun e!844339 () Bool)

(assert (=> b!1512713 (= e!844341 e!844339)))

(declare-fun res!1032693 () Bool)

(assert (=> b!1512713 (=> res!1032693 e!844339)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512713 (= res!1032693 (or (not (= (select (arr!48642 a!2804) j!70) (select (store (arr!48642 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48642 a!2804) index!487) (select (arr!48642 a!2804) j!70)) (not (= (select (arr!48642 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512714 () Bool)

(declare-fun res!1032691 () Bool)

(assert (=> b!1512714 (=> (not res!1032691) (not e!844341))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100819 (_ BitVec 32)) SeekEntryResult!12834)

(assert (=> b!1512714 (= res!1032691 (= (seekEntry!0 (select (arr!48642 a!2804) j!70) a!2804 mask!2512) (Found!12834 j!70)))))

(declare-fun b!1512715 () Bool)

(assert (=> b!1512715 (= e!844342 (not true))))

(assert (=> b!1512715 e!844341))

(declare-fun res!1032698 () Bool)

(assert (=> b!1512715 (=> (not res!1032698) (not e!844341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100819 (_ BitVec 32)) Bool)

(assert (=> b!1512715 (= res!1032698 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50492 0))(
  ( (Unit!50493) )
))
(declare-fun lt!655711 () Unit!50492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50492)

(assert (=> b!1512715 (= lt!655711 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512716 () Bool)

(declare-fun res!1032699 () Bool)

(declare-fun e!844343 () Bool)

(assert (=> b!1512716 (=> (not res!1032699) (not e!844343))))

(assert (=> b!1512716 (= res!1032699 (and (= (size!49193 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49193 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49193 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512717 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100819 (_ BitVec 32)) SeekEntryResult!12834)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100819 (_ BitVec 32)) SeekEntryResult!12834)

(assert (=> b!1512717 (= e!844339 (= (seekEntryOrOpen!0 (select (arr!48642 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48642 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512718 () Bool)

(declare-fun res!1032687 () Bool)

(assert (=> b!1512718 (=> (not res!1032687) (not e!844343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512718 (= res!1032687 (validKeyInArray!0 (select (arr!48642 a!2804) i!961)))))

(declare-fun b!1512719 () Bool)

(declare-fun res!1032688 () Bool)

(assert (=> b!1512719 (=> (not res!1032688) (not e!844343))))

(declare-datatypes ((List!35305 0))(
  ( (Nil!35302) (Cons!35301 (h!36714 (_ BitVec 64)) (t!50006 List!35305)) )
))
(declare-fun arrayNoDuplicates!0 (array!100819 (_ BitVec 32) List!35305) Bool)

(assert (=> b!1512719 (= res!1032688 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35302))))

(declare-fun b!1512720 () Bool)

(declare-fun res!1032692 () Bool)

(assert (=> b!1512720 (=> (not res!1032692) (not e!844343))))

(assert (=> b!1512720 (= res!1032692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512721 () Bool)

(declare-fun res!1032694 () Bool)

(assert (=> b!1512721 (=> (not res!1032694) (not e!844342))))

(declare-fun lt!655709 () SeekEntryResult!12834)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512721 (= res!1032694 (= lt!655709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48642 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48642 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100820 (store (arr!48642 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49193 a!2804)) mask!2512)))))

(declare-fun b!1512722 () Bool)

(assert (=> b!1512722 (= e!844343 e!844342)))

(declare-fun res!1032697 () Bool)

(assert (=> b!1512722 (=> (not res!1032697) (not e!844342))))

(assert (=> b!1512722 (= res!1032697 (= lt!655709 lt!655710))))

(assert (=> b!1512722 (= lt!655710 (Intermediate!12834 false resIndex!21 resX!21))))

(assert (=> b!1512722 (= lt!655709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48642 a!2804) j!70) mask!2512) (select (arr!48642 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512723 () Bool)

(declare-fun res!1032689 () Bool)

(assert (=> b!1512723 (=> (not res!1032689) (not e!844343))))

(assert (=> b!1512723 (= res!1032689 (validKeyInArray!0 (select (arr!48642 a!2804) j!70)))))

(declare-fun res!1032696 () Bool)

(assert (=> start!129050 (=> (not res!1032696) (not e!844343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129050 (= res!1032696 (validMask!0 mask!2512))))

(assert (=> start!129050 e!844343))

(assert (=> start!129050 true))

(declare-fun array_inv!37587 (array!100819) Bool)

(assert (=> start!129050 (array_inv!37587 a!2804)))

(declare-fun b!1512724 () Bool)

(declare-fun res!1032695 () Bool)

(assert (=> b!1512724 (=> (not res!1032695) (not e!844343))))

(assert (=> b!1512724 (= res!1032695 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49193 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49193 a!2804))))))

(assert (= (and start!129050 res!1032696) b!1512716))

(assert (= (and b!1512716 res!1032699) b!1512718))

(assert (= (and b!1512718 res!1032687) b!1512723))

(assert (= (and b!1512723 res!1032689) b!1512720))

(assert (= (and b!1512720 res!1032692) b!1512719))

(assert (= (and b!1512719 res!1032688) b!1512724))

(assert (= (and b!1512724 res!1032695) b!1512722))

(assert (= (and b!1512722 res!1032697) b!1512712))

(assert (= (and b!1512712 res!1032690) b!1512721))

(assert (= (and b!1512721 res!1032694) b!1512715))

(assert (= (and b!1512715 res!1032698) b!1512714))

(assert (= (and b!1512714 res!1032691) b!1512713))

(assert (= (and b!1512713 (not res!1032693)) b!1512717))

(declare-fun m!1395561 () Bool)

(assert (=> b!1512723 m!1395561))

(assert (=> b!1512723 m!1395561))

(declare-fun m!1395563 () Bool)

(assert (=> b!1512723 m!1395563))

(declare-fun m!1395565 () Bool)

(assert (=> start!129050 m!1395565))

(declare-fun m!1395567 () Bool)

(assert (=> start!129050 m!1395567))

(declare-fun m!1395569 () Bool)

(assert (=> b!1512718 m!1395569))

(assert (=> b!1512718 m!1395569))

(declare-fun m!1395571 () Bool)

(assert (=> b!1512718 m!1395571))

(assert (=> b!1512712 m!1395561))

(assert (=> b!1512712 m!1395561))

(declare-fun m!1395573 () Bool)

(assert (=> b!1512712 m!1395573))

(assert (=> b!1512713 m!1395561))

(declare-fun m!1395575 () Bool)

(assert (=> b!1512713 m!1395575))

(declare-fun m!1395577 () Bool)

(assert (=> b!1512713 m!1395577))

(declare-fun m!1395579 () Bool)

(assert (=> b!1512713 m!1395579))

(declare-fun m!1395581 () Bool)

(assert (=> b!1512719 m!1395581))

(assert (=> b!1512714 m!1395561))

(assert (=> b!1512714 m!1395561))

(declare-fun m!1395583 () Bool)

(assert (=> b!1512714 m!1395583))

(assert (=> b!1512722 m!1395561))

(assert (=> b!1512722 m!1395561))

(declare-fun m!1395585 () Bool)

(assert (=> b!1512722 m!1395585))

(assert (=> b!1512722 m!1395585))

(assert (=> b!1512722 m!1395561))

(declare-fun m!1395587 () Bool)

(assert (=> b!1512722 m!1395587))

(declare-fun m!1395589 () Bool)

(assert (=> b!1512720 m!1395589))

(declare-fun m!1395591 () Bool)

(assert (=> b!1512715 m!1395591))

(declare-fun m!1395593 () Bool)

(assert (=> b!1512715 m!1395593))

(assert (=> b!1512717 m!1395561))

(assert (=> b!1512717 m!1395561))

(declare-fun m!1395595 () Bool)

(assert (=> b!1512717 m!1395595))

(assert (=> b!1512717 m!1395561))

(declare-fun m!1395597 () Bool)

(assert (=> b!1512717 m!1395597))

(assert (=> b!1512721 m!1395575))

(assert (=> b!1512721 m!1395577))

(assert (=> b!1512721 m!1395577))

(declare-fun m!1395599 () Bool)

(assert (=> b!1512721 m!1395599))

(assert (=> b!1512721 m!1395599))

(assert (=> b!1512721 m!1395577))

(declare-fun m!1395601 () Bool)

(assert (=> b!1512721 m!1395601))

(push 1)

