; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125092 () Bool)

(assert start!125092)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!818897 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1455208 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98457 0))(
  ( (array!98458 (arr!47512 (Array (_ BitVec 32) (_ BitVec 64))) (size!48063 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98457)

(assert (=> b!1455208 (= e!818897 (and (or (= (select (arr!47512 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47512 a!2862) intermediateBeforeIndex!19) (select (arr!47512 a!2862) j!93))) (let ((bdg!53143 (select (store (arr!47512 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47512 a!2862) index!646) bdg!53143) (= (select (arr!47512 a!2862) index!646) (select (arr!47512 a!2862) j!93))) (= (select (arr!47512 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53143 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!818894 () Bool)

(declare-datatypes ((SeekEntryResult!11787 0))(
  ( (MissingZero!11787 (index!49539 (_ BitVec 32))) (Found!11787 (index!49540 (_ BitVec 32))) (Intermediate!11787 (undefined!12599 Bool) (index!49541 (_ BitVec 32)) (x!131175 (_ BitVec 32))) (Undefined!11787) (MissingVacant!11787 (index!49542 (_ BitVec 32))) )
))
(declare-fun lt!637838 () SeekEntryResult!11787)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637843 () array!98457)

(declare-fun b!1455209 () Bool)

(declare-fun lt!637841 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98457 (_ BitVec 32)) SeekEntryResult!11787)

(assert (=> b!1455209 (= e!818894 (= lt!637838 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637841 lt!637843 mask!2687)))))

(declare-fun b!1455210 () Bool)

(declare-fun res!986018 () Bool)

(assert (=> b!1455210 (=> (not res!986018) (not e!818897))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98457 (_ BitVec 32)) SeekEntryResult!11787)

(assert (=> b!1455210 (= res!986018 (= (seekEntryOrOpen!0 (select (arr!47512 a!2862) j!93) a!2862 mask!2687) (Found!11787 j!93)))))

(declare-fun b!1455211 () Bool)

(declare-fun res!986015 () Bool)

(declare-fun e!818900 () Bool)

(assert (=> b!1455211 (=> (not res!986015) (not e!818900))))

(assert (=> b!1455211 (= res!986015 (and (= (size!48063 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48063 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48063 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455212 () Bool)

(declare-fun e!818896 () Bool)

(assert (=> b!1455212 (= e!818896 true)))

(declare-fun lt!637839 () Bool)

(declare-fun e!818902 () Bool)

(assert (=> b!1455212 (= lt!637839 e!818902)))

(declare-fun c!134114 () Bool)

(assert (=> b!1455212 (= c!134114 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455213 () Bool)

(declare-fun res!986014 () Bool)

(assert (=> b!1455213 (=> (not res!986014) (not e!818900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98457 (_ BitVec 32)) Bool)

(assert (=> b!1455213 (= res!986014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455214 () Bool)

(declare-fun res!986025 () Bool)

(declare-fun e!818903 () Bool)

(assert (=> b!1455214 (=> (not res!986025) (not e!818903))))

(declare-fun lt!637836 () SeekEntryResult!11787)

(assert (=> b!1455214 (= res!986025 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47512 a!2862) j!93) a!2862 mask!2687) lt!637836))))

(declare-fun res!986009 () Bool)

(assert (=> start!125092 (=> (not res!986009) (not e!818900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125092 (= res!986009 (validMask!0 mask!2687))))

(assert (=> start!125092 e!818900))

(assert (=> start!125092 true))

(declare-fun array_inv!36457 (array!98457) Bool)

(assert (=> start!125092 (array_inv!36457 a!2862)))

(declare-fun b!1455215 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98457 (_ BitVec 32)) SeekEntryResult!11787)

(assert (=> b!1455215 (= e!818894 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637841 lt!637843 mask!2687) (seekEntryOrOpen!0 lt!637841 lt!637843 mask!2687)))))

(declare-fun lt!637840 () SeekEntryResult!11787)

(declare-fun lt!637842 () (_ BitVec 32))

(declare-fun b!1455216 () Bool)

(assert (=> b!1455216 (= e!818902 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637842 intermediateAfterIndex!19 lt!637841 lt!637843 mask!2687) lt!637840)))))

(declare-fun b!1455217 () Bool)

(declare-fun e!818895 () Bool)

(declare-fun e!818898 () Bool)

(assert (=> b!1455217 (= e!818895 (not e!818898))))

(declare-fun res!986008 () Bool)

(assert (=> b!1455217 (=> res!986008 e!818898)))

(assert (=> b!1455217 (= res!986008 (or (and (= (select (arr!47512 a!2862) index!646) (select (store (arr!47512 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47512 a!2862) index!646) (select (arr!47512 a!2862) j!93))) (= (select (arr!47512 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1455217 e!818897))

(declare-fun res!986023 () Bool)

(assert (=> b!1455217 (=> (not res!986023) (not e!818897))))

(assert (=> b!1455217 (= res!986023 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49018 0))(
  ( (Unit!49019) )
))
(declare-fun lt!637837 () Unit!49018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98457 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49018)

(assert (=> b!1455217 (= lt!637837 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455218 () Bool)

(declare-fun res!986017 () Bool)

(assert (=> b!1455218 (=> res!986017 e!818896)))

(assert (=> b!1455218 (= res!986017 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637842 (select (arr!47512 a!2862) j!93) a!2862 mask!2687) lt!637836)))))

(declare-fun b!1455219 () Bool)

(declare-fun res!986021 () Bool)

(assert (=> b!1455219 (=> (not res!986021) (not e!818900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455219 (= res!986021 (validKeyInArray!0 (select (arr!47512 a!2862) i!1006)))))

(declare-fun b!1455220 () Bool)

(declare-fun res!986020 () Bool)

(assert (=> b!1455220 (=> (not res!986020) (not e!818900))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455220 (= res!986020 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48063 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48063 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48063 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455221 () Bool)

(assert (=> b!1455221 (= e!818898 e!818896)))

(declare-fun res!986011 () Bool)

(assert (=> b!1455221 (=> res!986011 e!818896)))

(assert (=> b!1455221 (= res!986011 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637842 #b00000000000000000000000000000000) (bvsge lt!637842 (size!48063 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455221 (= lt!637842 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1455221 (= lt!637840 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637841 lt!637843 mask!2687))))

(assert (=> b!1455221 (= lt!637840 (seekEntryOrOpen!0 lt!637841 lt!637843 mask!2687))))

(declare-fun b!1455222 () Bool)

(assert (=> b!1455222 (= e!818903 e!818895)))

(declare-fun res!986019 () Bool)

(assert (=> b!1455222 (=> (not res!986019) (not e!818895))))

(assert (=> b!1455222 (= res!986019 (= lt!637838 (Intermediate!11787 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455222 (= lt!637838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637841 mask!2687) lt!637841 lt!637843 mask!2687))))

(assert (=> b!1455222 (= lt!637841 (select (store (arr!47512 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455223 () Bool)

(declare-fun res!986024 () Bool)

(assert (=> b!1455223 (=> (not res!986024) (not e!818895))))

(assert (=> b!1455223 (= res!986024 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455224 () Bool)

(declare-fun e!818901 () Bool)

(assert (=> b!1455224 (= e!818901 e!818903)))

(declare-fun res!986022 () Bool)

(assert (=> b!1455224 (=> (not res!986022) (not e!818903))))

(assert (=> b!1455224 (= res!986022 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47512 a!2862) j!93) mask!2687) (select (arr!47512 a!2862) j!93) a!2862 mask!2687) lt!637836))))

(assert (=> b!1455224 (= lt!637836 (Intermediate!11787 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455225 () Bool)

(assert (=> b!1455225 (= e!818900 e!818901)))

(declare-fun res!986016 () Bool)

(assert (=> b!1455225 (=> (not res!986016) (not e!818901))))

(assert (=> b!1455225 (= res!986016 (= (select (store (arr!47512 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455225 (= lt!637843 (array!98458 (store (arr!47512 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48063 a!2862)))))

(declare-fun b!1455226 () Bool)

(declare-fun res!986010 () Bool)

(assert (=> b!1455226 (=> (not res!986010) (not e!818900))))

(assert (=> b!1455226 (= res!986010 (validKeyInArray!0 (select (arr!47512 a!2862) j!93)))))

(declare-fun b!1455227 () Bool)

(declare-fun res!986013 () Bool)

(assert (=> b!1455227 (=> (not res!986013) (not e!818900))))

(declare-datatypes ((List!34193 0))(
  ( (Nil!34190) (Cons!34189 (h!35539 (_ BitVec 64)) (t!48894 List!34193)) )
))
(declare-fun arrayNoDuplicates!0 (array!98457 (_ BitVec 32) List!34193) Bool)

(assert (=> b!1455227 (= res!986013 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34190))))

(declare-fun b!1455228 () Bool)

(declare-fun res!986012 () Bool)

(assert (=> b!1455228 (=> (not res!986012) (not e!818895))))

(assert (=> b!1455228 (= res!986012 e!818894)))

(declare-fun c!134113 () Bool)

(assert (=> b!1455228 (= c!134113 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455229 () Bool)

(assert (=> b!1455229 (= e!818902 (not (= lt!637838 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637842 lt!637841 lt!637843 mask!2687))))))

(assert (= (and start!125092 res!986009) b!1455211))

(assert (= (and b!1455211 res!986015) b!1455219))

(assert (= (and b!1455219 res!986021) b!1455226))

(assert (= (and b!1455226 res!986010) b!1455213))

(assert (= (and b!1455213 res!986014) b!1455227))

(assert (= (and b!1455227 res!986013) b!1455220))

(assert (= (and b!1455220 res!986020) b!1455225))

(assert (= (and b!1455225 res!986016) b!1455224))

(assert (= (and b!1455224 res!986022) b!1455214))

(assert (= (and b!1455214 res!986025) b!1455222))

(assert (= (and b!1455222 res!986019) b!1455228))

(assert (= (and b!1455228 c!134113) b!1455209))

(assert (= (and b!1455228 (not c!134113)) b!1455215))

(assert (= (and b!1455228 res!986012) b!1455223))

(assert (= (and b!1455223 res!986024) b!1455217))

(assert (= (and b!1455217 res!986023) b!1455210))

(assert (= (and b!1455210 res!986018) b!1455208))

(assert (= (and b!1455217 (not res!986008)) b!1455221))

(assert (= (and b!1455221 (not res!986011)) b!1455218))

(assert (= (and b!1455218 (not res!986017)) b!1455212))

(assert (= (and b!1455212 c!134114) b!1455229))

(assert (= (and b!1455212 (not c!134114)) b!1455216))

(declare-fun m!1343505 () Bool)

(assert (=> b!1455216 m!1343505))

(declare-fun m!1343507 () Bool)

(assert (=> b!1455215 m!1343507))

(declare-fun m!1343509 () Bool)

(assert (=> b!1455215 m!1343509))

(declare-fun m!1343511 () Bool)

(assert (=> b!1455218 m!1343511))

(assert (=> b!1455218 m!1343511))

(declare-fun m!1343513 () Bool)

(assert (=> b!1455218 m!1343513))

(declare-fun m!1343515 () Bool)

(assert (=> start!125092 m!1343515))

(declare-fun m!1343517 () Bool)

(assert (=> start!125092 m!1343517))

(declare-fun m!1343519 () Bool)

(assert (=> b!1455213 m!1343519))

(declare-fun m!1343521 () Bool)

(assert (=> b!1455217 m!1343521))

(declare-fun m!1343523 () Bool)

(assert (=> b!1455217 m!1343523))

(declare-fun m!1343525 () Bool)

(assert (=> b!1455217 m!1343525))

(declare-fun m!1343527 () Bool)

(assert (=> b!1455217 m!1343527))

(declare-fun m!1343529 () Bool)

(assert (=> b!1455217 m!1343529))

(assert (=> b!1455217 m!1343511))

(declare-fun m!1343531 () Bool)

(assert (=> b!1455227 m!1343531))

(declare-fun m!1343533 () Bool)

(assert (=> b!1455222 m!1343533))

(assert (=> b!1455222 m!1343533))

(declare-fun m!1343535 () Bool)

(assert (=> b!1455222 m!1343535))

(assert (=> b!1455222 m!1343523))

(declare-fun m!1343537 () Bool)

(assert (=> b!1455222 m!1343537))

(assert (=> b!1455225 m!1343523))

(declare-fun m!1343539 () Bool)

(assert (=> b!1455225 m!1343539))

(assert (=> b!1455214 m!1343511))

(assert (=> b!1455214 m!1343511))

(declare-fun m!1343541 () Bool)

(assert (=> b!1455214 m!1343541))

(declare-fun m!1343543 () Bool)

(assert (=> b!1455229 m!1343543))

(assert (=> b!1455208 m!1343523))

(declare-fun m!1343545 () Bool)

(assert (=> b!1455208 m!1343545))

(assert (=> b!1455208 m!1343525))

(assert (=> b!1455208 m!1343527))

(assert (=> b!1455208 m!1343511))

(assert (=> b!1455210 m!1343511))

(assert (=> b!1455210 m!1343511))

(declare-fun m!1343547 () Bool)

(assert (=> b!1455210 m!1343547))

(assert (=> b!1455226 m!1343511))

(assert (=> b!1455226 m!1343511))

(declare-fun m!1343549 () Bool)

(assert (=> b!1455226 m!1343549))

(declare-fun m!1343551 () Bool)

(assert (=> b!1455219 m!1343551))

(assert (=> b!1455219 m!1343551))

(declare-fun m!1343553 () Bool)

(assert (=> b!1455219 m!1343553))

(declare-fun m!1343555 () Bool)

(assert (=> b!1455209 m!1343555))

(assert (=> b!1455224 m!1343511))

(assert (=> b!1455224 m!1343511))

(declare-fun m!1343557 () Bool)

(assert (=> b!1455224 m!1343557))

(assert (=> b!1455224 m!1343557))

(assert (=> b!1455224 m!1343511))

(declare-fun m!1343559 () Bool)

(assert (=> b!1455224 m!1343559))

(declare-fun m!1343561 () Bool)

(assert (=> b!1455221 m!1343561))

(assert (=> b!1455221 m!1343507))

(assert (=> b!1455221 m!1343509))

(push 1)

