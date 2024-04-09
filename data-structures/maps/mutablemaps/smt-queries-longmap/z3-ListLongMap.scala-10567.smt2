; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124584 () Bool)

(assert start!124584)

(declare-fun b!1441252 () Bool)

(declare-datatypes ((array!97949 0))(
  ( (array!97950 (arr!47258 (Array (_ BitVec 32) (_ BitVec 64))) (size!47809 (_ BitVec 32))) )
))
(declare-fun lt!633141 () array!97949)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633139 () (_ BitVec 64))

(declare-fun e!812505 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11533 0))(
  ( (MissingZero!11533 (index!48523 (_ BitVec 32))) (Found!11533 (index!48524 (_ BitVec 32))) (Intermediate!11533 (undefined!12345 Bool) (index!48525 (_ BitVec 32)) (x!130241 (_ BitVec 32))) (Undefined!11533) (MissingVacant!11533 (index!48526 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97949 (_ BitVec 32)) SeekEntryResult!11533)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97949 (_ BitVec 32)) SeekEntryResult!11533)

(assert (=> b!1441252 (= e!812505 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633139 lt!633141 mask!2687) (seekEntryOrOpen!0 lt!633139 lt!633141 mask!2687))))))

(declare-fun b!1441253 () Bool)

(declare-fun e!812508 () Bool)

(assert (=> b!1441253 (= e!812508 false)))

(declare-fun lt!633140 () Bool)

(assert (=> b!1441253 (= lt!633140 e!812505)))

(declare-fun c!133277 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441253 (= c!133277 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441254 () Bool)

(declare-fun res!973734 () Bool)

(declare-fun e!812509 () Bool)

(assert (=> b!1441254 (=> (not res!973734) (not e!812509))))

(declare-fun lt!633138 () SeekEntryResult!11533)

(declare-fun a!2862 () array!97949)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97949 (_ BitVec 32)) SeekEntryResult!11533)

(assert (=> b!1441254 (= res!973734 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47258 a!2862) j!93) a!2862 mask!2687) lt!633138))))

(declare-fun b!1441255 () Bool)

(declare-fun res!973727 () Bool)

(declare-fun e!812506 () Bool)

(assert (=> b!1441255 (=> (not res!973727) (not e!812506))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441255 (= res!973727 (validKeyInArray!0 (select (arr!47258 a!2862) i!1006)))))

(declare-fun res!973730 () Bool)

(assert (=> start!124584 (=> (not res!973730) (not e!812506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124584 (= res!973730 (validMask!0 mask!2687))))

(assert (=> start!124584 e!812506))

(assert (=> start!124584 true))

(declare-fun array_inv!36203 (array!97949) Bool)

(assert (=> start!124584 (array_inv!36203 a!2862)))

(declare-fun b!1441256 () Bool)

(declare-fun res!973724 () Bool)

(assert (=> b!1441256 (=> (not res!973724) (not e!812506))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441256 (= res!973724 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47809 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47809 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47809 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441257 () Bool)

(declare-fun e!812507 () Bool)

(assert (=> b!1441257 (= e!812507 e!812509)))

(declare-fun res!973728 () Bool)

(assert (=> b!1441257 (=> (not res!973728) (not e!812509))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441257 (= res!973728 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47258 a!2862) j!93) mask!2687) (select (arr!47258 a!2862) j!93) a!2862 mask!2687) lt!633138))))

