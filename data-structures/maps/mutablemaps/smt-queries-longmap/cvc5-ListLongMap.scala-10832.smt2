; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126880 () Bool)

(assert start!126880)

(declare-fun b!1489180 () Bool)

(declare-fun res!1012778 () Bool)

(declare-fun e!834683 () Bool)

(assert (=> b!1489180 (=> (not res!1012778) (not e!834683))))

(declare-datatypes ((array!99570 0))(
  ( (array!99571 (arr!48052 (Array (_ BitVec 32) (_ BitVec 64))) (size!48603 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99570)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489180 (= res!1012778 (validKeyInArray!0 (select (arr!48052 a!2862) j!93)))))

(declare-fun b!1489181 () Bool)

(declare-fun res!1012780 () Bool)

(assert (=> b!1489181 (=> (not res!1012780) (not e!834683))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99570 (_ BitVec 32)) Bool)

(assert (=> b!1489181 (= res!1012780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489182 () Bool)

(declare-fun res!1012782 () Bool)

(assert (=> b!1489182 (=> (not res!1012782) (not e!834683))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1489182 (= res!1012782 (validKeyInArray!0 (select (arr!48052 a!2862) i!1006)))))

(declare-fun b!1489183 () Bool)

(declare-fun res!1012770 () Bool)

(declare-fun e!834679 () Bool)

(assert (=> b!1489183 (=> res!1012770 e!834679)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1489183 (= res!1012770 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489184 () Bool)

(declare-fun res!1012781 () Bool)

(declare-fun e!834675 () Bool)

(assert (=> b!1489184 (=> (not res!1012781) (not e!834675))))

(declare-fun e!834677 () Bool)

(assert (=> b!1489184 (= res!1012781 e!834677)))

(declare-fun c!137737 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489184 (= c!137737 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489186 () Bool)

(declare-fun res!1012773 () Bool)

(assert (=> b!1489186 (=> (not res!1012773) (not e!834683))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1489186 (= res!1012773 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48603 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48603 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48603 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489187 () Bool)

(declare-fun res!1012767 () Bool)

(assert (=> b!1489187 (=> res!1012767 e!834679)))

(declare-datatypes ((SeekEntryResult!12315 0))(
  ( (MissingZero!12315 (index!51651 (_ BitVec 32))) (Found!12315 (index!51652 (_ BitVec 32))) (Intermediate!12315 (undefined!13127 Bool) (index!51653 (_ BitVec 32)) (x!133254 (_ BitVec 32))) (Undefined!12315) (MissingVacant!12315 (index!51654 (_ BitVec 32))) )
))
(declare-fun lt!649419 () SeekEntryResult!12315)

(declare-fun lt!649422 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99570 (_ BitVec 32)) SeekEntryResult!12315)

(assert (=> b!1489187 (= res!1012767 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649422 (select (arr!48052 a!2862) j!93) a!2862 mask!2687) lt!649419)))))

(declare-fun lt!649421 () array!99570)

(declare-fun b!1489188 () Bool)

(declare-fun e!834678 () Bool)

(declare-fun lt!649426 () SeekEntryResult!12315)

(declare-fun lt!649425 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99570 (_ BitVec 32)) SeekEntryResult!12315)

(assert (=> b!1489188 (= e!834678 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649422 intermediateAfterIndex!19 lt!649425 lt!649421 mask!2687) lt!649426)))))

(declare-fun b!1489189 () Bool)

(declare-fun res!1012776 () Bool)

(assert (=> b!1489189 (=> (not res!1012776) (not e!834683))))

(declare-datatypes ((List!34733 0))(
  ( (Nil!34730) (Cons!34729 (h!36112 (_ BitVec 64)) (t!49434 List!34733)) )
))
(declare-fun arrayNoDuplicates!0 (array!99570 (_ BitVec 32) List!34733) Bool)

(assert (=> b!1489189 (= res!1012776 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34730))))

(declare-fun b!1489190 () Bool)

(declare-fun e!834676 () Bool)

(assert (=> b!1489190 (= e!834676 e!834679)))

(declare-fun res!1012779 () Bool)

(assert (=> b!1489190 (=> res!1012779 e!834679)))

