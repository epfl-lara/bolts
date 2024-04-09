; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125718 () Bool)

(assert start!125718)

(declare-fun b!1470503 () Bool)

(declare-fun res!998731 () Bool)

(declare-fun e!825494 () Bool)

(assert (=> b!1470503 (=> (not res!998731) (not e!825494))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12058 0))(
  ( (MissingZero!12058 (index!50623 (_ BitVec 32))) (Found!12058 (index!50624 (_ BitVec 32))) (Intermediate!12058 (undefined!12870 Bool) (index!50625 (_ BitVec 32)) (x!132207 (_ BitVec 32))) (Undefined!12058) (MissingVacant!12058 (index!50626 (_ BitVec 32))) )
))
(declare-fun lt!642912 () SeekEntryResult!12058)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99026 0))(
  ( (array!99027 (arr!47795 (Array (_ BitVec 32) (_ BitVec 64))) (size!48346 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99026)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99026 (_ BitVec 32)) SeekEntryResult!12058)

(assert (=> b!1470503 (= res!998731 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47795 a!2862) j!93) a!2862 mask!2687) lt!642912))))

(declare-fun b!1470504 () Bool)

(declare-fun e!825488 () Bool)

(assert (=> b!1470504 (= e!825494 e!825488)))

(declare-fun res!998724 () Bool)

(assert (=> b!1470504 (=> (not res!998724) (not e!825488))))

