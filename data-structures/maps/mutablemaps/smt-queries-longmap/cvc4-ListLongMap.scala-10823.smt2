; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126698 () Bool)

(assert start!126698)

(declare-fun b!1486670 () Bool)

(declare-fun res!1011113 () Bool)

(declare-fun e!833407 () Bool)

(assert (=> b!1486670 (=> (not res!1011113) (not e!833407))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99514 0))(
  ( (array!99515 (arr!48027 (Array (_ BitVec 32) (_ BitVec 64))) (size!48578 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99514)

(assert (=> b!1486670 (= res!1011113 (and (= (size!48578 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48578 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48578 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1011114 () Bool)

(assert (=> start!126698 (=> (not res!1011114) (not e!833407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126698 (= res!1011114 (validMask!0 mask!2687))))

(assert (=> start!126698 e!833407))

(assert (=> start!126698 true))

(declare-fun array_inv!36972 (array!99514) Bool)

(assert (=> start!126698 (array_inv!36972 a!2862)))

(declare-fun b!1486671 () Bool)

(declare-fun e!833409 () Bool)

(assert (=> b!1486671 (= e!833409 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648516 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486671 (= lt!648516 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!648514 () (_ BitVec 64))

(declare-fun b!1486672 () Bool)

(declare-fun e!833414 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!648512 () array!99514)

(declare-datatypes ((SeekEntryResult!12290 0))(
  ( (MissingZero!12290 (index!51551 (_ BitVec 32))) (Found!12290 (index!51552 (_ BitVec 32))) (Intermediate!12290 (undefined!13102 Bool) (index!51553 (_ BitVec 32)) (x!133133 (_ BitVec 32))) (Undefined!12290) (MissingVacant!12290 (index!51554 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99514 (_ BitVec 32)) SeekEntryResult!12290)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99514 (_ BitVec 32)) SeekEntryResult!12290)

(assert (=> b!1486672 (= e!833414 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648514 lt!648512 mask!2687) (seekEntryOrOpen!0 lt!648514 lt!648512 mask!2687)))))

(declare-fun b!1486673 () Bool)

(declare-fun res!1011112 () Bool)

(declare-fun e!833412 () Bool)

(assert (=> b!1486673 (=> (not res!1011112) (not e!833412))))

(assert (=> b!1486673 (= res!1011112 (= (seekEntryOrOpen!0 (select (arr!48027 a!2862) j!93) a!2862 mask!2687) (Found!12290 j!93)))))

(declare-fun b!1486674 () Bool)

(declare-fun e!833406 () Bool)

(declare-fun e!833405 () Bool)

(assert (=> b!1486674 (= e!833406 e!833405)))

(declare-fun res!1011105 () Bool)

(assert (=> b!1486674 (=> (not res!1011105) (not e!833405))))

(declare-fun lt!648513 () (_ BitVec 64))

(assert (=> b!1486674 (= res!1011105 (and (= index!646 intermediateAfterIndex!19) (= lt!648513 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!648511 () SeekEntryResult!12290)

(declare-fun b!1486675 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99514 (_ BitVec 32)) SeekEntryResult!12290)

(assert (=> b!1486675 (= e!833414 (= lt!648511 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648514 lt!648512 mask!2687)))))

(declare-fun b!1486676 () Bool)

(declare-fun res!1011099 () Bool)

(assert (=> b!1486676 (=> (not res!1011099) (not e!833407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99514 (_ BitVec 32)) Bool)

(assert (=> b!1486676 (= res!1011099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486677 () Bool)

(declare-fun res!1011110 () Bool)

(declare-fun e!833411 () Bool)

(assert (=> b!1486677 (=> (not res!1011110) (not e!833411))))

(declare-fun lt!648517 () SeekEntryResult!12290)

(assert (=> b!1486677 (= res!1011110 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48027 a!2862) j!93) a!2862 mask!2687) lt!648517))))

(declare-fun b!1486678 () Bool)

(assert (=> b!1486678 (= e!833412 e!833406)))

(declare-fun res!1011117 () Bool)

(assert (=> b!1486678 (=> res!1011117 e!833406)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1486678 (= res!1011117 (or (and (= (select (arr!48027 a!2862) index!646) lt!648513) (= (select (arr!48027 a!2862) index!646) (select (arr!48027 a!2862) j!93))) (= (select (arr!48027 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486678 (= lt!648513 (select (store (arr!48027 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486679 () Bool)

(declare-fun e!833408 () Bool)

(assert (=> b!1486679 (= e!833408 e!833411)))

(declare-fun res!1011107 () Bool)

(assert (=> b!1486679 (=> (not res!1011107) (not e!833411))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486679 (= res!1011107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48027 a!2862) j!93) mask!2687) (select (arr!48027 a!2862) j!93) a!2862 mask!2687) lt!648517))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1486679 (= lt!648517 (Intermediate!12290 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486680 () Bool)

(declare-fun res!1011115 () Bool)

(assert (=> b!1486680 (=> (not res!1011115) (not e!833407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486680 (= res!1011115 (validKeyInArray!0 (select (arr!48027 a!2862) j!93)))))

(declare-fun b!1486681 () Bool)

(declare-fun e!833413 () Bool)

(assert (=> b!1486681 (= e!833411 e!833413)))

(declare-fun res!1011111 () Bool)

(assert (=> b!1486681 (=> (not res!1011111) (not e!833413))))

(assert (=> b!1486681 (= res!1011111 (= lt!648511 (Intermediate!12290 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1486681 (= lt!648511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648514 mask!2687) lt!648514 lt!648512 mask!2687))))

(assert (=> b!1486681 (= lt!648514 (select (store (arr!48027 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486682 () Bool)

(declare-fun res!1011101 () Bool)

(assert (=> b!1486682 (=> (not res!1011101) (not e!833407))))

(declare-datatypes ((List!34708 0))(
  ( (Nil!34705) (Cons!34704 (h!36081 (_ BitVec 64)) (t!49409 List!34708)) )
))
(declare-fun arrayNoDuplicates!0 (array!99514 (_ BitVec 32) List!34708) Bool)

(assert (=> b!1486682 (= res!1011101 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34705))))

(declare-fun b!1486683 () Bool)

(declare-fun res!1011116 () Bool)

(assert (=> b!1486683 (=> (not res!1011116) (not e!833413))))

(assert (=> b!1486683 (= res!1011116 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486684 () Bool)

(declare-fun res!1011104 () Bool)

(assert (=> b!1486684 (=> (not res!1011104) (not e!833407))))

(assert (=> b!1486684 (= res!1011104 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48578 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48578 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48578 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486685 () Bool)

(assert (=> b!1486685 (= e!833413 (not e!833409))))

(declare-fun res!1011108 () Bool)

(assert (=> b!1486685 (=> res!1011108 e!833409)))

(assert (=> b!1486685 (= res!1011108 (or (and (= (select (arr!48027 a!2862) index!646) (select (store (arr!48027 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48027 a!2862) index!646) (select (arr!48027 a!2862) j!93))) (= (select (arr!48027 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486685 e!833412))

(declare-fun res!1011100 () Bool)

(assert (=> b!1486685 (=> (not res!1011100) (not e!833412))))

(assert (=> b!1486685 (= res!1011100 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49868 0))(
  ( (Unit!49869) )
))
(declare-fun lt!648515 () Unit!49868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49868)

(assert (=> b!1486685 (= lt!648515 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486686 () Bool)

(declare-fun res!1011109 () Bool)

(assert (=> b!1486686 (=> (not res!1011109) (not e!833413))))

(assert (=> b!1486686 (= res!1011109 e!833414)))

(declare-fun c!137312 () Bool)

(assert (=> b!1486686 (= c!137312 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486687 () Bool)

(assert (=> b!1486687 (= e!833405 (= (seekEntryOrOpen!0 lt!648514 lt!648512 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648514 lt!648512 mask!2687)))))

(declare-fun b!1486688 () Bool)

(assert (=> b!1486688 (= e!833407 e!833408)))

(declare-fun res!1011103 () Bool)

(assert (=> b!1486688 (=> (not res!1011103) (not e!833408))))

(assert (=> b!1486688 (= res!1011103 (= (select (store (arr!48027 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486688 (= lt!648512 (array!99515 (store (arr!48027 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48578 a!2862)))))

(declare-fun b!1486689 () Bool)

(declare-fun res!1011102 () Bool)

(assert (=> b!1486689 (=> (not res!1011102) (not e!833412))))

(assert (=> b!1486689 (= res!1011102 (or (= (select (arr!48027 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48027 a!2862) intermediateBeforeIndex!19) (select (arr!48027 a!2862) j!93))))))

(declare-fun b!1486690 () Bool)

(declare-fun res!1011106 () Bool)

(assert (=> b!1486690 (=> (not res!1011106) (not e!833407))))

(assert (=> b!1486690 (= res!1011106 (validKeyInArray!0 (select (arr!48027 a!2862) i!1006)))))

(assert (= (and start!126698 res!1011114) b!1486670))

(assert (= (and b!1486670 res!1011113) b!1486690))

(assert (= (and b!1486690 res!1011106) b!1486680))

(assert (= (and b!1486680 res!1011115) b!1486676))

(assert (= (and b!1486676 res!1011099) b!1486682))

(assert (= (and b!1486682 res!1011101) b!1486684))

(assert (= (and b!1486684 res!1011104) b!1486688))

(assert (= (and b!1486688 res!1011103) b!1486679))

(assert (= (and b!1486679 res!1011107) b!1486677))

(assert (= (and b!1486677 res!1011110) b!1486681))

(assert (= (and b!1486681 res!1011111) b!1486686))

(assert (= (and b!1486686 c!137312) b!1486675))

(assert (= (and b!1486686 (not c!137312)) b!1486672))

(assert (= (and b!1486686 res!1011109) b!1486683))

(assert (= (and b!1486683 res!1011116) b!1486685))

(assert (= (and b!1486685 res!1011100) b!1486673))

(assert (= (and b!1486673 res!1011112) b!1486689))

(assert (= (and b!1486689 res!1011102) b!1486678))

(assert (= (and b!1486678 (not res!1011117)) b!1486674))

(assert (= (and b!1486674 res!1011105) b!1486687))

(assert (= (and b!1486685 (not res!1011108)) b!1486671))

(declare-fun m!1371551 () Bool)

(assert (=> b!1486675 m!1371551))

(declare-fun m!1371553 () Bool)

(assert (=> b!1486678 m!1371553))

(declare-fun m!1371555 () Bool)

(assert (=> b!1486678 m!1371555))

(declare-fun m!1371557 () Bool)

(assert (=> b!1486678 m!1371557))

(declare-fun m!1371559 () Bool)

(assert (=> b!1486678 m!1371559))

(assert (=> b!1486680 m!1371555))

(assert (=> b!1486680 m!1371555))

(declare-fun m!1371561 () Bool)

(assert (=> b!1486680 m!1371561))

(declare-fun m!1371563 () Bool)

(assert (=> start!126698 m!1371563))

(declare-fun m!1371565 () Bool)

(assert (=> start!126698 m!1371565))

(declare-fun m!1371567 () Bool)

(assert (=> b!1486689 m!1371567))

(assert (=> b!1486689 m!1371555))

(declare-fun m!1371569 () Bool)

(assert (=> b!1486687 m!1371569))

(declare-fun m!1371571 () Bool)

(assert (=> b!1486687 m!1371571))

(assert (=> b!1486679 m!1371555))

(assert (=> b!1486679 m!1371555))

(declare-fun m!1371573 () Bool)

(assert (=> b!1486679 m!1371573))

(assert (=> b!1486679 m!1371573))

(assert (=> b!1486679 m!1371555))

(declare-fun m!1371575 () Bool)

(assert (=> b!1486679 m!1371575))

(declare-fun m!1371577 () Bool)

(assert (=> b!1486676 m!1371577))

(declare-fun m!1371579 () Bool)

(assert (=> b!1486671 m!1371579))

(declare-fun m!1371581 () Bool)

(assert (=> b!1486682 m!1371581))

(declare-fun m!1371583 () Bool)

(assert (=> b!1486690 m!1371583))

(assert (=> b!1486690 m!1371583))

(declare-fun m!1371585 () Bool)

(assert (=> b!1486690 m!1371585))

(assert (=> b!1486677 m!1371555))

(assert (=> b!1486677 m!1371555))

(declare-fun m!1371587 () Bool)

(assert (=> b!1486677 m!1371587))

(assert (=> b!1486672 m!1371571))

(assert (=> b!1486672 m!1371569))

(declare-fun m!1371589 () Bool)

(assert (=> b!1486685 m!1371589))

(assert (=> b!1486685 m!1371557))

(assert (=> b!1486685 m!1371559))

(assert (=> b!1486685 m!1371553))

(declare-fun m!1371591 () Bool)

(assert (=> b!1486685 m!1371591))

(assert (=> b!1486685 m!1371555))

(assert (=> b!1486673 m!1371555))

(assert (=> b!1486673 m!1371555))

(declare-fun m!1371593 () Bool)

(assert (=> b!1486673 m!1371593))

(declare-fun m!1371595 () Bool)

(assert (=> b!1486681 m!1371595))

(assert (=> b!1486681 m!1371595))

(declare-fun m!1371597 () Bool)

(assert (=> b!1486681 m!1371597))

(assert (=> b!1486681 m!1371557))

(declare-fun m!1371599 () Bool)

(assert (=> b!1486681 m!1371599))

(assert (=> b!1486688 m!1371557))

(declare-fun m!1371601 () Bool)

(assert (=> b!1486688 m!1371601))

(push 1)

(assert (not b!1486676))

(assert (not b!1486687))

(assert (not b!1486677))

(assert (not b!1486690))

(assert (not b!1486685))

(assert (not b!1486682))

(assert (not b!1486679))

(assert (not b!1486675))

(assert (not b!1486672))

(assert (not start!126698))

(assert (not b!1486673))

(assert (not b!1486671))

(assert (not b!1486680))

(assert (not b!1486681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

