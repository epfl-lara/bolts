; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127392 () Bool)

(assert start!127392)

(declare-fun b!1496502 () Bool)

(declare-fun e!838210 () Bool)

(declare-fun e!838205 () Bool)

(assert (=> b!1496502 (= e!838210 e!838205)))

(declare-fun res!1017918 () Bool)

(assert (=> b!1496502 (=> (not res!1017918) (not e!838205))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99767 0))(
  ( (array!99768 (arr!48143 (Array (_ BitVec 32) (_ BitVec 64))) (size!48694 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99767)

(assert (=> b!1496502 (= res!1017918 (= (select (store (arr!48143 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!652086 () array!99767)

(assert (=> b!1496502 (= lt!652086 (array!99768 (store (arr!48143 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48694 a!2862)))))

(declare-fun e!838209 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1496503 () Bool)

(assert (=> b!1496503 (= e!838209 (or (= (select (arr!48143 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48143 a!2862) intermediateBeforeIndex!19) (select (arr!48143 a!2862) j!93))))))

(declare-fun b!1496504 () Bool)

(declare-fun res!1017917 () Bool)

(assert (=> b!1496504 (=> (not res!1017917) (not e!838209))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12406 0))(
  ( (MissingZero!12406 (index!52015 (_ BitVec 32))) (Found!12406 (index!52016 (_ BitVec 32))) (Intermediate!12406 (undefined!13218 Bool) (index!52017 (_ BitVec 32)) (x!133645 (_ BitVec 32))) (Undefined!12406) (MissingVacant!12406 (index!52018 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99767 (_ BitVec 32)) SeekEntryResult!12406)

(assert (=> b!1496504 (= res!1017917 (= (seekEntryOrOpen!0 (select (arr!48143 a!2862) j!93) a!2862 mask!2687) (Found!12406 j!93)))))

(declare-fun b!1496505 () Bool)

(declare-fun res!1017913 () Bool)

(declare-fun e!838204 () Bool)

(assert (=> b!1496505 (=> (not res!1017913) (not e!838204))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!652087 () SeekEntryResult!12406)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99767 (_ BitVec 32)) SeekEntryResult!12406)

(assert (=> b!1496505 (= res!1017913 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48143 a!2862) j!93) a!2862 mask!2687) lt!652087))))

(declare-fun b!1496506 () Bool)

(declare-fun e!838211 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1496506 (= e!838211 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!665)) (bvsub #b01111111111111111111111111111110 x!665))))))

(declare-fun lt!652085 () (_ BitVec 64))

(declare-fun lt!652090 () (_ BitVec 32))

(declare-fun e!838208 () Bool)

(declare-fun lt!652088 () SeekEntryResult!12406)

(declare-fun b!1496507 () Bool)

(assert (=> b!1496507 (= e!838208 (not (= lt!652088 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652090 lt!652085 lt!652086 mask!2687))))))

(declare-fun b!1496508 () Bool)

(declare-fun res!1017911 () Bool)

(assert (=> b!1496508 (=> (not res!1017911) (not e!838210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496508 (= res!1017911 (validKeyInArray!0 (select (arr!48143 a!2862) i!1006)))))

(declare-fun res!1017905 () Bool)

(assert (=> start!127392 (=> (not res!1017905) (not e!838210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127392 (= res!1017905 (validMask!0 mask!2687))))

(assert (=> start!127392 e!838210))

(assert (=> start!127392 true))

(declare-fun array_inv!37088 (array!99767) Bool)

(assert (=> start!127392 (array_inv!37088 a!2862)))

(declare-fun b!1496509 () Bool)

(declare-fun res!1017900 () Bool)

(assert (=> b!1496509 (=> res!1017900 e!838211)))

(assert (=> b!1496509 (= res!1017900 e!838208)))

(declare-fun c!138839 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1496509 (= c!138839 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496510 () Bool)

(declare-fun res!1017906 () Bool)

(assert (=> b!1496510 (=> (not res!1017906) (not e!838210))))

(assert (=> b!1496510 (= res!1017906 (validKeyInArray!0 (select (arr!48143 a!2862) j!93)))))

(declare-fun b!1496511 () Bool)

(declare-fun res!1017914 () Bool)

(assert (=> b!1496511 (=> (not res!1017914) (not e!838210))))

(assert (=> b!1496511 (= res!1017914 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48694 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48694 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48694 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496512 () Bool)

(declare-fun res!1017910 () Bool)

(assert (=> b!1496512 (=> res!1017910 e!838211)))

(assert (=> b!1496512 (= res!1017910 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652090 (select (arr!48143 a!2862) j!93) a!2862 mask!2687) lt!652087)))))

(declare-fun b!1496513 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99767 (_ BitVec 32)) SeekEntryResult!12406)

(assert (=> b!1496513 (= e!838208 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652090 intermediateAfterIndex!19 lt!652085 lt!652086 mask!2687) (seekEntryOrOpen!0 lt!652085 lt!652086 mask!2687))))))

(declare-fun e!838203 () Bool)

(declare-fun b!1496514 () Bool)

(assert (=> b!1496514 (= e!838203 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652085 lt!652086 mask!2687) (seekEntryOrOpen!0 lt!652085 lt!652086 mask!2687)))))

(declare-fun b!1496515 () Bool)

(assert (=> b!1496515 (= e!838205 e!838204)))

(declare-fun res!1017912 () Bool)

(assert (=> b!1496515 (=> (not res!1017912) (not e!838204))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496515 (= res!1017912 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48143 a!2862) j!93) mask!2687) (select (arr!48143 a!2862) j!93) a!2862 mask!2687) lt!652087))))

