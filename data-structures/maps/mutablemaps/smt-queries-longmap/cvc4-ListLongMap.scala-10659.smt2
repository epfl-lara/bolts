; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125138 () Bool)

(assert start!125138)

(declare-fun b!1456726 () Bool)

(declare-fun res!987253 () Bool)

(declare-fun e!819587 () Bool)

(assert (=> b!1456726 (=> (not res!987253) (not e!819587))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1456726 (= res!987253 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456727 () Bool)

(declare-fun res!987252 () Bool)

(declare-fun e!819591 () Bool)

(assert (=> b!1456727 (=> res!987252 e!819591)))

(declare-datatypes ((SeekEntryResult!11810 0))(
  ( (MissingZero!11810 (index!49631 (_ BitVec 32))) (Found!11810 (index!49632 (_ BitVec 32))) (Intermediate!11810 (undefined!12622 Bool) (index!49633 (_ BitVec 32)) (x!131254 (_ BitVec 32))) (Undefined!11810) (MissingVacant!11810 (index!49634 (_ BitVec 32))) )
))
(declare-fun lt!638394 () SeekEntryResult!11810)

(declare-fun lt!638392 () (_ BitVec 32))

(declare-datatypes ((array!98503 0))(
  ( (array!98504 (arr!47535 (Array (_ BitVec 32) (_ BitVec 64))) (size!48086 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98503)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98503 (_ BitVec 32)) SeekEntryResult!11810)

(assert (=> b!1456727 (= res!987252 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638392 (select (arr!47535 a!2862) j!93) a!2862 mask!2687) lt!638394)))))

(declare-fun b!1456728 () Bool)

(declare-fun e!819592 () Bool)

(declare-fun e!819593 () Bool)

(assert (=> b!1456728 (= e!819592 e!819593)))

(declare-fun res!987255 () Bool)

(assert (=> b!1456728 (=> (not res!987255) (not e!819593))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456728 (= res!987255 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47535 a!2862) j!93) mask!2687) (select (arr!47535 a!2862) j!93) a!2862 mask!2687) lt!638394))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1456728 (= lt!638394 (Intermediate!11810 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456729 () Bool)

(declare-fun res!987257 () Bool)

(assert (=> b!1456729 (=> (not res!987257) (not e!819587))))

(declare-fun e!819589 () Bool)

(assert (=> b!1456729 (= res!987257 e!819589)))

(declare-fun c!134252 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456729 (= c!134252 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!987265 () Bool)

(declare-fun e!819584 () Bool)

(assert (=> start!125138 (=> (not res!987265) (not e!819584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125138 (= res!987265 (validMask!0 mask!2687))))

(assert (=> start!125138 e!819584))

(assert (=> start!125138 true))

(declare-fun array_inv!36480 (array!98503) Bool)

(assert (=> start!125138 (array_inv!36480 a!2862)))

(declare-fun b!1456730 () Bool)

(declare-fun lt!638391 () array!98503)

(declare-fun e!819585 () Bool)

(declare-fun lt!638395 () (_ BitVec 64))

(declare-fun lt!638390 () SeekEntryResult!11810)

(assert (=> b!1456730 (= e!819585 (not (= lt!638390 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638392 lt!638395 lt!638391 mask!2687))))))

(declare-fun b!1456731 () Bool)

(declare-fun res!987262 () Bool)

(declare-fun e!819586 () Bool)

(assert (=> b!1456731 (=> (not res!987262) (not e!819586))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98503 (_ BitVec 32)) SeekEntryResult!11810)

(assert (=> b!1456731 (= res!987262 (= (seekEntryOrOpen!0 (select (arr!47535 a!2862) j!93) a!2862 mask!2687) (Found!11810 j!93)))))

(declare-fun b!1456732 () Bool)

(declare-fun e!819590 () Bool)

(assert (=> b!1456732 (= e!819587 (not e!819590))))

(declare-fun res!987264 () Bool)

(assert (=> b!1456732 (=> res!987264 e!819590)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1456732 (= res!987264 (or (and (= (select (arr!47535 a!2862) index!646) (select (store (arr!47535 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47535 a!2862) index!646) (select (arr!47535 a!2862) j!93))) (= (select (arr!47535 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456732 e!819586))

(declare-fun res!987251 () Bool)

(assert (=> b!1456732 (=> (not res!987251) (not e!819586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98503 (_ BitVec 32)) Bool)

(assert (=> b!1456732 (= res!987251 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49064 0))(
  ( (Unit!49065) )
))
(declare-fun lt!638393 () Unit!49064)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98503 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49064)

(assert (=> b!1456732 (= lt!638393 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456733 () Bool)

(assert (=> b!1456733 (= e!819591 true)))

(declare-fun lt!638388 () Bool)

(assert (=> b!1456733 (= lt!638388 e!819585)))

(declare-fun c!134251 () Bool)

(assert (=> b!1456733 (= c!134251 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!638389 () SeekEntryResult!11810)

(declare-fun b!1456734 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98503 (_ BitVec 32)) SeekEntryResult!11810)

(assert (=> b!1456734 (= e!819585 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638392 intermediateAfterIndex!19 lt!638395 lt!638391 mask!2687) lt!638389)))))

(declare-fun b!1456735 () Bool)

(declare-fun res!987261 () Bool)

(assert (=> b!1456735 (=> (not res!987261) (not e!819584))))

(assert (=> b!1456735 (= res!987261 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48086 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48086 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48086 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456736 () Bool)

(assert (=> b!1456736 (= e!819590 e!819591)))

(declare-fun res!987259 () Bool)

(assert (=> b!1456736 (=> res!987259 e!819591)))

(assert (=> b!1456736 (= res!987259 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638392 #b00000000000000000000000000000000) (bvsge lt!638392 (size!48086 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456736 (= lt!638392 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456736 (= lt!638389 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638395 lt!638391 mask!2687))))

(assert (=> b!1456736 (= lt!638389 (seekEntryOrOpen!0 lt!638395 lt!638391 mask!2687))))

(declare-fun b!1456737 () Bool)

(assert (=> b!1456737 (= e!819589 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638395 lt!638391 mask!2687) (seekEntryOrOpen!0 lt!638395 lt!638391 mask!2687)))))

(declare-fun b!1456738 () Bool)

(assert (=> b!1456738 (= e!819584 e!819592)))

(declare-fun res!987254 () Bool)

(assert (=> b!1456738 (=> (not res!987254) (not e!819592))))

(assert (=> b!1456738 (= res!987254 (= (select (store (arr!47535 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456738 (= lt!638391 (array!98504 (store (arr!47535 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48086 a!2862)))))

(declare-fun b!1456739 () Bool)

(declare-fun res!987250 () Bool)

(assert (=> b!1456739 (=> (not res!987250) (not e!819584))))

(assert (=> b!1456739 (= res!987250 (and (= (size!48086 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48086 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48086 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456740 () Bool)

(declare-fun res!987267 () Bool)

(assert (=> b!1456740 (=> (not res!987267) (not e!819593))))

(assert (=> b!1456740 (= res!987267 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47535 a!2862) j!93) a!2862 mask!2687) lt!638394))))

(declare-fun b!1456741 () Bool)

(declare-fun res!987258 () Bool)

(assert (=> b!1456741 (=> (not res!987258) (not e!819584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456741 (= res!987258 (validKeyInArray!0 (select (arr!47535 a!2862) j!93)))))

(declare-fun b!1456742 () Bool)

(assert (=> b!1456742 (= e!819589 (= lt!638390 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638395 lt!638391 mask!2687)))))

(declare-fun b!1456743 () Bool)

(declare-fun res!987256 () Bool)

(assert (=> b!1456743 (=> (not res!987256) (not e!819584))))

(assert (=> b!1456743 (= res!987256 (validKeyInArray!0 (select (arr!47535 a!2862) i!1006)))))

(declare-fun b!1456744 () Bool)

(declare-fun res!987266 () Bool)

(assert (=> b!1456744 (=> (not res!987266) (not e!819584))))

(assert (=> b!1456744 (= res!987266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456745 () Bool)

(declare-fun res!987260 () Bool)

(assert (=> b!1456745 (=> (not res!987260) (not e!819584))))

(declare-datatypes ((List!34216 0))(
  ( (Nil!34213) (Cons!34212 (h!35562 (_ BitVec 64)) (t!48917 List!34216)) )
))
(declare-fun arrayNoDuplicates!0 (array!98503 (_ BitVec 32) List!34216) Bool)

(assert (=> b!1456745 (= res!987260 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34213))))

(declare-fun b!1456746 () Bool)

(assert (=> b!1456746 (= e!819593 e!819587)))

(declare-fun res!987263 () Bool)

(assert (=> b!1456746 (=> (not res!987263) (not e!819587))))

(assert (=> b!1456746 (= res!987263 (= lt!638390 (Intermediate!11810 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1456746 (= lt!638390 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638395 mask!2687) lt!638395 lt!638391 mask!2687))))

(assert (=> b!1456746 (= lt!638395 (select (store (arr!47535 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456747 () Bool)

(assert (=> b!1456747 (= e!819586 (and (or (= (select (arr!47535 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47535 a!2862) intermediateBeforeIndex!19) (select (arr!47535 a!2862) j!93))) (let ((bdg!53275 (select (store (arr!47535 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47535 a!2862) index!646) bdg!53275) (= (select (arr!47535 a!2862) index!646) (select (arr!47535 a!2862) j!93))) (= (select (arr!47535 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53275 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and start!125138 res!987265) b!1456739))

(assert (= (and b!1456739 res!987250) b!1456743))

(assert (= (and b!1456743 res!987256) b!1456741))

(assert (= (and b!1456741 res!987258) b!1456744))

(assert (= (and b!1456744 res!987266) b!1456745))

(assert (= (and b!1456745 res!987260) b!1456735))

(assert (= (and b!1456735 res!987261) b!1456738))

(assert (= (and b!1456738 res!987254) b!1456728))

(assert (= (and b!1456728 res!987255) b!1456740))

(assert (= (and b!1456740 res!987267) b!1456746))

(assert (= (and b!1456746 res!987263) b!1456729))

(assert (= (and b!1456729 c!134252) b!1456742))

(assert (= (and b!1456729 (not c!134252)) b!1456737))

(assert (= (and b!1456729 res!987257) b!1456726))

(assert (= (and b!1456726 res!987253) b!1456732))

(assert (= (and b!1456732 res!987251) b!1456731))

(assert (= (and b!1456731 res!987262) b!1456747))

(assert (= (and b!1456732 (not res!987264)) b!1456736))

(assert (= (and b!1456736 (not res!987259)) b!1456727))

(assert (= (and b!1456727 (not res!987252)) b!1456733))

(assert (= (and b!1456733 c!134251) b!1456730))

(assert (= (and b!1456733 (not c!134251)) b!1456734))

(declare-fun m!1344839 () Bool)

(assert (=> b!1456747 m!1344839))

(declare-fun m!1344841 () Bool)

(assert (=> b!1456747 m!1344841))

(declare-fun m!1344843 () Bool)

(assert (=> b!1456747 m!1344843))

(declare-fun m!1344845 () Bool)

(assert (=> b!1456747 m!1344845))

(declare-fun m!1344847 () Bool)

(assert (=> b!1456747 m!1344847))

(declare-fun m!1344849 () Bool)

(assert (=> b!1456736 m!1344849))

(declare-fun m!1344851 () Bool)

(assert (=> b!1456736 m!1344851))

(declare-fun m!1344853 () Bool)

(assert (=> b!1456736 m!1344853))

(declare-fun m!1344855 () Bool)

(assert (=> b!1456732 m!1344855))

(assert (=> b!1456732 m!1344839))

(assert (=> b!1456732 m!1344843))

(assert (=> b!1456732 m!1344845))

(declare-fun m!1344857 () Bool)

(assert (=> b!1456732 m!1344857))

(assert (=> b!1456732 m!1344847))

(assert (=> b!1456741 m!1344847))

(assert (=> b!1456741 m!1344847))

(declare-fun m!1344859 () Bool)

(assert (=> b!1456741 m!1344859))

(assert (=> b!1456740 m!1344847))

(assert (=> b!1456740 m!1344847))

(declare-fun m!1344861 () Bool)

(assert (=> b!1456740 m!1344861))

(declare-fun m!1344863 () Bool)

(assert (=> b!1456743 m!1344863))

(assert (=> b!1456743 m!1344863))

(declare-fun m!1344865 () Bool)

(assert (=> b!1456743 m!1344865))

(declare-fun m!1344867 () Bool)

(assert (=> start!125138 m!1344867))

(declare-fun m!1344869 () Bool)

(assert (=> start!125138 m!1344869))

(declare-fun m!1344871 () Bool)

(assert (=> b!1456734 m!1344871))

(declare-fun m!1344873 () Bool)

(assert (=> b!1456745 m!1344873))

(declare-fun m!1344875 () Bool)

(assert (=> b!1456746 m!1344875))

(assert (=> b!1456746 m!1344875))

(declare-fun m!1344877 () Bool)

(assert (=> b!1456746 m!1344877))

(assert (=> b!1456746 m!1344839))

(declare-fun m!1344879 () Bool)

(assert (=> b!1456746 m!1344879))

(assert (=> b!1456727 m!1344847))

(assert (=> b!1456727 m!1344847))

(declare-fun m!1344881 () Bool)

(assert (=> b!1456727 m!1344881))

(declare-fun m!1344883 () Bool)

(assert (=> b!1456730 m!1344883))

(declare-fun m!1344885 () Bool)

(assert (=> b!1456744 m!1344885))

(assert (=> b!1456731 m!1344847))

(assert (=> b!1456731 m!1344847))

(declare-fun m!1344887 () Bool)

(assert (=> b!1456731 m!1344887))

(assert (=> b!1456738 m!1344839))

(declare-fun m!1344889 () Bool)

(assert (=> b!1456738 m!1344889))

(declare-fun m!1344891 () Bool)

(assert (=> b!1456742 m!1344891))

(assert (=> b!1456737 m!1344851))

(assert (=> b!1456737 m!1344853))

(assert (=> b!1456728 m!1344847))

(assert (=> b!1456728 m!1344847))

(declare-fun m!1344893 () Bool)

(assert (=> b!1456728 m!1344893))

(assert (=> b!1456728 m!1344893))

(assert (=> b!1456728 m!1344847))

(declare-fun m!1344895 () Bool)

(assert (=> b!1456728 m!1344895))

(push 1)

