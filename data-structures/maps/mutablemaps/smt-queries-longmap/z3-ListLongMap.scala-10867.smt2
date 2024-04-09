; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127422 () Bool)

(assert start!127422)

(declare-fun b!1497496 () Bool)

(declare-fun e!838619 () Bool)

(declare-fun e!838618 () Bool)

(assert (=> b!1497496 (= e!838619 e!838618)))

(declare-fun res!1018716 () Bool)

(assert (=> b!1497496 (=> (not res!1018716) (not e!838618))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99797 0))(
  ( (array!99798 (arr!48158 (Array (_ BitVec 32) (_ BitVec 64))) (size!48709 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99797)

(assert (=> b!1497496 (= res!1018716 (= (select (store (arr!48158 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!652440 () array!99797)

(assert (=> b!1497496 (= lt!652440 (array!99798 (store (arr!48158 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48709 a!2862)))))

(declare-fun b!1497498 () Bool)

(declare-fun res!1018725 () Bool)

(declare-fun e!838611 () Bool)

(assert (=> b!1497498 (=> res!1018725 e!838611)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1497498 (= res!1018725 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497499 () Bool)

(declare-fun e!838616 () Bool)

(declare-fun lt!652441 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!652443 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12421 0))(
  ( (MissingZero!12421 (index!52075 (_ BitVec 32))) (Found!12421 (index!52076 (_ BitVec 32))) (Intermediate!12421 (undefined!13233 Bool) (index!52077 (_ BitVec 32)) (x!133700 (_ BitVec 32))) (Undefined!12421) (MissingVacant!12421 (index!52078 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99797 (_ BitVec 32)) SeekEntryResult!12421)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99797 (_ BitVec 32)) SeekEntryResult!12421)

(assert (=> b!1497499 (= e!838616 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652441 intermediateAfterIndex!19 lt!652443 lt!652440 mask!2687) (seekEntryOrOpen!0 lt!652443 lt!652440 mask!2687))))))

(declare-fun b!1497500 () Bool)

(declare-fun res!1018728 () Bool)

(assert (=> b!1497500 (=> (not res!1018728) (not e!838619))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1497500 (= res!1018728 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48709 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48709 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48709 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1497501 () Bool)

(declare-fun res!1018731 () Bool)

(assert (=> b!1497501 (=> res!1018731 e!838611)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!652438 () SeekEntryResult!12421)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99797 (_ BitVec 32)) SeekEntryResult!12421)

(assert (=> b!1497501 (= res!1018731 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652441 (select (arr!48158 a!2862) j!93) a!2862 mask!2687) lt!652438)))))

(declare-fun b!1497502 () Bool)

(declare-fun res!1018723 () Bool)

(declare-fun e!838614 () Bool)

(assert (=> b!1497502 (=> (not res!1018723) (not e!838614))))

(assert (=> b!1497502 (= res!1018723 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1497503 () Bool)

(declare-fun res!1018720 () Bool)

(assert (=> b!1497503 (=> (not res!1018720) (not e!838619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497503 (= res!1018720 (validKeyInArray!0 (select (arr!48158 a!2862) j!93)))))

(declare-fun b!1497504 () Bool)

(declare-fun e!838615 () Bool)

(assert (=> b!1497504 (= e!838615 e!838614)))

(declare-fun res!1018727 () Bool)

(assert (=> b!1497504 (=> (not res!1018727) (not e!838614))))

(declare-fun lt!652439 () SeekEntryResult!12421)

(assert (=> b!1497504 (= res!1018727 (= lt!652439 (Intermediate!12421 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497504 (= lt!652439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652443 mask!2687) lt!652443 lt!652440 mask!2687))))

(assert (=> b!1497504 (= lt!652443 (select (store (arr!48158 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1497505 () Bool)

(declare-fun res!1018722 () Bool)

(assert (=> b!1497505 (=> (not res!1018722) (not e!838619))))

(declare-datatypes ((List!34839 0))(
  ( (Nil!34836) (Cons!34835 (h!36233 (_ BitVec 64)) (t!49540 List!34839)) )
))
(declare-fun arrayNoDuplicates!0 (array!99797 (_ BitVec 32) List!34839) Bool)

(assert (=> b!1497505 (= res!1018722 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34836))))

(declare-fun e!838612 () Bool)

(declare-fun b!1497506 () Bool)

(assert (=> b!1497506 (= e!838612 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652443 lt!652440 mask!2687) (seekEntryOrOpen!0 lt!652443 lt!652440 mask!2687)))))

(declare-fun b!1497507 () Bool)

(declare-fun res!1018726 () Bool)

(assert (=> b!1497507 (=> (not res!1018726) (not e!838615))))

(assert (=> b!1497507 (= res!1018726 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48158 a!2862) j!93) a!2862 mask!2687) lt!652438))))

(declare-fun b!1497508 () Bool)

(assert (=> b!1497508 (= e!838616 (not (= lt!652439 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652441 lt!652443 lt!652440 mask!2687))))))

(declare-fun b!1497509 () Bool)

(declare-fun e!838617 () Bool)

(assert (=> b!1497509 (= e!838617 e!838611)))

(declare-fun res!1018721 () Bool)

(assert (=> b!1497509 (=> res!1018721 e!838611)))

(assert (=> b!1497509 (= res!1018721 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652441 #b00000000000000000000000000000000) (bvsge lt!652441 (size!48709 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497509 (= lt!652441 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1018719 () Bool)

(assert (=> start!127422 (=> (not res!1018719) (not e!838619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127422 (= res!1018719 (validMask!0 mask!2687))))

(assert (=> start!127422 e!838619))

(assert (=> start!127422 true))

(declare-fun array_inv!37103 (array!99797) Bool)

(assert (=> start!127422 (array_inv!37103 a!2862)))

(declare-fun b!1497497 () Bool)

(assert (=> b!1497497 (= e!838618 e!838615)))

(declare-fun res!1018724 () Bool)

(assert (=> b!1497497 (=> (not res!1018724) (not e!838615))))

(assert (=> b!1497497 (= res!1018724 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48158 a!2862) j!93) mask!2687) (select (arr!48158 a!2862) j!93) a!2862 mask!2687) lt!652438))))

(assert (=> b!1497497 (= lt!652438 (Intermediate!12421 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1497510 () Bool)

(assert (=> b!1497510 (= e!838614 (not e!838617))))

(declare-fun res!1018730 () Bool)

(assert (=> b!1497510 (=> res!1018730 e!838617)))

(assert (=> b!1497510 (= res!1018730 (or (and (= (select (arr!48158 a!2862) index!646) (select (store (arr!48158 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48158 a!2862) index!646) (select (arr!48158 a!2862) j!93))) (= (select (arr!48158 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!652437 () SeekEntryResult!12421)

(assert (=> b!1497510 (and (= lt!652437 (Found!12421 j!93)) (or (= (select (arr!48158 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48158 a!2862) intermediateBeforeIndex!19) (select (arr!48158 a!2862) j!93))))))

(assert (=> b!1497510 (= lt!652437 (seekEntryOrOpen!0 (select (arr!48158 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99797 (_ BitVec 32)) Bool)

(assert (=> b!1497510 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!50130 0))(
  ( (Unit!50131) )
))
(declare-fun lt!652442 () Unit!50130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50130)

(assert (=> b!1497510 (= lt!652442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497511 () Bool)

(declare-fun res!1018718 () Bool)

(assert (=> b!1497511 (=> res!1018718 e!838611)))

(assert (=> b!1497511 (= res!1018718 e!838616)))

(declare-fun c!138928 () Bool)

(assert (=> b!1497511 (= c!138928 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1497512 () Bool)

(assert (=> b!1497512 (= e!838612 (= lt!652439 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652443 lt!652440 mask!2687)))))

(declare-fun b!1497513 () Bool)

(declare-fun res!1018717 () Bool)

(assert (=> b!1497513 (=> (not res!1018717) (not e!838619))))

(assert (=> b!1497513 (= res!1018717 (validKeyInArray!0 (select (arr!48158 a!2862) i!1006)))))

(declare-fun b!1497514 () Bool)

(assert (=> b!1497514 (= e!838611 true)))

(assert (=> b!1497514 (= lt!652437 (seekEntryOrOpen!0 lt!652443 lt!652440 mask!2687))))

(declare-fun lt!652444 () Unit!50130)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50130)

(assert (=> b!1497514 (= lt!652444 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652441 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1497515 () Bool)

(declare-fun res!1018729 () Bool)

(assert (=> b!1497515 (=> (not res!1018729) (not e!838619))))

(assert (=> b!1497515 (= res!1018729 (and (= (size!48709 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48709 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48709 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1497516 () Bool)

(declare-fun res!1018714 () Bool)

(assert (=> b!1497516 (=> (not res!1018714) (not e!838619))))

(assert (=> b!1497516 (= res!1018714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1497517 () Bool)

(declare-fun res!1018715 () Bool)

(assert (=> b!1497517 (=> (not res!1018715) (not e!838614))))

(assert (=> b!1497517 (= res!1018715 e!838612)))

(declare-fun c!138929 () Bool)

(assert (=> b!1497517 (= c!138929 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!127422 res!1018719) b!1497515))

(assert (= (and b!1497515 res!1018729) b!1497513))

(assert (= (and b!1497513 res!1018717) b!1497503))

(assert (= (and b!1497503 res!1018720) b!1497516))

(assert (= (and b!1497516 res!1018714) b!1497505))

(assert (= (and b!1497505 res!1018722) b!1497500))

(assert (= (and b!1497500 res!1018728) b!1497496))

(assert (= (and b!1497496 res!1018716) b!1497497))

(assert (= (and b!1497497 res!1018724) b!1497507))

(assert (= (and b!1497507 res!1018726) b!1497504))

(assert (= (and b!1497504 res!1018727) b!1497517))

(assert (= (and b!1497517 c!138929) b!1497512))

(assert (= (and b!1497517 (not c!138929)) b!1497506))

(assert (= (and b!1497517 res!1018715) b!1497502))

(assert (= (and b!1497502 res!1018723) b!1497510))

(assert (= (and b!1497510 (not res!1018730)) b!1497509))

(assert (= (and b!1497509 (not res!1018721)) b!1497501))

(assert (= (and b!1497501 (not res!1018731)) b!1497511))

(assert (= (and b!1497511 c!138928) b!1497508))

(assert (= (and b!1497511 (not c!138928)) b!1497499))

(assert (= (and b!1497511 (not res!1018718)) b!1497498))

(assert (= (and b!1497498 (not res!1018725)) b!1497514))

(declare-fun m!1380621 () Bool)

(assert (=> b!1497499 m!1380621))

(declare-fun m!1380623 () Bool)

(assert (=> b!1497499 m!1380623))

(declare-fun m!1380625 () Bool)

(assert (=> b!1497516 m!1380625))

(declare-fun m!1380627 () Bool)

(assert (=> b!1497504 m!1380627))

(assert (=> b!1497504 m!1380627))

(declare-fun m!1380629 () Bool)

(assert (=> b!1497504 m!1380629))

(declare-fun m!1380631 () Bool)

(assert (=> b!1497504 m!1380631))

(declare-fun m!1380633 () Bool)

(assert (=> b!1497504 m!1380633))

(declare-fun m!1380635 () Bool)

(assert (=> b!1497510 m!1380635))

(assert (=> b!1497510 m!1380631))

(declare-fun m!1380637 () Bool)

(assert (=> b!1497510 m!1380637))

(declare-fun m!1380639 () Bool)

(assert (=> b!1497510 m!1380639))

(declare-fun m!1380641 () Bool)

(assert (=> b!1497510 m!1380641))

(declare-fun m!1380643 () Bool)

(assert (=> b!1497510 m!1380643))

(declare-fun m!1380645 () Bool)

(assert (=> b!1497510 m!1380645))

(declare-fun m!1380647 () Bool)

(assert (=> b!1497510 m!1380647))

(assert (=> b!1497510 m!1380643))

(declare-fun m!1380649 () Bool)

(assert (=> b!1497508 m!1380649))

(assert (=> b!1497503 m!1380643))

(assert (=> b!1497503 m!1380643))

(declare-fun m!1380651 () Bool)

(assert (=> b!1497503 m!1380651))

(assert (=> b!1497496 m!1380631))

(declare-fun m!1380653 () Bool)

(assert (=> b!1497496 m!1380653))

(declare-fun m!1380655 () Bool)

(assert (=> b!1497505 m!1380655))

(declare-fun m!1380657 () Bool)

(assert (=> b!1497513 m!1380657))

(assert (=> b!1497513 m!1380657))

(declare-fun m!1380659 () Bool)

(assert (=> b!1497513 m!1380659))

(assert (=> b!1497507 m!1380643))

(assert (=> b!1497507 m!1380643))

(declare-fun m!1380661 () Bool)

(assert (=> b!1497507 m!1380661))

(assert (=> b!1497501 m!1380643))

(assert (=> b!1497501 m!1380643))

(declare-fun m!1380663 () Bool)

(assert (=> b!1497501 m!1380663))

(declare-fun m!1380665 () Bool)

(assert (=> start!127422 m!1380665))

(declare-fun m!1380667 () Bool)

(assert (=> start!127422 m!1380667))

(assert (=> b!1497497 m!1380643))

(assert (=> b!1497497 m!1380643))

(declare-fun m!1380669 () Bool)

(assert (=> b!1497497 m!1380669))

(assert (=> b!1497497 m!1380669))

(assert (=> b!1497497 m!1380643))

(declare-fun m!1380671 () Bool)

(assert (=> b!1497497 m!1380671))

(assert (=> b!1497514 m!1380623))

(declare-fun m!1380673 () Bool)

(assert (=> b!1497514 m!1380673))

(declare-fun m!1380675 () Bool)

(assert (=> b!1497512 m!1380675))

(declare-fun m!1380677 () Bool)

(assert (=> b!1497506 m!1380677))

(assert (=> b!1497506 m!1380623))

(declare-fun m!1380679 () Bool)

(assert (=> b!1497509 m!1380679))

(check-sat (not b!1497505) (not b!1497513) (not b!1497514) (not b!1497508) (not b!1497497) (not b!1497512) (not b!1497510) (not b!1497506) (not b!1497503) (not b!1497509) (not b!1497516) (not b!1497499) (not b!1497504) (not b!1497507) (not start!127422) (not b!1497501))