(assert (=> b!1489190 (= res!1012779 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649422 #b00000000000000000000000000000000) (bvsge lt!649422 (size!48603 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489190 (= lt!649422 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489190 (= lt!649426 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649425 lt!649421 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99570 (_ BitVec 32)) SeekEntryResult!12315)

(assert (=> b!1489190 (= lt!649426 (seekEntryOrOpen!0 lt!649425 lt!649421 mask!2687))))

(declare-fun b!1489191 () Bool)

(declare-fun e!834681 () Bool)

(assert (=> b!1489191 (= e!834683 e!834681)))

(declare-fun res!1012777 () Bool)

(assert (=> b!1489191 (=> (not res!1012777) (not e!834681))))

(assert (=> b!1489191 (= res!1012777 (= (select (store (arr!48052 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489191 (= lt!649421 (array!99571 (store (arr!48052 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48603 a!2862)))))

(declare-fun b!1489185 () Bool)

(declare-fun res!1012774 () Bool)

(assert (=> b!1489185 (=> (not res!1012774) (not e!834675))))

(assert (=> b!1489185 (= res!1012774 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1012771 () Bool)

(assert (=> start!126880 (=> (not res!1012771) (not e!834683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126880 (= res!1012771 (validMask!0 mask!2687))))

(assert (=> start!126880 e!834683))

(assert (=> start!126880 true))

(declare-fun array_inv!36997 (array!99570) Bool)

(assert (=> start!126880 (array_inv!36997 a!2862)))

(declare-fun b!1489192 () Bool)

(assert (=> b!1489192 (= e!834679 true)))

(declare-fun lt!649420 () SeekEntryResult!12315)

(assert (=> b!1489192 (= lt!649420 lt!649426)))

(declare-datatypes ((Unit!49918 0))(
  ( (Unit!49919) )
))
(declare-fun lt!649423 () Unit!49918)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49918)

(assert (=> b!1489192 (= lt!649423 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649422 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489193 () Bool)

(assert (=> b!1489193 (= e!834677 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649425 lt!649421 mask!2687) (seekEntryOrOpen!0 lt!649425 lt!649421 mask!2687)))))

(declare-fun b!1489194 () Bool)

(declare-fun res!1012769 () Bool)

(assert (=> b!1489194 (=> res!1012769 e!834679)))

(assert (=> b!1489194 (= res!1012769 e!834678)))

(declare-fun c!137738 () Bool)

(assert (=> b!1489194 (= c!137738 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!649424 () SeekEntryResult!12315)

(declare-fun b!1489195 () Bool)

(assert (=> b!1489195 (= e!834677 (= lt!649424 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649425 lt!649421 mask!2687)))))

(declare-fun b!1489196 () Bool)

(assert (=> b!1489196 (= e!834678 (not (= lt!649424 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649422 lt!649425 lt!649421 mask!2687))))))

(declare-fun b!1489197 () Bool)

(declare-fun e!834680 () Bool)

(assert (=> b!1489197 (= e!834681 e!834680)))

(declare-fun res!1012772 () Bool)

(assert (=> b!1489197 (=> (not res!1012772) (not e!834680))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489197 (= res!1012772 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48052 a!2862) j!93) mask!2687) (select (arr!48052 a!2862) j!93) a!2862 mask!2687) lt!649419))))

(assert (=> b!1489197 (= lt!649419 (Intermediate!12315 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489198 () Bool)

(assert (=> b!1489198 (= e!834680 e!834675)))

(declare-fun res!1012768 () Bool)

(assert (=> b!1489198 (=> (not res!1012768) (not e!834675))))

(assert (=> b!1489198 (= res!1012768 (= lt!649424 (Intermediate!12315 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1489198 (= lt!649424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649425 mask!2687) lt!649425 lt!649421 mask!2687))))

(assert (=> b!1489198 (= lt!649425 (select (store (arr!48052 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489199 () Bool)

(declare-fun res!1012765 () Bool)

(assert (=> b!1489199 (=> (not res!1012765) (not e!834680))))

(assert (=> b!1489199 (= res!1012765 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48052 a!2862) j!93) a!2862 mask!2687) lt!649419))))

(declare-fun b!1489200 () Bool)

(declare-fun res!1012766 () Bool)

(assert (=> b!1489200 (=> (not res!1012766) (not e!834683))))

(assert (=> b!1489200 (= res!1012766 (and (= (size!48603 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48603 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48603 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489201 () Bool)

(assert (=> b!1489201 (= e!834675 (not e!834676))))

(declare-fun res!1012775 () Bool)

(assert (=> b!1489201 (=> res!1012775 e!834676)))

(assert (=> b!1489201 (= res!1012775 (or (and (= (select (arr!48052 a!2862) index!646) (select (store (arr!48052 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48052 a!2862) index!646) (select (arr!48052 a!2862) j!93))) (= (select (arr!48052 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1489201 (and (= lt!649420 (Found!12315 j!93)) (or (= (select (arr!48052 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48052 a!2862) intermediateBeforeIndex!19) (select (arr!48052 a!2862) j!93))) (let ((bdg!54706 (select (store (arr!48052 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48052 a!2862) index!646) bdg!54706) (= (select (arr!48052 a!2862) index!646) (select (arr!48052 a!2862) j!93))) (= (select (arr!48052 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54706 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1489201 (= lt!649420 (seekEntryOrOpen!0 (select (arr!48052 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1489201 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649418 () Unit!49918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49918)

(assert (=> b!1489201 (= lt!649418 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126880 res!1012771) b!1489200))

(assert (= (and b!1489200 res!1012766) b!1489182))

(assert (= (and b!1489182 res!1012782) b!1489180))

(assert (= (and b!1489180 res!1012778) b!1489181))

(assert (= (and b!1489181 res!1012780) b!1489189))

(assert (= (and b!1489189 res!1012776) b!1489186))

(assert (= (and b!1489186 res!1012773) b!1489191))

(assert (= (and b!1489191 res!1012777) b!1489197))

(assert (= (and b!1489197 res!1012772) b!1489199))

(assert (= (and b!1489199 res!1012765) b!1489198))

(assert (= (and b!1489198 res!1012768) b!1489184))

(assert (= (and b!1489184 c!137737) b!1489195))

(assert (= (and b!1489184 (not c!137737)) b!1489193))

(assert (= (and b!1489184 res!1012781) b!1489185))

(assert (= (and b!1489185 res!1012774) b!1489201))

(assert (= (and b!1489201 (not res!1012775)) b!1489190))

(assert (= (and b!1489190 (not res!1012779)) b!1489187))

(assert (= (and b!1489187 (not res!1012767)) b!1489194))

(assert (= (and b!1489194 c!137738) b!1489196))

(assert (= (and b!1489194 (not c!137738)) b!1489188))

(assert (= (and b!1489194 (not res!1012769)) b!1489183))

(assert (= (and b!1489183 (not res!1012770)) b!1489192))

(declare-fun m!1373487 () Bool)

(assert (=> b!1489192 m!1373487))

(declare-fun m!1373489 () Bool)

(assert (=> b!1489182 m!1373489))

(assert (=> b!1489182 m!1373489))

(declare-fun m!1373491 () Bool)

(assert (=> b!1489182 m!1373491))

(declare-fun m!1373493 () Bool)

(assert (=> b!1489189 m!1373493))

(declare-fun m!1373495 () Bool)

(assert (=> b!1489187 m!1373495))

(assert (=> b!1489187 m!1373495))

(declare-fun m!1373497 () Bool)

(assert (=> b!1489187 m!1373497))

(declare-fun m!1373499 () Bool)

(assert (=> b!1489191 m!1373499))

(declare-fun m!1373501 () Bool)

(assert (=> b!1489191 m!1373501))

(declare-fun m!1373503 () Bool)

(assert (=> b!1489190 m!1373503))

(declare-fun m!1373505 () Bool)

(assert (=> b!1489190 m!1373505))

(declare-fun m!1373507 () Bool)

(assert (=> b!1489190 m!1373507))

(declare-fun m!1373509 () Bool)

(assert (=> b!1489196 m!1373509))

(assert (=> b!1489199 m!1373495))

(assert (=> b!1489199 m!1373495))

(declare-fun m!1373511 () Bool)

(assert (=> b!1489199 m!1373511))

(declare-fun m!1373513 () Bool)

(assert (=> b!1489195 m!1373513))

(assert (=> b!1489193 m!1373505))

(assert (=> b!1489193 m!1373507))

(declare-fun m!1373515 () Bool)

(assert (=> b!1489188 m!1373515))

(declare-fun m!1373517 () Bool)

(assert (=> b!1489201 m!1373517))

(assert (=> b!1489201 m!1373499))

(declare-fun m!1373519 () Bool)

(assert (=> b!1489201 m!1373519))

(declare-fun m!1373521 () Bool)

(assert (=> b!1489201 m!1373521))

(declare-fun m!1373523 () Bool)

(assert (=> b!1489201 m!1373523))

(assert (=> b!1489201 m!1373495))

(declare-fun m!1373525 () Bool)

(assert (=> b!1489201 m!1373525))

(declare-fun m!1373527 () Bool)

(assert (=> b!1489201 m!1373527))

(assert (=> b!1489201 m!1373495))

(assert (=> b!1489197 m!1373495))

(assert (=> b!1489197 m!1373495))

(declare-fun m!1373529 () Bool)

(assert (=> b!1489197 m!1373529))

(assert (=> b!1489197 m!1373529))

(assert (=> b!1489197 m!1373495))

(declare-fun m!1373531 () Bool)

(assert (=> b!1489197 m!1373531))

(assert (=> b!1489180 m!1373495))

(assert (=> b!1489180 m!1373495))

(declare-fun m!1373533 () Bool)

(assert (=> b!1489180 m!1373533))

(declare-fun m!1373535 () Bool)

(assert (=> b!1489198 m!1373535))

(assert (=> b!1489198 m!1373535))

(declare-fun m!1373537 () Bool)

(assert (=> b!1489198 m!1373537))

(assert (=> b!1489198 m!1373499))

(declare-fun m!1373539 () Bool)

(assert (=> b!1489198 m!1373539))

(declare-fun m!1373541 () Bool)

(assert (=> start!126880 m!1373541))

(declare-fun m!1373543 () Bool)

(assert (=> start!126880 m!1373543))

(declare-fun m!1373545 () Bool)

(assert (=> b!1489181 m!1373545))

(push 1)

