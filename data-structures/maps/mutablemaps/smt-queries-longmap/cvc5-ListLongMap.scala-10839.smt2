; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126922 () Bool)

(assert start!126922)

(declare-fun b!1490487 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!835226 () Bool)

(declare-datatypes ((array!99612 0))(
  ( (array!99613 (arr!48073 (Array (_ BitVec 32) (_ BitVec 64))) (size!48624 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99612)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1490487 (= e!835226 (or (= (select (arr!48073 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48073 a!2862) intermediateBeforeIndex!19) (select (arr!48073 a!2862) j!93))))))

(declare-fun b!1490488 () Bool)

(declare-fun res!1013873 () Bool)

(declare-fun e!835223 () Bool)

(assert (=> b!1490488 (=> (not res!1013873) (not e!835223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490488 (= res!1013873 (validKeyInArray!0 (select (arr!48073 a!2862) j!93)))))

(declare-fun b!1490489 () Bool)

(declare-fun res!1013864 () Bool)

(assert (=> b!1490489 (=> (not res!1013864) (not e!835223))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99612 (_ BitVec 32)) Bool)

(assert (=> b!1490489 (= res!1013864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490490 () Bool)

(declare-fun res!1013860 () Bool)

(declare-fun e!835225 () Bool)

(assert (=> b!1490490 (=> (not res!1013860) (not e!835225))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12336 0))(
  ( (MissingZero!12336 (index!51735 (_ BitVec 32))) (Found!12336 (index!51736 (_ BitVec 32))) (Intermediate!12336 (undefined!13148 Bool) (index!51737 (_ BitVec 32)) (x!133331 (_ BitVec 32))) (Undefined!12336) (MissingVacant!12336 (index!51738 (_ BitVec 32))) )
))
(declare-fun lt!649930 () SeekEntryResult!12336)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99612 (_ BitVec 32)) SeekEntryResult!12336)

(assert (=> b!1490490 (= res!1013860 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48073 a!2862) j!93) a!2862 mask!2687) lt!649930))))

(declare-fun b!1490491 () Bool)

(declare-fun res!1013865 () Bool)

