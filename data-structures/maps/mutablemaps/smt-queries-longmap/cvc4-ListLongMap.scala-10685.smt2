; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125294 () Bool)

(assert start!125294)

(declare-fun b!1461703 () Bool)

(declare-fun res!991379 () Bool)

(declare-fun e!821761 () Bool)

(assert (=> b!1461703 (=> (not res!991379) (not e!821761))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98659 0))(
  ( (array!98660 (arr!47613 (Array (_ BitVec 32) (_ BitVec 64))) (size!48164 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98659)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1461703 (= res!991379 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48164 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48164 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48164 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!991372 () Bool)

(assert (=> start!125294 (=> (not res!991372) (not e!821761))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125294 (= res!991372 (validMask!0 mask!2687))))

(assert (=> start!125294 e!821761))

(assert (=> start!125294 true))

(declare-fun array_inv!36558 (array!98659) Bool)

(assert (=> start!125294 (array_inv!36558 a!2862)))

(declare-fun b!1461704 () Bool)

(declare-fun e!821759 () Bool)

(declare-fun e!821758 () Bool)

(assert (=> b!1461704 (= e!821759 e!821758)))

(declare-fun res!991366 () Bool)

(assert (=> b!1461704 (=> (not res!991366) (not e!821758))))

(declare-datatypes ((SeekEntryResult!11888 0))(
  ( (MissingZero!11888 (index!49943 (_ BitVec 32))) (Found!11888 (index!49944 (_ BitVec 32))) (Intermediate!11888 (undefined!12700 Bool) (index!49945 (_ BitVec 32)) (x!131540 (_ BitVec 32))) (Undefined!11888) (MissingVacant!11888 (index!49946 (_ BitVec 32))) )
))
(declare-fun lt!640182 () SeekEntryResult!11888)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98659 (_ BitVec 32)) SeekEntryResult!11888)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461704 (= res!991366 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47613 a!2862) j!93) mask!2687) (select (arr!47613 a!2862) j!93) a!2862 mask!2687) lt!640182))))

(assert (=> b!1461704 (= lt!640182 (Intermediate!11888 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461705 () Bool)

(declare-fun e!821754 () Bool)

(declare-fun e!821760 () Bool)

(assert (=> b!1461705 (= e!821754 e!821760)))

(declare-fun res!991375 () Bool)

(assert (=> b!1461705 (=> res!991375 e!821760)))

(declare-fun lt!640181 () (_ BitVec 32))

(assert (=> b!1461705 (= res!991375 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640181 #b00000000000000000000000000000000) (bvsge lt!640181 (size!48164 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461705 (= lt!640181 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!640184 () (_ BitVec 64))

(declare-fun b!1461706 () Bool)

(declare-fun e!821757 () Bool)

(declare-fun lt!640186 () SeekEntryResult!11888)

(declare-fun lt!640183 () array!98659)

(assert (=> b!1461706 (= e!821757 (= lt!640186 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640184 lt!640183 mask!2687)))))

(declare-fun b!1461707 () Bool)

(declare-fun res!991369 () Bool)

(assert (=> b!1461707 (=> res!991369 e!821760)))

(assert (=> b!1461707 (= res!991369 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640181 (select (arr!47613 a!2862) j!93) a!2862 mask!2687) lt!640182)))))

(declare-fun b!1461708 () Bool)

(declare-fun res!991365 () Bool)

(declare-fun e!821753 () Bool)

(assert (=> b!1461708 (=> (not res!991365) (not e!821753))))

(assert (=> b!1461708 (= res!991365 e!821757)))

(declare-fun c!134683 () Bool)

(assert (=> b!1461708 (= c!134683 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461709 () Bool)

(assert (=> b!1461709 (= e!821760 true)))

(declare-fun lt!640185 () Bool)

(declare-fun e!821755 () Bool)

(assert (=> b!1461709 (= lt!640185 e!821755)))

(declare-fun c!134684 () Bool)

(assert (=> b!1461709 (= c!134684 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461710 () Bool)

(declare-fun res!991363 () Bool)

(assert (=> b!1461710 (=> (not res!991363) (not e!821758))))

(assert (=> b!1461710 (= res!991363 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47613 a!2862) j!93) a!2862 mask!2687) lt!640182))))

(declare-fun b!1461711 () Bool)

(declare-fun res!991376 () Bool)

(assert (=> b!1461711 (=> (not res!991376) (not e!821761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461711 (= res!991376 (validKeyInArray!0 (select (arr!47613 a!2862) j!93)))))

(declare-fun b!1461712 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98659 (_ BitVec 32)) SeekEntryResult!11888)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98659 (_ BitVec 32)) SeekEntryResult!11888)

(assert (=> b!1461712 (= e!821757 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640184 lt!640183 mask!2687) (seekEntryOrOpen!0 lt!640184 lt!640183 mask!2687)))))

