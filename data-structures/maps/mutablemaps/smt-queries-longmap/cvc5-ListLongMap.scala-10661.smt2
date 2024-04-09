; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125146 () Bool)

(assert start!125146)

(declare-fun b!1456990 () Bool)

(declare-fun res!987479 () Bool)

(declare-fun e!819710 () Bool)

(assert (=> b!1456990 (=> (not res!987479) (not e!819710))))

(declare-datatypes ((array!98511 0))(
  ( (array!98512 (arr!47539 (Array (_ BitVec 32) (_ BitVec 64))) (size!48090 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98511)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98511 (_ BitVec 32)) Bool)

(assert (=> b!1456990 (= res!987479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456991 () Bool)

(declare-fun res!987471 () Bool)

(declare-fun e!819708 () Bool)

(assert (=> b!1456991 (=> (not res!987471) (not e!819708))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11814 0))(
  ( (MissingZero!11814 (index!49647 (_ BitVec 32))) (Found!11814 (index!49648 (_ BitVec 32))) (Intermediate!11814 (undefined!12626 Bool) (index!49649 (_ BitVec 32)) (x!131274 (_ BitVec 32))) (Undefined!11814) (MissingVacant!11814 (index!49650 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98511 (_ BitVec 32)) SeekEntryResult!11814)

(assert (=> b!1456991 (= res!987471 (= (seekEntryOrOpen!0 (select (arr!47539 a!2862) j!93) a!2862 mask!2687) (Found!11814 j!93)))))

(declare-fun b!1456992 () Bool)

(declare-fun res!987469 () Bool)

(assert (=> b!1456992 (=> (not res!987469) (not e!819710))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456992 (= res!987469 (validKeyInArray!0 (select (arr!47539 a!2862) i!1006)))))

(declare-fun res!987481 () Bool)

(assert (=> start!125146 (=> (not res!987481) (not e!819710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125146 (= res!987481 (validMask!0 mask!2687))))

(assert (=> start!125146 e!819710))

(assert (=> start!125146 true))

(declare-fun array_inv!36484 (array!98511) Bool)

(assert (=> start!125146 (array_inv!36484 a!2862)))

(declare-fun b!1456993 () Bool)

(declare-fun res!987483 () Bool)

(assert (=> b!1456993 (=> (not res!987483) (not e!819710))))

(declare-datatypes ((List!34220 0))(
  ( (Nil!34217) (Cons!34216 (h!35566 (_ BitVec 64)) (t!48921 List!34220)) )
))
(declare-fun arrayNoDuplicates!0 (array!98511 (_ BitVec 32) List!34220) Bool)

(assert (=> b!1456993 (= res!987483 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34217))))

(declare-fun lt!638485 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!638487 () (_ BitVec 64))

(declare-fun b!1456994 () Bool)

(declare-fun lt!638484 () array!98511)

(declare-fun lt!638491 () SeekEntryResult!11814)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!819705 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98511 (_ BitVec 32)) SeekEntryResult!11814)

(assert (=> b!1456994 (= e!819705 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638485 intermediateAfterIndex!19 lt!638487 lt!638484 mask!2687) lt!638491)))))

(declare-fun b!1456995 () Bool)

(declare-fun res!987473 () Bool)

(declare-fun e!819704 () Bool)

(assert (=> b!1456995 (=> (not res!987473) (not e!819704))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!638488 () SeekEntryResult!11814)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98511 (_ BitVec 32)) SeekEntryResult!11814)

(assert (=> b!1456995 (= res!987473 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47539 a!2862) j!93) a!2862 mask!2687) lt!638488))))

(declare-fun b!1456996 () Bool)

(declare-fun res!987482 () Bool)

(declare-fun e!819712 () Bool)

(assert (=> b!1456996 (=> (not res!987482) (not e!819712))))

(declare-fun e!819711 () Bool)

(assert (=> b!1456996 (= res!987482 e!819711)))

