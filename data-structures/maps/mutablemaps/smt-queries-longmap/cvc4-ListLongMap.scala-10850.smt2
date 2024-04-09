; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127058 () Bool)

(assert start!127058)

(declare-fun res!1015659 () Bool)

(declare-fun e!836288 () Bool)

(assert (=> start!127058 (=> (not res!1015659) (not e!836288))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127058 (= res!1015659 (validMask!0 mask!2687))))

(assert (=> start!127058 e!836288))

(assert (=> start!127058 true))

(declare-datatypes ((array!99685 0))(
  ( (array!99686 (arr!48108 (Array (_ BitVec 32) (_ BitVec 64))) (size!48659 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99685)

(declare-fun array_inv!37053 (array!99685) Bool)

(assert (=> start!127058 (array_inv!37053 a!2862)))

(declare-fun b!1492757 () Bool)

(declare-fun res!1015654 () Bool)

(assert (=> b!1492757 (=> (not res!1015654) (not e!836288))))

(declare-datatypes ((List!34789 0))(
  ( (Nil!34786) (Cons!34785 (h!36171 (_ BitVec 64)) (t!49490 List!34789)) )
))
(declare-fun arrayNoDuplicates!0 (array!99685 (_ BitVec 32) List!34789) Bool)

(assert (=> b!1492757 (= res!1015654 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34786))))

(declare-fun b!1492758 () Bool)

(declare-fun e!836294 () Bool)

(declare-fun e!836287 () Bool)

(assert (=> b!1492758 (= e!836294 (not e!836287))))

(declare-fun res!1015661 () Bool)

(assert (=> b!1492758 (=> res!1015661 e!836287)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1492758 (= res!1015661 (or (and (= (select (arr!48108 a!2862) index!646) (select (store (arr!48108 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48108 a!2862) index!646) (select (arr!48108 a!2862) j!93))) (= (select (arr!48108 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836292 () Bool)

(assert (=> b!1492758 e!836292))

(declare-fun res!1015657 () Bool)

(assert (=> b!1492758 (=> (not res!1015657) (not e!836292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99685 (_ BitVec 32)) Bool)

(assert (=> b!1492758 (= res!1015657 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50030 0))(
  ( (Unit!50031) )
))
(declare-fun lt!650727 () Unit!50030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50030)

(assert (=> b!1492758 (= lt!650727 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1492759 () Bool)

(declare-fun res!1015658 () Bool)

(assert (=> b!1492759 (=> (not res!1015658) (not e!836288))))

(assert (=> b!1492759 (= res!1015658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492760 () Bool)

(declare-fun e!836290 () Bool)

(declare-fun e!836293 () Bool)

(assert (=> b!1492760 (= e!836290 e!836293)))

(declare-fun res!1015651 () Bool)

(assert (=> b!1492760 (=> (not res!1015651) (not e!836293))))

(declare-datatypes ((SeekEntryResult!12371 0))(
  ( (MissingZero!12371 (index!51875 (_ BitVec 32))) (Found!12371 (index!51876 (_ BitVec 32))) (Intermediate!12371 (undefined!13183 Bool) (index!51877 (_ BitVec 32)) (x!133466 (_ BitVec 32))) (Undefined!12371) (MissingVacant!12371 (index!51878 (_ BitVec 32))) )
))
(declare-fun lt!650725 () SeekEntryResult!12371)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99685 (_ BitVec 32)) SeekEntryResult!12371)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492760 (= res!1015651 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48108 a!2862) j!93) mask!2687) (select (arr!48108 a!2862) j!93) a!2862 mask!2687) lt!650725))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1492760 (= lt!650725 (Intermediate!12371 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492761 () Bool)

(assert (=> b!1492761 (= e!836293 e!836294)))

(declare-fun res!1015647 () Bool)

(assert (=> b!1492761 (=> (not res!1015647) (not e!836294))))

(declare-fun lt!650724 () SeekEntryResult!12371)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1492761 (= res!1015647 (= lt!650724 (Intermediate!12371 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650723 () (_ BitVec 64))

(declare-fun lt!650726 () array!99685)

(assert (=> b!1492761 (= lt!650724 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650723 mask!2687) lt!650723 lt!650726 mask!2687))))

(assert (=> b!1492761 (= lt!650723 (select (store (arr!48108 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492762 () Bool)

(declare-fun res!1015662 () Bool)

(assert (=> b!1492762 (=> (not res!1015662) (not e!836293))))

(assert (=> b!1492762 (= res!1015662 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48108 a!2862) j!93) a!2862 mask!2687) lt!650725))))

(declare-fun b!1492763 () Bool)

(assert (=> b!1492763 (= e!836292 (or (= (select (arr!48108 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48108 a!2862) intermediateBeforeIndex!19) (select (arr!48108 a!2862) j!93))))))

(declare-fun b!1492764 () Bool)

(declare-fun res!1015650 () Bool)

(assert (=> b!1492764 (=> (not res!1015650) (not e!836288))))

(assert (=> b!1492764 (= res!1015650 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48659 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48659 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48659 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492765 () Bool)

(declare-fun res!1015652 () Bool)

(assert (=> b!1492765 (=> (not res!1015652) (not e!836292))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99685 (_ BitVec 32)) SeekEntryResult!12371)

(assert (=> b!1492765 (= res!1015652 (= (seekEntryOrOpen!0 (select (arr!48108 a!2862) j!93) a!2862 mask!2687) (Found!12371 j!93)))))

(declare-fun b!1492766 () Bool)

(declare-fun res!1015648 () Bool)

(assert (=> b!1492766 (=> (not res!1015648) (not e!836288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492766 (= res!1015648 (validKeyInArray!0 (select (arr!48108 a!2862) j!93)))))

(declare-fun b!1492767 () Bool)

(declare-fun res!1015656 () Bool)

(assert (=> b!1492767 (=> (not res!1015656) (not e!836288))))

(assert (=> b!1492767 (= res!1015656 (and (= (size!48659 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48659 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48659 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1492768 () Bool)

(declare-fun res!1015655 () Bool)

(assert (=> b!1492768 (=> (not res!1015655) (not e!836288))))

(assert (=> b!1492768 (= res!1015655 (validKeyInArray!0 (select (arr!48108 a!2862) i!1006)))))

(declare-fun e!836289 () Bool)

(declare-fun b!1492769 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99685 (_ BitVec 32)) SeekEntryResult!12371)

(assert (=> b!1492769 (= e!836289 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650723 lt!650726 mask!2687) (seekEntryOrOpen!0 lt!650723 lt!650726 mask!2687)))))

(declare-fun b!1492770 () Bool)

(declare-fun res!1015649 () Bool)

(assert (=> b!1492770 (=> (not res!1015649) (not e!836294))))

(assert (=> b!1492770 (= res!1015649 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492771 () Bool)

(assert (=> b!1492771 (= e!836289 (= lt!650724 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650723 lt!650726 mask!2687)))))

(declare-fun b!1492772 () Bool)

(assert (=> b!1492772 (= e!836288 e!836290)))

(declare-fun res!1015660 () Bool)

(assert (=> b!1492772 (=> (not res!1015660) (not e!836290))))

(assert (=> b!1492772 (= res!1015660 (= (select (store (arr!48108 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492772 (= lt!650726 (array!99686 (store (arr!48108 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48659 a!2862)))))

(declare-fun b!1492773 () Bool)

(assert (=> b!1492773 (= e!836287 true)))

(declare-fun lt!650728 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492773 (= lt!650728 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492774 () Bool)

(declare-fun res!1015653 () Bool)

(assert (=> b!1492774 (=> (not res!1015653) (not e!836294))))

(assert (=> b!1492774 (= res!1015653 e!836289)))

(declare-fun c!138086 () Bool)

(assert (=> b!1492774 (= c!138086 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!127058 res!1015659) b!1492767))

(assert (= (and b!1492767 res!1015656) b!1492768))

(assert (= (and b!1492768 res!1015655) b!1492766))

(assert (= (and b!1492766 res!1015648) b!1492759))

(assert (= (and b!1492759 res!1015658) b!1492757))

(assert (= (and b!1492757 res!1015654) b!1492764))

(assert (= (and b!1492764 res!1015650) b!1492772))

(assert (= (and b!1492772 res!1015660) b!1492760))

(assert (= (and b!1492760 res!1015651) b!1492762))

(assert (= (and b!1492762 res!1015662) b!1492761))

(assert (= (and b!1492761 res!1015647) b!1492774))

(assert (= (and b!1492774 c!138086) b!1492771))

(assert (= (and b!1492774 (not c!138086)) b!1492769))

(assert (= (and b!1492774 res!1015653) b!1492770))

(assert (= (and b!1492770 res!1015649) b!1492758))

(assert (= (and b!1492758 res!1015657) b!1492765))

(assert (= (and b!1492765 res!1015652) b!1492763))

(assert (= (and b!1492758 (not res!1015661)) b!1492773))

(declare-fun m!1376753 () Bool)

(assert (=> b!1492759 m!1376753))

(declare-fun m!1376755 () Bool)

(assert (=> b!1492757 m!1376755))

(declare-fun m!1376757 () Bool)

(assert (=> b!1492760 m!1376757))

(assert (=> b!1492760 m!1376757))

(declare-fun m!1376759 () Bool)

(assert (=> b!1492760 m!1376759))

(assert (=> b!1492760 m!1376759))

(assert (=> b!1492760 m!1376757))

(declare-fun m!1376761 () Bool)

(assert (=> b!1492760 m!1376761))

(assert (=> b!1492766 m!1376757))

(assert (=> b!1492766 m!1376757))

(declare-fun m!1376763 () Bool)

(assert (=> b!1492766 m!1376763))

(declare-fun m!1376765 () Bool)

(assert (=> b!1492758 m!1376765))

(declare-fun m!1376767 () Bool)

(assert (=> b!1492758 m!1376767))

(declare-fun m!1376769 () Bool)

(assert (=> b!1492758 m!1376769))

(declare-fun m!1376771 () Bool)

(assert (=> b!1492758 m!1376771))

(declare-fun m!1376773 () Bool)

(assert (=> b!1492758 m!1376773))

(assert (=> b!1492758 m!1376757))

(declare-fun m!1376775 () Bool)

(assert (=> b!1492769 m!1376775))

(declare-fun m!1376777 () Bool)

(assert (=> b!1492769 m!1376777))

(assert (=> b!1492772 m!1376767))

(declare-fun m!1376779 () Bool)

(assert (=> b!1492772 m!1376779))

(declare-fun m!1376781 () Bool)

(assert (=> b!1492763 m!1376781))

(assert (=> b!1492763 m!1376757))

(declare-fun m!1376783 () Bool)

(assert (=> b!1492761 m!1376783))

(assert (=> b!1492761 m!1376783))

(declare-fun m!1376785 () Bool)

(assert (=> b!1492761 m!1376785))

(assert (=> b!1492761 m!1376767))

(declare-fun m!1376787 () Bool)

(assert (=> b!1492761 m!1376787))

(declare-fun m!1376789 () Bool)

(assert (=> b!1492768 m!1376789))

(assert (=> b!1492768 m!1376789))

(declare-fun m!1376791 () Bool)

(assert (=> b!1492768 m!1376791))

(assert (=> b!1492765 m!1376757))

(assert (=> b!1492765 m!1376757))

(declare-fun m!1376793 () Bool)

(assert (=> b!1492765 m!1376793))

(assert (=> b!1492762 m!1376757))

(assert (=> b!1492762 m!1376757))

(declare-fun m!1376795 () Bool)

(assert (=> b!1492762 m!1376795))

(declare-fun m!1376797 () Bool)

(assert (=> b!1492771 m!1376797))

(declare-fun m!1376799 () Bool)

(assert (=> b!1492773 m!1376799))

(declare-fun m!1376801 () Bool)

(assert (=> start!127058 m!1376801))

(declare-fun m!1376803 () Bool)

(assert (=> start!127058 m!1376803))

(push 1)

