; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125046 () Bool)

(assert start!125046)

(declare-fun b!1453690 () Bool)

(declare-fun e!818209 () Bool)

(assert (=> b!1453690 (= e!818209 true)))

(declare-fun lt!637288 () Bool)

(declare-fun e!818210 () Bool)

(assert (=> b!1453690 (= lt!637288 e!818210)))

(declare-fun c!133976 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453690 (= c!133976 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-datatypes ((SeekEntryResult!11764 0))(
  ( (MissingZero!11764 (index!49447 (_ BitVec 32))) (Found!11764 (index!49448 (_ BitVec 32))) (Intermediate!11764 (undefined!12576 Bool) (index!49449 (_ BitVec 32)) (x!131088 (_ BitVec 32))) (Undefined!11764) (MissingVacant!11764 (index!49450 (_ BitVec 32))) )
))
(declare-fun lt!637284 () SeekEntryResult!11764)

(declare-fun b!1453692 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637287 () (_ BitVec 32))

(declare-fun lt!637285 () (_ BitVec 64))

(declare-datatypes ((array!98411 0))(
  ( (array!98412 (arr!47489 (Array (_ BitVec 32) (_ BitVec 64))) (size!48040 (_ BitVec 32))) )
))
(declare-fun lt!637289 () array!98411)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98411 (_ BitVec 32)) SeekEntryResult!11764)

(assert (=> b!1453692 (= e!818210 (not (= lt!637284 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637287 lt!637285 lt!637289 mask!2687))))))

(declare-fun b!1453693 () Bool)

(declare-fun res!984777 () Bool)

(declare-fun e!818207 () Bool)

(assert (=> b!1453693 (=> (not res!984777) (not e!818207))))

(declare-fun a!2862 () array!98411)

(declare-datatypes ((List!34170 0))(
  ( (Nil!34167) (Cons!34166 (h!35516 (_ BitVec 64)) (t!48871 List!34170)) )
))
(declare-fun arrayNoDuplicates!0 (array!98411 (_ BitVec 32) List!34170) Bool)

(assert (=> b!1453693 (= res!984777 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34167))))

(declare-fun b!1453694 () Bool)

(declare-fun res!984771 () Bool)

(declare-fun e!818204 () Bool)

