; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125008 () Bool)

(assert start!125008)

(declare-fun b!1452579 () Bool)

(declare-fun res!983781 () Bool)

(declare-fun e!817712 () Bool)

(assert (=> b!1452579 (=> (not res!983781) (not e!817712))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98373 0))(
  ( (array!98374 (arr!47470 (Array (_ BitVec 32) (_ BitVec 64))) (size!48021 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98373)

(assert (=> b!1452579 (= res!983781 (and (= (size!48021 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48021 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48021 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!636951 () array!98373)

(declare-fun e!817711 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!636949 () (_ BitVec 64))

(declare-fun b!1452580 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11745 0))(
  ( (MissingZero!11745 (index!49371 (_ BitVec 32))) (Found!11745 (index!49372 (_ BitVec 32))) (Intermediate!11745 (undefined!12557 Bool) (index!49373 (_ BitVec 32)) (x!131021 (_ BitVec 32))) (Undefined!11745) (MissingVacant!11745 (index!49374 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98373 (_ BitVec 32)) SeekEntryResult!11745)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98373 (_ BitVec 32)) SeekEntryResult!11745)

(assert (=> b!1452580 (= e!817711 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636949 lt!636951 mask!2687) (seekEntryOrOpen!0 lt!636949 lt!636951 mask!2687)))))

(declare-fun b!1452581 () Bool)

(declare-fun e!817710 () Bool)

(declare-fun e!817713 () Bool)

(assert (=> b!1452581 (= e!817710 e!817713)))

(declare-fun res!983788 () Bool)

(assert (=> b!1452581 (=> (not res!983788) (not e!817713))))

(declare-fun lt!636948 () SeekEntryResult!11745)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98373 (_ BitVec 32)) SeekEntryResult!11745)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452581 (= res!983788 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47470 a!2862) j!93) mask!2687) (select (arr!47470 a!2862) j!93) a!2862 mask!2687) lt!636948))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452581 (= lt!636948 (Intermediate!11745 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452582 () Bool)

(declare-fun res!983783 () Bool)

(assert (=> b!1452582 (=> (not res!983783) (not e!817713))))

(assert (=> b!1452582 (= res!983783 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47470 a!2862) j!93) a!2862 mask!2687) lt!636948))))

(declare-fun b!1452583 () Bool)

(declare-fun res!983782 () Bool)

(declare-fun e!817715 () Bool)

(assert (=> b!1452583 (=> (not res!983782) (not e!817715))))

