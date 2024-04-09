; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126958 () Bool)

(assert start!126958)

(declare-fun b!1491458 () Bool)

(declare-fun res!1014737 () Bool)

(declare-fun e!835654 () Bool)

(assert (=> b!1491458 (=> (not res!1014737) (not e!835654))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99648 0))(
  ( (array!99649 (arr!48091 (Array (_ BitVec 32) (_ BitVec 64))) (size!48642 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99648)

(assert (=> b!1491458 (= res!1014737 (and (= (size!48642 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48642 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48642 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491459 () Bool)

(declare-fun e!835661 () Bool)

(declare-fun e!835660 () Bool)

(assert (=> b!1491459 (= e!835661 e!835660)))

(declare-fun res!1014732 () Bool)

(assert (=> b!1491459 (=> (not res!1014732) (not e!835660))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12354 0))(
  ( (MissingZero!12354 (index!51807 (_ BitVec 32))) (Found!12354 (index!51808 (_ BitVec 32))) (Intermediate!12354 (undefined!13166 Bool) (index!51809 (_ BitVec 32)) (x!133397 (_ BitVec 32))) (Undefined!12354) (MissingVacant!12354 (index!51810 (_ BitVec 32))) )
))
(declare-fun lt!650250 () SeekEntryResult!12354)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491459 (= res!1014732 (= lt!650250 (Intermediate!12354 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650252 () (_ BitVec 64))

(declare-fun lt!650253 () array!99648)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99648 (_ BitVec 32)) SeekEntryResult!12354)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491459 (= lt!650250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650252 mask!2687) lt!650252 lt!650253 mask!2687))))

(assert (=> b!1491459 (= lt!650252 (select (store (arr!48091 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491460 () Bool)

(declare-fun res!1014727 () Bool)

(assert (=> b!1491460 (=> (not res!1014727) (not e!835654))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1491460 (= res!1014727 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48642 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48642 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48642 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491462 () Bool)

(declare-fun res!1014735 () Bool)

(assert (=> b!1491462 (=> (not res!1014735) (not e!835654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491462 (= res!1014735 (validKeyInArray!0 (select (arr!48091 a!2862) i!1006)))))

(declare-fun b!1491463 () Bool)

(declare-fun e!835657 () Bool)

(assert (=> b!1491463 (= e!835657 (or (= (select (arr!48091 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48091 a!2862) intermediateBeforeIndex!19) (select (arr!48091 a!2862) j!93))))))

(declare-fun b!1491464 () Bool)

(declare-fun res!1014731 () Bool)

(assert (=> b!1491464 (=> (not res!1014731) (not e!835660))))

(assert (=> b!1491464 (= res!1014731 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491465 () Bool)

(declare-fun res!1014733 () Bool)

(assert (=> b!1491465 (=> (not res!1014733) (not e!835660))))

(declare-fun e!835659 () Bool)

(assert (=> b!1491465 (= res!1014733 e!835659)))

(declare-fun c!137897 () Bool)

(assert (=> b!1491465 (= c!137897 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491466 () Bool)

(declare-fun res!1014725 () Bool)

(assert (=> b!1491466 (=> (not res!1014725) (not e!835657))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99648 (_ BitVec 32)) SeekEntryResult!12354)

(assert (=> b!1491466 (= res!1014725 (= (seekEntryOrOpen!0 (select (arr!48091 a!2862) j!93) a!2862 mask!2687) (Found!12354 j!93)))))

(declare-fun b!1491467 () Bool)

(assert (=> b!1491467 (= e!835659 (= lt!650250 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650252 lt!650253 mask!2687)))))

(declare-fun b!1491468 () Bool)

(declare-fun e!835658 () Bool)

(assert (=> b!1491468 (= e!835658 e!835661)))

(declare-fun res!1014728 () Bool)

(assert (=> b!1491468 (=> (not res!1014728) (not e!835661))))

(declare-fun lt!650254 () SeekEntryResult!12354)

(assert (=> b!1491468 (= res!1014728 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48091 a!2862) j!93) mask!2687) (select (arr!48091 a!2862) j!93) a!2862 mask!2687) lt!650254))))

(assert (=> b!1491468 (= lt!650254 (Intermediate!12354 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491469 () Bool)

(declare-fun res!1014723 () Bool)

(assert (=> b!1491469 (=> (not res!1014723) (not e!835654))))

(declare-datatypes ((List!34772 0))(
  ( (Nil!34769) (Cons!34768 (h!36151 (_ BitVec 64)) (t!49473 List!34772)) )
))
(declare-fun arrayNoDuplicates!0 (array!99648 (_ BitVec 32) List!34772) Bool)

(assert (=> b!1491469 (= res!1014723 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34769))))

(declare-fun b!1491470 () Bool)

(assert (=> b!1491470 (= e!835654 e!835658)))

(declare-fun res!1014734 () Bool)

(assert (=> b!1491470 (=> (not res!1014734) (not e!835658))))

(assert (=> b!1491470 (= res!1014734 (= (select (store (arr!48091 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491470 (= lt!650253 (array!99649 (store (arr!48091 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48642 a!2862)))))

(declare-fun b!1491471 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99648 (_ BitVec 32)) SeekEntryResult!12354)

(assert (=> b!1491471 (= e!835659 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650252 lt!650253 mask!2687) (seekEntryOrOpen!0 lt!650252 lt!650253 mask!2687)))))

(declare-fun b!1491461 () Bool)

(declare-fun res!1014724 () Bool)

(assert (=> b!1491461 (=> (not res!1014724) (not e!835654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99648 (_ BitVec 32)) Bool)

(assert (=> b!1491461 (= res!1014724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1014730 () Bool)

(assert (=> start!126958 (=> (not res!1014730) (not e!835654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126958 (= res!1014730 (validMask!0 mask!2687))))

(assert (=> start!126958 e!835654))

(assert (=> start!126958 true))

(declare-fun array_inv!37036 (array!99648) Bool)

(assert (=> start!126958 (array_inv!37036 a!2862)))

(declare-fun b!1491472 () Bool)

(declare-fun res!1014726 () Bool)

(assert (=> b!1491472 (=> (not res!1014726) (not e!835654))))

(assert (=> b!1491472 (= res!1014726 (validKeyInArray!0 (select (arr!48091 a!2862) j!93)))))

(declare-fun b!1491473 () Bool)

(declare-fun res!1014738 () Bool)

(assert (=> b!1491473 (=> (not res!1014738) (not e!835661))))

(assert (=> b!1491473 (= res!1014738 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48091 a!2862) j!93) a!2862 mask!2687) lt!650254))))

(declare-fun b!1491474 () Bool)

(declare-fun e!835655 () Bool)

(assert (=> b!1491474 (= e!835655 true)))

(declare-fun lt!650249 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491474 (= lt!650249 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491475 () Bool)

(assert (=> b!1491475 (= e!835660 (not e!835655))))

(declare-fun res!1014736 () Bool)

(assert (=> b!1491475 (=> res!1014736 e!835655)))

(assert (=> b!1491475 (= res!1014736 (or (and (= (select (arr!48091 a!2862) index!646) (select (store (arr!48091 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48091 a!2862) index!646) (select (arr!48091 a!2862) j!93))) (= (select (arr!48091 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491475 e!835657))

(declare-fun res!1014729 () Bool)

(assert (=> b!1491475 (=> (not res!1014729) (not e!835657))))

(assert (=> b!1491475 (= res!1014729 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49996 0))(
  ( (Unit!49997) )
))
(declare-fun lt!650251 () Unit!49996)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49996)

(assert (=> b!1491475 (= lt!650251 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126958 res!1014730) b!1491458))

(assert (= (and b!1491458 res!1014737) b!1491462))

(assert (= (and b!1491462 res!1014735) b!1491472))

(assert (= (and b!1491472 res!1014726) b!1491461))

(assert (= (and b!1491461 res!1014724) b!1491469))

(assert (= (and b!1491469 res!1014723) b!1491460))

(assert (= (and b!1491460 res!1014727) b!1491470))

(assert (= (and b!1491470 res!1014734) b!1491468))

(assert (= (and b!1491468 res!1014728) b!1491473))

(assert (= (and b!1491473 res!1014738) b!1491459))

(assert (= (and b!1491459 res!1014732) b!1491465))

(assert (= (and b!1491465 c!137897) b!1491467))

(assert (= (and b!1491465 (not c!137897)) b!1491471))

(assert (= (and b!1491465 res!1014733) b!1491464))

(assert (= (and b!1491464 res!1014731) b!1491475))

(assert (= (and b!1491475 res!1014729) b!1491466))

(assert (= (and b!1491466 res!1014725) b!1491463))

(assert (= (and b!1491475 (not res!1014736)) b!1491474))

(declare-fun m!1375635 () Bool)

(assert (=> b!1491461 m!1375635))

(declare-fun m!1375637 () Bool)

(assert (=> b!1491459 m!1375637))

(assert (=> b!1491459 m!1375637))

(declare-fun m!1375639 () Bool)

(assert (=> b!1491459 m!1375639))

(declare-fun m!1375641 () Bool)

(assert (=> b!1491459 m!1375641))

(declare-fun m!1375643 () Bool)

(assert (=> b!1491459 m!1375643))

(declare-fun m!1375645 () Bool)

(assert (=> b!1491473 m!1375645))

(assert (=> b!1491473 m!1375645))

(declare-fun m!1375647 () Bool)

(assert (=> b!1491473 m!1375647))

(declare-fun m!1375649 () Bool)

(assert (=> b!1491469 m!1375649))

(assert (=> b!1491472 m!1375645))

(assert (=> b!1491472 m!1375645))

(declare-fun m!1375651 () Bool)

(assert (=> b!1491472 m!1375651))

(assert (=> b!1491470 m!1375641))

(declare-fun m!1375653 () Bool)

(assert (=> b!1491470 m!1375653))

(declare-fun m!1375655 () Bool)

(assert (=> b!1491462 m!1375655))

(assert (=> b!1491462 m!1375655))

(declare-fun m!1375657 () Bool)

(assert (=> b!1491462 m!1375657))

(declare-fun m!1375659 () Bool)

(assert (=> b!1491474 m!1375659))

(assert (=> b!1491468 m!1375645))

(assert (=> b!1491468 m!1375645))

(declare-fun m!1375661 () Bool)

(assert (=> b!1491468 m!1375661))

(assert (=> b!1491468 m!1375661))

(assert (=> b!1491468 m!1375645))

(declare-fun m!1375663 () Bool)

(assert (=> b!1491468 m!1375663))

(assert (=> b!1491466 m!1375645))

(assert (=> b!1491466 m!1375645))

(declare-fun m!1375665 () Bool)

(assert (=> b!1491466 m!1375665))

(declare-fun m!1375667 () Bool)

(assert (=> b!1491475 m!1375667))

(assert (=> b!1491475 m!1375641))

(declare-fun m!1375669 () Bool)

(assert (=> b!1491475 m!1375669))

(declare-fun m!1375671 () Bool)

(assert (=> b!1491475 m!1375671))

(declare-fun m!1375673 () Bool)

(assert (=> b!1491475 m!1375673))

(assert (=> b!1491475 m!1375645))

(declare-fun m!1375675 () Bool)

(assert (=> b!1491463 m!1375675))

(assert (=> b!1491463 m!1375645))

(declare-fun m!1375677 () Bool)

(assert (=> b!1491471 m!1375677))

(declare-fun m!1375679 () Bool)

(assert (=> b!1491471 m!1375679))

(declare-fun m!1375681 () Bool)

(assert (=> b!1491467 m!1375681))

(declare-fun m!1375683 () Bool)

(assert (=> start!126958 m!1375683))

(declare-fun m!1375685 () Bool)

(assert (=> start!126958 m!1375685))

(push 1)