(assert (=> b!1453694 (=> (not res!984771) (not e!818204))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1453694 (= res!984771 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453695 () Bool)

(declare-fun e!818205 () Bool)

(assert (=> b!1453695 (= e!818205 e!818204)))

(declare-fun res!984782 () Bool)

(assert (=> b!1453695 (=> (not res!984782) (not e!818204))))

(assert (=> b!1453695 (= res!984782 (= lt!637284 (Intermediate!11764 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453695 (= lt!637284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637285 mask!2687) lt!637285 lt!637289 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1453695 (= lt!637285 (select (store (arr!47489 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453696 () Bool)

(declare-fun res!984772 () Bool)

(declare-fun e!818208 () Bool)

(assert (=> b!1453696 (=> (not res!984772) (not e!818208))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98411 (_ BitVec 32)) SeekEntryResult!11764)

(assert (=> b!1453696 (= res!984772 (= (seekEntryOrOpen!0 (select (arr!47489 a!2862) j!93) a!2862 mask!2687) (Found!11764 j!93)))))

(declare-fun b!1453697 () Bool)

(declare-fun e!818213 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1453697 (= e!818213 (= lt!637284 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637285 lt!637289 mask!2687)))))

(declare-fun b!1453698 () Bool)

(declare-fun res!984776 () Bool)

(assert (=> b!1453698 (=> (not res!984776) (not e!818207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453698 (= res!984776 (validKeyInArray!0 (select (arr!47489 a!2862) i!1006)))))

(declare-fun b!1453699 () Bool)

(declare-fun res!984769 () Bool)

(assert (=> b!1453699 (=> (not res!984769) (not e!818207))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1453699 (= res!984769 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48040 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48040 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48040 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453700 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98411 (_ BitVec 32)) SeekEntryResult!11764)

(assert (=> b!1453700 (= e!818213 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637285 lt!637289 mask!2687) (seekEntryOrOpen!0 lt!637285 lt!637289 mask!2687)))))

(declare-fun b!1453701 () Bool)

(declare-fun res!984781 () Bool)

(assert (=> b!1453701 (=> (not res!984781) (not e!818207))))

(assert (=> b!1453701 (= res!984781 (and (= (size!48040 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48040 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48040 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453702 () Bool)

(declare-fun lt!637291 () SeekEntryResult!11764)

(assert (=> b!1453702 (= e!818210 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637287 intermediateAfterIndex!19 lt!637285 lt!637289 mask!2687) lt!637291)))))

(declare-fun b!1453691 () Bool)

(declare-fun e!818206 () Bool)

(assert (=> b!1453691 (= e!818207 e!818206)))

(declare-fun res!984768 () Bool)

(assert (=> b!1453691 (=> (not res!984768) (not e!818206))))

(assert (=> b!1453691 (= res!984768 (= (select (store (arr!47489 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453691 (= lt!637289 (array!98412 (store (arr!47489 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48040 a!2862)))))

(declare-fun res!984766 () Bool)

(assert (=> start!125046 (=> (not res!984766) (not e!818207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125046 (= res!984766 (validMask!0 mask!2687))))

(assert (=> start!125046 e!818207))

(assert (=> start!125046 true))

(declare-fun array_inv!36434 (array!98411) Bool)

(assert (=> start!125046 (array_inv!36434 a!2862)))

(declare-fun b!1453703 () Bool)

(declare-fun e!818211 () Bool)

(assert (=> b!1453703 (= e!818204 (not e!818211))))

(declare-fun res!984775 () Bool)

(assert (=> b!1453703 (=> res!984775 e!818211)))

(assert (=> b!1453703 (= res!984775 (or (and (= (select (arr!47489 a!2862) index!646) (select (store (arr!47489 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47489 a!2862) index!646) (select (arr!47489 a!2862) j!93))) (= (select (arr!47489 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453703 e!818208))

(declare-fun res!984778 () Bool)

(assert (=> b!1453703 (=> (not res!984778) (not e!818208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98411 (_ BitVec 32)) Bool)

(assert (=> b!1453703 (= res!984778 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48972 0))(
  ( (Unit!48973) )
))
(declare-fun lt!637286 () Unit!48972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48972)

(assert (=> b!1453703 (= lt!637286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453704 () Bool)

(assert (=> b!1453704 (= e!818206 e!818205)))

(declare-fun res!984774 () Bool)

(assert (=> b!1453704 (=> (not res!984774) (not e!818205))))

(declare-fun lt!637290 () SeekEntryResult!11764)

(assert (=> b!1453704 (= res!984774 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47489 a!2862) j!93) mask!2687) (select (arr!47489 a!2862) j!93) a!2862 mask!2687) lt!637290))))

(assert (=> b!1453704 (= lt!637290 (Intermediate!11764 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453705 () Bool)

(declare-fun res!984780 () Bool)

(assert (=> b!1453705 (=> (not res!984780) (not e!818204))))

(assert (=> b!1453705 (= res!984780 e!818213)))

(declare-fun c!133975 () Bool)

(assert (=> b!1453705 (= c!133975 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453706 () Bool)

(declare-fun res!984770 () Bool)

(assert (=> b!1453706 (=> res!984770 e!818209)))

(assert (=> b!1453706 (= res!984770 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637287 (select (arr!47489 a!2862) j!93) a!2862 mask!2687) lt!637290)))))

(declare-fun b!1453707 () Bool)

(declare-fun res!984767 () Bool)

(assert (=> b!1453707 (=> (not res!984767) (not e!818207))))

(assert (=> b!1453707 (= res!984767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453708 () Bool)

(assert (=> b!1453708 (= e!818208 (and (or (= (select (arr!47489 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47489 a!2862) intermediateBeforeIndex!19) (select (arr!47489 a!2862) j!93))) (let ((bdg!53002 (select (store (arr!47489 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47489 a!2862) index!646) bdg!53002) (= (select (arr!47489 a!2862) index!646) (select (arr!47489 a!2862) j!93))) (= (select (arr!47489 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53002 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1453709 () Bool)

(declare-fun res!984779 () Bool)

(assert (=> b!1453709 (=> (not res!984779) (not e!818205))))

(assert (=> b!1453709 (= res!984779 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47489 a!2862) j!93) a!2862 mask!2687) lt!637290))))

(declare-fun b!1453710 () Bool)

(declare-fun res!984773 () Bool)

(assert (=> b!1453710 (=> (not res!984773) (not e!818207))))

(assert (=> b!1453710 (= res!984773 (validKeyInArray!0 (select (arr!47489 a!2862) j!93)))))

(declare-fun b!1453711 () Bool)

(assert (=> b!1453711 (= e!818211 e!818209)))

(declare-fun res!984783 () Bool)

(assert (=> b!1453711 (=> res!984783 e!818209)))

(assert (=> b!1453711 (= res!984783 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637287 #b00000000000000000000000000000000) (bvsge lt!637287 (size!48040 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453711 (= lt!637287 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1453711 (= lt!637291 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637285 lt!637289 mask!2687))))

(assert (=> b!1453711 (= lt!637291 (seekEntryOrOpen!0 lt!637285 lt!637289 mask!2687))))

(assert (= (and start!125046 res!984766) b!1453701))

(assert (= (and b!1453701 res!984781) b!1453698))

(assert (= (and b!1453698 res!984776) b!1453710))

(assert (= (and b!1453710 res!984773) b!1453707))

(assert (= (and b!1453707 res!984767) b!1453693))

(assert (= (and b!1453693 res!984777) b!1453699))

(assert (= (and b!1453699 res!984769) b!1453691))

(assert (= (and b!1453691 res!984768) b!1453704))

(assert (= (and b!1453704 res!984774) b!1453709))

(assert (= (and b!1453709 res!984779) b!1453695))

(assert (= (and b!1453695 res!984782) b!1453705))

(assert (= (and b!1453705 c!133975) b!1453697))

(assert (= (and b!1453705 (not c!133975)) b!1453700))

(assert (= (and b!1453705 res!984780) b!1453694))

(assert (= (and b!1453694 res!984771) b!1453703))

(assert (= (and b!1453703 res!984778) b!1453696))

(assert (= (and b!1453696 res!984772) b!1453708))

(assert (= (and b!1453703 (not res!984775)) b!1453711))

(assert (= (and b!1453711 (not res!984783)) b!1453706))

(assert (= (and b!1453706 (not res!984770)) b!1453690))

(assert (= (and b!1453690 c!133976) b!1453692))

(assert (= (and b!1453690 (not c!133976)) b!1453702))

(declare-fun m!1342171 () Bool)

(assert (=> b!1453695 m!1342171))

(assert (=> b!1453695 m!1342171))

(declare-fun m!1342173 () Bool)

(assert (=> b!1453695 m!1342173))

(declare-fun m!1342175 () Bool)

(assert (=> b!1453695 m!1342175))

(declare-fun m!1342177 () Bool)

(assert (=> b!1453695 m!1342177))

(declare-fun m!1342179 () Bool)

(assert (=> b!1453711 m!1342179))

(declare-fun m!1342181 () Bool)

(assert (=> b!1453711 m!1342181))

(declare-fun m!1342183 () Bool)

(assert (=> b!1453711 m!1342183))

(declare-fun m!1342185 () Bool)

(assert (=> start!125046 m!1342185))

(declare-fun m!1342187 () Bool)

(assert (=> start!125046 m!1342187))

(declare-fun m!1342189 () Bool)

(assert (=> b!1453697 m!1342189))

(declare-fun m!1342191 () Bool)

(assert (=> b!1453696 m!1342191))

(assert (=> b!1453696 m!1342191))

(declare-fun m!1342193 () Bool)

(assert (=> b!1453696 m!1342193))

(assert (=> b!1453708 m!1342175))

(declare-fun m!1342195 () Bool)

(assert (=> b!1453708 m!1342195))

(declare-fun m!1342197 () Bool)

(assert (=> b!1453708 m!1342197))

(declare-fun m!1342199 () Bool)

(assert (=> b!1453708 m!1342199))

(assert (=> b!1453708 m!1342191))

(assert (=> b!1453706 m!1342191))

(assert (=> b!1453706 m!1342191))

(declare-fun m!1342201 () Bool)

(assert (=> b!1453706 m!1342201))

(declare-fun m!1342203 () Bool)

(assert (=> b!1453703 m!1342203))

(assert (=> b!1453703 m!1342175))

(assert (=> b!1453703 m!1342197))

(assert (=> b!1453703 m!1342199))

(declare-fun m!1342205 () Bool)

(assert (=> b!1453703 m!1342205))

(assert (=> b!1453703 m!1342191))

(declare-fun m!1342207 () Bool)

(assert (=> b!1453692 m!1342207))

(declare-fun m!1342209 () Bool)

(assert (=> b!1453693 m!1342209))

(declare-fun m!1342211 () Bool)

(assert (=> b!1453702 m!1342211))

(declare-fun m!1342213 () Bool)

(assert (=> b!1453698 m!1342213))

(assert (=> b!1453698 m!1342213))

(declare-fun m!1342215 () Bool)

(assert (=> b!1453698 m!1342215))

(assert (=> b!1453691 m!1342175))

(declare-fun m!1342217 () Bool)

(assert (=> b!1453691 m!1342217))

(assert (=> b!1453710 m!1342191))

(assert (=> b!1453710 m!1342191))

(declare-fun m!1342219 () Bool)

(assert (=> b!1453710 m!1342219))

(assert (=> b!1453704 m!1342191))

(assert (=> b!1453704 m!1342191))

(declare-fun m!1342221 () Bool)

(assert (=> b!1453704 m!1342221))

(assert (=> b!1453704 m!1342221))

(assert (=> b!1453704 m!1342191))

(declare-fun m!1342223 () Bool)

(assert (=> b!1453704 m!1342223))

(assert (=> b!1453700 m!1342181))

(assert (=> b!1453700 m!1342183))

(assert (=> b!1453709 m!1342191))

(assert (=> b!1453709 m!1342191))

(declare-fun m!1342225 () Bool)

(assert (=> b!1453709 m!1342225))

(declare-fun m!1342227 () Bool)

(assert (=> b!1453707 m!1342227))

(check-sat (not b!1453710) (not b!1453692) (not b!1453709) (not b!1453695) (not b!1453702) (not b!1453703) (not start!125046) (not b!1453711) (not b!1453697) (not b!1453698) (not b!1453700) (not b!1453706) (not b!1453693) (not b!1453696) (not b!1453707) (not b!1453704))
(check-sat)
