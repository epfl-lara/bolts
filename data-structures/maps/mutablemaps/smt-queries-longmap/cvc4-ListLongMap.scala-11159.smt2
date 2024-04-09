; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130472 () Bool)

(assert start!130472)

(declare-fun b!1530762 () Bool)

(declare-fun res!1048250 () Bool)

(declare-fun e!853000 () Bool)

(assert (=> b!1530762 (=> (not res!1048250) (not e!853000))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101635 0))(
  ( (array!101636 (arr!49035 (Array (_ BitVec 32) (_ BitVec 64))) (size!49586 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101635)

(assert (=> b!1530762 (= res!1048250 (and (= (size!49586 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49586 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49586 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530763 () Bool)

(declare-fun res!1048245 () Bool)

(assert (=> b!1530763 (=> (not res!1048245) (not e!853000))))

(declare-datatypes ((List!35698 0))(
  ( (Nil!35695) (Cons!35694 (h!37137 (_ BitVec 64)) (t!50399 List!35698)) )
))
(declare-fun arrayNoDuplicates!0 (array!101635 (_ BitVec 32) List!35698) Bool)

(assert (=> b!1530763 (= res!1048245 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35695))))

(declare-fun b!1530764 () Bool)

(declare-fun res!1048240 () Bool)

(assert (=> b!1530764 (=> (not res!1048240) (not e!853000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101635 (_ BitVec 32)) Bool)

(assert (=> b!1530764 (= res!1048240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530765 () Bool)

(declare-fun res!1048248 () Bool)

(declare-fun e!853004 () Bool)

(assert (=> b!1530765 (=> (not res!1048248) (not e!853004))))

(declare-datatypes ((SeekEntryResult!13221 0))(
  ( (MissingZero!13221 (index!55278 (_ BitVec 32))) (Found!13221 (index!55279 (_ BitVec 32))) (Intermediate!13221 (undefined!14033 Bool) (index!55280 (_ BitVec 32)) (x!136977 (_ BitVec 32))) (Undefined!13221) (MissingVacant!13221 (index!55281 (_ BitVec 32))) )
))
(declare-fun lt!662939 () SeekEntryResult!13221)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101635 (_ BitVec 32)) SeekEntryResult!13221)

(assert (=> b!1530765 (= res!1048248 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49035 a!2804) j!70) a!2804 mask!2512) lt!662939))))

(declare-fun b!1530766 () Bool)

(declare-fun e!853001 () Bool)

(assert (=> b!1530766 (= e!853001 true)))

(declare-fun lt!662941 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530766 (= lt!662941 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530767 () Bool)

(declare-fun res!1048247 () Bool)

(assert (=> b!1530767 (=> (not res!1048247) (not e!853000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530767 (= res!1048247 (validKeyInArray!0 (select (arr!49035 a!2804) j!70)))))

(declare-fun b!1530768 () Bool)

(declare-fun res!1048242 () Bool)

(assert (=> b!1530768 (=> (not res!1048242) (not e!853004))))

(declare-fun lt!662938 () SeekEntryResult!13221)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530768 (= res!1048242 (= lt!662938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49035 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49035 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101636 (store (arr!49035 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49586 a!2804)) mask!2512)))))

(declare-fun b!1530769 () Bool)

(declare-fun res!1048251 () Bool)

(assert (=> b!1530769 (=> (not res!1048251) (not e!853000))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530769 (= res!1048251 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49586 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49586 a!2804))))))

(declare-fun b!1530770 () Bool)

(declare-fun res!1048249 () Bool)

(assert (=> b!1530770 (=> (not res!1048249) (not e!853000))))

(assert (=> b!1530770 (= res!1048249 (validKeyInArray!0 (select (arr!49035 a!2804) i!961)))))

(declare-fun b!1530761 () Bool)

(assert (=> b!1530761 (= e!853004 (not e!853001))))

(declare-fun res!1048243 () Bool)

(assert (=> b!1530761 (=> res!1048243 e!853001)))

(assert (=> b!1530761 (= res!1048243 (or (not (= (select (arr!49035 a!2804) j!70) (select (store (arr!49035 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853003 () Bool)

(assert (=> b!1530761 e!853003))

(declare-fun res!1048241 () Bool)

(assert (=> b!1530761 (=> (not res!1048241) (not e!853003))))

(assert (=> b!1530761 (= res!1048241 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51182 0))(
  ( (Unit!51183) )
))
(declare-fun lt!662940 () Unit!51182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51182)

(assert (=> b!1530761 (= lt!662940 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1048246 () Bool)

(assert (=> start!130472 (=> (not res!1048246) (not e!853000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130472 (= res!1048246 (validMask!0 mask!2512))))

(assert (=> start!130472 e!853000))

(assert (=> start!130472 true))

(declare-fun array_inv!37980 (array!101635) Bool)

(assert (=> start!130472 (array_inv!37980 a!2804)))

(declare-fun b!1530771 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101635 (_ BitVec 32)) SeekEntryResult!13221)

(assert (=> b!1530771 (= e!853003 (= (seekEntry!0 (select (arr!49035 a!2804) j!70) a!2804 mask!2512) (Found!13221 j!70)))))

(declare-fun b!1530772 () Bool)

(assert (=> b!1530772 (= e!853000 e!853004)))

(declare-fun res!1048244 () Bool)

(assert (=> b!1530772 (=> (not res!1048244) (not e!853004))))

(assert (=> b!1530772 (= res!1048244 (= lt!662938 lt!662939))))

(assert (=> b!1530772 (= lt!662939 (Intermediate!13221 false resIndex!21 resX!21))))

(assert (=> b!1530772 (= lt!662938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49035 a!2804) j!70) mask!2512) (select (arr!49035 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130472 res!1048246) b!1530762))

(assert (= (and b!1530762 res!1048250) b!1530770))

(assert (= (and b!1530770 res!1048249) b!1530767))

(assert (= (and b!1530767 res!1048247) b!1530764))

(assert (= (and b!1530764 res!1048240) b!1530763))

(assert (= (and b!1530763 res!1048245) b!1530769))

(assert (= (and b!1530769 res!1048251) b!1530772))

(assert (= (and b!1530772 res!1048244) b!1530765))

(assert (= (and b!1530765 res!1048248) b!1530768))

(assert (= (and b!1530768 res!1048242) b!1530761))

(assert (= (and b!1530761 res!1048241) b!1530771))

(assert (= (and b!1530761 (not res!1048243)) b!1530766))

(declare-fun m!1413577 () Bool)

(assert (=> b!1530763 m!1413577))

(declare-fun m!1413579 () Bool)

(assert (=> b!1530772 m!1413579))

(assert (=> b!1530772 m!1413579))

(declare-fun m!1413581 () Bool)

(assert (=> b!1530772 m!1413581))

(assert (=> b!1530772 m!1413581))

(assert (=> b!1530772 m!1413579))

(declare-fun m!1413583 () Bool)

(assert (=> b!1530772 m!1413583))

(assert (=> b!1530771 m!1413579))

(assert (=> b!1530771 m!1413579))

(declare-fun m!1413585 () Bool)

(assert (=> b!1530771 m!1413585))

(assert (=> b!1530761 m!1413579))

(declare-fun m!1413587 () Bool)

(assert (=> b!1530761 m!1413587))

(declare-fun m!1413589 () Bool)

(assert (=> b!1530761 m!1413589))

(declare-fun m!1413591 () Bool)

(assert (=> b!1530761 m!1413591))

(declare-fun m!1413593 () Bool)

(assert (=> b!1530761 m!1413593))

(assert (=> b!1530767 m!1413579))

(assert (=> b!1530767 m!1413579))

(declare-fun m!1413595 () Bool)

(assert (=> b!1530767 m!1413595))

(assert (=> b!1530768 m!1413589))

(assert (=> b!1530768 m!1413591))

(assert (=> b!1530768 m!1413591))

(declare-fun m!1413597 () Bool)

(assert (=> b!1530768 m!1413597))

(assert (=> b!1530768 m!1413597))

(assert (=> b!1530768 m!1413591))

(declare-fun m!1413599 () Bool)

(assert (=> b!1530768 m!1413599))

(declare-fun m!1413601 () Bool)

(assert (=> b!1530764 m!1413601))

(declare-fun m!1413603 () Bool)

(assert (=> b!1530770 m!1413603))

(assert (=> b!1530770 m!1413603))

(declare-fun m!1413605 () Bool)

(assert (=> b!1530770 m!1413605))

(declare-fun m!1413607 () Bool)

(assert (=> b!1530766 m!1413607))

(declare-fun m!1413609 () Bool)

(assert (=> start!130472 m!1413609))

(declare-fun m!1413611 () Bool)

(assert (=> start!130472 m!1413611))

(assert (=> b!1530765 m!1413579))

(assert (=> b!1530765 m!1413579))

(declare-fun m!1413613 () Bool)

(assert (=> b!1530765 m!1413613))

(push 1)