(declare-fun lt!642913 () SeekEntryResult!12058)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1470504 (= res!998724 (= lt!642913 (Intermediate!12058 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642910 () (_ BitVec 64))

(declare-fun lt!642909 () array!99026)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470504 (= lt!642913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642910 mask!2687) lt!642910 lt!642909 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1470504 (= lt!642910 (select (store (arr!47795 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!825492 () Bool)

(declare-fun b!1470505 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99026 (_ BitVec 32)) SeekEntryResult!12058)

(assert (=> b!1470505 (= e!825492 (= (seekEntryOrOpen!0 (select (arr!47795 a!2862) j!93) a!2862 mask!2687) (Found!12058 j!93)))))

(declare-fun b!1470506 () Bool)

(declare-fun res!998732 () Bool)

(declare-fun e!825490 () Bool)

(assert (=> b!1470506 (=> (not res!998732) (not e!825490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470506 (= res!998732 (validKeyInArray!0 (select (arr!47795 a!2862) j!93)))))

(declare-fun b!1470507 () Bool)

(declare-fun res!998729 () Bool)

(assert (=> b!1470507 (=> (not res!998729) (not e!825488))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1470507 (= res!998729 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470508 () Bool)

(declare-fun res!998727 () Bool)

(assert (=> b!1470508 (=> (not res!998727) (not e!825490))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1470508 (= res!998727 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48346 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48346 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48346 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470509 () Bool)

(declare-fun res!998726 () Bool)

(assert (=> b!1470509 (=> (not res!998726) (not e!825490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99026 (_ BitVec 32)) Bool)

(assert (=> b!1470509 (= res!998726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470510 () Bool)

(declare-fun res!998730 () Bool)

(assert (=> b!1470510 (=> (not res!998730) (not e!825490))))

(assert (=> b!1470510 (= res!998730 (validKeyInArray!0 (select (arr!47795 a!2862) i!1006)))))

(declare-fun b!1470511 () Bool)

(declare-fun e!825491 () Bool)

(assert (=> b!1470511 (= e!825490 e!825491)))

(declare-fun res!998736 () Bool)

(assert (=> b!1470511 (=> (not res!998736) (not e!825491))))

(assert (=> b!1470511 (= res!998736 (= (select (store (arr!47795 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470511 (= lt!642909 (array!99027 (store (arr!47795 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48346 a!2862)))))

(declare-fun b!1470512 () Bool)

(assert (=> b!1470512 (= e!825491 e!825494)))

(declare-fun res!998734 () Bool)

(assert (=> b!1470512 (=> (not res!998734) (not e!825494))))

(assert (=> b!1470512 (= res!998734 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47795 a!2862) j!93) mask!2687) (select (arr!47795 a!2862) j!93) a!2862 mask!2687) lt!642912))))

(assert (=> b!1470512 (= lt!642912 (Intermediate!12058 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!825493 () Bool)

(declare-fun b!1470513 () Bool)

(assert (=> b!1470513 (= e!825493 (= lt!642913 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642910 lt!642909 mask!2687)))))

(declare-fun res!998725 () Bool)

(assert (=> start!125718 (=> (not res!998725) (not e!825490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125718 (= res!998725 (validMask!0 mask!2687))))

(assert (=> start!125718 e!825490))

(assert (=> start!125718 true))

(declare-fun array_inv!36740 (array!99026) Bool)

(assert (=> start!125718 (array_inv!36740 a!2862)))

(declare-fun b!1470502 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99026 (_ BitVec 32)) SeekEntryResult!12058)

(assert (=> b!1470502 (= e!825493 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642910 lt!642909 mask!2687) (seekEntryOrOpen!0 lt!642910 lt!642909 mask!2687)))))

(declare-fun b!1470514 () Bool)

(declare-fun res!998723 () Bool)

(assert (=> b!1470514 (=> (not res!998723) (not e!825490))))

(declare-datatypes ((List!34476 0))(
  ( (Nil!34473) (Cons!34472 (h!35825 (_ BitVec 64)) (t!49177 List!34476)) )
))
(declare-fun arrayNoDuplicates!0 (array!99026 (_ BitVec 32) List!34476) Bool)

(assert (=> b!1470514 (= res!998723 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34473))))

(declare-fun b!1470515 () Bool)

(declare-fun res!998733 () Bool)

(assert (=> b!1470515 (=> (not res!998733) (not e!825488))))

(assert (=> b!1470515 (= res!998733 e!825493)))

(declare-fun c!135404 () Bool)

(assert (=> b!1470515 (= c!135404 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470516 () Bool)

(declare-fun res!998728 () Bool)

(assert (=> b!1470516 (=> (not res!998728) (not e!825490))))

(assert (=> b!1470516 (= res!998728 (and (= (size!48346 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48346 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48346 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470517 () Bool)

(assert (=> b!1470517 (= e!825488 (not true))))

(assert (=> b!1470517 e!825492))

(declare-fun res!998735 () Bool)

(assert (=> b!1470517 (=> (not res!998735) (not e!825492))))

(assert (=> b!1470517 (= res!998735 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49404 0))(
  ( (Unit!49405) )
))
(declare-fun lt!642911 () Unit!49404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99026 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49404)

(assert (=> b!1470517 (= lt!642911 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125718 res!998725) b!1470516))

(assert (= (and b!1470516 res!998728) b!1470510))

(assert (= (and b!1470510 res!998730) b!1470506))

(assert (= (and b!1470506 res!998732) b!1470509))

(assert (= (and b!1470509 res!998726) b!1470514))

(assert (= (and b!1470514 res!998723) b!1470508))

(assert (= (and b!1470508 res!998727) b!1470511))

(assert (= (and b!1470511 res!998736) b!1470512))

(assert (= (and b!1470512 res!998734) b!1470503))

(assert (= (and b!1470503 res!998731) b!1470504))

(assert (= (and b!1470504 res!998724) b!1470515))

(assert (= (and b!1470515 c!135404) b!1470513))

(assert (= (and b!1470515 (not c!135404)) b!1470502))

(assert (= (and b!1470515 res!998733) b!1470507))

(assert (= (and b!1470507 res!998729) b!1470517))

(assert (= (and b!1470517 res!998735) b!1470505))

(declare-fun m!1357547 () Bool)

(assert (=> b!1470514 m!1357547))

(declare-fun m!1357549 () Bool)

(assert (=> b!1470502 m!1357549))

(declare-fun m!1357551 () Bool)

(assert (=> b!1470502 m!1357551))

(declare-fun m!1357553 () Bool)

(assert (=> b!1470517 m!1357553))

(declare-fun m!1357555 () Bool)

(assert (=> b!1470517 m!1357555))

(declare-fun m!1357557 () Bool)

(assert (=> b!1470509 m!1357557))

(declare-fun m!1357559 () Bool)

(assert (=> b!1470511 m!1357559))

(declare-fun m!1357561 () Bool)

(assert (=> b!1470511 m!1357561))

(declare-fun m!1357563 () Bool)

(assert (=> b!1470510 m!1357563))

(assert (=> b!1470510 m!1357563))

(declare-fun m!1357565 () Bool)

(assert (=> b!1470510 m!1357565))

(declare-fun m!1357567 () Bool)

(assert (=> start!125718 m!1357567))

(declare-fun m!1357569 () Bool)

(assert (=> start!125718 m!1357569))

(declare-fun m!1357571 () Bool)

(assert (=> b!1470503 m!1357571))

(assert (=> b!1470503 m!1357571))

(declare-fun m!1357573 () Bool)

(assert (=> b!1470503 m!1357573))

(assert (=> b!1470506 m!1357571))

(assert (=> b!1470506 m!1357571))

(declare-fun m!1357575 () Bool)

(assert (=> b!1470506 m!1357575))

(assert (=> b!1470512 m!1357571))

(assert (=> b!1470512 m!1357571))

(declare-fun m!1357577 () Bool)

(assert (=> b!1470512 m!1357577))

(assert (=> b!1470512 m!1357577))

(assert (=> b!1470512 m!1357571))

(declare-fun m!1357579 () Bool)

(assert (=> b!1470512 m!1357579))

(assert (=> b!1470505 m!1357571))

(assert (=> b!1470505 m!1357571))

(declare-fun m!1357581 () Bool)

(assert (=> b!1470505 m!1357581))

(declare-fun m!1357583 () Bool)

(assert (=> b!1470504 m!1357583))

(assert (=> b!1470504 m!1357583))

(declare-fun m!1357585 () Bool)

(assert (=> b!1470504 m!1357585))

(assert (=> b!1470504 m!1357559))

(declare-fun m!1357587 () Bool)

(assert (=> b!1470504 m!1357587))

(declare-fun m!1357589 () Bool)

(assert (=> b!1470513 m!1357589))

(check-sat (not b!1470514) (not b!1470505) (not b!1470510) (not b!1470502) (not b!1470512) (not b!1470504) (not b!1470509) (not b!1470506) (not b!1470513) (not b!1470517) (not b!1470503) (not start!125718))
(check-sat)