(declare-fun b!1461713 () Bool)

(assert (=> b!1461713 (= e!821755 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640181 intermediateAfterIndex!19 lt!640184 lt!640183 mask!2687) (seekEntryOrOpen!0 lt!640184 lt!640183 mask!2687))))))

(declare-fun b!1461714 () Bool)

(declare-fun res!991371 () Bool)

(assert (=> b!1461714 (=> (not res!991371) (not e!821761))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461714 (= res!991371 (validKeyInArray!0 (select (arr!47613 a!2862) i!1006)))))

(declare-fun b!1461715 () Bool)

(declare-fun res!991374 () Bool)

(assert (=> b!1461715 (=> (not res!991374) (not e!821761))))

(declare-datatypes ((List!34294 0))(
  ( (Nil!34291) (Cons!34290 (h!35640 (_ BitVec 64)) (t!48995 List!34294)) )
))
(declare-fun arrayNoDuplicates!0 (array!98659 (_ BitVec 32) List!34294) Bool)

(assert (=> b!1461715 (= res!991374 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34291))))

(declare-fun e!821756 () Bool)

(declare-fun b!1461716 () Bool)

(assert (=> b!1461716 (= e!821756 (or (= (select (arr!47613 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47613 a!2862) intermediateBeforeIndex!19) (select (arr!47613 a!2862) j!93))))))

(declare-fun b!1461717 () Bool)

(assert (=> b!1461717 (= e!821755 (not (= lt!640186 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640181 lt!640184 lt!640183 mask!2687))))))

(declare-fun b!1461718 () Bool)

(assert (=> b!1461718 (= e!821758 e!821753)))

(declare-fun res!991373 () Bool)

(assert (=> b!1461718 (=> (not res!991373) (not e!821753))))

