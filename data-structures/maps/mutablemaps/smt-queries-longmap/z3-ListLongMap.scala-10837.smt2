; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126912 () Bool)

(assert start!126912)

(declare-fun b!1490216 () Bool)

(declare-fun res!1013620 () Bool)

(declare-fun e!835106 () Bool)

(assert (=> b!1490216 (=> (not res!1013620) (not e!835106))))

(declare-datatypes ((array!99602 0))(
  ( (array!99603 (arr!48068 (Array (_ BitVec 32) (_ BitVec 64))) (size!48619 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99602)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99602 (_ BitVec 32)) Bool)

(assert (=> b!1490216 (= res!1013620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490217 () Bool)

(declare-fun res!1013621 () Bool)

(assert (=> b!1490217 (=> (not res!1013621) (not e!835106))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490217 (= res!1013621 (validKeyInArray!0 (select (arr!48068 a!2862) i!1006)))))

(declare-fun b!1490218 () Bool)

(declare-fun e!835104 () Bool)

(declare-fun e!835102 () Bool)

(assert (=> b!1490218 (= e!835104 e!835102)))

(declare-fun res!1013630 () Bool)

(assert (=> b!1490218 (=> (not res!1013630) (not e!835102))))

(declare-datatypes ((SeekEntryResult!12331 0))(
  ( (MissingZero!12331 (index!51715 (_ BitVec 32))) (Found!12331 (index!51716 (_ BitVec 32))) (Intermediate!12331 (undefined!13143 Bool) (index!51717 (_ BitVec 32)) (x!133310 (_ BitVec 32))) (Undefined!12331) (MissingVacant!12331 (index!51718 (_ BitVec 32))) )
))
(declare-fun lt!649836 () SeekEntryResult!12331)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490218 (= res!1013630 (= lt!649836 (Intermediate!12331 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!649840 () (_ BitVec 64))

(declare-fun lt!649835 () array!99602)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99602 (_ BitVec 32)) SeekEntryResult!12331)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490218 (= lt!649836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649840 mask!2687) lt!649840 lt!649835 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1490218 (= lt!649840 (select (store (arr!48068 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490219 () Bool)

(declare-fun res!1013627 () Bool)

(assert (=> b!1490219 (=> (not res!1013627) (not e!835104))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!649837 () SeekEntryResult!12331)

(assert (=> b!1490219 (= res!1013627 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48068 a!2862) j!93) a!2862 mask!2687) lt!649837))))

(declare-fun b!1490220 () Bool)

(declare-fun e!835108 () Bool)

(assert (=> b!1490220 (= e!835108 e!835104)))

(declare-fun res!1013629 () Bool)

(assert (=> b!1490220 (=> (not res!1013629) (not e!835104))))

(assert (=> b!1490220 (= res!1013629 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48068 a!2862) j!93) mask!2687) (select (arr!48068 a!2862) j!93) a!2862 mask!2687) lt!649837))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490220 (= lt!649837 (Intermediate!12331 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490221 () Bool)

(declare-fun e!835107 () Bool)

(assert (=> b!1490221 (= e!835107 true)))

(declare-fun lt!649838 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490221 (= lt!649838 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490222 () Bool)

(declare-fun res!1013628 () Bool)

(assert (=> b!1490222 (=> (not res!1013628) (not e!835102))))

(declare-fun e!835105 () Bool)

(assert (=> b!1490222 (= res!1013628 e!835105)))

(declare-fun c!137828 () Bool)

(assert (=> b!1490222 (= c!137828 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1013626 () Bool)

(assert (=> start!126912 (=> (not res!1013626) (not e!835106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126912 (= res!1013626 (validMask!0 mask!2687))))

(assert (=> start!126912 e!835106))

(assert (=> start!126912 true))

(declare-fun array_inv!37013 (array!99602) Bool)

(assert (=> start!126912 (array_inv!37013 a!2862)))

(declare-fun b!1490223 () Bool)

(declare-fun res!1013633 () Bool)

(assert (=> b!1490223 (=> (not res!1013633) (not e!835106))))

(declare-datatypes ((List!34749 0))(
  ( (Nil!34746) (Cons!34745 (h!36128 (_ BitVec 64)) (t!49450 List!34749)) )
))
(declare-fun arrayNoDuplicates!0 (array!99602 (_ BitVec 32) List!34749) Bool)

(assert (=> b!1490223 (= res!1013633 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34746))))

(declare-fun b!1490224 () Bool)

(assert (=> b!1490224 (= e!835102 (not e!835107))))

(declare-fun res!1013623 () Bool)

(assert (=> b!1490224 (=> res!1013623 e!835107)))

(assert (=> b!1490224 (= res!1013623 (or (and (= (select (arr!48068 a!2862) index!646) (select (store (arr!48068 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48068 a!2862) index!646) (select (arr!48068 a!2862) j!93))) (= (select (arr!48068 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835103 () Bool)

(assert (=> b!1490224 e!835103))

(declare-fun res!1013625 () Bool)

(assert (=> b!1490224 (=> (not res!1013625) (not e!835103))))

(assert (=> b!1490224 (= res!1013625 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49950 0))(
  ( (Unit!49951) )
))
(declare-fun lt!649839 () Unit!49950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99602 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49950)

(assert (=> b!1490224 (= lt!649839 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490225 () Bool)

(declare-fun res!1013632 () Bool)

(assert (=> b!1490225 (=> (not res!1013632) (not e!835102))))

(assert (=> b!1490225 (= res!1013632 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490226 () Bool)

(declare-fun res!1013634 () Bool)

(assert (=> b!1490226 (=> (not res!1013634) (not e!835103))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99602 (_ BitVec 32)) SeekEntryResult!12331)

(assert (=> b!1490226 (= res!1013634 (= (seekEntryOrOpen!0 (select (arr!48068 a!2862) j!93) a!2862 mask!2687) (Found!12331 j!93)))))

(declare-fun b!1490227 () Bool)

(assert (=> b!1490227 (= e!835105 (= lt!649836 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649840 lt!649835 mask!2687)))))

(declare-fun b!1490228 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99602 (_ BitVec 32)) SeekEntryResult!12331)

(assert (=> b!1490228 (= e!835105 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649840 lt!649835 mask!2687) (seekEntryOrOpen!0 lt!649840 lt!649835 mask!2687)))))

(declare-fun b!1490229 () Bool)

(assert (=> b!1490229 (= e!835106 e!835108)))

(declare-fun res!1013624 () Bool)

(assert (=> b!1490229 (=> (not res!1013624) (not e!835108))))

(assert (=> b!1490229 (= res!1013624 (= (select (store (arr!48068 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490229 (= lt!649835 (array!99603 (store (arr!48068 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48619 a!2862)))))

(declare-fun b!1490230 () Bool)

(assert (=> b!1490230 (= e!835103 (or (= (select (arr!48068 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48068 a!2862) intermediateBeforeIndex!19) (select (arr!48068 a!2862) j!93))))))

(declare-fun b!1490231 () Bool)

(declare-fun res!1013631 () Bool)

(assert (=> b!1490231 (=> (not res!1013631) (not e!835106))))

(assert (=> b!1490231 (= res!1013631 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48619 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48619 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48619 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490232 () Bool)

(declare-fun res!1013619 () Bool)

(assert (=> b!1490232 (=> (not res!1013619) (not e!835106))))

(assert (=> b!1490232 (= res!1013619 (validKeyInArray!0 (select (arr!48068 a!2862) j!93)))))

(declare-fun b!1490233 () Bool)

(declare-fun res!1013622 () Bool)

(assert (=> b!1490233 (=> (not res!1013622) (not e!835106))))

(assert (=> b!1490233 (= res!1013622 (and (= (size!48619 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48619 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48619 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!126912 res!1013626) b!1490233))

(assert (= (and b!1490233 res!1013622) b!1490217))

(assert (= (and b!1490217 res!1013621) b!1490232))

(assert (= (and b!1490232 res!1013619) b!1490216))

(assert (= (and b!1490216 res!1013620) b!1490223))

(assert (= (and b!1490223 res!1013633) b!1490231))

(assert (= (and b!1490231 res!1013631) b!1490229))

(assert (= (and b!1490229 res!1013624) b!1490220))

(assert (= (and b!1490220 res!1013629) b!1490219))

(assert (= (and b!1490219 res!1013627) b!1490218))

(assert (= (and b!1490218 res!1013630) b!1490222))

(assert (= (and b!1490222 c!137828) b!1490227))

(assert (= (and b!1490222 (not c!137828)) b!1490228))

(assert (= (and b!1490222 res!1013628) b!1490225))

(assert (= (and b!1490225 res!1013632) b!1490224))

(assert (= (and b!1490224 res!1013625) b!1490226))

(assert (= (and b!1490226 res!1013634) b!1490230))

(assert (= (and b!1490224 (not res!1013623)) b!1490221))

(declare-fun m!1374439 () Bool)

(assert (=> b!1490229 m!1374439))

(declare-fun m!1374441 () Bool)

(assert (=> b!1490229 m!1374441))

(declare-fun m!1374443 () Bool)

(assert (=> b!1490221 m!1374443))

(declare-fun m!1374445 () Bool)

(assert (=> b!1490228 m!1374445))

(declare-fun m!1374447 () Bool)

(assert (=> b!1490228 m!1374447))

(declare-fun m!1374449 () Bool)

(assert (=> b!1490220 m!1374449))

(assert (=> b!1490220 m!1374449))

(declare-fun m!1374451 () Bool)

(assert (=> b!1490220 m!1374451))

(assert (=> b!1490220 m!1374451))

(assert (=> b!1490220 m!1374449))

(declare-fun m!1374453 () Bool)

(assert (=> b!1490220 m!1374453))

(assert (=> b!1490226 m!1374449))

(assert (=> b!1490226 m!1374449))

(declare-fun m!1374455 () Bool)

(assert (=> b!1490226 m!1374455))

(declare-fun m!1374457 () Bool)

(assert (=> b!1490224 m!1374457))

(assert (=> b!1490224 m!1374439))

(declare-fun m!1374459 () Bool)

(assert (=> b!1490224 m!1374459))

(declare-fun m!1374461 () Bool)

(assert (=> b!1490224 m!1374461))

(declare-fun m!1374463 () Bool)

(assert (=> b!1490224 m!1374463))

(assert (=> b!1490224 m!1374449))

(assert (=> b!1490232 m!1374449))

(assert (=> b!1490232 m!1374449))

(declare-fun m!1374465 () Bool)

(assert (=> b!1490232 m!1374465))

(declare-fun m!1374467 () Bool)

(assert (=> b!1490216 m!1374467))

(declare-fun m!1374469 () Bool)

(assert (=> b!1490218 m!1374469))

(assert (=> b!1490218 m!1374469))

(declare-fun m!1374471 () Bool)

(assert (=> b!1490218 m!1374471))

(assert (=> b!1490218 m!1374439))

(declare-fun m!1374473 () Bool)

(assert (=> b!1490218 m!1374473))

(declare-fun m!1374475 () Bool)

(assert (=> b!1490217 m!1374475))

(assert (=> b!1490217 m!1374475))

(declare-fun m!1374477 () Bool)

(assert (=> b!1490217 m!1374477))

(declare-fun m!1374479 () Bool)

(assert (=> b!1490230 m!1374479))

(assert (=> b!1490230 m!1374449))

(assert (=> b!1490219 m!1374449))

(assert (=> b!1490219 m!1374449))

(declare-fun m!1374481 () Bool)

(assert (=> b!1490219 m!1374481))

(declare-fun m!1374483 () Bool)

(assert (=> start!126912 m!1374483))

(declare-fun m!1374485 () Bool)

(assert (=> start!126912 m!1374485))

(declare-fun m!1374487 () Bool)

(assert (=> b!1490227 m!1374487))

(declare-fun m!1374489 () Bool)

(assert (=> b!1490223 m!1374489))

(check-sat (not start!126912) (not b!1490216) (not b!1490227) (not b!1490217) (not b!1490218) (not b!1490228) (not b!1490220) (not b!1490224) (not b!1490221) (not b!1490226) (not b!1490232) (not b!1490219) (not b!1490223))
(check-sat)
