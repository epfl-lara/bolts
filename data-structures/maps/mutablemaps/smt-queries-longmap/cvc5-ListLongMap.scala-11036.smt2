; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129094 () Bool)

(assert start!129094)

(declare-fun b!1513627 () Bool)

(declare-fun res!1033614 () Bool)

(declare-fun e!844791 () Bool)

(assert (=> b!1513627 (=> (not res!1033614) (not e!844791))))

(declare-datatypes ((array!100863 0))(
  ( (array!100864 (arr!48664 (Array (_ BitVec 32) (_ BitVec 64))) (size!49215 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100863)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513627 (= res!1033614 (validKeyInArray!0 (select (arr!48664 a!2804) j!70)))))

(declare-fun b!1513628 () Bool)

(declare-fun res!1033608 () Bool)

(assert (=> b!1513628 (=> (not res!1033608) (not e!844791))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513628 (= res!1033608 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49215 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49215 a!2804))))))

(declare-fun b!1513629 () Bool)

(declare-fun e!844794 () Bool)

(assert (=> b!1513629 (= e!844794 (not true))))

(declare-fun e!844793 () Bool)

(assert (=> b!1513629 e!844793))

(declare-fun res!1033607 () Bool)

(assert (=> b!1513629 (=> (not res!1033607) (not e!844793))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100863 (_ BitVec 32)) Bool)

(assert (=> b!1513629 (= res!1033607 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50536 0))(
  ( (Unit!50537) )
))
(declare-fun lt!656019 () Unit!50536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100863 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50536)

