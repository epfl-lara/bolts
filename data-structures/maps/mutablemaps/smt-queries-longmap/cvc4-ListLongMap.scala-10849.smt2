; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127052 () Bool)

(assert start!127052)

(declare-fun b!1492595 () Bool)

(declare-fun e!836220 () Bool)

(declare-fun e!836221 () Bool)

(assert (=> b!1492595 (= e!836220 e!836221)))

(declare-fun res!1015513 () Bool)

(assert (=> b!1492595 (=> (not res!1015513) (not e!836221))))

(declare-datatypes ((SeekEntryResult!12368 0))(
  ( (MissingZero!12368 (index!51863 (_ BitVec 32))) (Found!12368 (index!51864 (_ BitVec 32))) (Intermediate!12368 (undefined!13180 Bool) (index!51865 (_ BitVec 32)) (x!133455 (_ BitVec 32))) (Undefined!12368) (MissingVacant!12368 (index!51866 (_ BitVec 32))) )
))
(declare-fun lt!650672 () SeekEntryResult!12368)

(declare-datatypes ((array!99679 0))(
  ( (array!99680 (arr!48105 (Array (_ BitVec 32) (_ BitVec 64))) (size!48656 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99679)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99679 (_ BitVec 32)) SeekEntryResult!12368)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492595 (= res!1015513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48105 a!2862) j!93) mask!2687) (select (arr!48105 a!2862) j!93) a!2862 mask!2687) lt!650672))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1492595 (= lt!650672 (Intermediate!12368 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492596 () Bool)

(declare-fun res!1015509 () Bool)

(declare-fun e!836217 () Bool)

(assert (=> b!1492596 (=> (not res!1015509) (not e!836217))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1492596 (= res!1015509 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1015512 () Bool)

(declare-fun e!836216 () Bool)

(assert (=> start!127052 (=> (not res!1015512) (not e!836216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127052 (= res!1015512 (validMask!0 mask!2687))))

(assert (=> start!127052 e!836216))

(assert (=> start!127052 true))

(declare-fun array_inv!37050 (array!99679) Bool)

(assert (=> start!127052 (array_inv!37050 a!2862)))

(declare-fun b!1492597 () Bool)

(declare-fun res!1015505 () Bool)

(assert (=> b!1492597 (=> (not res!1015505) (not e!836216))))

(assert (=> b!1492597 (= res!1015505 (and (= (size!48656 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48656 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48656 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!836219 () Bool)

(declare-fun b!1492598 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!650669 () array!99679)

(declare-fun lt!650674 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99679 (_ BitVec 32)) SeekEntryResult!12368)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99679 (_ BitVec 32)) SeekEntryResult!12368)

(assert (=> b!1492598 (= e!836219 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650674 lt!650669 mask!2687) (seekEntryOrOpen!0 lt!650674 lt!650669 mask!2687)))))

(declare-fun b!1492599 () Bool)

(declare-fun res!1015507 () Bool)

(declare-fun e!836222 () Bool)

(assert (=> b!1492599 (=> (not res!1015507) (not e!836222))))

(assert (=> b!1492599 (= res!1015507 (= (seekEntryOrOpen!0 (select (arr!48105 a!2862) j!93) a!2862 mask!2687) (Found!12368 j!93)))))

(declare-fun b!1492600 () Bool)

(declare-fun e!836218 () Bool)

(assert (=> b!1492600 (= e!836218 true)))

(declare-fun lt!650673 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492600 (= lt!650673 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492601 () Bool)

(assert (=> b!1492601 (= e!836222 (or (= (select (arr!48105 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48105 a!2862) intermediateBeforeIndex!19) (select (arr!48105 a!2862) j!93))))))

(declare-fun b!1492602 () Bool)

(declare-fun res!1015503 () Bool)

(assert (=> b!1492602 (=> (not res!1015503) (not e!836216))))

(declare-datatypes ((List!34786 0))(
  ( (Nil!34783) (Cons!34782 (h!36168 (_ BitVec 64)) (t!49487 List!34786)) )
))
(declare-fun arrayNoDuplicates!0 (array!99679 (_ BitVec 32) List!34786) Bool)

(assert (=> b!1492602 (= res!1015503 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34783))))

(declare-fun b!1492603 () Bool)

(declare-fun res!1015517 () Bool)

(assert (=> b!1492603 (=> (not res!1015517) (not e!836216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99679 (_ BitVec 32)) Bool)

(assert (=> b!1492603 (= res!1015517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492604 () Bool)

(declare-fun res!1015514 () Bool)

(assert (=> b!1492604 (=> (not res!1015514) (not e!836217))))

(assert (=> b!1492604 (= res!1015514 e!836219)))

(declare-fun c!138077 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1492604 (= c!138077 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1492605 () Bool)

(assert (=> b!1492605 (= e!836217 (not e!836218))))

(declare-fun res!1015515 () Bool)

(assert (=> b!1492605 (=> res!1015515 e!836218)))

(assert (=> b!1492605 (= res!1015515 (or (and (= (select (arr!48105 a!2862) index!646) (select (store (arr!48105 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48105 a!2862) index!646) (select (arr!48105 a!2862) j!93))) (= (select (arr!48105 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1492605 e!836222))

(declare-fun res!1015510 () Bool)

(assert (=> b!1492605 (=> (not res!1015510) (not e!836222))))

(assert (=> b!1492605 (= res!1015510 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50024 0))(
  ( (Unit!50025) )
))
(declare-fun lt!650670 () Unit!50024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50024)

(assert (=> b!1492605 (= lt!650670 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1492606 () Bool)

(assert (=> b!1492606 (= e!836221 e!836217)))

(declare-fun res!1015506 () Bool)

(assert (=> b!1492606 (=> (not res!1015506) (not e!836217))))

(declare-fun lt!650671 () SeekEntryResult!12368)

(assert (=> b!1492606 (= res!1015506 (= lt!650671 (Intermediate!12368 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1492606 (= lt!650671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650674 mask!2687) lt!650674 lt!650669 mask!2687))))

(assert (=> b!1492606 (= lt!650674 (select (store (arr!48105 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492607 () Bool)

(declare-fun res!1015504 () Bool)

(assert (=> b!1492607 (=> (not res!1015504) (not e!836216))))

(assert (=> b!1492607 (= res!1015504 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48656 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48656 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48656 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492608 () Bool)

(assert (=> b!1492608 (= e!836219 (= lt!650671 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650674 lt!650669 mask!2687)))))

(declare-fun b!1492609 () Bool)

(declare-fun res!1015518 () Bool)

(assert (=> b!1492609 (=> (not res!1015518) (not e!836216))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492609 (= res!1015518 (validKeyInArray!0 (select (arr!48105 a!2862) j!93)))))

(declare-fun b!1492610 () Bool)

(declare-fun res!1015516 () Bool)

(assert (=> b!1492610 (=> (not res!1015516) (not e!836221))))

(assert (=> b!1492610 (= res!1015516 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48105 a!2862) j!93) a!2862 mask!2687) lt!650672))))

(declare-fun b!1492611 () Bool)

(assert (=> b!1492611 (= e!836216 e!836220)))

(declare-fun res!1015508 () Bool)

(assert (=> b!1492611 (=> (not res!1015508) (not e!836220))))

(assert (=> b!1492611 (= res!1015508 (= (select (store (arr!48105 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492611 (= lt!650669 (array!99680 (store (arr!48105 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48656 a!2862)))))

(declare-fun b!1492612 () Bool)

(declare-fun res!1015511 () Bool)

(assert (=> b!1492612 (=> (not res!1015511) (not e!836216))))

(assert (=> b!1492612 (= res!1015511 (validKeyInArray!0 (select (arr!48105 a!2862) i!1006)))))

(assert (= (and start!127052 res!1015512) b!1492597))

(assert (= (and b!1492597 res!1015505) b!1492612))

(assert (= (and b!1492612 res!1015511) b!1492609))

(assert (= (and b!1492609 res!1015518) b!1492603))

(assert (= (and b!1492603 res!1015517) b!1492602))

(assert (= (and b!1492602 res!1015503) b!1492607))

(assert (= (and b!1492607 res!1015504) b!1492611))

(assert (= (and b!1492611 res!1015508) b!1492595))

(assert (= (and b!1492595 res!1015513) b!1492610))

(assert (= (and b!1492610 res!1015516) b!1492606))

(assert (= (and b!1492606 res!1015506) b!1492604))

(assert (= (and b!1492604 c!138077) b!1492608))

(assert (= (and b!1492604 (not c!138077)) b!1492598))

(assert (= (and b!1492604 res!1015514) b!1492596))

(assert (= (and b!1492596 res!1015509) b!1492605))

(assert (= (and b!1492605 res!1015510) b!1492599))

(assert (= (and b!1492599 res!1015507) b!1492601))

(assert (= (and b!1492605 (not res!1015515)) b!1492600))

(declare-fun m!1376597 () Bool)

(assert (=> start!127052 m!1376597))

(declare-fun m!1376599 () Bool)

(assert (=> start!127052 m!1376599))

(declare-fun m!1376601 () Bool)

(assert (=> b!1492595 m!1376601))

(assert (=> b!1492595 m!1376601))

(declare-fun m!1376603 () Bool)

(assert (=> b!1492595 m!1376603))

(assert (=> b!1492595 m!1376603))

(assert (=> b!1492595 m!1376601))

(declare-fun m!1376605 () Bool)

(assert (=> b!1492595 m!1376605))

(declare-fun m!1376607 () Bool)

(assert (=> b!1492606 m!1376607))

(assert (=> b!1492606 m!1376607))

(declare-fun m!1376609 () Bool)

(assert (=> b!1492606 m!1376609))

(declare-fun m!1376611 () Bool)

(assert (=> b!1492606 m!1376611))

(declare-fun m!1376613 () Bool)

(assert (=> b!1492606 m!1376613))

(assert (=> b!1492609 m!1376601))

(assert (=> b!1492609 m!1376601))

(declare-fun m!1376615 () Bool)

(assert (=> b!1492609 m!1376615))

(declare-fun m!1376617 () Bool)

(assert (=> b!1492600 m!1376617))

(assert (=> b!1492599 m!1376601))

(assert (=> b!1492599 m!1376601))

(declare-fun m!1376619 () Bool)

(assert (=> b!1492599 m!1376619))

(declare-fun m!1376621 () Bool)

(assert (=> b!1492612 m!1376621))

(assert (=> b!1492612 m!1376621))

(declare-fun m!1376623 () Bool)

(assert (=> b!1492612 m!1376623))

(declare-fun m!1376625 () Bool)

(assert (=> b!1492605 m!1376625))

(assert (=> b!1492605 m!1376611))

(declare-fun m!1376627 () Bool)

(assert (=> b!1492605 m!1376627))

(declare-fun m!1376629 () Bool)

(assert (=> b!1492605 m!1376629))

(declare-fun m!1376631 () Bool)

(assert (=> b!1492605 m!1376631))

(assert (=> b!1492605 m!1376601))

(declare-fun m!1376633 () Bool)

(assert (=> b!1492608 m!1376633))

(declare-fun m!1376635 () Bool)

(assert (=> b!1492601 m!1376635))

(assert (=> b!1492601 m!1376601))

(declare-fun m!1376637 () Bool)

(assert (=> b!1492602 m!1376637))

(declare-fun m!1376639 () Bool)

(assert (=> b!1492603 m!1376639))

(declare-fun m!1376641 () Bool)

(assert (=> b!1492598 m!1376641))

(declare-fun m!1376643 () Bool)

(assert (=> b!1492598 m!1376643))

(assert (=> b!1492611 m!1376611))

(declare-fun m!1376645 () Bool)

(assert (=> b!1492611 m!1376645))

(assert (=> b!1492610 m!1376601))

(assert (=> b!1492610 m!1376601))

(declare-fun m!1376647 () Bool)

(assert (=> b!1492610 m!1376647))

(push 1)

