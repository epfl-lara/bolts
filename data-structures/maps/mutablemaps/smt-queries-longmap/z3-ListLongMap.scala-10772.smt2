; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126174 () Bool)

(assert start!126174)

(declare-fun res!1002805 () Bool)

(declare-fun e!828382 () Bool)

(assert (=> start!126174 (=> (not res!1002805) (not e!828382))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126174 (= res!1002805 (validMask!0 mask!2687))))

(assert (=> start!126174 e!828382))

(assert (=> start!126174 true))

(declare-datatypes ((array!99197 0))(
  ( (array!99198 (arr!47873 (Array (_ BitVec 32) (_ BitVec 64))) (size!48424 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99197)

(declare-fun array_inv!36818 (array!99197) Bool)

(assert (=> start!126174 (array_inv!36818 a!2862)))

(declare-fun b!1476458 () Bool)

(declare-fun e!828381 () Bool)

(declare-fun e!828385 () Bool)

(assert (=> b!1476458 (= e!828381 e!828385)))

(declare-fun res!1002800 () Bool)

(assert (=> b!1476458 (=> (not res!1002800) (not e!828385))))

(declare-datatypes ((SeekEntryResult!12136 0))(
  ( (MissingZero!12136 (index!50935 (_ BitVec 32))) (Found!12136 (index!50936 (_ BitVec 32))) (Intermediate!12136 (undefined!12948 Bool) (index!50937 (_ BitVec 32)) (x!132538 (_ BitVec 32))) (Undefined!12136) (MissingVacant!12136 (index!50938 (_ BitVec 32))) )
))
(declare-fun lt!644991 () SeekEntryResult!12136)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1476458 (= res!1002800 (= lt!644991 (Intermediate!12136 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644992 () (_ BitVec 64))

(declare-fun lt!644989 () array!99197)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99197 (_ BitVec 32)) SeekEntryResult!12136)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476458 (= lt!644991 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644992 mask!2687) lt!644992 lt!644989 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1476458 (= lt!644992 (select (store (arr!47873 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476459 () Bool)

(declare-fun res!1002802 () Bool)

(assert (=> b!1476459 (=> (not res!1002802) (not e!828382))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1476459 (= res!1002802 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48424 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48424 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48424 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476460 () Bool)

(declare-fun e!828386 () Bool)

(assert (=> b!1476460 (= e!828386 e!828381)))

(declare-fun res!1002801 () Bool)

(assert (=> b!1476460 (=> (not res!1002801) (not e!828381))))

(declare-fun lt!644990 () SeekEntryResult!12136)

(assert (=> b!1476460 (= res!1002801 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47873 a!2862) j!93) mask!2687) (select (arr!47873 a!2862) j!93) a!2862 mask!2687) lt!644990))))

(assert (=> b!1476460 (= lt!644990 (Intermediate!12136 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476461 () Bool)

(declare-fun res!1002796 () Bool)

(assert (=> b!1476461 (=> (not res!1002796) (not e!828382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476461 (= res!1002796 (validKeyInArray!0 (select (arr!47873 a!2862) j!93)))))

(declare-fun b!1476462 () Bool)

(declare-fun e!828378 () Bool)

(declare-fun e!828379 () Bool)

(assert (=> b!1476462 (= e!828378 e!828379)))

(declare-fun res!1002807 () Bool)

(assert (=> b!1476462 (=> res!1002807 e!828379)))

(assert (=> b!1476462 (= res!1002807 (or (and (= (select (arr!47873 a!2862) index!646) (select (store (arr!47873 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47873 a!2862) index!646) (select (arr!47873 a!2862) j!93))) (not (= (select (arr!47873 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476463 () Bool)

(declare-fun e!828384 () Bool)

(assert (=> b!1476463 (= e!828384 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476464 () Bool)

(declare-fun e!828383 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99197 (_ BitVec 32)) SeekEntryResult!12136)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99197 (_ BitVec 32)) SeekEntryResult!12136)

(assert (=> b!1476464 (= e!828383 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644992 lt!644989 mask!2687) (seekEntryOrOpen!0 lt!644992 lt!644989 mask!2687)))))

(declare-fun b!1476465 () Bool)

(assert (=> b!1476465 (= e!828383 (= lt!644991 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644992 lt!644989 mask!2687)))))

(declare-fun b!1476466 () Bool)

(declare-fun res!1002797 () Bool)

(assert (=> b!1476466 (=> (not res!1002797) (not e!828385))))

(assert (=> b!1476466 (= res!1002797 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476467 () Bool)

(declare-fun res!1002798 () Bool)

(assert (=> b!1476467 (=> (not res!1002798) (not e!828382))))

(declare-datatypes ((List!34554 0))(
  ( (Nil!34551) (Cons!34550 (h!35918 (_ BitVec 64)) (t!49255 List!34554)) )
))
(declare-fun arrayNoDuplicates!0 (array!99197 (_ BitVec 32) List!34554) Bool)

(assert (=> b!1476467 (= res!1002798 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34551))))

(declare-fun b!1476468 () Bool)

(declare-fun res!1002793 () Bool)

(assert (=> b!1476468 (=> (not res!1002793) (not e!828382))))

(assert (=> b!1476468 (= res!1002793 (validKeyInArray!0 (select (arr!47873 a!2862) i!1006)))))

(declare-fun b!1476469 () Bool)

(assert (=> b!1476469 (= e!828382 e!828386)))

(declare-fun res!1002794 () Bool)

(assert (=> b!1476469 (=> (not res!1002794) (not e!828386))))

(assert (=> b!1476469 (= res!1002794 (= (select (store (arr!47873 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476469 (= lt!644989 (array!99198 (store (arr!47873 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48424 a!2862)))))

(declare-fun b!1476470 () Bool)

(assert (=> b!1476470 (= e!828379 e!828384)))

(declare-fun res!1002806 () Bool)

(assert (=> b!1476470 (=> (not res!1002806) (not e!828384))))

(declare-fun lt!644987 () SeekEntryResult!12136)

(assert (=> b!1476470 (= res!1002806 (= lt!644987 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47873 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476471 () Bool)

(declare-fun res!1002792 () Bool)

(assert (=> b!1476471 (=> (not res!1002792) (not e!828381))))

(assert (=> b!1476471 (= res!1002792 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47873 a!2862) j!93) a!2862 mask!2687) lt!644990))))

(declare-fun b!1476472 () Bool)

(declare-fun res!1002795 () Bool)

(assert (=> b!1476472 (=> (not res!1002795) (not e!828382))))

(assert (=> b!1476472 (= res!1002795 (and (= (size!48424 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48424 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48424 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476473 () Bool)

(assert (=> b!1476473 (= e!828385 (not true))))

(assert (=> b!1476473 e!828378))

(declare-fun res!1002803 () Bool)

(assert (=> b!1476473 (=> (not res!1002803) (not e!828378))))

(assert (=> b!1476473 (= res!1002803 (and (= lt!644987 (Found!12136 j!93)) (or (= (select (arr!47873 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47873 a!2862) intermediateBeforeIndex!19) (select (arr!47873 a!2862) j!93)))))))

(assert (=> b!1476473 (= lt!644987 (seekEntryOrOpen!0 (select (arr!47873 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99197 (_ BitVec 32)) Bool)

(assert (=> b!1476473 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49560 0))(
  ( (Unit!49561) )
))
(declare-fun lt!644988 () Unit!49560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99197 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49560)

(assert (=> b!1476473 (= lt!644988 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476474 () Bool)

(declare-fun res!1002799 () Bool)

(assert (=> b!1476474 (=> (not res!1002799) (not e!828385))))

(assert (=> b!1476474 (= res!1002799 e!828383)))

(declare-fun c!136355 () Bool)

(assert (=> b!1476474 (= c!136355 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476475 () Bool)

(declare-fun res!1002804 () Bool)

(assert (=> b!1476475 (=> (not res!1002804) (not e!828382))))

(assert (=> b!1476475 (= res!1002804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126174 res!1002805) b!1476472))

(assert (= (and b!1476472 res!1002795) b!1476468))

(assert (= (and b!1476468 res!1002793) b!1476461))

(assert (= (and b!1476461 res!1002796) b!1476475))

(assert (= (and b!1476475 res!1002804) b!1476467))

(assert (= (and b!1476467 res!1002798) b!1476459))

(assert (= (and b!1476459 res!1002802) b!1476469))

(assert (= (and b!1476469 res!1002794) b!1476460))

(assert (= (and b!1476460 res!1002801) b!1476471))

(assert (= (and b!1476471 res!1002792) b!1476458))

(assert (= (and b!1476458 res!1002800) b!1476474))

(assert (= (and b!1476474 c!136355) b!1476465))

(assert (= (and b!1476474 (not c!136355)) b!1476464))

(assert (= (and b!1476474 res!1002799) b!1476466))

(assert (= (and b!1476466 res!1002797) b!1476473))

(assert (= (and b!1476473 res!1002803) b!1476462))

(assert (= (and b!1476462 (not res!1002807)) b!1476470))

(assert (= (and b!1476470 res!1002806) b!1476463))

(declare-fun m!1362499 () Bool)

(assert (=> b!1476458 m!1362499))

(assert (=> b!1476458 m!1362499))

(declare-fun m!1362501 () Bool)

(assert (=> b!1476458 m!1362501))

(declare-fun m!1362503 () Bool)

(assert (=> b!1476458 m!1362503))

(declare-fun m!1362505 () Bool)

(assert (=> b!1476458 m!1362505))

(declare-fun m!1362507 () Bool)

(assert (=> b!1476468 m!1362507))

(assert (=> b!1476468 m!1362507))

(declare-fun m!1362509 () Bool)

(assert (=> b!1476468 m!1362509))

(declare-fun m!1362511 () Bool)

(assert (=> b!1476470 m!1362511))

(assert (=> b!1476470 m!1362511))

(declare-fun m!1362513 () Bool)

(assert (=> b!1476470 m!1362513))

(declare-fun m!1362515 () Bool)

(assert (=> b!1476465 m!1362515))

(assert (=> b!1476469 m!1362503))

(declare-fun m!1362517 () Bool)

(assert (=> b!1476469 m!1362517))

(assert (=> b!1476461 m!1362511))

(assert (=> b!1476461 m!1362511))

(declare-fun m!1362519 () Bool)

(assert (=> b!1476461 m!1362519))

(declare-fun m!1362521 () Bool)

(assert (=> start!126174 m!1362521))

(declare-fun m!1362523 () Bool)

(assert (=> start!126174 m!1362523))

(declare-fun m!1362525 () Bool)

(assert (=> b!1476464 m!1362525))

(declare-fun m!1362527 () Bool)

(assert (=> b!1476464 m!1362527))

(declare-fun m!1362529 () Bool)

(assert (=> b!1476473 m!1362529))

(declare-fun m!1362531 () Bool)

(assert (=> b!1476473 m!1362531))

(assert (=> b!1476473 m!1362511))

(declare-fun m!1362533 () Bool)

(assert (=> b!1476473 m!1362533))

(declare-fun m!1362535 () Bool)

(assert (=> b!1476473 m!1362535))

(assert (=> b!1476473 m!1362511))

(declare-fun m!1362537 () Bool)

(assert (=> b!1476462 m!1362537))

(assert (=> b!1476462 m!1362503))

(declare-fun m!1362539 () Bool)

(assert (=> b!1476462 m!1362539))

(assert (=> b!1476462 m!1362511))

(assert (=> b!1476471 m!1362511))

(assert (=> b!1476471 m!1362511))

(declare-fun m!1362541 () Bool)

(assert (=> b!1476471 m!1362541))

(assert (=> b!1476460 m!1362511))

(assert (=> b!1476460 m!1362511))

(declare-fun m!1362543 () Bool)

(assert (=> b!1476460 m!1362543))

(assert (=> b!1476460 m!1362543))

(assert (=> b!1476460 m!1362511))

(declare-fun m!1362545 () Bool)

(assert (=> b!1476460 m!1362545))

(declare-fun m!1362547 () Bool)

(assert (=> b!1476467 m!1362547))

(declare-fun m!1362549 () Bool)

(assert (=> b!1476475 m!1362549))

(check-sat (not b!1476468) (not b!1476458) (not start!126174) (not b!1476464) (not b!1476473) (not b!1476470) (not b!1476475) (not b!1476467) (not b!1476465) (not b!1476471) (not b!1476461) (not b!1476460))
(check-sat)