(assert (=> b!1513629 (= lt!656019 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513630 () Bool)

(declare-fun e!844795 () Bool)

(assert (=> b!1513630 (= e!844793 e!844795)))

(declare-fun res!1033611 () Bool)

(assert (=> b!1513630 (=> res!1033611 e!844795)))

(declare-fun lt!656020 () (_ BitVec 64))

(assert (=> b!1513630 (= res!1033611 (or (not (= (select (arr!48664 a!2804) j!70) lt!656020)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48664 a!2804) index!487) (select (arr!48664 a!2804) j!70)) (not (= (select (arr!48664 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513631 () Bool)

(declare-fun res!1033612 () Bool)

(assert (=> b!1513631 (=> (not res!1033612) (not e!844793))))

(declare-datatypes ((SeekEntryResult!12856 0))(
  ( (MissingZero!12856 (index!53818 (_ BitVec 32))) (Found!12856 (index!53819 (_ BitVec 32))) (Intermediate!12856 (undefined!13668 Bool) (index!53820 (_ BitVec 32)) (x!135547 (_ BitVec 32))) (Undefined!12856) (MissingVacant!12856 (index!53821 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100863 (_ BitVec 32)) SeekEntryResult!12856)

(assert (=> b!1513631 (= res!1033612 (= (seekEntry!0 (select (arr!48664 a!2804) j!70) a!2804 mask!2512) (Found!12856 j!70)))))

(declare-fun b!1513632 () Bool)

(declare-fun e!844796 () Bool)

(assert (=> b!1513632 (= e!844796 e!844794)))

(declare-fun res!1033602 () Bool)

(assert (=> b!1513632 (=> (not res!1033602) (not e!844794))))

(declare-fun lt!656021 () SeekEntryResult!12856)

(declare-fun lt!656023 () array!100863)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100863 (_ BitVec 32)) SeekEntryResult!12856)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513632 (= res!1033602 (= lt!656021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656020 mask!2512) lt!656020 lt!656023 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513632 (= lt!656020 (select (store (arr!48664 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513632 (= lt!656023 (array!100864 (store (arr!48664 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49215 a!2804)))))

(declare-fun b!1513633 () Bool)

(declare-fun res!1033604 () Bool)

(assert (=> b!1513633 (=> (not res!1033604) (not e!844791))))

(assert (=> b!1513633 (= res!1033604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513634 () Bool)

(declare-fun res!1033610 () Bool)

(assert (=> b!1513634 (=> (not res!1033610) (not e!844791))))

(declare-datatypes ((List!35327 0))(
  ( (Nil!35324) (Cons!35323 (h!36736 (_ BitVec 64)) (t!50028 List!35327)) )
))
(declare-fun arrayNoDuplicates!0 (array!100863 (_ BitVec 32) List!35327) Bool)

(assert (=> b!1513634 (= res!1033610 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35324))))

(declare-fun e!844790 () Bool)

(declare-fun b!1513635 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100863 (_ BitVec 32)) SeekEntryResult!12856)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100863 (_ BitVec 32)) SeekEntryResult!12856)

(assert (=> b!1513635 (= e!844790 (= (seekEntryOrOpen!0 lt!656020 lt!656023 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656020 lt!656023 mask!2512)))))

(declare-fun b!1513636 () Bool)

(declare-fun res!1033605 () Bool)

(assert (=> b!1513636 (=> (not res!1033605) (not e!844791))))

(assert (=> b!1513636 (= res!1033605 (validKeyInArray!0 (select (arr!48664 a!2804) i!961)))))

(declare-fun b!1513637 () Bool)

(declare-fun res!1033601 () Bool)

(assert (=> b!1513637 (=> (not res!1033601) (not e!844796))))

(declare-fun lt!656022 () SeekEntryResult!12856)

(assert (=> b!1513637 (= res!1033601 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48664 a!2804) j!70) a!2804 mask!2512) lt!656022))))

(declare-fun res!1033606 () Bool)

(assert (=> start!129094 (=> (not res!1033606) (not e!844791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129094 (= res!1033606 (validMask!0 mask!2512))))

(assert (=> start!129094 e!844791))

(assert (=> start!129094 true))

(declare-fun array_inv!37609 (array!100863) Bool)

(assert (=> start!129094 (array_inv!37609 a!2804)))

(declare-fun b!1513626 () Bool)

(assert (=> b!1513626 (= e!844795 e!844790)))

(declare-fun res!1033603 () Bool)

(assert (=> b!1513626 (=> (not res!1033603) (not e!844790))))

(assert (=> b!1513626 (= res!1033603 (= (seekEntryOrOpen!0 (select (arr!48664 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48664 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513638 () Bool)

(assert (=> b!1513638 (= e!844791 e!844796)))

(declare-fun res!1033613 () Bool)

(assert (=> b!1513638 (=> (not res!1033613) (not e!844796))))

(assert (=> b!1513638 (= res!1033613 (= lt!656021 lt!656022))))

(assert (=> b!1513638 (= lt!656022 (Intermediate!12856 false resIndex!21 resX!21))))

(assert (=> b!1513638 (= lt!656021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48664 a!2804) j!70) mask!2512) (select (arr!48664 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513639 () Bool)

(declare-fun res!1033609 () Bool)

(assert (=> b!1513639 (=> (not res!1033609) (not e!844791))))

(assert (=> b!1513639 (= res!1033609 (and (= (size!49215 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49215 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49215 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129094 res!1033606) b!1513639))

(assert (= (and b!1513639 res!1033609) b!1513636))

(assert (= (and b!1513636 res!1033605) b!1513627))

(assert (= (and b!1513627 res!1033614) b!1513633))

(assert (= (and b!1513633 res!1033604) b!1513634))

(assert (= (and b!1513634 res!1033610) b!1513628))

(assert (= (and b!1513628 res!1033608) b!1513638))

(assert (= (and b!1513638 res!1033613) b!1513637))

(assert (= (and b!1513637 res!1033601) b!1513632))

(assert (= (and b!1513632 res!1033602) b!1513629))

(assert (= (and b!1513629 res!1033607) b!1513631))

(assert (= (and b!1513631 res!1033612) b!1513630))

(assert (= (and b!1513630 (not res!1033611)) b!1513626))

(assert (= (and b!1513626 res!1033603) b!1513635))

(declare-fun m!1396563 () Bool)

(assert (=> b!1513636 m!1396563))

(assert (=> b!1513636 m!1396563))

(declare-fun m!1396565 () Bool)

(assert (=> b!1513636 m!1396565))

(declare-fun m!1396567 () Bool)

(assert (=> b!1513634 m!1396567))

(declare-fun m!1396569 () Bool)

(assert (=> start!129094 m!1396569))

(declare-fun m!1396571 () Bool)

(assert (=> start!129094 m!1396571))

(declare-fun m!1396573 () Bool)

(assert (=> b!1513632 m!1396573))

(assert (=> b!1513632 m!1396573))

(declare-fun m!1396575 () Bool)

(assert (=> b!1513632 m!1396575))

(declare-fun m!1396577 () Bool)

(assert (=> b!1513632 m!1396577))

(declare-fun m!1396579 () Bool)

(assert (=> b!1513632 m!1396579))

(declare-fun m!1396581 () Bool)

(assert (=> b!1513637 m!1396581))

(assert (=> b!1513637 m!1396581))

(declare-fun m!1396583 () Bool)

(assert (=> b!1513637 m!1396583))

(declare-fun m!1396585 () Bool)

(assert (=> b!1513635 m!1396585))

(declare-fun m!1396587 () Bool)

(assert (=> b!1513635 m!1396587))

(declare-fun m!1396589 () Bool)

(assert (=> b!1513633 m!1396589))

(assert (=> b!1513638 m!1396581))

(assert (=> b!1513638 m!1396581))

(declare-fun m!1396591 () Bool)

(assert (=> b!1513638 m!1396591))

(assert (=> b!1513638 m!1396591))

(assert (=> b!1513638 m!1396581))

(declare-fun m!1396593 () Bool)

(assert (=> b!1513638 m!1396593))

(assert (=> b!1513631 m!1396581))

(assert (=> b!1513631 m!1396581))

(declare-fun m!1396595 () Bool)

(assert (=> b!1513631 m!1396595))

(assert (=> b!1513630 m!1396581))

(declare-fun m!1396597 () Bool)

(assert (=> b!1513630 m!1396597))

(assert (=> b!1513627 m!1396581))

(assert (=> b!1513627 m!1396581))

(declare-fun m!1396599 () Bool)

(assert (=> b!1513627 m!1396599))

(declare-fun m!1396601 () Bool)

(assert (=> b!1513629 m!1396601))

(declare-fun m!1396603 () Bool)

(assert (=> b!1513629 m!1396603))

(assert (=> b!1513626 m!1396581))

(assert (=> b!1513626 m!1396581))

(declare-fun m!1396605 () Bool)

(assert (=> b!1513626 m!1396605))

(assert (=> b!1513626 m!1396581))

(declare-fun m!1396607 () Bool)

(assert (=> b!1513626 m!1396607))

(push 1)

