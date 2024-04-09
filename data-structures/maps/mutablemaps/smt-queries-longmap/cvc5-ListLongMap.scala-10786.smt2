; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126256 () Bool)

(assert start!126256)

(declare-fun b!1478672 () Bool)

(declare-fun res!1004771 () Bool)

(declare-fun e!829489 () Bool)

(assert (=> b!1478672 (=> (not res!1004771) (not e!829489))))

(declare-fun e!829490 () Bool)

(assert (=> b!1478672 (= res!1004771 e!829490)))

(declare-fun c!136478 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478672 (= c!136478 (bvsle x!665 intermediateAfterX!19))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun e!829493 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1478673 () Bool)

(assert (=> b!1478673 (= e!829493 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478674 () Bool)

(declare-fun e!829485 () Bool)

(declare-fun e!829492 () Bool)

(assert (=> b!1478674 (= e!829485 e!829492)))

(declare-fun res!1004761 () Bool)

(assert (=> b!1478674 (=> (not res!1004761) (not e!829492))))

(declare-datatypes ((SeekEntryResult!12177 0))(
  ( (MissingZero!12177 (index!51099 (_ BitVec 32))) (Found!12177 (index!51100 (_ BitVec 32))) (Intermediate!12177 (undefined!12989 Bool) (index!51101 (_ BitVec 32)) (x!132691 (_ BitVec 32))) (Undefined!12177) (MissingVacant!12177 (index!51102 (_ BitVec 32))) )
))
(declare-fun lt!645729 () SeekEntryResult!12177)

(declare-datatypes ((array!99279 0))(
  ( (array!99280 (arr!47914 (Array (_ BitVec 32) (_ BitVec 64))) (size!48465 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99279)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99279 (_ BitVec 32)) SeekEntryResult!12177)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478674 (= res!1004761 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47914 a!2862) j!93) mask!2687) (select (arr!47914 a!2862) j!93) a!2862 mask!2687) lt!645729))))