(declare-fun c!134276 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456996 (= c!134276 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456997 () Bool)

(declare-fun res!987477 () Bool)

(assert (=> b!1456997 (=> (not res!987477) (not e!819710))))

(assert (=> b!1456997 (= res!987477 (and (= (size!48090 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48090 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48090 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456998 () Bool)

(declare-fun lt!638489 () SeekEntryResult!11814)

(assert (=> b!1456998 (= e!819711 (= lt!638489 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638487 lt!638484 mask!2687)))))

(declare-fun b!1456999 () Bool)

(declare-fun e!819713 () Bool)

(assert (=> b!1456999 (= e!819713 true)))

(declare-fun lt!638490 () Bool)

(assert (=> b!1456999 (= lt!638490 e!819705)))

(declare-fun c!134275 () Bool)

(assert (=> b!1456999 (= c!134275 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457000 () Bool)

(assert (=> b!1457000 (= e!819704 e!819712)))

(declare-fun res!987468 () Bool)

(assert (=> b!1457000 (=> (not res!987468) (not e!819712))))

(assert (=> b!1457000 (= res!987468 (= lt!638489 (Intermediate!11814 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457000 (= lt!638489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638487 mask!2687) lt!638487 lt!638484 mask!2687))))

(assert (=> b!1457000 (= lt!638487 (select (store (arr!47539 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457001 () Bool)

(declare-fun res!987475 () Bool)

(assert (=> b!1457001 (=> (not res!987475) (not e!819710))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457001 (= res!987475 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48090 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48090 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48090 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457002 () Bool)

(declare-fun res!987467 () Bool)

(assert (=> b!1457002 (=> (not res!987467) (not e!819710))))

(assert (=> b!1457002 (= res!987467 (validKeyInArray!0 (select (arr!47539 a!2862) j!93)))))

(declare-fun b!1457003 () Bool)

(declare-fun e!819709 () Bool)

(assert (=> b!1457003 (= e!819710 e!819709)))

(declare-fun res!987476 () Bool)

(assert (=> b!1457003 (=> (not res!987476) (not e!819709))))

(assert (=> b!1457003 (= res!987476 (= (select (store (arr!47539 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457003 (= lt!638484 (array!98512 (store (arr!47539 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48090 a!2862)))))

(declare-fun b!1457004 () Bool)

(declare-fun e!819706 () Bool)

(assert (=> b!1457004 (= e!819712 (not e!819706))))

(declare-fun res!987466 () Bool)

(assert (=> b!1457004 (=> res!987466 e!819706)))

(assert (=> b!1457004 (= res!987466 (or (and (= (select (arr!47539 a!2862) index!646) (select (store (arr!47539 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47539 a!2862) index!646) (select (arr!47539 a!2862) j!93))) (= (select (arr!47539 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457004 e!819708))

(declare-fun res!987472 () Bool)

(assert (=> b!1457004 (=> (not res!987472) (not e!819708))))

(assert (=> b!1457004 (= res!987472 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49072 0))(
  ( (Unit!49073) )
))
(declare-fun lt!638486 () Unit!49072)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98511 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49072)

(assert (=> b!1457004 (= lt!638486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457005 () Bool)

(declare-fun res!987480 () Bool)

(assert (=> b!1457005 (=> res!987480 e!819713)))

(assert (=> b!1457005 (= res!987480 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638485 (select (arr!47539 a!2862) j!93) a!2862 mask!2687) lt!638488)))))

(declare-fun b!1457006 () Bool)

(assert (=> b!1457006 (= e!819705 (not (= lt!638489 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638485 lt!638487 lt!638484 mask!2687))))))

(declare-fun b!1457007 () Bool)

(assert (=> b!1457007 (= e!819706 e!819713)))

(declare-fun res!987474 () Bool)

(assert (=> b!1457007 (=> res!987474 e!819713)))

(assert (=> b!1457007 (= res!987474 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638485 #b00000000000000000000000000000000) (bvsge lt!638485 (size!48090 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457007 (= lt!638485 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457007 (= lt!638491 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638487 lt!638484 mask!2687))))

(assert (=> b!1457007 (= lt!638491 (seekEntryOrOpen!0 lt!638487 lt!638484 mask!2687))))

(declare-fun b!1457008 () Bool)

(assert (=> b!1457008 (= e!819711 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638487 lt!638484 mask!2687) (seekEntryOrOpen!0 lt!638487 lt!638484 mask!2687)))))

(declare-fun b!1457009 () Bool)

(assert (=> b!1457009 (= e!819708 (and (or (= (select (arr!47539 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47539 a!2862) intermediateBeforeIndex!19) (select (arr!47539 a!2862) j!93))) (let ((bdg!53305 (select (store (arr!47539 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47539 a!2862) index!646) bdg!53305) (= (select (arr!47539 a!2862) index!646) (select (arr!47539 a!2862) j!93))) (= (select (arr!47539 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53305 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457010 () Bool)

(declare-fun res!987478 () Bool)

(assert (=> b!1457010 (=> (not res!987478) (not e!819712))))

(assert (=> b!1457010 (= res!987478 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457011 () Bool)

(assert (=> b!1457011 (= e!819709 e!819704)))

(declare-fun res!987470 () Bool)

(assert (=> b!1457011 (=> (not res!987470) (not e!819704))))

(assert (=> b!1457011 (= res!987470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47539 a!2862) j!93) mask!2687) (select (arr!47539 a!2862) j!93) a!2862 mask!2687) lt!638488))))

(assert (=> b!1457011 (= lt!638488 (Intermediate!11814 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125146 res!987481) b!1456997))

(assert (= (and b!1456997 res!987477) b!1456992))

(assert (= (and b!1456992 res!987469) b!1457002))

(assert (= (and b!1457002 res!987467) b!1456990))

(assert (= (and b!1456990 res!987479) b!1456993))

(assert (= (and b!1456993 res!987483) b!1457001))

(assert (= (and b!1457001 res!987475) b!1457003))

(assert (= (and b!1457003 res!987476) b!1457011))

(assert (= (and b!1457011 res!987470) b!1456995))

(assert (= (and b!1456995 res!987473) b!1457000))

(assert (= (and b!1457000 res!987468) b!1456996))

(assert (= (and b!1456996 c!134276) b!1456998))

(assert (= (and b!1456996 (not c!134276)) b!1457008))

(assert (= (and b!1456996 res!987482) b!1457010))

(assert (= (and b!1457010 res!987478) b!1457004))

(assert (= (and b!1457004 res!987472) b!1456991))

(assert (= (and b!1456991 res!987471) b!1457009))

(assert (= (and b!1457004 (not res!987466)) b!1457007))

(assert (= (and b!1457007 (not res!987474)) b!1457005))

(assert (= (and b!1457005 (not res!987480)) b!1456999))

(assert (= (and b!1456999 c!134275) b!1457006))

(assert (= (and b!1456999 (not c!134275)) b!1456994))

(declare-fun m!1345071 () Bool)

(assert (=> b!1456994 m!1345071))

(declare-fun m!1345073 () Bool)

(assert (=> b!1456998 m!1345073))

(declare-fun m!1345075 () Bool)

(assert (=> b!1457000 m!1345075))

(assert (=> b!1457000 m!1345075))

(declare-fun m!1345077 () Bool)

(assert (=> b!1457000 m!1345077))

(declare-fun m!1345079 () Bool)

(assert (=> b!1457000 m!1345079))

(declare-fun m!1345081 () Bool)

(assert (=> b!1457000 m!1345081))

(declare-fun m!1345083 () Bool)

(assert (=> b!1456991 m!1345083))

(assert (=> b!1456991 m!1345083))

(declare-fun m!1345085 () Bool)

(assert (=> b!1456991 m!1345085))

(declare-fun m!1345087 () Bool)

(assert (=> b!1457006 m!1345087))

(assert (=> b!1457009 m!1345079))

(declare-fun m!1345089 () Bool)

(assert (=> b!1457009 m!1345089))

(declare-fun m!1345091 () Bool)

(assert (=> b!1457009 m!1345091))

(declare-fun m!1345093 () Bool)

(assert (=> b!1457009 m!1345093))

(assert (=> b!1457009 m!1345083))

(declare-fun m!1345095 () Bool)

(assert (=> b!1456990 m!1345095))

(declare-fun m!1345097 () Bool)

(assert (=> b!1457008 m!1345097))

(declare-fun m!1345099 () Bool)

(assert (=> b!1457008 m!1345099))

(assert (=> b!1457002 m!1345083))

(assert (=> b!1457002 m!1345083))

(declare-fun m!1345101 () Bool)

(assert (=> b!1457002 m!1345101))

(assert (=> b!1457011 m!1345083))

(assert (=> b!1457011 m!1345083))

(declare-fun m!1345103 () Bool)

(assert (=> b!1457011 m!1345103))

(assert (=> b!1457011 m!1345103))

(assert (=> b!1457011 m!1345083))

(declare-fun m!1345105 () Bool)

(assert (=> b!1457011 m!1345105))

(assert (=> b!1457005 m!1345083))

(assert (=> b!1457005 m!1345083))

(declare-fun m!1345107 () Bool)

(assert (=> b!1457005 m!1345107))

(declare-fun m!1345109 () Bool)

(assert (=> b!1456993 m!1345109))

(assert (=> b!1457003 m!1345079))

(declare-fun m!1345111 () Bool)

(assert (=> b!1457003 m!1345111))

(declare-fun m!1345113 () Bool)

(assert (=> b!1456992 m!1345113))

(assert (=> b!1456992 m!1345113))

(declare-fun m!1345115 () Bool)

(assert (=> b!1456992 m!1345115))

(assert (=> b!1456995 m!1345083))

(assert (=> b!1456995 m!1345083))

(declare-fun m!1345117 () Bool)

(assert (=> b!1456995 m!1345117))

(declare-fun m!1345119 () Bool)

(assert (=> b!1457004 m!1345119))

(assert (=> b!1457004 m!1345079))

(assert (=> b!1457004 m!1345091))

(assert (=> b!1457004 m!1345093))

(declare-fun m!1345121 () Bool)

(assert (=> b!1457004 m!1345121))

(assert (=> b!1457004 m!1345083))

(declare-fun m!1345123 () Bool)

(assert (=> start!125146 m!1345123))

(declare-fun m!1345125 () Bool)

(assert (=> start!125146 m!1345125))

(declare-fun m!1345127 () Bool)

(assert (=> b!1457007 m!1345127))

(assert (=> b!1457007 m!1345097))

(assert (=> b!1457007 m!1345099))

(push 1)

