; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125108 () Bool)

(assert start!125108)

(declare-fun b!1455736 () Bool)

(declare-fun e!819143 () Bool)

(declare-fun e!819141 () Bool)

(assert (=> b!1455736 (= e!819143 e!819141)))

(declare-fun res!986446 () Bool)

(assert (=> b!1455736 (=> (not res!986446) (not e!819141))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98473 0))(
  ( (array!98474 (arr!47520 (Array (_ BitVec 32) (_ BitVec 64))) (size!48071 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98473)

(assert (=> b!1455736 (= res!986446 (= (select (store (arr!47520 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!638032 () array!98473)

(assert (=> b!1455736 (= lt!638032 (array!98474 (store (arr!47520 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48071 a!2862)))))

(declare-fun b!1455737 () Bool)

(declare-fun e!819135 () Bool)

(declare-fun e!819134 () Bool)

(assert (=> b!1455737 (= e!819135 (not e!819134))))

(declare-fun res!986445 () Bool)

(assert (=> b!1455737 (=> res!986445 e!819134)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1455737 (= res!986445 (or (and (= (select (arr!47520 a!2862) index!646) (select (store (arr!47520 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47520 a!2862) index!646) (select (arr!47520 a!2862) j!93))) (= (select (arr!47520 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819139 () Bool)

(assert (=> b!1455737 e!819139))

(declare-fun res!986448 () Bool)

(assert (=> b!1455737 (=> (not res!986448) (not e!819139))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98473 (_ BitVec 32)) Bool)

(assert (=> b!1455737 (= res!986448 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49034 0))(
  ( (Unit!49035) )
))
(declare-fun lt!638031 () Unit!49034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98473 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49034)

(assert (=> b!1455737 (= lt!638031 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455738 () Bool)

(declare-fun res!986444 () Bool)

(assert (=> b!1455738 (=> (not res!986444) (not e!819143))))

(assert (=> b!1455738 (= res!986444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1455739 () Bool)

(assert (=> b!1455739 (= e!819139 (and (or (= (select (arr!47520 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47520 a!2862) intermediateBeforeIndex!19) (select (arr!47520 a!2862) j!93))) (let ((bdg!53185 (select (store (arr!47520 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47520 a!2862) index!646) bdg!53185) (= (select (arr!47520 a!2862) index!646) (select (arr!47520 a!2862) j!93))) (= (select (arr!47520 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53185 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455740 () Bool)

(declare-fun res!986441 () Bool)

(declare-fun e!819142 () Bool)

(assert (=> b!1455740 (=> (not res!986441) (not e!819142))))

(declare-datatypes ((SeekEntryResult!11795 0))(
  ( (MissingZero!11795 (index!49571 (_ BitVec 32))) (Found!11795 (index!49572 (_ BitVec 32))) (Intermediate!11795 (undefined!12607 Bool) (index!49573 (_ BitVec 32)) (x!131199 (_ BitVec 32))) (Undefined!11795) (MissingVacant!11795 (index!49574 (_ BitVec 32))) )
))
(declare-fun lt!638033 () SeekEntryResult!11795)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98473 (_ BitVec 32)) SeekEntryResult!11795)

(assert (=> b!1455740 (= res!986441 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47520 a!2862) j!93) a!2862 mask!2687) lt!638033))))

(declare-fun b!1455741 () Bool)

(declare-fun e!819136 () Bool)

(assert (=> b!1455741 (= e!819136 true)))

(declare-fun lt!638028 () Bool)

(declare-fun e!819137 () Bool)

(assert (=> b!1455741 (= lt!638028 e!819137)))

(declare-fun c!134161 () Bool)

(assert (=> b!1455741 (= c!134161 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455742 () Bool)

(declare-fun res!986442 () Bool)

(assert (=> b!1455742 (=> (not res!986442) (not e!819135))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455742 (= res!986442 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455743 () Bool)

(declare-fun res!986455 () Bool)

(assert (=> b!1455743 (=> (not res!986455) (not e!819143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455743 (= res!986455 (validKeyInArray!0 (select (arr!47520 a!2862) j!93)))))

(declare-fun b!1455745 () Bool)

(declare-fun res!986443 () Bool)

(assert (=> b!1455745 (=> (not res!986443) (not e!819139))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98473 (_ BitVec 32)) SeekEntryResult!11795)

(assert (=> b!1455745 (= res!986443 (= (seekEntryOrOpen!0 (select (arr!47520 a!2862) j!93) a!2862 mask!2687) (Found!11795 j!93)))))

(declare-fun b!1455746 () Bool)

(declare-fun res!986453 () Bool)

(assert (=> b!1455746 (=> (not res!986453) (not e!819143))))

(assert (=> b!1455746 (= res!986453 (and (= (size!48071 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48071 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48071 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!638035 () (_ BitVec 64))

(declare-fun lt!638029 () SeekEntryResult!11795)

(declare-fun b!1455747 () Bool)

(declare-fun e!819140 () Bool)

(assert (=> b!1455747 (= e!819140 (= lt!638029 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638035 lt!638032 mask!2687)))))

(declare-fun b!1455748 () Bool)

(declare-fun res!986450 () Bool)

(assert (=> b!1455748 (=> res!986450 e!819136)))

(declare-fun lt!638034 () (_ BitVec 32))

(assert (=> b!1455748 (= res!986450 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638034 (select (arr!47520 a!2862) j!93) a!2862 mask!2687) lt!638033)))))

(declare-fun b!1455749 () Bool)

(assert (=> b!1455749 (= e!819134 e!819136)))

(declare-fun res!986454 () Bool)

(assert (=> b!1455749 (=> res!986454 e!819136)))

(assert (=> b!1455749 (= res!986454 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638034 #b00000000000000000000000000000000) (bvsge lt!638034 (size!48071 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455749 (= lt!638034 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638030 () SeekEntryResult!11795)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98473 (_ BitVec 32)) SeekEntryResult!11795)

(assert (=> b!1455749 (= lt!638030 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638035 lt!638032 mask!2687))))

(assert (=> b!1455749 (= lt!638030 (seekEntryOrOpen!0 lt!638035 lt!638032 mask!2687))))

(declare-fun b!1455750 () Bool)

(declare-fun res!986456 () Bool)

(assert (=> b!1455750 (=> (not res!986456) (not e!819143))))

(declare-datatypes ((List!34201 0))(
  ( (Nil!34198) (Cons!34197 (h!35547 (_ BitVec 64)) (t!48902 List!34201)) )
))
(declare-fun arrayNoDuplicates!0 (array!98473 (_ BitVec 32) List!34201) Bool)

(assert (=> b!1455750 (= res!986456 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34198))))

(declare-fun b!1455751 () Bool)

(declare-fun res!986457 () Bool)

(assert (=> b!1455751 (=> (not res!986457) (not e!819143))))

(assert (=> b!1455751 (= res!986457 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48071 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48071 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48071 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455752 () Bool)

(assert (=> b!1455752 (= e!819137 (not (= lt!638029 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638034 lt!638035 lt!638032 mask!2687))))))

(declare-fun b!1455753 () Bool)

(assert (=> b!1455753 (= e!819141 e!819142)))

(declare-fun res!986452 () Bool)

(assert (=> b!1455753 (=> (not res!986452) (not e!819142))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455753 (= res!986452 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47520 a!2862) j!93) mask!2687) (select (arr!47520 a!2862) j!93) a!2862 mask!2687) lt!638033))))

(assert (=> b!1455753 (= lt!638033 (Intermediate!11795 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455754 () Bool)

(assert (=> b!1455754 (= e!819140 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638035 lt!638032 mask!2687) (seekEntryOrOpen!0 lt!638035 lt!638032 mask!2687)))))

(declare-fun b!1455755 () Bool)

(assert (=> b!1455755 (= e!819142 e!819135)))

(declare-fun res!986449 () Bool)

(assert (=> b!1455755 (=> (not res!986449) (not e!819135))))

(assert (=> b!1455755 (= res!986449 (= lt!638029 (Intermediate!11795 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1455755 (= lt!638029 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638035 mask!2687) lt!638035 lt!638032 mask!2687))))

(assert (=> b!1455755 (= lt!638035 (select (store (arr!47520 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455744 () Bool)

(assert (=> b!1455744 (= e!819137 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638034 intermediateAfterIndex!19 lt!638035 lt!638032 mask!2687) lt!638030)))))

(declare-fun res!986447 () Bool)

(assert (=> start!125108 (=> (not res!986447) (not e!819143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125108 (= res!986447 (validMask!0 mask!2687))))

(assert (=> start!125108 e!819143))

(assert (=> start!125108 true))

(declare-fun array_inv!36465 (array!98473) Bool)

(assert (=> start!125108 (array_inv!36465 a!2862)))

(declare-fun b!1455756 () Bool)

(declare-fun res!986451 () Bool)

(assert (=> b!1455756 (=> (not res!986451) (not e!819135))))

(assert (=> b!1455756 (= res!986451 e!819140)))

(declare-fun c!134162 () Bool)

(assert (=> b!1455756 (= c!134162 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455757 () Bool)

(declare-fun res!986440 () Bool)

(assert (=> b!1455757 (=> (not res!986440) (not e!819143))))

(assert (=> b!1455757 (= res!986440 (validKeyInArray!0 (select (arr!47520 a!2862) i!1006)))))

(assert (= (and start!125108 res!986447) b!1455746))

(assert (= (and b!1455746 res!986453) b!1455757))

(assert (= (and b!1455757 res!986440) b!1455743))

(assert (= (and b!1455743 res!986455) b!1455738))

(assert (= (and b!1455738 res!986444) b!1455750))

(assert (= (and b!1455750 res!986456) b!1455751))

(assert (= (and b!1455751 res!986457) b!1455736))

(assert (= (and b!1455736 res!986446) b!1455753))

(assert (= (and b!1455753 res!986452) b!1455740))

(assert (= (and b!1455740 res!986441) b!1455755))

(assert (= (and b!1455755 res!986449) b!1455756))

(assert (= (and b!1455756 c!134162) b!1455747))

(assert (= (and b!1455756 (not c!134162)) b!1455754))

(assert (= (and b!1455756 res!986451) b!1455742))

(assert (= (and b!1455742 res!986442) b!1455737))

(assert (= (and b!1455737 res!986448) b!1455745))

(assert (= (and b!1455745 res!986443) b!1455739))

(assert (= (and b!1455737 (not res!986445)) b!1455749))

(assert (= (and b!1455749 (not res!986454)) b!1455748))

(assert (= (and b!1455748 (not res!986450)) b!1455741))

(assert (= (and b!1455741 c!134161) b!1455752))

(assert (= (and b!1455741 (not c!134161)) b!1455744))

(declare-fun m!1343969 () Bool)

(assert (=> b!1455745 m!1343969))

(assert (=> b!1455745 m!1343969))

(declare-fun m!1343971 () Bool)

(assert (=> b!1455745 m!1343971))

(declare-fun m!1343973 () Bool)

(assert (=> start!125108 m!1343973))

(declare-fun m!1343975 () Bool)

(assert (=> start!125108 m!1343975))

(declare-fun m!1343977 () Bool)

(assert (=> b!1455738 m!1343977))

(declare-fun m!1343979 () Bool)

(assert (=> b!1455757 m!1343979))

(assert (=> b!1455757 m!1343979))

(declare-fun m!1343981 () Bool)

(assert (=> b!1455757 m!1343981))

(assert (=> b!1455748 m!1343969))

(assert (=> b!1455748 m!1343969))

(declare-fun m!1343983 () Bool)

(assert (=> b!1455748 m!1343983))

(declare-fun m!1343985 () Bool)

(assert (=> b!1455744 m!1343985))

(declare-fun m!1343987 () Bool)

(assert (=> b!1455749 m!1343987))

(declare-fun m!1343989 () Bool)

(assert (=> b!1455749 m!1343989))

(declare-fun m!1343991 () Bool)

(assert (=> b!1455749 m!1343991))

(assert (=> b!1455753 m!1343969))

(assert (=> b!1455753 m!1343969))

(declare-fun m!1343993 () Bool)

(assert (=> b!1455753 m!1343993))

(assert (=> b!1455753 m!1343993))

(assert (=> b!1455753 m!1343969))

(declare-fun m!1343995 () Bool)

(assert (=> b!1455753 m!1343995))

(declare-fun m!1343997 () Bool)

(assert (=> b!1455755 m!1343997))

(assert (=> b!1455755 m!1343997))

(declare-fun m!1343999 () Bool)

(assert (=> b!1455755 m!1343999))

(declare-fun m!1344001 () Bool)

(assert (=> b!1455755 m!1344001))

(declare-fun m!1344003 () Bool)

(assert (=> b!1455755 m!1344003))

(assert (=> b!1455740 m!1343969))

(assert (=> b!1455740 m!1343969))

(declare-fun m!1344005 () Bool)

(assert (=> b!1455740 m!1344005))

(declare-fun m!1344007 () Bool)

(assert (=> b!1455750 m!1344007))

(assert (=> b!1455743 m!1343969))

(assert (=> b!1455743 m!1343969))

(declare-fun m!1344009 () Bool)

(assert (=> b!1455743 m!1344009))

(declare-fun m!1344011 () Bool)

(assert (=> b!1455737 m!1344011))

(assert (=> b!1455737 m!1344001))

(declare-fun m!1344013 () Bool)

(assert (=> b!1455737 m!1344013))

(declare-fun m!1344015 () Bool)

(assert (=> b!1455737 m!1344015))

(declare-fun m!1344017 () Bool)

(assert (=> b!1455737 m!1344017))

(assert (=> b!1455737 m!1343969))

(declare-fun m!1344019 () Bool)

(assert (=> b!1455752 m!1344019))

(declare-fun m!1344021 () Bool)

(assert (=> b!1455747 m!1344021))

(assert (=> b!1455736 m!1344001))

(declare-fun m!1344023 () Bool)

(assert (=> b!1455736 m!1344023))

(assert (=> b!1455739 m!1344001))

(declare-fun m!1344025 () Bool)

(assert (=> b!1455739 m!1344025))

(assert (=> b!1455739 m!1344013))

(assert (=> b!1455739 m!1344015))

(assert (=> b!1455739 m!1343969))

(assert (=> b!1455754 m!1343989))

(assert (=> b!1455754 m!1343991))

(push 1)