(assert (=> b!1478674 (= lt!645729 (Intermediate!12177 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478675 () Bool)

(declare-fun res!1004766 () Bool)

(assert (=> b!1478675 (=> (not res!1004766) (not e!829489))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478675 (= res!1004766 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1004763 () Bool)

(declare-fun e!829486 () Bool)

(assert (=> start!126256 (=> (not res!1004763) (not e!829486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126256 (= res!1004763 (validMask!0 mask!2687))))

(assert (=> start!126256 e!829486))

(assert (=> start!126256 true))

(declare-fun array_inv!36859 (array!99279) Bool)

(assert (=> start!126256 (array_inv!36859 a!2862)))

(declare-fun b!1478676 () Bool)

(declare-fun res!1004772 () Bool)

(assert (=> b!1478676 (=> (not res!1004772) (not e!829486))))

(declare-datatypes ((List!34595 0))(
  ( (Nil!34592) (Cons!34591 (h!35959 (_ BitVec 64)) (t!49296 List!34595)) )
))
(declare-fun arrayNoDuplicates!0 (array!99279 (_ BitVec 32) List!34595) Bool)

(assert (=> b!1478676 (= res!1004772 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34592))))

(declare-fun b!1478677 () Bool)

(declare-fun res!1004774 () Bool)

(assert (=> b!1478677 (=> (not res!1004774) (not e!829492))))

(assert (=> b!1478677 (= res!1004774 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47914 a!2862) j!93) a!2862 mask!2687) lt!645729))))

(declare-fun b!1478678 () Bool)

(declare-fun res!1004767 () Bool)

(assert (=> b!1478678 (=> (not res!1004767) (not e!829486))))

(assert (=> b!1478678 (= res!1004767 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48465 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48465 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48465 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478679 () Bool)

(declare-fun res!1004764 () Bool)

(assert (=> b!1478679 (=> (not res!1004764) (not e!829486))))

(assert (=> b!1478679 (= res!1004764 (and (= (size!48465 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48465 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48465 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478680 () Bool)

(assert (=> b!1478680 (= e!829492 e!829489)))

(declare-fun res!1004770 () Bool)

(assert (=> b!1478680 (=> (not res!1004770) (not e!829489))))

(declare-fun lt!645730 () SeekEntryResult!12177)

(assert (=> b!1478680 (= res!1004770 (= lt!645730 (Intermediate!12177 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645727 () array!99279)

(declare-fun lt!645726 () (_ BitVec 64))

(assert (=> b!1478680 (= lt!645730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645726 mask!2687) lt!645726 lt!645727 mask!2687))))

(assert (=> b!1478680 (= lt!645726 (select (store (arr!47914 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478681 () Bool)

(assert (=> b!1478681 (= e!829490 (= lt!645730 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645726 lt!645727 mask!2687)))))

(declare-fun b!1478682 () Bool)

(assert (=> b!1478682 (= e!829486 e!829485)))

(declare-fun res!1004769 () Bool)

(assert (=> b!1478682 (=> (not res!1004769) (not e!829485))))

(assert (=> b!1478682 (= res!1004769 (= (select (store (arr!47914 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478682 (= lt!645727 (array!99280 (store (arr!47914 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48465 a!2862)))))

(declare-fun b!1478683 () Bool)

(declare-fun res!1004768 () Bool)

(assert (=> b!1478683 (=> (not res!1004768) (not e!829486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478683 (= res!1004768 (validKeyInArray!0 (select (arr!47914 a!2862) j!93)))))

(declare-fun b!1478684 () Bool)

(declare-fun res!1004765 () Bool)

(assert (=> b!1478684 (=> (not res!1004765) (not e!829486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99279 (_ BitVec 32)) Bool)

(assert (=> b!1478684 (= res!1004765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478685 () Bool)

(assert (=> b!1478685 (= e!829489 (not true))))

(declare-fun e!829491 () Bool)

(assert (=> b!1478685 e!829491))

(declare-fun res!1004762 () Bool)

(assert (=> b!1478685 (=> (not res!1004762) (not e!829491))))

(declare-fun lt!645728 () SeekEntryResult!12177)

(assert (=> b!1478685 (= res!1004762 (and (= lt!645728 (Found!12177 j!93)) (or (= (select (arr!47914 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47914 a!2862) intermediateBeforeIndex!19) (select (arr!47914 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99279 (_ BitVec 32)) SeekEntryResult!12177)

(assert (=> b!1478685 (= lt!645728 (seekEntryOrOpen!0 (select (arr!47914 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478685 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49642 0))(
  ( (Unit!49643) )
))
(declare-fun lt!645725 () Unit!49642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49642)

(assert (=> b!1478685 (= lt!645725 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478686 () Bool)

(declare-fun e!829487 () Bool)

(assert (=> b!1478686 (= e!829491 e!829487)))

(declare-fun res!1004775 () Bool)

(assert (=> b!1478686 (=> res!1004775 e!829487)))

(assert (=> b!1478686 (= res!1004775 (or (and (= (select (arr!47914 a!2862) index!646) (select (store (arr!47914 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47914 a!2862) index!646) (select (arr!47914 a!2862) j!93))) (not (= (select (arr!47914 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478687 () Bool)

(declare-fun res!1004760 () Bool)

(assert (=> b!1478687 (=> (not res!1004760) (not e!829486))))

(assert (=> b!1478687 (= res!1004760 (validKeyInArray!0 (select (arr!47914 a!2862) i!1006)))))

(declare-fun b!1478688 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99279 (_ BitVec 32)) SeekEntryResult!12177)

(assert (=> b!1478688 (= e!829490 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645726 lt!645727 mask!2687) (seekEntryOrOpen!0 lt!645726 lt!645727 mask!2687)))))

(declare-fun b!1478689 () Bool)

(assert (=> b!1478689 (= e!829487 e!829493)))

(declare-fun res!1004773 () Bool)

(assert (=> b!1478689 (=> (not res!1004773) (not e!829493))))

(assert (=> b!1478689 (= res!1004773 (= lt!645728 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47914 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!126256 res!1004763) b!1478679))

(assert (= (and b!1478679 res!1004764) b!1478687))

(assert (= (and b!1478687 res!1004760) b!1478683))

(assert (= (and b!1478683 res!1004768) b!1478684))

(assert (= (and b!1478684 res!1004765) b!1478676))

(assert (= (and b!1478676 res!1004772) b!1478678))

(assert (= (and b!1478678 res!1004767) b!1478682))

(assert (= (and b!1478682 res!1004769) b!1478674))

(assert (= (and b!1478674 res!1004761) b!1478677))

(assert (= (and b!1478677 res!1004774) b!1478680))

(assert (= (and b!1478680 res!1004770) b!1478672))

(assert (= (and b!1478672 c!136478) b!1478681))

(assert (= (and b!1478672 (not c!136478)) b!1478688))

(assert (= (and b!1478672 res!1004771) b!1478675))

(assert (= (and b!1478675 res!1004766) b!1478685))

(assert (= (and b!1478685 res!1004762) b!1478686))

(assert (= (and b!1478686 (not res!1004775)) b!1478689))

(assert (= (and b!1478689 res!1004773) b!1478673))

(declare-fun m!1364631 () Bool)

(assert (=> b!1478683 m!1364631))

(assert (=> b!1478683 m!1364631))

(declare-fun m!1364633 () Bool)

(assert (=> b!1478683 m!1364633))

(assert (=> b!1478677 m!1364631))

(assert (=> b!1478677 m!1364631))

(declare-fun m!1364635 () Bool)

(assert (=> b!1478677 m!1364635))

(declare-fun m!1364637 () Bool)

(assert (=> b!1478680 m!1364637))

(assert (=> b!1478680 m!1364637))

(declare-fun m!1364639 () Bool)

(assert (=> b!1478680 m!1364639))

(declare-fun m!1364641 () Bool)

(assert (=> b!1478680 m!1364641))

(declare-fun m!1364643 () Bool)

(assert (=> b!1478680 m!1364643))

(declare-fun m!1364645 () Bool)

(assert (=> b!1478685 m!1364645))

(declare-fun m!1364647 () Bool)

(assert (=> b!1478685 m!1364647))

(assert (=> b!1478685 m!1364631))

(declare-fun m!1364649 () Bool)

(assert (=> b!1478685 m!1364649))

(declare-fun m!1364651 () Bool)

(assert (=> b!1478685 m!1364651))

(assert (=> b!1478685 m!1364631))

(declare-fun m!1364653 () Bool)

(assert (=> b!1478688 m!1364653))

(declare-fun m!1364655 () Bool)

(assert (=> b!1478688 m!1364655))

(declare-fun m!1364657 () Bool)

(assert (=> b!1478687 m!1364657))

(assert (=> b!1478687 m!1364657))

(declare-fun m!1364659 () Bool)

(assert (=> b!1478687 m!1364659))

(declare-fun m!1364661 () Bool)

(assert (=> b!1478684 m!1364661))

(assert (=> b!1478682 m!1364641))

(declare-fun m!1364663 () Bool)

(assert (=> b!1478682 m!1364663))

(declare-fun m!1364665 () Bool)

(assert (=> b!1478686 m!1364665))

(assert (=> b!1478686 m!1364641))

(declare-fun m!1364667 () Bool)

(assert (=> b!1478686 m!1364667))

(assert (=> b!1478686 m!1364631))

(declare-fun m!1364669 () Bool)

(assert (=> b!1478676 m!1364669))

(declare-fun m!1364671 () Bool)

(assert (=> start!126256 m!1364671))

(declare-fun m!1364673 () Bool)

(assert (=> start!126256 m!1364673))

(assert (=> b!1478689 m!1364631))

(assert (=> b!1478689 m!1364631))

(declare-fun m!1364675 () Bool)

(assert (=> b!1478689 m!1364675))

(declare-fun m!1364677 () Bool)

(assert (=> b!1478681 m!1364677))

(assert (=> b!1478674 m!1364631))

(assert (=> b!1478674 m!1364631))

(declare-fun m!1364679 () Bool)

(assert (=> b!1478674 m!1364679))

(assert (=> b!1478674 m!1364679))

(assert (=> b!1478674 m!1364631))

(declare-fun m!1364681 () Bool)

(assert (=> b!1478674 m!1364681))

(push 1)