(assert (=> b!1496515 (= lt!652087 (Intermediate!12406 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496516 () Bool)

(declare-fun e!838202 () Bool)

(declare-fun e!838206 () Bool)

(assert (=> b!1496516 (= e!838202 (not e!838206))))

(declare-fun res!1017908 () Bool)

(assert (=> b!1496516 (=> res!1017908 e!838206)))

(assert (=> b!1496516 (= res!1017908 (or (and (= (select (arr!48143 a!2862) index!646) (select (store (arr!48143 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48143 a!2862) index!646) (select (arr!48143 a!2862) j!93))) (= (select (arr!48143 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1496516 e!838209))

(declare-fun res!1017902 () Bool)

(assert (=> b!1496516 (=> (not res!1017902) (not e!838209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99767 (_ BitVec 32)) Bool)

(assert (=> b!1496516 (= res!1017902 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50100 0))(
  ( (Unit!50101) )
))
(declare-fun lt!652089 () Unit!50100)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50100)

(assert (=> b!1496516 (= lt!652089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496517 () Bool)

(assert (=> b!1496517 (= e!838204 e!838202)))

(declare-fun res!1017909 () Bool)

(assert (=> b!1496517 (=> (not res!1017909) (not e!838202))))

(assert (=> b!1496517 (= res!1017909 (= lt!652088 (Intermediate!12406 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1496517 (= lt!652088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652085 mask!2687) lt!652085 lt!652086 mask!2687))))

(assert (=> b!1496517 (= lt!652085 (select (store (arr!48143 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496518 () Bool)

(declare-fun res!1017907 () Bool)

(assert (=> b!1496518 (=> (not res!1017907) (not e!838202))))

(assert (=> b!1496518 (= res!1017907 e!838203)))

(declare-fun c!138838 () Bool)

(assert (=> b!1496518 (= c!138838 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496519 () Bool)

(declare-fun res!1017904 () Bool)

(assert (=> b!1496519 (=> (not res!1017904) (not e!838210))))

(assert (=> b!1496519 (= res!1017904 (and (= (size!48694 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48694 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48694 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496520 () Bool)

(assert (=> b!1496520 (= e!838203 (= lt!652088 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652085 lt!652086 mask!2687)))))

(declare-fun b!1496521 () Bool)

(assert (=> b!1496521 (= e!838206 e!838211)))

(declare-fun res!1017901 () Bool)

(assert (=> b!1496521 (=> res!1017901 e!838211)))

(assert (=> b!1496521 (= res!1017901 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652090 #b00000000000000000000000000000000) (bvsge lt!652090 (size!48694 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496521 (= lt!652090 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496522 () Bool)

(declare-fun res!1017916 () Bool)

(assert (=> b!1496522 (=> (not res!1017916) (not e!838210))))

(assert (=> b!1496522 (= res!1017916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496523 () Bool)

(declare-fun res!1017903 () Bool)

(assert (=> b!1496523 (=> (not res!1017903) (not e!838202))))

(assert (=> b!1496523 (= res!1017903 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496524 () Bool)

(declare-fun res!1017915 () Bool)

(assert (=> b!1496524 (=> (not res!1017915) (not e!838210))))

(declare-datatypes ((List!34824 0))(
  ( (Nil!34821) (Cons!34820 (h!36218 (_ BitVec 64)) (t!49525 List!34824)) )
))
(declare-fun arrayNoDuplicates!0 (array!99767 (_ BitVec 32) List!34824) Bool)

(assert (=> b!1496524 (= res!1017915 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34821))))

(assert (= (and start!127392 res!1017905) b!1496519))

(assert (= (and b!1496519 res!1017904) b!1496508))

(assert (= (and b!1496508 res!1017911) b!1496510))

(assert (= (and b!1496510 res!1017906) b!1496522))

(assert (= (and b!1496522 res!1017916) b!1496524))

(assert (= (and b!1496524 res!1017915) b!1496511))

(assert (= (and b!1496511 res!1017914) b!1496502))

(assert (= (and b!1496502 res!1017918) b!1496515))

(assert (= (and b!1496515 res!1017912) b!1496505))

(assert (= (and b!1496505 res!1017913) b!1496517))

(assert (= (and b!1496517 res!1017909) b!1496518))

(assert (= (and b!1496518 c!138838) b!1496520))

(assert (= (and b!1496518 (not c!138838)) b!1496514))

(assert (= (and b!1496518 res!1017907) b!1496523))

(assert (= (and b!1496523 res!1017903) b!1496516))

(assert (= (and b!1496516 res!1017902) b!1496504))

(assert (= (and b!1496504 res!1017917) b!1496503))

(assert (= (and b!1496516 (not res!1017908)) b!1496521))

(assert (= (and b!1496521 (not res!1017901)) b!1496512))

(assert (= (and b!1496512 (not res!1017910)) b!1496509))

(assert (= (and b!1496509 c!138839) b!1496507))

(assert (= (and b!1496509 (not c!138839)) b!1496513))

(assert (= (and b!1496509 (not res!1017900)) b!1496506))

(declare-fun m!1379725 () Bool)

(assert (=> b!1496521 m!1379725))

(declare-fun m!1379727 () Bool)

(assert (=> b!1496516 m!1379727))

(declare-fun m!1379729 () Bool)

(assert (=> b!1496516 m!1379729))

(declare-fun m!1379731 () Bool)

(assert (=> b!1496516 m!1379731))

(declare-fun m!1379733 () Bool)

(assert (=> b!1496516 m!1379733))

(declare-fun m!1379735 () Bool)

(assert (=> b!1496516 m!1379735))

(declare-fun m!1379737 () Bool)

(assert (=> b!1496516 m!1379737))

(declare-fun m!1379739 () Bool)

(assert (=> b!1496517 m!1379739))

(assert (=> b!1496517 m!1379739))

(declare-fun m!1379741 () Bool)

(assert (=> b!1496517 m!1379741))

(assert (=> b!1496517 m!1379729))

(declare-fun m!1379743 () Bool)

(assert (=> b!1496517 m!1379743))

(declare-fun m!1379745 () Bool)

(assert (=> b!1496514 m!1379745))

(declare-fun m!1379747 () Bool)

(assert (=> b!1496514 m!1379747))

(declare-fun m!1379749 () Bool)

(assert (=> b!1496522 m!1379749))

(declare-fun m!1379751 () Bool)

(assert (=> b!1496507 m!1379751))

(assert (=> b!1496510 m!1379737))

(assert (=> b!1496510 m!1379737))

(declare-fun m!1379753 () Bool)

(assert (=> b!1496510 m!1379753))

(assert (=> b!1496512 m!1379737))

(assert (=> b!1496512 m!1379737))

(declare-fun m!1379755 () Bool)

(assert (=> b!1496512 m!1379755))

(declare-fun m!1379757 () Bool)

(assert (=> b!1496513 m!1379757))

(assert (=> b!1496513 m!1379747))

(assert (=> b!1496504 m!1379737))

(assert (=> b!1496504 m!1379737))

(declare-fun m!1379759 () Bool)

(assert (=> b!1496504 m!1379759))

(assert (=> b!1496502 m!1379729))

(declare-fun m!1379761 () Bool)

(assert (=> b!1496502 m!1379761))

(assert (=> b!1496505 m!1379737))

(assert (=> b!1496505 m!1379737))

(declare-fun m!1379763 () Bool)

(assert (=> b!1496505 m!1379763))

(declare-fun m!1379765 () Bool)

(assert (=> b!1496508 m!1379765))

(assert (=> b!1496508 m!1379765))

(declare-fun m!1379767 () Bool)

(assert (=> b!1496508 m!1379767))

(declare-fun m!1379769 () Bool)

(assert (=> b!1496524 m!1379769))

(assert (=> b!1496515 m!1379737))

(assert (=> b!1496515 m!1379737))

(declare-fun m!1379771 () Bool)

(assert (=> b!1496515 m!1379771))

(assert (=> b!1496515 m!1379771))

(assert (=> b!1496515 m!1379737))

(declare-fun m!1379773 () Bool)

(assert (=> b!1496515 m!1379773))

(declare-fun m!1379775 () Bool)

(assert (=> b!1496520 m!1379775))

(declare-fun m!1379777 () Bool)

(assert (=> start!127392 m!1379777))

(declare-fun m!1379779 () Bool)

(assert (=> start!127392 m!1379779))

(declare-fun m!1379781 () Bool)

(assert (=> b!1496503 m!1379781))

(assert (=> b!1496503 m!1379737))

(check-sat (not b!1496522) (not start!127392) (not b!1496507) (not b!1496510) (not b!1496520) (not b!1496521) (not b!1496512) (not b!1496505) (not b!1496513) (not b!1496508) (not b!1496504) (not b!1496516) (not b!1496514) (not b!1496517) (not b!1496524) (not b!1496515))
(check-sat)
