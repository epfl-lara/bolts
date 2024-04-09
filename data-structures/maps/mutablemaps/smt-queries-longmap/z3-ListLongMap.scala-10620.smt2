; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124902 () Bool)

(assert start!124902)

(declare-fun b!1449657 () Bool)

(declare-fun res!981186 () Bool)

(declare-fun e!816383 () Bool)

(assert (=> b!1449657 (=> (not res!981186) (not e!816383))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449657 (= res!981186 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449658 () Bool)

(declare-fun res!981182 () Bool)

(declare-fun e!816381 () Bool)

(assert (=> b!1449658 (=> (not res!981182) (not e!816381))))

(declare-datatypes ((array!98267 0))(
  ( (array!98268 (arr!47417 (Array (_ BitVec 32) (_ BitVec 64))) (size!47968 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98267)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449658 (= res!981182 (validKeyInArray!0 (select (arr!47417 a!2862) i!1006)))))

(declare-fun b!1449659 () Bool)

(declare-fun e!816377 () Bool)

(assert (=> b!1449659 (= e!816383 (not e!816377))))

(declare-fun res!981178 () Bool)

(assert (=> b!1449659 (=> res!981178 e!816377)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1449659 (= res!981178 (or (and (= (select (arr!47417 a!2862) index!646) (select (store (arr!47417 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47417 a!2862) index!646) (select (arr!47417 a!2862) j!93))) (not (= (select (arr!47417 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47417 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816385 () Bool)

(assert (=> b!1449659 e!816385))

(declare-fun res!981176 () Bool)

(assert (=> b!1449659 (=> (not res!981176) (not e!816385))))

(declare-datatypes ((SeekEntryResult!11692 0))(
  ( (MissingZero!11692 (index!49159 (_ BitVec 32))) (Found!11692 (index!49160 (_ BitVec 32))) (Intermediate!11692 (undefined!12504 Bool) (index!49161 (_ BitVec 32)) (x!130824 (_ BitVec 32))) (Undefined!11692) (MissingVacant!11692 (index!49162 (_ BitVec 32))) )
))
(declare-fun lt!635957 () SeekEntryResult!11692)

(declare-fun lt!635959 () SeekEntryResult!11692)

(assert (=> b!1449659 (= res!981176 (and (= lt!635957 lt!635959) (or (= (select (arr!47417 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47417 a!2862) intermediateBeforeIndex!19) (select (arr!47417 a!2862) j!93)))))))

(assert (=> b!1449659 (= lt!635959 (Found!11692 j!93))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98267 (_ BitVec 32)) SeekEntryResult!11692)

(assert (=> b!1449659 (= lt!635957 (seekEntryOrOpen!0 (select (arr!47417 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98267 (_ BitVec 32)) Bool)

(assert (=> b!1449659 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48828 0))(
  ( (Unit!48829) )
))
(declare-fun lt!635955 () Unit!48828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98267 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48828)

(assert (=> b!1449659 (= lt!635955 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449660 () Bool)

(declare-fun res!981188 () Bool)

(assert (=> b!1449660 (=> (not res!981188) (not e!816383))))

(declare-fun e!816384 () Bool)

(assert (=> b!1449660 (= res!981188 e!816384)))

(declare-fun c!133754 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1449660 (= c!133754 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449661 () Bool)

(declare-fun e!816379 () Bool)

(declare-fun e!816382 () Bool)

(assert (=> b!1449661 (= e!816379 e!816382)))

(declare-fun res!981179 () Bool)

(assert (=> b!1449661 (=> (not res!981179) (not e!816382))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98267 (_ BitVec 32)) SeekEntryResult!11692)

(assert (=> b!1449661 (= res!981179 (= lt!635957 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47417 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449662 () Bool)

(declare-fun res!981185 () Bool)

(assert (=> b!1449662 (=> (not res!981185) (not e!816381))))

(assert (=> b!1449662 (= res!981185 (and (= (size!47968 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47968 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47968 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!981189 () Bool)

(assert (=> start!124902 (=> (not res!981189) (not e!816381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124902 (= res!981189 (validMask!0 mask!2687))))

(assert (=> start!124902 e!816381))

(assert (=> start!124902 true))

(declare-fun array_inv!36362 (array!98267) Bool)

(assert (=> start!124902 (array_inv!36362 a!2862)))

(declare-fun b!1449663 () Bool)

(declare-fun e!816380 () Bool)

(assert (=> b!1449663 (= e!816380 e!816383)))

(declare-fun res!981181 () Bool)

(assert (=> b!1449663 (=> (not res!981181) (not e!816383))))

(declare-fun lt!635954 () SeekEntryResult!11692)

(assert (=> b!1449663 (= res!981181 (= lt!635954 (Intermediate!11692 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635953 () array!98267)

(declare-fun lt!635958 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98267 (_ BitVec 32)) SeekEntryResult!11692)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449663 (= lt!635954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635958 mask!2687) lt!635958 lt!635953 mask!2687))))

(assert (=> b!1449663 (= lt!635958 (select (store (arr!47417 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449664 () Bool)

(assert (=> b!1449664 (= e!816382 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449665 () Bool)

(declare-fun res!981184 () Bool)

(assert (=> b!1449665 (=> (not res!981184) (not e!816380))))

(declare-fun lt!635956 () SeekEntryResult!11692)

(assert (=> b!1449665 (= res!981184 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47417 a!2862) j!93) a!2862 mask!2687) lt!635956))))

(declare-fun b!1449666 () Bool)

(declare-fun e!816386 () Bool)

(assert (=> b!1449666 (= e!816381 e!816386)))

(declare-fun res!981191 () Bool)

(assert (=> b!1449666 (=> (not res!981191) (not e!816386))))

(assert (=> b!1449666 (= res!981191 (= (select (store (arr!47417 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449666 (= lt!635953 (array!98268 (store (arr!47417 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47968 a!2862)))))

(declare-fun b!1449667 () Bool)

(assert (=> b!1449667 (= e!816386 e!816380)))

(declare-fun res!981187 () Bool)

(assert (=> b!1449667 (=> (not res!981187) (not e!816380))))

(assert (=> b!1449667 (= res!981187 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47417 a!2862) j!93) mask!2687) (select (arr!47417 a!2862) j!93) a!2862 mask!2687) lt!635956))))

(assert (=> b!1449667 (= lt!635956 (Intermediate!11692 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449668 () Bool)

(assert (=> b!1449668 (= e!816377 true)))

(assert (=> b!1449668 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635958 lt!635953 mask!2687) lt!635959)))

(declare-fun lt!635952 () Unit!48828)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98267 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48828)

(assert (=> b!1449668 (= lt!635952 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1449669 () Bool)

(declare-fun res!981192 () Bool)

(assert (=> b!1449669 (=> (not res!981192) (not e!816381))))

(assert (=> b!1449669 (= res!981192 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47968 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47968 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47968 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449670 () Bool)

(assert (=> b!1449670 (= e!816385 e!816379)))

(declare-fun res!981177 () Bool)

(assert (=> b!1449670 (=> res!981177 e!816379)))

(assert (=> b!1449670 (= res!981177 (or (and (= (select (arr!47417 a!2862) index!646) (select (store (arr!47417 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47417 a!2862) index!646) (select (arr!47417 a!2862) j!93))) (not (= (select (arr!47417 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449671 () Bool)

(declare-fun res!981180 () Bool)

(assert (=> b!1449671 (=> res!981180 e!816377)))

(assert (=> b!1449671 (= res!981180 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47417 a!2862) j!93) a!2862 mask!2687) lt!635959)))))

(declare-fun b!1449672 () Bool)

(declare-fun res!981175 () Bool)

(assert (=> b!1449672 (=> (not res!981175) (not e!816381))))

(assert (=> b!1449672 (= res!981175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449673 () Bool)

(declare-fun res!981183 () Bool)

(assert (=> b!1449673 (=> (not res!981183) (not e!816381))))

(assert (=> b!1449673 (= res!981183 (validKeyInArray!0 (select (arr!47417 a!2862) j!93)))))

(declare-fun b!1449674 () Bool)

(declare-fun res!981190 () Bool)

(assert (=> b!1449674 (=> (not res!981190) (not e!816381))))

(declare-datatypes ((List!34098 0))(
  ( (Nil!34095) (Cons!34094 (h!35444 (_ BitVec 64)) (t!48799 List!34098)) )
))
(declare-fun arrayNoDuplicates!0 (array!98267 (_ BitVec 32) List!34098) Bool)

(assert (=> b!1449674 (= res!981190 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34095))))

(declare-fun b!1449675 () Bool)

(assert (=> b!1449675 (= e!816384 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635958 lt!635953 mask!2687) (seekEntryOrOpen!0 lt!635958 lt!635953 mask!2687)))))

(declare-fun b!1449676 () Bool)

(assert (=> b!1449676 (= e!816384 (= lt!635954 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635958 lt!635953 mask!2687)))))

(assert (= (and start!124902 res!981189) b!1449662))

(assert (= (and b!1449662 res!981185) b!1449658))

(assert (= (and b!1449658 res!981182) b!1449673))

(assert (= (and b!1449673 res!981183) b!1449672))

(assert (= (and b!1449672 res!981175) b!1449674))

(assert (= (and b!1449674 res!981190) b!1449669))

(assert (= (and b!1449669 res!981192) b!1449666))

(assert (= (and b!1449666 res!981191) b!1449667))

(assert (= (and b!1449667 res!981187) b!1449665))

(assert (= (and b!1449665 res!981184) b!1449663))

(assert (= (and b!1449663 res!981181) b!1449660))

(assert (= (and b!1449660 c!133754) b!1449676))

(assert (= (and b!1449660 (not c!133754)) b!1449675))

(assert (= (and b!1449660 res!981188) b!1449657))

(assert (= (and b!1449657 res!981186) b!1449659))

(assert (= (and b!1449659 res!981176) b!1449670))

(assert (= (and b!1449670 (not res!981177)) b!1449661))

(assert (= (and b!1449661 res!981179) b!1449664))

(assert (= (and b!1449659 (not res!981178)) b!1449671))

(assert (= (and b!1449671 (not res!981180)) b!1449668))

(declare-fun m!1338407 () Bool)

(assert (=> b!1449668 m!1338407))

(declare-fun m!1338409 () Bool)

(assert (=> b!1449668 m!1338409))

(declare-fun m!1338411 () Bool)

(assert (=> b!1449671 m!1338411))

(assert (=> b!1449671 m!1338411))

(declare-fun m!1338413 () Bool)

(assert (=> b!1449671 m!1338413))

(declare-fun m!1338415 () Bool)

(assert (=> b!1449659 m!1338415))

(declare-fun m!1338417 () Bool)

(assert (=> b!1449659 m!1338417))

(declare-fun m!1338419 () Bool)

(assert (=> b!1449659 m!1338419))

(declare-fun m!1338421 () Bool)

(assert (=> b!1449659 m!1338421))

(declare-fun m!1338423 () Bool)

(assert (=> b!1449659 m!1338423))

(assert (=> b!1449659 m!1338411))

(declare-fun m!1338425 () Bool)

(assert (=> b!1449659 m!1338425))

(declare-fun m!1338427 () Bool)

(assert (=> b!1449659 m!1338427))

(assert (=> b!1449659 m!1338411))

(declare-fun m!1338429 () Bool)

(assert (=> b!1449658 m!1338429))

(assert (=> b!1449658 m!1338429))

(declare-fun m!1338431 () Bool)

(assert (=> b!1449658 m!1338431))

(assert (=> b!1449665 m!1338411))

(assert (=> b!1449665 m!1338411))

(declare-fun m!1338433 () Bool)

(assert (=> b!1449665 m!1338433))

(assert (=> b!1449666 m!1338417))

(declare-fun m!1338435 () Bool)

(assert (=> b!1449666 m!1338435))

(declare-fun m!1338437 () Bool)

(assert (=> b!1449674 m!1338437))

(assert (=> b!1449670 m!1338423))

(assert (=> b!1449670 m!1338417))

(assert (=> b!1449670 m!1338421))

(assert (=> b!1449670 m!1338411))

(assert (=> b!1449675 m!1338407))

(declare-fun m!1338439 () Bool)

(assert (=> b!1449675 m!1338439))

(assert (=> b!1449661 m!1338411))

(assert (=> b!1449661 m!1338411))

(declare-fun m!1338441 () Bool)

(assert (=> b!1449661 m!1338441))

(declare-fun m!1338443 () Bool)

(assert (=> start!124902 m!1338443))

(declare-fun m!1338445 () Bool)

(assert (=> start!124902 m!1338445))

(assert (=> b!1449667 m!1338411))

(assert (=> b!1449667 m!1338411))

(declare-fun m!1338447 () Bool)

(assert (=> b!1449667 m!1338447))

(assert (=> b!1449667 m!1338447))

(assert (=> b!1449667 m!1338411))

(declare-fun m!1338449 () Bool)

(assert (=> b!1449667 m!1338449))

(declare-fun m!1338451 () Bool)

(assert (=> b!1449672 m!1338451))

(declare-fun m!1338453 () Bool)

(assert (=> b!1449676 m!1338453))

(assert (=> b!1449673 m!1338411))

(assert (=> b!1449673 m!1338411))

(declare-fun m!1338455 () Bool)

(assert (=> b!1449673 m!1338455))

(declare-fun m!1338457 () Bool)

(assert (=> b!1449663 m!1338457))

(assert (=> b!1449663 m!1338457))

(declare-fun m!1338459 () Bool)

(assert (=> b!1449663 m!1338459))

(assert (=> b!1449663 m!1338417))

(declare-fun m!1338461 () Bool)

(assert (=> b!1449663 m!1338461))

(check-sat (not b!1449675) (not b!1449667) (not b!1449661) (not b!1449668) (not b!1449658) (not b!1449665) (not start!124902) (not b!1449663) (not b!1449676) (not b!1449673) (not b!1449671) (not b!1449659) (not b!1449674) (not b!1449672))
(check-sat)