(assert (=> b!1490491 (=> (not res!1013865) (not e!835223))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1490491 (= res!1013865 (and (= (size!48624 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48624 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48624 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490492 () Bool)

(declare-fun e!835224 () Bool)

(assert (=> b!1490492 (= e!835224 e!835225)))

(declare-fun res!1013869 () Bool)

(assert (=> b!1490492 (=> (not res!1013869) (not e!835225))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490492 (= res!1013869 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48073 a!2862) j!93) mask!2687) (select (arr!48073 a!2862) j!93) a!2862 mask!2687) lt!649930))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490492 (= lt!649930 (Intermediate!12336 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490493 () Bool)

(declare-fun e!835228 () Bool)

(assert (=> b!1490493 (= e!835225 e!835228)))

(declare-fun res!1013861 () Bool)

(assert (=> b!1490493 (=> (not res!1013861) (not e!835228))))

(declare-fun lt!649927 () SeekEntryResult!12336)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490493 (= res!1013861 (= lt!649927 (Intermediate!12336 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!649928 () array!99612)

(declare-fun lt!649926 () (_ BitVec 64))

(assert (=> b!1490493 (= lt!649927 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649926 mask!2687) lt!649926 lt!649928 mask!2687))))

(assert (=> b!1490493 (= lt!649926 (select (store (arr!48073 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1013874 () Bool)

(assert (=> start!126922 (=> (not res!1013874) (not e!835223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126922 (= res!1013874 (validMask!0 mask!2687))))

(assert (=> start!126922 e!835223))

(assert (=> start!126922 true))

(declare-fun array_inv!37018 (array!99612) Bool)

(assert (=> start!126922 (array_inv!37018 a!2862)))

(declare-fun b!1490486 () Bool)

(declare-fun res!1013871 () Bool)

(assert (=> b!1490486 (=> (not res!1013871) (not e!835223))))

(declare-datatypes ((List!34754 0))(
  ( (Nil!34751) (Cons!34750 (h!36133 (_ BitVec 64)) (t!49455 List!34754)) )
))
(declare-fun arrayNoDuplicates!0 (array!99612 (_ BitVec 32) List!34754) Bool)

(assert (=> b!1490486 (= res!1013871 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34751))))

(declare-fun b!1490494 () Bool)

(declare-fun res!1013867 () Bool)

(assert (=> b!1490494 (=> (not res!1013867) (not e!835223))))

(assert (=> b!1490494 (= res!1013867 (validKeyInArray!0 (select (arr!48073 a!2862) i!1006)))))

(declare-fun b!1490495 () Bool)

(declare-fun res!1013863 () Bool)

(assert (=> b!1490495 (=> (not res!1013863) (not e!835223))))

(assert (=> b!1490495 (= res!1013863 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48624 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48624 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48624 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490496 () Bool)

(declare-fun res!1013866 () Bool)

(assert (=> b!1490496 (=> (not res!1013866) (not e!835226))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99612 (_ BitVec 32)) SeekEntryResult!12336)

(assert (=> b!1490496 (= res!1013866 (= (seekEntryOrOpen!0 (select (arr!48073 a!2862) j!93) a!2862 mask!2687) (Found!12336 j!93)))))

(declare-fun b!1490497 () Bool)

(declare-fun res!1013872 () Bool)

(assert (=> b!1490497 (=> (not res!1013872) (not e!835228))))

(declare-fun e!835229 () Bool)

(assert (=> b!1490497 (= res!1013872 e!835229)))

(declare-fun c!137843 () Bool)

(assert (=> b!1490497 (= c!137843 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490498 () Bool)

(assert (=> b!1490498 (= e!835229 (= lt!649927 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649926 lt!649928 mask!2687)))))

(declare-fun b!1490499 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99612 (_ BitVec 32)) SeekEntryResult!12336)

(assert (=> b!1490499 (= e!835229 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649926 lt!649928 mask!2687) (seekEntryOrOpen!0 lt!649926 lt!649928 mask!2687)))))

(declare-fun b!1490500 () Bool)

(declare-fun e!835227 () Bool)

(assert (=> b!1490500 (= e!835227 true)))

(declare-fun lt!649929 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490500 (= lt!649929 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490501 () Bool)

(assert (=> b!1490501 (= e!835223 e!835224)))

(declare-fun res!1013868 () Bool)

(assert (=> b!1490501 (=> (not res!1013868) (not e!835224))))

(assert (=> b!1490501 (= res!1013868 (= (select (store (arr!48073 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490501 (= lt!649928 (array!99613 (store (arr!48073 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48624 a!2862)))))

(declare-fun b!1490502 () Bool)

(assert (=> b!1490502 (= e!835228 (not e!835227))))

(declare-fun res!1013870 () Bool)

(assert (=> b!1490502 (=> res!1013870 e!835227)))

(assert (=> b!1490502 (= res!1013870 (or (and (= (select (arr!48073 a!2862) index!646) (select (store (arr!48073 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48073 a!2862) index!646) (select (arr!48073 a!2862) j!93))) (= (select (arr!48073 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490502 e!835226))

(declare-fun res!1013859 () Bool)

(assert (=> b!1490502 (=> (not res!1013859) (not e!835226))))

(assert (=> b!1490502 (= res!1013859 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49960 0))(
  ( (Unit!49961) )
))
(declare-fun lt!649925 () Unit!49960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49960)

(assert (=> b!1490502 (= lt!649925 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490503 () Bool)

(declare-fun res!1013862 () Bool)

(assert (=> b!1490503 (=> (not res!1013862) (not e!835228))))

(assert (=> b!1490503 (= res!1013862 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126922 res!1013874) b!1490491))

(assert (= (and b!1490491 res!1013865) b!1490494))

(assert (= (and b!1490494 res!1013867) b!1490488))

(assert (= (and b!1490488 res!1013873) b!1490489))

(assert (= (and b!1490489 res!1013864) b!1490486))

(assert (= (and b!1490486 res!1013871) b!1490495))

(assert (= (and b!1490495 res!1013863) b!1490501))

(assert (= (and b!1490501 res!1013868) b!1490492))

(assert (= (and b!1490492 res!1013869) b!1490490))

(assert (= (and b!1490490 res!1013860) b!1490493))

(assert (= (and b!1490493 res!1013861) b!1490497))

(assert (= (and b!1490497 c!137843) b!1490498))

(assert (= (and b!1490497 (not c!137843)) b!1490499))

(assert (= (and b!1490497 res!1013872) b!1490503))

(assert (= (and b!1490503 res!1013862) b!1490502))

(assert (= (and b!1490502 res!1013859) b!1490496))

(assert (= (and b!1490496 res!1013866) b!1490487))

(assert (= (and b!1490502 (not res!1013870)) b!1490500))

(declare-fun m!1374699 () Bool)

(assert (=> b!1490488 m!1374699))

(assert (=> b!1490488 m!1374699))

(declare-fun m!1374701 () Bool)

(assert (=> b!1490488 m!1374701))

(declare-fun m!1374703 () Bool)

(assert (=> b!1490499 m!1374703))

(declare-fun m!1374705 () Bool)

(assert (=> b!1490499 m!1374705))

(declare-fun m!1374707 () Bool)

(assert (=> b!1490493 m!1374707))

(assert (=> b!1490493 m!1374707))

(declare-fun m!1374709 () Bool)

(assert (=> b!1490493 m!1374709))

(declare-fun m!1374711 () Bool)

(assert (=> b!1490493 m!1374711))

(declare-fun m!1374713 () Bool)

(assert (=> b!1490493 m!1374713))

(declare-fun m!1374715 () Bool)

(assert (=> b!1490486 m!1374715))

(declare-fun m!1374717 () Bool)

(assert (=> b!1490500 m!1374717))

(declare-fun m!1374719 () Bool)

(assert (=> b!1490494 m!1374719))

(assert (=> b!1490494 m!1374719))

(declare-fun m!1374721 () Bool)

(assert (=> b!1490494 m!1374721))

(declare-fun m!1374723 () Bool)

(assert (=> start!126922 m!1374723))

(declare-fun m!1374725 () Bool)

(assert (=> start!126922 m!1374725))

(declare-fun m!1374727 () Bool)

(assert (=> b!1490489 m!1374727))

(declare-fun m!1374729 () Bool)

(assert (=> b!1490487 m!1374729))

(assert (=> b!1490487 m!1374699))

(declare-fun m!1374731 () Bool)

(assert (=> b!1490498 m!1374731))

(declare-fun m!1374733 () Bool)

(assert (=> b!1490502 m!1374733))

(assert (=> b!1490502 m!1374711))

(declare-fun m!1374735 () Bool)

(assert (=> b!1490502 m!1374735))

(declare-fun m!1374737 () Bool)

(assert (=> b!1490502 m!1374737))

(declare-fun m!1374739 () Bool)

(assert (=> b!1490502 m!1374739))

(assert (=> b!1490502 m!1374699))

(assert (=> b!1490490 m!1374699))

(assert (=> b!1490490 m!1374699))

(declare-fun m!1374741 () Bool)

(assert (=> b!1490490 m!1374741))

(assert (=> b!1490496 m!1374699))

(assert (=> b!1490496 m!1374699))

(declare-fun m!1374743 () Bool)

(assert (=> b!1490496 m!1374743))

(assert (=> b!1490492 m!1374699))

(assert (=> b!1490492 m!1374699))

(declare-fun m!1374745 () Bool)

(assert (=> b!1490492 m!1374745))

(assert (=> b!1490492 m!1374745))

(assert (=> b!1490492 m!1374699))

(declare-fun m!1374747 () Bool)

(assert (=> b!1490492 m!1374747))

(assert (=> b!1490501 m!1374711))

(declare-fun m!1374749 () Bool)

(assert (=> b!1490501 m!1374749))

(push 1)

