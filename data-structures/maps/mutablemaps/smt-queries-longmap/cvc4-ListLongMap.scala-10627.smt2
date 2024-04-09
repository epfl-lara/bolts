; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124946 () Bool)

(assert start!124946)

(declare-fun b!1450985 () Bool)

(declare-fun res!982375 () Bool)

(declare-fun e!817053 () Bool)

(assert (=> b!1450985 (=> (not res!982375) (not e!817053))))

(declare-datatypes ((array!98311 0))(
  ( (array!98312 (arr!47439 (Array (_ BitVec 32) (_ BitVec 64))) (size!47990 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98311)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98311 (_ BitVec 32)) Bool)

(assert (=> b!1450985 (= res!982375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450986 () Bool)

(declare-fun e!817045 () Bool)

(assert (=> b!1450986 (= e!817053 e!817045)))

(declare-fun res!982388 () Bool)

(assert (=> b!1450986 (=> (not res!982388) (not e!817045))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450986 (= res!982388 (= (select (store (arr!47439 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636486 () array!98311)

(assert (=> b!1450986 (= lt!636486 (array!98312 (store (arr!47439 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47990 a!2862)))))

(declare-fun b!1450988 () Bool)

(declare-fun res!982385 () Bool)

(assert (=> b!1450988 (=> (not res!982385) (not e!817053))))

(declare-datatypes ((List!34120 0))(
  ( (Nil!34117) (Cons!34116 (h!35466 (_ BitVec 64)) (t!48821 List!34120)) )
))
(declare-fun arrayNoDuplicates!0 (array!98311 (_ BitVec 32) List!34120) Bool)

(assert (=> b!1450988 (= res!982385 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34117))))

(declare-fun b!1450989 () Bool)

(declare-fun res!982379 () Bool)

(declare-fun e!817048 () Bool)

(assert (=> b!1450989 (=> (not res!982379) (not e!817048))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1450989 (= res!982379 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450990 () Bool)

(declare-fun res!982386 () Bool)

(assert (=> b!1450990 (=> (not res!982386) (not e!817048))))

(declare-fun e!817051 () Bool)

(assert (=> b!1450990 (= res!982386 e!817051)))

(declare-fun c!133820 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1450990 (= c!133820 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450991 () Bool)

(declare-fun e!817054 () Bool)

(declare-fun e!817046 () Bool)

(assert (=> b!1450991 (= e!817054 e!817046)))

(declare-fun res!982387 () Bool)

(assert (=> b!1450991 (=> res!982387 e!817046)))

(assert (=> b!1450991 (= res!982387 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!636484 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11714 0))(
  ( (MissingZero!11714 (index!49247 (_ BitVec 32))) (Found!11714 (index!49248 (_ BitVec 32))) (Intermediate!11714 (undefined!12526 Bool) (index!49249 (_ BitVec 32)) (x!130902 (_ BitVec 32))) (Undefined!11714) (MissingVacant!11714 (index!49250 (_ BitVec 32))) )
))
(declare-fun lt!636485 () SeekEntryResult!11714)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98311 (_ BitVec 32)) SeekEntryResult!11714)

(assert (=> b!1450991 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636484 lt!636486 mask!2687) lt!636485)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((Unit!48872 0))(
  ( (Unit!48873) )
))
(declare-fun lt!636482 () Unit!48872)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48872)

(assert (=> b!1450991 (= lt!636482 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450992 () Bool)

(declare-fun e!817049 () Bool)

(assert (=> b!1450992 (= e!817045 e!817049)))

(declare-fun res!982374 () Bool)

(assert (=> b!1450992 (=> (not res!982374) (not e!817049))))

(declare-fun lt!636483 () SeekEntryResult!11714)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98311 (_ BitVec 32)) SeekEntryResult!11714)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450992 (= res!982374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47439 a!2862) j!93) mask!2687) (select (arr!47439 a!2862) j!93) a!2862 mask!2687) lt!636483))))

(assert (=> b!1450992 (= lt!636483 (Intermediate!11714 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450993 () Bool)

(declare-fun e!817050 () Bool)

(declare-fun e!817052 () Bool)

(assert (=> b!1450993 (= e!817050 e!817052)))

(declare-fun res!982383 () Bool)

(assert (=> b!1450993 (=> res!982383 e!817052)))

(assert (=> b!1450993 (= res!982383 (or (and (= (select (arr!47439 a!2862) index!646) (select (store (arr!47439 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47439 a!2862) index!646) (select (arr!47439 a!2862) j!93))) (not (= (select (arr!47439 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450994 () Bool)

(declare-fun res!982384 () Bool)

(assert (=> b!1450994 (=> (not res!982384) (not e!817053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450994 (= res!982384 (validKeyInArray!0 (select (arr!47439 a!2862) j!93)))))

(declare-fun b!1450995 () Bool)

(declare-fun res!982380 () Bool)

(assert (=> b!1450995 (=> (not res!982380) (not e!817053))))

(assert (=> b!1450995 (= res!982380 (validKeyInArray!0 (select (arr!47439 a!2862) i!1006)))))

(declare-fun b!1450996 () Bool)

(declare-fun res!982381 () Bool)

(assert (=> b!1450996 (=> (not res!982381) (not e!817053))))

(assert (=> b!1450996 (= res!982381 (and (= (size!47990 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47990 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47990 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!817055 () Bool)

(declare-fun b!1450997 () Bool)

(assert (=> b!1450997 (= e!817055 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450998 () Bool)

(declare-fun lt!636480 () SeekEntryResult!11714)

(assert (=> b!1450998 (= e!817051 (= lt!636480 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636484 lt!636486 mask!2687)))))

(declare-fun b!1450999 () Bool)

(declare-fun res!982389 () Bool)

(assert (=> b!1450999 (=> (not res!982389) (not e!817053))))

(assert (=> b!1450999 (= res!982389 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47990 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47990 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47990 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450987 () Bool)

(declare-fun res!982371 () Bool)

(assert (=> b!1450987 (=> (not res!982371) (not e!817049))))

(assert (=> b!1450987 (= res!982371 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47439 a!2862) j!93) a!2862 mask!2687) lt!636483))))

(declare-fun res!982373 () Bool)

(assert (=> start!124946 (=> (not res!982373) (not e!817053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124946 (= res!982373 (validMask!0 mask!2687))))

(assert (=> start!124946 e!817053))

(assert (=> start!124946 true))

(declare-fun array_inv!36384 (array!98311) Bool)

(assert (=> start!124946 (array_inv!36384 a!2862)))

(declare-fun b!1451000 () Bool)

(declare-fun res!982378 () Bool)

(assert (=> b!1451000 (=> res!982378 e!817054)))

(assert (=> b!1451000 (= res!982378 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47439 a!2862) j!93) a!2862 mask!2687) lt!636485)))))

(declare-fun b!1451001 () Bool)

(assert (=> b!1451001 (= e!817048 (not e!817054))))

(declare-fun res!982382 () Bool)

(assert (=> b!1451001 (=> res!982382 e!817054)))

(assert (=> b!1451001 (= res!982382 (or (and (= (select (arr!47439 a!2862) index!646) (select (store (arr!47439 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47439 a!2862) index!646) (select (arr!47439 a!2862) j!93))) (not (= (select (arr!47439 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47439 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1451001 e!817050))

(declare-fun res!982376 () Bool)

(assert (=> b!1451001 (=> (not res!982376) (not e!817050))))

(declare-fun lt!636487 () SeekEntryResult!11714)

(assert (=> b!1451001 (= res!982376 (and (= lt!636487 lt!636485) (or (= (select (arr!47439 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47439 a!2862) intermediateBeforeIndex!19) (select (arr!47439 a!2862) j!93)))))))

(assert (=> b!1451001 (= lt!636485 (Found!11714 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98311 (_ BitVec 32)) SeekEntryResult!11714)

(assert (=> b!1451001 (= lt!636487 (seekEntryOrOpen!0 (select (arr!47439 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1451001 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636481 () Unit!48872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48872)

(assert (=> b!1451001 (= lt!636481 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451002 () Bool)

(assert (=> b!1451002 (= e!817046 (validKeyInArray!0 lt!636484))))

(declare-fun b!1451003 () Bool)

(assert (=> b!1451003 (= e!817051 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636484 lt!636486 mask!2687) (seekEntryOrOpen!0 lt!636484 lt!636486 mask!2687)))))

(declare-fun b!1451004 () Bool)

(assert (=> b!1451004 (= e!817049 e!817048)))

(declare-fun res!982377 () Bool)

(assert (=> b!1451004 (=> (not res!982377) (not e!817048))))

(assert (=> b!1451004 (= res!982377 (= lt!636480 (Intermediate!11714 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1451004 (= lt!636480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636484 mask!2687) lt!636484 lt!636486 mask!2687))))

(assert (=> b!1451004 (= lt!636484 (select (store (arr!47439 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451005 () Bool)

(assert (=> b!1451005 (= e!817052 e!817055)))

(declare-fun res!982372 () Bool)

(assert (=> b!1451005 (=> (not res!982372) (not e!817055))))

(assert (=> b!1451005 (= res!982372 (= lt!636487 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47439 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!124946 res!982373) b!1450996))

(assert (= (and b!1450996 res!982381) b!1450995))

(assert (= (and b!1450995 res!982380) b!1450994))

(assert (= (and b!1450994 res!982384) b!1450985))

(assert (= (and b!1450985 res!982375) b!1450988))

(assert (= (and b!1450988 res!982385) b!1450999))

(assert (= (and b!1450999 res!982389) b!1450986))

(assert (= (and b!1450986 res!982388) b!1450992))

(assert (= (and b!1450992 res!982374) b!1450987))

(assert (= (and b!1450987 res!982371) b!1451004))

(assert (= (and b!1451004 res!982377) b!1450990))

(assert (= (and b!1450990 c!133820) b!1450998))

(assert (= (and b!1450990 (not c!133820)) b!1451003))

(assert (= (and b!1450990 res!982386) b!1450989))

(assert (= (and b!1450989 res!982379) b!1451001))

(assert (= (and b!1451001 res!982376) b!1450993))

(assert (= (and b!1450993 (not res!982383)) b!1451005))

(assert (= (and b!1451005 res!982372) b!1450997))

(assert (= (and b!1451001 (not res!982382)) b!1451000))

(assert (= (and b!1451000 (not res!982378)) b!1450991))

(assert (= (and b!1450991 (not res!982387)) b!1451002))

(declare-fun m!1339643 () Bool)

(assert (=> b!1450992 m!1339643))

(assert (=> b!1450992 m!1339643))

(declare-fun m!1339645 () Bool)

(assert (=> b!1450992 m!1339645))

(assert (=> b!1450992 m!1339645))

(assert (=> b!1450992 m!1339643))

(declare-fun m!1339647 () Bool)

(assert (=> b!1450992 m!1339647))

(declare-fun m!1339649 () Bool)

(assert (=> b!1451003 m!1339649))

(declare-fun m!1339651 () Bool)

(assert (=> b!1451003 m!1339651))

(declare-fun m!1339653 () Bool)

(assert (=> b!1450985 m!1339653))

(declare-fun m!1339655 () Bool)

(assert (=> b!1450995 m!1339655))

(assert (=> b!1450995 m!1339655))

(declare-fun m!1339657 () Bool)

(assert (=> b!1450995 m!1339657))

(assert (=> b!1450991 m!1339649))

(declare-fun m!1339659 () Bool)

(assert (=> b!1450991 m!1339659))

(declare-fun m!1339661 () Bool)

(assert (=> b!1450988 m!1339661))

(declare-fun m!1339663 () Bool)

(assert (=> b!1451004 m!1339663))

(assert (=> b!1451004 m!1339663))

(declare-fun m!1339665 () Bool)

(assert (=> b!1451004 m!1339665))

(declare-fun m!1339667 () Bool)

(assert (=> b!1451004 m!1339667))

(declare-fun m!1339669 () Bool)

(assert (=> b!1451004 m!1339669))

(declare-fun m!1339671 () Bool)

(assert (=> start!124946 m!1339671))

(declare-fun m!1339673 () Bool)

(assert (=> start!124946 m!1339673))

(assert (=> b!1451000 m!1339643))

(assert (=> b!1451000 m!1339643))

(declare-fun m!1339675 () Bool)

(assert (=> b!1451000 m!1339675))

(assert (=> b!1450994 m!1339643))

(assert (=> b!1450994 m!1339643))

(declare-fun m!1339677 () Bool)

(assert (=> b!1450994 m!1339677))

(declare-fun m!1339679 () Bool)

(assert (=> b!1450993 m!1339679))

(assert (=> b!1450993 m!1339667))

(declare-fun m!1339681 () Bool)

(assert (=> b!1450993 m!1339681))

(assert (=> b!1450993 m!1339643))

(assert (=> b!1450987 m!1339643))

(assert (=> b!1450987 m!1339643))

(declare-fun m!1339683 () Bool)

(assert (=> b!1450987 m!1339683))

(declare-fun m!1339685 () Bool)

(assert (=> b!1451002 m!1339685))

(declare-fun m!1339687 () Bool)

(assert (=> b!1450998 m!1339687))

(assert (=> b!1450986 m!1339667))

(declare-fun m!1339689 () Bool)

(assert (=> b!1450986 m!1339689))

(assert (=> b!1451005 m!1339643))

(assert (=> b!1451005 m!1339643))

(declare-fun m!1339691 () Bool)

(assert (=> b!1451005 m!1339691))

(declare-fun m!1339693 () Bool)

(assert (=> b!1451001 m!1339693))

(assert (=> b!1451001 m!1339667))

(declare-fun m!1339695 () Bool)

(assert (=> b!1451001 m!1339695))

(assert (=> b!1451001 m!1339681))

(assert (=> b!1451001 m!1339679))

(assert (=> b!1451001 m!1339643))

(declare-fun m!1339697 () Bool)

(assert (=> b!1451001 m!1339697))

(declare-fun m!1339699 () Bool)

(assert (=> b!1451001 m!1339699))

(assert (=> b!1451001 m!1339643))

(push 1)