(assert (=> b!1461718 (= res!991373 (= lt!640186 (Intermediate!11888 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1461718 (= lt!640186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640184 mask!2687) lt!640184 lt!640183 mask!2687))))

(assert (=> b!1461718 (= lt!640184 (select (store (arr!47613 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461719 () Bool)

(assert (=> b!1461719 (= e!821761 e!821759)))

(declare-fun res!991377 () Bool)

(assert (=> b!1461719 (=> (not res!991377) (not e!821759))))

(assert (=> b!1461719 (= res!991377 (= (select (store (arr!47613 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461719 (= lt!640183 (array!98660 (store (arr!47613 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48164 a!2862)))))

(declare-fun b!1461720 () Bool)

(declare-fun res!991368 () Bool)

(assert (=> b!1461720 (=> (not res!991368) (not e!821753))))

(assert (=> b!1461720 (= res!991368 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461721 () Bool)

(declare-fun res!991370 () Bool)

(assert (=> b!1461721 (=> (not res!991370) (not e!821761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98659 (_ BitVec 32)) Bool)

(assert (=> b!1461721 (= res!991370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461722 () Bool)

(declare-fun res!991367 () Bool)

(assert (=> b!1461722 (=> (not res!991367) (not e!821756))))

(assert (=> b!1461722 (= res!991367 (= (seekEntryOrOpen!0 (select (arr!47613 a!2862) j!93) a!2862 mask!2687) (Found!11888 j!93)))))

(declare-fun b!1461723 () Bool)

(declare-fun res!991364 () Bool)

(assert (=> b!1461723 (=> (not res!991364) (not e!821761))))

(assert (=> b!1461723 (= res!991364 (and (= (size!48164 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48164 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48164 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461724 () Bool)

(assert (=> b!1461724 (= e!821753 (not e!821754))))

(declare-fun res!991378 () Bool)

(assert (=> b!1461724 (=> res!991378 e!821754)))

(assert (=> b!1461724 (= res!991378 (or (and (= (select (arr!47613 a!2862) index!646) (select (store (arr!47613 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47613 a!2862) index!646) (select (arr!47613 a!2862) j!93))) (= (select (arr!47613 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461724 e!821756))

(declare-fun res!991380 () Bool)

(assert (=> b!1461724 (=> (not res!991380) (not e!821756))))

(assert (=> b!1461724 (= res!991380 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49220 0))(
  ( (Unit!49221) )
))
(declare-fun lt!640180 () Unit!49220)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49220)

(assert (=> b!1461724 (= lt!640180 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125294 res!991372) b!1461723))

(assert (= (and b!1461723 res!991364) b!1461714))

(assert (= (and b!1461714 res!991371) b!1461711))

(assert (= (and b!1461711 res!991376) b!1461721))

(assert (= (and b!1461721 res!991370) b!1461715))

(assert (= (and b!1461715 res!991374) b!1461703))

(assert (= (and b!1461703 res!991379) b!1461719))

(assert (= (and b!1461719 res!991377) b!1461704))

(assert (= (and b!1461704 res!991366) b!1461710))

(assert (= (and b!1461710 res!991363) b!1461718))

(assert (= (and b!1461718 res!991373) b!1461708))

(assert (= (and b!1461708 c!134683) b!1461706))

(assert (= (and b!1461708 (not c!134683)) b!1461712))

(assert (= (and b!1461708 res!991365) b!1461720))

(assert (= (and b!1461720 res!991368) b!1461724))

(assert (= (and b!1461724 res!991380) b!1461722))

(assert (= (and b!1461722 res!991367) b!1461716))

(assert (= (and b!1461724 (not res!991378)) b!1461705))

(assert (= (and b!1461705 (not res!991375)) b!1461707))

(assert (= (and b!1461707 (not res!991369)) b!1461709))

(assert (= (and b!1461709 c!134684) b!1461717))

(assert (= (and b!1461709 (not c!134684)) b!1461713))

(declare-fun m!1349297 () Bool)

(assert (=> b!1461710 m!1349297))

(assert (=> b!1461710 m!1349297))

(declare-fun m!1349299 () Bool)

(assert (=> b!1461710 m!1349299))

(declare-fun m!1349301 () Bool)

(assert (=> start!125294 m!1349301))

(declare-fun m!1349303 () Bool)

(assert (=> start!125294 m!1349303))

(declare-fun m!1349305 () Bool)

(assert (=> b!1461721 m!1349305))

(declare-fun m!1349307 () Bool)

(assert (=> b!1461714 m!1349307))

(assert (=> b!1461714 m!1349307))

(declare-fun m!1349309 () Bool)

(assert (=> b!1461714 m!1349309))

(declare-fun m!1349311 () Bool)

(assert (=> b!1461719 m!1349311))

(declare-fun m!1349313 () Bool)

(assert (=> b!1461719 m!1349313))

(assert (=> b!1461704 m!1349297))

(assert (=> b!1461704 m!1349297))

(declare-fun m!1349315 () Bool)

(assert (=> b!1461704 m!1349315))

(assert (=> b!1461704 m!1349315))

(assert (=> b!1461704 m!1349297))

(declare-fun m!1349317 () Bool)

(assert (=> b!1461704 m!1349317))

(declare-fun m!1349319 () Bool)

(assert (=> b!1461715 m!1349319))

(declare-fun m!1349321 () Bool)

(assert (=> b!1461724 m!1349321))

(assert (=> b!1461724 m!1349311))

(declare-fun m!1349323 () Bool)

(assert (=> b!1461724 m!1349323))

(declare-fun m!1349325 () Bool)

(assert (=> b!1461724 m!1349325))

(declare-fun m!1349327 () Bool)

(assert (=> b!1461724 m!1349327))

(assert (=> b!1461724 m!1349297))

(declare-fun m!1349329 () Bool)

(assert (=> b!1461712 m!1349329))

(declare-fun m!1349331 () Bool)

(assert (=> b!1461712 m!1349331))

(declare-fun m!1349333 () Bool)

(assert (=> b!1461718 m!1349333))

(assert (=> b!1461718 m!1349333))

(declare-fun m!1349335 () Bool)

(assert (=> b!1461718 m!1349335))

(assert (=> b!1461718 m!1349311))

(declare-fun m!1349337 () Bool)

(assert (=> b!1461718 m!1349337))

(assert (=> b!1461722 m!1349297))

(assert (=> b!1461722 m!1349297))

(declare-fun m!1349339 () Bool)

(assert (=> b!1461722 m!1349339))

(declare-fun m!1349341 () Bool)

(assert (=> b!1461706 m!1349341))

(assert (=> b!1461707 m!1349297))

(assert (=> b!1461707 m!1349297))

(declare-fun m!1349343 () Bool)

(assert (=> b!1461707 m!1349343))

(assert (=> b!1461711 m!1349297))

(assert (=> b!1461711 m!1349297))

(declare-fun m!1349345 () Bool)

(assert (=> b!1461711 m!1349345))

(declare-fun m!1349347 () Bool)

(assert (=> b!1461705 m!1349347))

(declare-fun m!1349349 () Bool)

(assert (=> b!1461717 m!1349349))

(declare-fun m!1349351 () Bool)

(assert (=> b!1461713 m!1349351))

(assert (=> b!1461713 m!1349331))

(declare-fun m!1349353 () Bool)

(assert (=> b!1461716 m!1349353))

(assert (=> b!1461716 m!1349297))

(push 1)

