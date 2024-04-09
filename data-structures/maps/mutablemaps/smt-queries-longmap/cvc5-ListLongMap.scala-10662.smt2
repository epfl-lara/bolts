; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125152 () Bool)

(assert start!125152)

(declare-fun res!987638 () Bool)

(declare-fun e!819800 () Bool)

(assert (=> start!125152 (=> (not res!987638) (not e!819800))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125152 (= res!987638 (validMask!0 mask!2687))))

(assert (=> start!125152 e!819800))

(assert (=> start!125152 true))

(declare-datatypes ((array!98517 0))(
  ( (array!98518 (arr!47542 (Array (_ BitVec 32) (_ BitVec 64))) (size!48093 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98517)

(declare-fun array_inv!36487 (array!98517) Bool)

(assert (=> start!125152 (array_inv!36487 a!2862)))

(declare-fun b!1457188 () Bool)

(declare-fun res!987628 () Bool)

(assert (=> b!1457188 (=> (not res!987628) (not e!819800))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457188 (= res!987628 (validKeyInArray!0 (select (arr!47542 a!2862) j!93)))))

(declare-fun b!1457189 () Bool)

(declare-fun res!987629 () Bool)

(assert (=> b!1457189 (=> (not res!987629) (not e!819800))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1457189 (= res!987629 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48093 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48093 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48093 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457190 () Bool)

(declare-fun res!987630 () Bool)

(assert (=> b!1457190 (=> (not res!987630) (not e!819800))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1457190 (= res!987630 (and (= (size!48093 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48093 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48093 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1457191 () Bool)

(declare-fun e!819798 () Bool)

(declare-fun e!819794 () Bool)

(assert (=> b!1457191 (= e!819798 e!819794)))

(declare-fun res!987645 () Bool)

(assert (=> b!1457191 (=> res!987645 e!819794)))

(declare-fun lt!638556 () (_ BitVec 32))

(assert (=> b!1457191 (= res!987645 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638556 #b00000000000000000000000000000000) (bvsge lt!638556 (size!48093 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457191 (= lt!638556 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638557 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11817 0))(
  ( (MissingZero!11817 (index!49659 (_ BitVec 32))) (Found!11817 (index!49660 (_ BitVec 32))) (Intermediate!11817 (undefined!12629 Bool) (index!49661 (_ BitVec 32)) (x!131285 (_ BitVec 32))) (Undefined!11817) (MissingVacant!11817 (index!49662 (_ BitVec 32))) )
))
(declare-fun lt!638560 () SeekEntryResult!11817)

(declare-fun lt!638558 () array!98517)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98517 (_ BitVec 32)) SeekEntryResult!11817)

(assert (=> b!1457191 (= lt!638560 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638557 lt!638558 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98517 (_ BitVec 32)) SeekEntryResult!11817)

(assert (=> b!1457191 (= lt!638560 (seekEntryOrOpen!0 lt!638557 lt!638558 mask!2687))))

(declare-fun e!819799 () Bool)

(declare-fun b!1457192 () Bool)

(assert (=> b!1457192 (= e!819799 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638556 intermediateAfterIndex!19 lt!638557 lt!638558 mask!2687) lt!638560)))))

(declare-fun b!1457193 () Bool)

(declare-fun res!987639 () Bool)

(declare-fun e!819801 () Bool)

(assert (=> b!1457193 (=> (not res!987639) (not e!819801))))

(assert (=> b!1457193 (= res!987639 (= (seekEntryOrOpen!0 (select (arr!47542 a!2862) j!93) a!2862 mask!2687) (Found!11817 j!93)))))

(declare-fun b!1457194 () Bool)

(assert (=> b!1457194 (= e!819801 (and (or (= (select (arr!47542 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47542 a!2862) intermediateBeforeIndex!19) (select (arr!47542 a!2862) j!93))) (let ((bdg!53323 (select (store (arr!47542 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47542 a!2862) index!646) bdg!53323) (= (select (arr!47542 a!2862) index!646) (select (arr!47542 a!2862) j!93))) (= (select (arr!47542 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53323 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457195 () Bool)

(assert (=> b!1457195 (= e!819794 true)))

(declare-fun lt!638563 () Bool)

(assert (=> b!1457195 (= lt!638563 e!819799)))

(declare-fun c!134293 () Bool)

(assert (=> b!1457195 (= c!134293 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!638562 () SeekEntryResult!11817)

(declare-fun b!1457196 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98517 (_ BitVec 32)) SeekEntryResult!11817)

(assert (=> b!1457196 (= e!819799 (not (= lt!638562 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638556 lt!638557 lt!638558 mask!2687))))))

(declare-fun b!1457197 () Bool)

(declare-fun e!819795 () Bool)

(assert (=> b!1457197 (= e!819795 (not e!819798))))

(declare-fun res!987643 () Bool)

(assert (=> b!1457197 (=> res!987643 e!819798)))

(assert (=> b!1457197 (= res!987643 (or (and (= (select (arr!47542 a!2862) index!646) (select (store (arr!47542 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47542 a!2862) index!646) (select (arr!47542 a!2862) j!93))) (= (select (arr!47542 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457197 e!819801))

(declare-fun res!987631 () Bool)

(assert (=> b!1457197 (=> (not res!987631) (not e!819801))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98517 (_ BitVec 32)) Bool)

(assert (=> b!1457197 (= res!987631 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49078 0))(
  ( (Unit!49079) )
))
(declare-fun lt!638559 () Unit!49078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49078)

(assert (=> b!1457197 (= lt!638559 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457198 () Bool)

(declare-fun res!987644 () Bool)

(assert (=> b!1457198 (=> (not res!987644) (not e!819795))))

(declare-fun e!819802 () Bool)

(assert (=> b!1457198 (= res!987644 e!819802)))

(declare-fun c!134294 () Bool)

(assert (=> b!1457198 (= c!134294 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457199 () Bool)

(assert (=> b!1457199 (= e!819802 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638557 lt!638558 mask!2687) (seekEntryOrOpen!0 lt!638557 lt!638558 mask!2687)))))

(declare-fun b!1457200 () Bool)

(declare-fun res!987640 () Bool)

(assert (=> b!1457200 (=> (not res!987640) (not e!819800))))

(assert (=> b!1457200 (= res!987640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457201 () Bool)

(declare-fun res!987633 () Bool)

(assert (=> b!1457201 (=> (not res!987633) (not e!819795))))

(assert (=> b!1457201 (= res!987633 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457202 () Bool)

(declare-fun e!819796 () Bool)

(assert (=> b!1457202 (= e!819796 e!819795)))

(declare-fun res!987634 () Bool)

(assert (=> b!1457202 (=> (not res!987634) (not e!819795))))

(assert (=> b!1457202 (= res!987634 (= lt!638562 (Intermediate!11817 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457202 (= lt!638562 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638557 mask!2687) lt!638557 lt!638558 mask!2687))))

(assert (=> b!1457202 (= lt!638557 (select (store (arr!47542 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457203 () Bool)

(declare-fun res!987637 () Bool)

(assert (=> b!1457203 (=> (not res!987637) (not e!819800))))

(declare-datatypes ((List!34223 0))(
  ( (Nil!34220) (Cons!34219 (h!35569 (_ BitVec 64)) (t!48924 List!34223)) )
))
(declare-fun arrayNoDuplicates!0 (array!98517 (_ BitVec 32) List!34223) Bool)

(assert (=> b!1457203 (= res!987637 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34220))))

(declare-fun b!1457204 () Bool)

(declare-fun e!819797 () Bool)

(assert (=> b!1457204 (= e!819797 e!819796)))

(declare-fun res!987635 () Bool)

(assert (=> b!1457204 (=> (not res!987635) (not e!819796))))

(declare-fun lt!638561 () SeekEntryResult!11817)

(assert (=> b!1457204 (= res!987635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47542 a!2862) j!93) mask!2687) (select (arr!47542 a!2862) j!93) a!2862 mask!2687) lt!638561))))

(assert (=> b!1457204 (= lt!638561 (Intermediate!11817 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457205 () Bool)

(declare-fun res!987632 () Bool)

(assert (=> b!1457205 (=> (not res!987632) (not e!819800))))

(assert (=> b!1457205 (= res!987632 (validKeyInArray!0 (select (arr!47542 a!2862) i!1006)))))

(declare-fun b!1457206 () Bool)

(assert (=> b!1457206 (= e!819800 e!819797)))

(declare-fun res!987642 () Bool)

(assert (=> b!1457206 (=> (not res!987642) (not e!819797))))

(assert (=> b!1457206 (= res!987642 (= (select (store (arr!47542 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457206 (= lt!638558 (array!98518 (store (arr!47542 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48093 a!2862)))))

(declare-fun b!1457207 () Bool)

(declare-fun res!987641 () Bool)

(assert (=> b!1457207 (=> res!987641 e!819794)))

(assert (=> b!1457207 (= res!987641 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638556 (select (arr!47542 a!2862) j!93) a!2862 mask!2687) lt!638561)))))

(declare-fun b!1457208 () Bool)

(assert (=> b!1457208 (= e!819802 (= lt!638562 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638557 lt!638558 mask!2687)))))

(declare-fun b!1457209 () Bool)

(declare-fun res!987636 () Bool)

(assert (=> b!1457209 (=> (not res!987636) (not e!819796))))

(assert (=> b!1457209 (= res!987636 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47542 a!2862) j!93) a!2862 mask!2687) lt!638561))))

(assert (= (and start!125152 res!987638) b!1457190))

(assert (= (and b!1457190 res!987630) b!1457205))

(assert (= (and b!1457205 res!987632) b!1457188))

(assert (= (and b!1457188 res!987628) b!1457200))

(assert (= (and b!1457200 res!987640) b!1457203))

(assert (= (and b!1457203 res!987637) b!1457189))

(assert (= (and b!1457189 res!987629) b!1457206))

(assert (= (and b!1457206 res!987642) b!1457204))

(assert (= (and b!1457204 res!987635) b!1457209))

(assert (= (and b!1457209 res!987636) b!1457202))

(assert (= (and b!1457202 res!987634) b!1457198))

(assert (= (and b!1457198 c!134294) b!1457208))

(assert (= (and b!1457198 (not c!134294)) b!1457199))

(assert (= (and b!1457198 res!987644) b!1457201))

(assert (= (and b!1457201 res!987633) b!1457197))

(assert (= (and b!1457197 res!987631) b!1457193))

(assert (= (and b!1457193 res!987639) b!1457194))

(assert (= (and b!1457197 (not res!987643)) b!1457191))

(assert (= (and b!1457191 (not res!987645)) b!1457207))

(assert (= (and b!1457207 (not res!987641)) b!1457195))

(assert (= (and b!1457195 c!134293) b!1457196))

(assert (= (and b!1457195 (not c!134293)) b!1457192))

(declare-fun m!1345245 () Bool)

(assert (=> b!1457202 m!1345245))

(assert (=> b!1457202 m!1345245))

(declare-fun m!1345247 () Bool)

(assert (=> b!1457202 m!1345247))

(declare-fun m!1345249 () Bool)

(assert (=> b!1457202 m!1345249))

(declare-fun m!1345251 () Bool)

(assert (=> b!1457202 m!1345251))

(declare-fun m!1345253 () Bool)

(assert (=> b!1457203 m!1345253))

(declare-fun m!1345255 () Bool)

(assert (=> b!1457188 m!1345255))

(assert (=> b!1457188 m!1345255))

(declare-fun m!1345257 () Bool)

(assert (=> b!1457188 m!1345257))

(assert (=> b!1457206 m!1345249))

(declare-fun m!1345259 () Bool)

(assert (=> b!1457206 m!1345259))

(declare-fun m!1345261 () Bool)

(assert (=> b!1457200 m!1345261))

(declare-fun m!1345263 () Bool)

(assert (=> b!1457196 m!1345263))

(declare-fun m!1345265 () Bool)

(assert (=> b!1457199 m!1345265))

(declare-fun m!1345267 () Bool)

(assert (=> b!1457199 m!1345267))

(assert (=> b!1457193 m!1345255))

(assert (=> b!1457193 m!1345255))

(declare-fun m!1345269 () Bool)

(assert (=> b!1457193 m!1345269))

(assert (=> b!1457194 m!1345249))

(declare-fun m!1345271 () Bool)

(assert (=> b!1457194 m!1345271))

(declare-fun m!1345273 () Bool)

(assert (=> b!1457194 m!1345273))

(declare-fun m!1345275 () Bool)

(assert (=> b!1457194 m!1345275))

(assert (=> b!1457194 m!1345255))

(declare-fun m!1345277 () Bool)

(assert (=> b!1457191 m!1345277))

(assert (=> b!1457191 m!1345265))

(assert (=> b!1457191 m!1345267))

(declare-fun m!1345279 () Bool)

(assert (=> b!1457197 m!1345279))

(assert (=> b!1457197 m!1345249))

(assert (=> b!1457197 m!1345273))

(assert (=> b!1457197 m!1345275))

(declare-fun m!1345281 () Bool)

(assert (=> b!1457197 m!1345281))

(assert (=> b!1457197 m!1345255))

(declare-fun m!1345283 () Bool)

(assert (=> start!125152 m!1345283))

(declare-fun m!1345285 () Bool)

(assert (=> start!125152 m!1345285))

(assert (=> b!1457204 m!1345255))

(assert (=> b!1457204 m!1345255))

(declare-fun m!1345287 () Bool)

(assert (=> b!1457204 m!1345287))

(assert (=> b!1457204 m!1345287))

(assert (=> b!1457204 m!1345255))

(declare-fun m!1345289 () Bool)

(assert (=> b!1457204 m!1345289))

(declare-fun m!1345291 () Bool)

(assert (=> b!1457205 m!1345291))

(assert (=> b!1457205 m!1345291))

(declare-fun m!1345293 () Bool)

(assert (=> b!1457205 m!1345293))

(declare-fun m!1345295 () Bool)

(assert (=> b!1457192 m!1345295))

(assert (=> b!1457207 m!1345255))

(assert (=> b!1457207 m!1345255))

(declare-fun m!1345297 () Bool)

(assert (=> b!1457207 m!1345297))

(declare-fun m!1345299 () Bool)

(assert (=> b!1457208 m!1345299))

(assert (=> b!1457209 m!1345255))

(assert (=> b!1457209 m!1345255))

(declare-fun m!1345301 () Bool)

(assert (=> b!1457209 m!1345301))

(push 1)