(assert (=> b!1452583 (= res!983782 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452584 () Bool)

(declare-fun res!983785 () Bool)

(assert (=> b!1452584 (=> (not res!983785) (not e!817715))))

(assert (=> b!1452584 (= res!983785 e!817711)))

(declare-fun c!133913 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452584 (= c!133913 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!636950 () SeekEntryResult!11745)

(declare-fun b!1452585 () Bool)

(assert (=> b!1452585 (= e!817711 (= lt!636950 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636949 lt!636951 mask!2687)))))

(declare-fun b!1452586 () Bool)

(declare-fun res!983779 () Bool)

(declare-fun e!817709 () Bool)

(assert (=> b!1452586 (=> (not res!983779) (not e!817709))))

(assert (=> b!1452586 (= res!983779 (= (seekEntryOrOpen!0 (select (arr!47470 a!2862) j!93) a!2862 mask!2687) (Found!11745 j!93)))))

(declare-fun b!1452587 () Bool)

(declare-fun res!983792 () Bool)

(assert (=> b!1452587 (=> (not res!983792) (not e!817712))))

(declare-datatypes ((List!34151 0))(
  ( (Nil!34148) (Cons!34147 (h!35497 (_ BitVec 64)) (t!48852 List!34151)) )
))
(declare-fun arrayNoDuplicates!0 (array!98373 (_ BitVec 32) List!34151) Bool)

(assert (=> b!1452587 (= res!983792 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34148))))

(declare-fun b!1452588 () Bool)

(declare-fun res!983787 () Bool)

(assert (=> b!1452588 (=> (not res!983787) (not e!817712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452588 (= res!983787 (validKeyInArray!0 (select (arr!47470 a!2862) j!93)))))

(declare-fun b!1452589 () Bool)

(declare-fun res!983780 () Bool)

(assert (=> b!1452589 (=> (not res!983780) (not e!817712))))

(assert (=> b!1452589 (= res!983780 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48021 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48021 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48021 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452590 () Bool)

(assert (=> b!1452590 (= e!817712 e!817710)))

(declare-fun res!983789 () Bool)

(assert (=> b!1452590 (=> (not res!983789) (not e!817710))))

(assert (=> b!1452590 (= res!983789 (= (select (store (arr!47470 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452590 (= lt!636951 (array!98374 (store (arr!47470 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48021 a!2862)))))

(declare-fun b!1452591 () Bool)

(assert (=> b!1452591 (= e!817713 e!817715)))

(declare-fun res!983791 () Bool)

(assert (=> b!1452591 (=> (not res!983791) (not e!817715))))

(assert (=> b!1452591 (= res!983791 (= lt!636950 (Intermediate!11745 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452591 (= lt!636950 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636949 mask!2687) lt!636949 lt!636951 mask!2687))))

(assert (=> b!1452591 (= lt!636949 (select (store (arr!47470 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!983793 () Bool)

(assert (=> start!125008 (=> (not res!983793) (not e!817712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125008 (= res!983793 (validMask!0 mask!2687))))

(assert (=> start!125008 e!817712))

(assert (=> start!125008 true))

(declare-fun array_inv!36415 (array!98373) Bool)

(assert (=> start!125008 (array_inv!36415 a!2862)))

(declare-fun b!1452592 () Bool)

(assert (=> b!1452592 (= e!817709 (and (or (= (select (arr!47470 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47470 a!2862) intermediateBeforeIndex!19) (select (arr!47470 a!2862) j!93))) (or (and (= (select (arr!47470 a!2862) index!646) (select (store (arr!47470 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47470 a!2862) index!646) (select (arr!47470 a!2862) j!93))) (= (select (arr!47470 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47470 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452593 () Bool)

(declare-fun res!983790 () Bool)

(assert (=> b!1452593 (=> (not res!983790) (not e!817712))))

(assert (=> b!1452593 (= res!983790 (validKeyInArray!0 (select (arr!47470 a!2862) i!1006)))))

(declare-fun b!1452594 () Bool)

(declare-fun res!983786 () Bool)

(assert (=> b!1452594 (=> (not res!983786) (not e!817712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98373 (_ BitVec 32)) Bool)

(assert (=> b!1452594 (= res!983786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452595 () Bool)

(assert (=> b!1452595 (= e!817715 (not true))))

(assert (=> b!1452595 e!817709))

(declare-fun res!983784 () Bool)

(assert (=> b!1452595 (=> (not res!983784) (not e!817709))))

(assert (=> b!1452595 (= res!983784 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48934 0))(
  ( (Unit!48935) )
))
(declare-fun lt!636952 () Unit!48934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98373 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48934)

(assert (=> b!1452595 (= lt!636952 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125008 res!983793) b!1452579))

(assert (= (and b!1452579 res!983781) b!1452593))

(assert (= (and b!1452593 res!983790) b!1452588))

(assert (= (and b!1452588 res!983787) b!1452594))

(assert (= (and b!1452594 res!983786) b!1452587))

(assert (= (and b!1452587 res!983792) b!1452589))

(assert (= (and b!1452589 res!983780) b!1452590))

(assert (= (and b!1452590 res!983789) b!1452581))

(assert (= (and b!1452581 res!983788) b!1452582))

(assert (= (and b!1452582 res!983783) b!1452591))

(assert (= (and b!1452591 res!983791) b!1452584))

(assert (= (and b!1452584 c!133913) b!1452585))

(assert (= (and b!1452584 (not c!133913)) b!1452580))

(assert (= (and b!1452584 res!983785) b!1452583))

(assert (= (and b!1452583 res!983782) b!1452595))

(assert (= (and b!1452595 res!983784) b!1452586))

(assert (= (and b!1452586 res!983779) b!1452592))

(declare-fun m!1341207 () Bool)

(assert (=> b!1452588 m!1341207))

(assert (=> b!1452588 m!1341207))

(declare-fun m!1341209 () Bool)

(assert (=> b!1452588 m!1341209))

(declare-fun m!1341211 () Bool)

(assert (=> b!1452591 m!1341211))

(assert (=> b!1452591 m!1341211))

(declare-fun m!1341213 () Bool)

(assert (=> b!1452591 m!1341213))

(declare-fun m!1341215 () Bool)

(assert (=> b!1452591 m!1341215))

(declare-fun m!1341217 () Bool)

(assert (=> b!1452591 m!1341217))

(declare-fun m!1341219 () Bool)

(assert (=> b!1452595 m!1341219))

(declare-fun m!1341221 () Bool)

(assert (=> b!1452595 m!1341221))

(declare-fun m!1341223 () Bool)

(assert (=> b!1452594 m!1341223))

(declare-fun m!1341225 () Bool)

(assert (=> b!1452580 m!1341225))

(declare-fun m!1341227 () Bool)

(assert (=> b!1452580 m!1341227))

(declare-fun m!1341229 () Bool)

(assert (=> start!125008 m!1341229))

(declare-fun m!1341231 () Bool)

(assert (=> start!125008 m!1341231))

(assert (=> b!1452590 m!1341215))

(declare-fun m!1341233 () Bool)

(assert (=> b!1452590 m!1341233))

(declare-fun m!1341235 () Bool)

(assert (=> b!1452593 m!1341235))

(assert (=> b!1452593 m!1341235))

(declare-fun m!1341237 () Bool)

(assert (=> b!1452593 m!1341237))

(assert (=> b!1452581 m!1341207))

(assert (=> b!1452581 m!1341207))

(declare-fun m!1341239 () Bool)

(assert (=> b!1452581 m!1341239))

(assert (=> b!1452581 m!1341239))

(assert (=> b!1452581 m!1341207))

(declare-fun m!1341241 () Bool)

(assert (=> b!1452581 m!1341241))

(assert (=> b!1452592 m!1341215))

(declare-fun m!1341243 () Bool)

(assert (=> b!1452592 m!1341243))

(declare-fun m!1341245 () Bool)

(assert (=> b!1452592 m!1341245))

(declare-fun m!1341247 () Bool)

(assert (=> b!1452592 m!1341247))

(assert (=> b!1452592 m!1341207))

(assert (=> b!1452582 m!1341207))

(assert (=> b!1452582 m!1341207))

(declare-fun m!1341249 () Bool)

(assert (=> b!1452582 m!1341249))

(declare-fun m!1341251 () Bool)

(assert (=> b!1452587 m!1341251))

(declare-fun m!1341253 () Bool)

(assert (=> b!1452585 m!1341253))

(assert (=> b!1452586 m!1341207))

(assert (=> b!1452586 m!1341207))

(declare-fun m!1341255 () Bool)

(assert (=> b!1452586 m!1341255))

(push 1)

