; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124866 () Bool)

(assert start!124866)

(declare-fun b!1448626 () Bool)

(declare-fun e!815838 () Bool)

(declare-fun e!815843 () Bool)

(assert (=> b!1448626 (= e!815838 e!815843)))

(declare-fun res!980263 () Bool)

(assert (=> b!1448626 (=> (not res!980263) (not e!815843))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11674 0))(
  ( (MissingZero!11674 (index!49087 (_ BitVec 32))) (Found!11674 (index!49088 (_ BitVec 32))) (Intermediate!11674 (undefined!12486 Bool) (index!49089 (_ BitVec 32)) (x!130758 (_ BitVec 32))) (Undefined!11674) (MissingVacant!11674 (index!49090 (_ BitVec 32))) )
))
(declare-fun lt!635569 () SeekEntryResult!11674)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98231 0))(
  ( (array!98232 (arr!47399 (Array (_ BitVec 32) (_ BitVec 64))) (size!47950 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98231)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98231 (_ BitVec 32)) SeekEntryResult!11674)

(assert (=> b!1448626 (= res!980263 (= lt!635569 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47399 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448627 () Bool)

(declare-fun e!815844 () Bool)

(declare-fun e!815846 () Bool)

(assert (=> b!1448627 (= e!815844 e!815846)))

(declare-fun res!980267 () Bool)

(assert (=> b!1448627 (=> (not res!980267) (not e!815846))))

(declare-fun lt!635570 () SeekEntryResult!11674)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98231 (_ BitVec 32)) SeekEntryResult!11674)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448627 (= res!980267 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47399 a!2862) j!93) mask!2687) (select (arr!47399 a!2862) j!93) a!2862 mask!2687) lt!635570))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448627 (= lt!635570 (Intermediate!11674 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448628 () Bool)

(declare-fun res!980259 () Bool)

(declare-fun e!815845 () Bool)

(assert (=> b!1448628 (=> (not res!980259) (not e!815845))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448628 (= res!980259 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47950 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47950 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47950 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448629 () Bool)

(declare-fun res!980261 () Bool)

(assert (=> b!1448629 (=> (not res!980261) (not e!815845))))

(declare-datatypes ((List!34080 0))(
  ( (Nil!34077) (Cons!34076 (h!35426 (_ BitVec 64)) (t!48781 List!34080)) )
))
(declare-fun arrayNoDuplicates!0 (array!98231 (_ BitVec 32) List!34080) Bool)

(assert (=> b!1448629 (= res!980261 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34077))))

(declare-fun b!1448630 () Bool)

(declare-fun e!815842 () Bool)

(assert (=> b!1448630 (= e!815846 e!815842)))

(declare-fun res!980252 () Bool)

(assert (=> b!1448630 (=> (not res!980252) (not e!815842))))

(declare-fun lt!635572 () SeekEntryResult!11674)

(assert (=> b!1448630 (= res!980252 (= lt!635572 (Intermediate!11674 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635574 () array!98231)

(declare-fun lt!635573 () (_ BitVec 64))

(assert (=> b!1448630 (= lt!635572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635573 mask!2687) lt!635573 lt!635574 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1448630 (= lt!635573 (select (store (arr!47399 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448631 () Bool)

(declare-fun res!980265 () Bool)

(assert (=> b!1448631 (=> (not res!980265) (not e!815846))))

(assert (=> b!1448631 (= res!980265 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47399 a!2862) j!93) a!2862 mask!2687) lt!635570))))

(declare-fun b!1448632 () Bool)

(declare-fun res!980262 () Bool)

(assert (=> b!1448632 (=> (not res!980262) (not e!815845))))

(assert (=> b!1448632 (= res!980262 (and (= (size!47950 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47950 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47950 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448634 () Bool)

(declare-fun res!980258 () Bool)

(assert (=> b!1448634 (=> (not res!980258) (not e!815845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448634 (= res!980258 (validKeyInArray!0 (select (arr!47399 a!2862) j!93)))))

(declare-fun b!1448635 () Bool)

(declare-fun res!980254 () Bool)

(assert (=> b!1448635 (=> (not res!980254) (not e!815842))))

(assert (=> b!1448635 (= res!980254 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448636 () Bool)

(declare-fun e!815837 () Bool)

(assert (=> b!1448636 (= e!815837 true)))

(declare-fun lt!635571 () SeekEntryResult!11674)

(assert (=> b!1448636 (= lt!635571 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47399 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448637 () Bool)

(declare-fun res!980256 () Bool)

(assert (=> b!1448637 (=> (not res!980256) (not e!815845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98231 (_ BitVec 32)) Bool)

(assert (=> b!1448637 (= res!980256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448638 () Bool)

(declare-fun e!815840 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98231 (_ BitVec 32)) SeekEntryResult!11674)

(assert (=> b!1448638 (= e!815840 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635573 lt!635574 mask!2687) (seekEntryOrOpen!0 lt!635573 lt!635574 mask!2687)))))

(declare-fun b!1448639 () Bool)

(assert (=> b!1448639 (= e!815843 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448633 () Bool)

(assert (=> b!1448633 (= e!815845 e!815844)))

(declare-fun res!980255 () Bool)

(assert (=> b!1448633 (=> (not res!980255) (not e!815844))))

(assert (=> b!1448633 (= res!980255 (= (select (store (arr!47399 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448633 (= lt!635574 (array!98232 (store (arr!47399 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47950 a!2862)))))

(declare-fun res!980260 () Bool)

(assert (=> start!124866 (=> (not res!980260) (not e!815845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124866 (= res!980260 (validMask!0 mask!2687))))

(assert (=> start!124866 e!815845))

(assert (=> start!124866 true))

(declare-fun array_inv!36344 (array!98231) Bool)

(assert (=> start!124866 (array_inv!36344 a!2862)))

(declare-fun b!1448640 () Bool)

(assert (=> b!1448640 (= e!815842 (not e!815837))))

(declare-fun res!980257 () Bool)

(assert (=> b!1448640 (=> res!980257 e!815837)))

(assert (=> b!1448640 (= res!980257 (or (and (= (select (arr!47399 a!2862) index!646) (select (store (arr!47399 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47399 a!2862) index!646) (select (arr!47399 a!2862) j!93))) (not (= (select (arr!47399 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47399 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815839 () Bool)

(assert (=> b!1448640 e!815839))

(declare-fun res!980268 () Bool)

(assert (=> b!1448640 (=> (not res!980268) (not e!815839))))

(assert (=> b!1448640 (= res!980268 (and (= lt!635569 (Found!11674 j!93)) (or (= (select (arr!47399 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47399 a!2862) intermediateBeforeIndex!19) (select (arr!47399 a!2862) j!93)))))))

(assert (=> b!1448640 (= lt!635569 (seekEntryOrOpen!0 (select (arr!47399 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448640 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48792 0))(
  ( (Unit!48793) )
))
(declare-fun lt!635575 () Unit!48792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98231 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48792)

(assert (=> b!1448640 (= lt!635575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448641 () Bool)

(declare-fun res!980253 () Bool)

(assert (=> b!1448641 (=> (not res!980253) (not e!815842))))

(assert (=> b!1448641 (= res!980253 e!815840)))

(declare-fun c!133700 () Bool)

(assert (=> b!1448641 (= c!133700 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448642 () Bool)

(assert (=> b!1448642 (= e!815839 e!815838)))

(declare-fun res!980266 () Bool)

(assert (=> b!1448642 (=> res!980266 e!815838)))

(assert (=> b!1448642 (= res!980266 (or (and (= (select (arr!47399 a!2862) index!646) (select (store (arr!47399 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47399 a!2862) index!646) (select (arr!47399 a!2862) j!93))) (not (= (select (arr!47399 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448643 () Bool)

(declare-fun res!980264 () Bool)

(assert (=> b!1448643 (=> (not res!980264) (not e!815845))))

(assert (=> b!1448643 (= res!980264 (validKeyInArray!0 (select (arr!47399 a!2862) i!1006)))))

(declare-fun b!1448644 () Bool)

(assert (=> b!1448644 (= e!815840 (= lt!635572 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635573 lt!635574 mask!2687)))))

(assert (= (and start!124866 res!980260) b!1448632))

(assert (= (and b!1448632 res!980262) b!1448643))

(assert (= (and b!1448643 res!980264) b!1448634))

(assert (= (and b!1448634 res!980258) b!1448637))

(assert (= (and b!1448637 res!980256) b!1448629))

(assert (= (and b!1448629 res!980261) b!1448628))

(assert (= (and b!1448628 res!980259) b!1448633))

(assert (= (and b!1448633 res!980255) b!1448627))

(assert (= (and b!1448627 res!980267) b!1448631))

(assert (= (and b!1448631 res!980265) b!1448630))

(assert (= (and b!1448630 res!980252) b!1448641))

(assert (= (and b!1448641 c!133700) b!1448644))

(assert (= (and b!1448641 (not c!133700)) b!1448638))

(assert (= (and b!1448641 res!980253) b!1448635))

(assert (= (and b!1448635 res!980254) b!1448640))

(assert (= (and b!1448640 res!980268) b!1448642))

(assert (= (and b!1448642 (not res!980266)) b!1448626))

(assert (= (and b!1448626 res!980263) b!1448639))

(assert (= (and b!1448640 (not res!980257)) b!1448636))

(declare-fun m!1337433 () Bool)

(assert (=> b!1448636 m!1337433))

(assert (=> b!1448636 m!1337433))

(declare-fun m!1337435 () Bool)

(assert (=> b!1448636 m!1337435))

(assert (=> b!1448627 m!1337433))

(assert (=> b!1448627 m!1337433))

(declare-fun m!1337437 () Bool)

(assert (=> b!1448627 m!1337437))

(assert (=> b!1448627 m!1337437))

(assert (=> b!1448627 m!1337433))

(declare-fun m!1337439 () Bool)

(assert (=> b!1448627 m!1337439))

(declare-fun m!1337441 () Bool)

(assert (=> start!124866 m!1337441))

(declare-fun m!1337443 () Bool)

(assert (=> start!124866 m!1337443))

(assert (=> b!1448626 m!1337433))

(assert (=> b!1448626 m!1337433))

(declare-fun m!1337445 () Bool)

(assert (=> b!1448626 m!1337445))

(declare-fun m!1337447 () Bool)

(assert (=> b!1448629 m!1337447))

(declare-fun m!1337449 () Bool)

(assert (=> b!1448633 m!1337449))

(declare-fun m!1337451 () Bool)

(assert (=> b!1448633 m!1337451))

(declare-fun m!1337453 () Bool)

(assert (=> b!1448637 m!1337453))

(assert (=> b!1448634 m!1337433))

(assert (=> b!1448634 m!1337433))

(declare-fun m!1337455 () Bool)

(assert (=> b!1448634 m!1337455))

(declare-fun m!1337457 () Bool)

(assert (=> b!1448643 m!1337457))

(assert (=> b!1448643 m!1337457))

(declare-fun m!1337459 () Bool)

(assert (=> b!1448643 m!1337459))

(declare-fun m!1337461 () Bool)

(assert (=> b!1448644 m!1337461))

(declare-fun m!1337463 () Bool)

(assert (=> b!1448630 m!1337463))

(assert (=> b!1448630 m!1337463))

(declare-fun m!1337465 () Bool)

(assert (=> b!1448630 m!1337465))

(assert (=> b!1448630 m!1337449))

(declare-fun m!1337467 () Bool)

(assert (=> b!1448630 m!1337467))

(declare-fun m!1337469 () Bool)

(assert (=> b!1448638 m!1337469))

(declare-fun m!1337471 () Bool)

(assert (=> b!1448638 m!1337471))

(declare-fun m!1337473 () Bool)

(assert (=> b!1448642 m!1337473))

(assert (=> b!1448642 m!1337449))

(declare-fun m!1337475 () Bool)

(assert (=> b!1448642 m!1337475))

(assert (=> b!1448642 m!1337433))

(assert (=> b!1448631 m!1337433))

(assert (=> b!1448631 m!1337433))

(declare-fun m!1337477 () Bool)

(assert (=> b!1448631 m!1337477))

(declare-fun m!1337479 () Bool)

(assert (=> b!1448640 m!1337479))

(assert (=> b!1448640 m!1337449))

(declare-fun m!1337481 () Bool)

(assert (=> b!1448640 m!1337481))

(assert (=> b!1448640 m!1337475))

(assert (=> b!1448640 m!1337473))

(assert (=> b!1448640 m!1337433))

(declare-fun m!1337483 () Bool)

(assert (=> b!1448640 m!1337483))

(declare-fun m!1337485 () Bool)

(assert (=> b!1448640 m!1337485))

(assert (=> b!1448640 m!1337433))

(check-sat (not b!1448627) (not b!1448629) (not b!1448640) (not b!1448637) (not start!124866) (not b!1448630) (not b!1448626) (not b!1448631) (not b!1448643) (not b!1448644) (not b!1448638) (not b!1448636) (not b!1448634))
(check-sat)