(assert (=> b!1441257 (= lt!633138 (Intermediate!11533 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441258 () Bool)

(declare-fun lt!633142 () SeekEntryResult!11533)

(assert (=> b!1441258 (= e!812505 (not (= lt!633142 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633139 lt!633141 mask!2687))))))

(declare-fun b!1441259 () Bool)

(assert (=> b!1441259 (= e!812509 e!812508)))

(declare-fun res!973729 () Bool)

(assert (=> b!1441259 (=> (not res!973729) (not e!812508))))

(assert (=> b!1441259 (= res!973729 (= lt!633142 (Intermediate!11533 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441259 (= lt!633142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633139 mask!2687) lt!633139 lt!633141 mask!2687))))

(assert (=> b!1441259 (= lt!633139 (select (store (arr!47258 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441260 () Bool)

(declare-fun res!973725 () Bool)

(assert (=> b!1441260 (=> (not res!973725) (not e!812506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97949 (_ BitVec 32)) Bool)

(assert (=> b!1441260 (= res!973725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441261 () Bool)

(declare-fun res!973733 () Bool)

(assert (=> b!1441261 (=> (not res!973733) (not e!812506))))

(assert (=> b!1441261 (= res!973733 (and (= (size!47809 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47809 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47809 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441262 () Bool)

(assert (=> b!1441262 (= e!812506 e!812507)))

(declare-fun res!973726 () Bool)

(assert (=> b!1441262 (=> (not res!973726) (not e!812507))))

(assert (=> b!1441262 (= res!973726 (= (select (store (arr!47258 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441262 (= lt!633141 (array!97950 (store (arr!47258 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47809 a!2862)))))

(declare-fun b!1441263 () Bool)

(declare-fun res!973731 () Bool)

(assert (=> b!1441263 (=> (not res!973731) (not e!812506))))

(assert (=> b!1441263 (= res!973731 (validKeyInArray!0 (select (arr!47258 a!2862) j!93)))))

(declare-fun b!1441264 () Bool)

(declare-fun res!973732 () Bool)

(assert (=> b!1441264 (=> (not res!973732) (not e!812506))))

(declare-datatypes ((List!33939 0))(
  ( (Nil!33936) (Cons!33935 (h!35285 (_ BitVec 64)) (t!48640 List!33939)) )
))
(declare-fun arrayNoDuplicates!0 (array!97949 (_ BitVec 32) List!33939) Bool)

(assert (=> b!1441264 (= res!973732 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33936))))

(assert (= (and start!124584 res!973730) b!1441261))

(assert (= (and b!1441261 res!973733) b!1441255))

(assert (= (and b!1441255 res!973727) b!1441263))

(assert (= (and b!1441263 res!973731) b!1441260))

(assert (= (and b!1441260 res!973725) b!1441264))

(assert (= (and b!1441264 res!973732) b!1441256))

(assert (= (and b!1441256 res!973724) b!1441262))

(assert (= (and b!1441262 res!973726) b!1441257))

(assert (= (and b!1441257 res!973728) b!1441254))

(assert (= (and b!1441254 res!973734) b!1441259))

(assert (= (and b!1441259 res!973729) b!1441253))

(assert (= (and b!1441253 c!133277) b!1441258))

(assert (= (and b!1441253 (not c!133277)) b!1441252))

(declare-fun m!1330535 () Bool)

(assert (=> b!1441263 m!1330535))

(assert (=> b!1441263 m!1330535))

(declare-fun m!1330537 () Bool)

(assert (=> b!1441263 m!1330537))

(declare-fun m!1330539 () Bool)

(assert (=> b!1441252 m!1330539))

(declare-fun m!1330541 () Bool)

(assert (=> b!1441252 m!1330541))

(assert (=> b!1441257 m!1330535))

(assert (=> b!1441257 m!1330535))

(declare-fun m!1330543 () Bool)

(assert (=> b!1441257 m!1330543))

(assert (=> b!1441257 m!1330543))

(assert (=> b!1441257 m!1330535))

(declare-fun m!1330545 () Bool)

(assert (=> b!1441257 m!1330545))

(assert (=> b!1441254 m!1330535))

(assert (=> b!1441254 m!1330535))

(declare-fun m!1330547 () Bool)

(assert (=> b!1441254 m!1330547))

(declare-fun m!1330549 () Bool)

(assert (=> b!1441264 m!1330549))

(declare-fun m!1330551 () Bool)

(assert (=> b!1441255 m!1330551))

(assert (=> b!1441255 m!1330551))

(declare-fun m!1330553 () Bool)

(assert (=> b!1441255 m!1330553))

(declare-fun m!1330555 () Bool)

(assert (=> start!124584 m!1330555))

(declare-fun m!1330557 () Bool)

(assert (=> start!124584 m!1330557))

(declare-fun m!1330559 () Bool)

(assert (=> b!1441259 m!1330559))

(assert (=> b!1441259 m!1330559))

(declare-fun m!1330561 () Bool)

(assert (=> b!1441259 m!1330561))

(declare-fun m!1330563 () Bool)

(assert (=> b!1441259 m!1330563))

(declare-fun m!1330565 () Bool)

(assert (=> b!1441259 m!1330565))

(assert (=> b!1441262 m!1330563))

(declare-fun m!1330567 () Bool)

(assert (=> b!1441262 m!1330567))

(declare-fun m!1330569 () Bool)

(assert (=> b!1441260 m!1330569))

(declare-fun m!1330571 () Bool)

(assert (=> b!1441258 m!1330571))

(check-sat (not b!1441258) (not b!1441264) (not b!1441255) (not b!1441252) (not b!1441259) (not start!124584) (not b!1441254) (not b!1441263) (not b!1441257) (not b!1441260))
(check-sat)
