; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124868 () Bool)

(assert start!124868)

(declare-fun b!1448683 () Bool)

(declare-fun res!980315 () Bool)

(declare-fun e!815869 () Bool)

(assert (=> b!1448683 (=> (not res!980315) (not e!815869))))

(declare-fun e!815876 () Bool)

(assert (=> b!1448683 (= res!980315 e!815876)))

(declare-fun c!133703 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448683 (= c!133703 (bvsle x!665 intermediateAfterX!19))))

(declare-datatypes ((array!98233 0))(
  ( (array!98234 (arr!47400 (Array (_ BitVec 32) (_ BitVec 64))) (size!47951 (_ BitVec 32))) )
))
(declare-fun lt!635592 () array!98233)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!635594 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1448684 () Bool)

(declare-datatypes ((SeekEntryResult!11675 0))(
  ( (MissingZero!11675 (index!49091 (_ BitVec 32))) (Found!11675 (index!49092 (_ BitVec 32))) (Intermediate!11675 (undefined!12487 Bool) (index!49093 (_ BitVec 32)) (x!130759 (_ BitVec 32))) (Undefined!11675) (MissingVacant!11675 (index!49094 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98233 (_ BitVec 32)) SeekEntryResult!11675)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98233 (_ BitVec 32)) SeekEntryResult!11675)

(assert (=> b!1448684 (= e!815876 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635594 lt!635592 mask!2687) (seekEntryOrOpen!0 lt!635594 lt!635592 mask!2687)))))

(declare-fun b!1448685 () Bool)

(declare-fun e!815868 () Bool)

(declare-fun e!815875 () Bool)

(assert (=> b!1448685 (= e!815868 e!815875)))

(declare-fun res!980312 () Bool)

(assert (=> b!1448685 (=> (not res!980312) (not e!815875))))

(declare-fun a!2862 () array!98233)

(declare-fun lt!635590 () SeekEntryResult!11675)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1448685 (= res!980312 (= lt!635590 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47400 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448686 () Bool)

(declare-fun e!815871 () Bool)

(declare-fun e!815870 () Bool)

(assert (=> b!1448686 (= e!815871 e!815870)))

(declare-fun res!980319 () Bool)

(assert (=> b!1448686 (=> (not res!980319) (not e!815870))))

(declare-fun lt!635595 () SeekEntryResult!11675)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98233 (_ BitVec 32)) SeekEntryResult!11675)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448686 (= res!980319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47400 a!2862) j!93) mask!2687) (select (arr!47400 a!2862) j!93) a!2862 mask!2687) lt!635595))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448686 (= lt!635595 (Intermediate!11675 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448687 () Bool)

(declare-fun res!980307 () Bool)

(assert (=> b!1448687 (=> (not res!980307) (not e!815869))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1448687 (= res!980307 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448689 () Bool)

(declare-fun lt!635593 () SeekEntryResult!11675)

(assert (=> b!1448689 (= e!815876 (= lt!635593 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635594 lt!635592 mask!2687)))))

(declare-fun b!1448690 () Bool)

(declare-fun res!980303 () Bool)

(declare-fun e!815874 () Bool)

(assert (=> b!1448690 (=> (not res!980303) (not e!815874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448690 (= res!980303 (validKeyInArray!0 (select (arr!47400 a!2862) i!1006)))))

(declare-fun b!1448691 () Bool)

(assert (=> b!1448691 (= e!815870 e!815869)))

(declare-fun res!980305 () Bool)

(assert (=> b!1448691 (=> (not res!980305) (not e!815869))))

(assert (=> b!1448691 (= res!980305 (= lt!635593 (Intermediate!11675 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1448691 (= lt!635593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635594 mask!2687) lt!635594 lt!635592 mask!2687))))

(assert (=> b!1448691 (= lt!635594 (select (store (arr!47400 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448692 () Bool)

(declare-fun res!980310 () Bool)

(assert (=> b!1448692 (=> (not res!980310) (not e!815874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98233 (_ BitVec 32)) Bool)

(assert (=> b!1448692 (= res!980310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448693 () Bool)

(declare-fun res!980306 () Bool)

(assert (=> b!1448693 (=> (not res!980306) (not e!815874))))

(declare-datatypes ((List!34081 0))(
  ( (Nil!34078) (Cons!34077 (h!35427 (_ BitVec 64)) (t!48782 List!34081)) )
))
(declare-fun arrayNoDuplicates!0 (array!98233 (_ BitVec 32) List!34081) Bool)

(assert (=> b!1448693 (= res!980306 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34078))))

(declare-fun b!1448694 () Bool)

(assert (=> b!1448694 (= e!815875 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448695 () Bool)

(assert (=> b!1448695 (= e!815874 e!815871)))

(declare-fun res!980317 () Bool)

(assert (=> b!1448695 (=> (not res!980317) (not e!815871))))

(assert (=> b!1448695 (= res!980317 (= (select (store (arr!47400 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448695 (= lt!635592 (array!98234 (store (arr!47400 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47951 a!2862)))))

(declare-fun b!1448696 () Bool)

(declare-fun res!980308 () Bool)

(assert (=> b!1448696 (=> (not res!980308) (not e!815874))))

(assert (=> b!1448696 (= res!980308 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47951 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47951 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47951 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448697 () Bool)

(declare-fun e!815873 () Bool)

(assert (=> b!1448697 (= e!815873 e!815868)))

(declare-fun res!980314 () Bool)

(assert (=> b!1448697 (=> res!980314 e!815868)))

(assert (=> b!1448697 (= res!980314 (or (and (= (select (arr!47400 a!2862) index!646) (select (store (arr!47400 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47400 a!2862) index!646) (select (arr!47400 a!2862) j!93))) (not (= (select (arr!47400 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448698 () Bool)

(declare-fun e!815867 () Bool)

(assert (=> b!1448698 (= e!815869 (not e!815867))))

(declare-fun res!980318 () Bool)

(assert (=> b!1448698 (=> res!980318 e!815867)))

(assert (=> b!1448698 (= res!980318 (or (and (= (select (arr!47400 a!2862) index!646) (select (store (arr!47400 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47400 a!2862) index!646) (select (arr!47400 a!2862) j!93))) (not (= (select (arr!47400 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47400 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1448698 e!815873))

(declare-fun res!980311 () Bool)

(assert (=> b!1448698 (=> (not res!980311) (not e!815873))))

(assert (=> b!1448698 (= res!980311 (and (= lt!635590 (Found!11675 j!93)) (or (= (select (arr!47400 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47400 a!2862) intermediateBeforeIndex!19) (select (arr!47400 a!2862) j!93)))))))

(assert (=> b!1448698 (= lt!635590 (seekEntryOrOpen!0 (select (arr!47400 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448698 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48794 0))(
  ( (Unit!48795) )
))
(declare-fun lt!635596 () Unit!48794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98233 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48794)

(assert (=> b!1448698 (= lt!635596 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448699 () Bool)

(declare-fun res!980309 () Bool)

(assert (=> b!1448699 (=> (not res!980309) (not e!815874))))

(assert (=> b!1448699 (= res!980309 (validKeyInArray!0 (select (arr!47400 a!2862) j!93)))))

(declare-fun b!1448700 () Bool)

(assert (=> b!1448700 (= e!815867 true)))

(declare-fun lt!635591 () SeekEntryResult!11675)

(assert (=> b!1448700 (= lt!635591 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47400 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448701 () Bool)

(declare-fun res!980304 () Bool)

(assert (=> b!1448701 (=> (not res!980304) (not e!815874))))

(assert (=> b!1448701 (= res!980304 (and (= (size!47951 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47951 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47951 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448688 () Bool)

(declare-fun res!980313 () Bool)

(assert (=> b!1448688 (=> (not res!980313) (not e!815870))))

(assert (=> b!1448688 (= res!980313 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47400 a!2862) j!93) a!2862 mask!2687) lt!635595))))

(declare-fun res!980316 () Bool)

(assert (=> start!124868 (=> (not res!980316) (not e!815874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124868 (= res!980316 (validMask!0 mask!2687))))

(assert (=> start!124868 e!815874))

(assert (=> start!124868 true))

(declare-fun array_inv!36345 (array!98233) Bool)

(assert (=> start!124868 (array_inv!36345 a!2862)))

(assert (= (and start!124868 res!980316) b!1448701))

(assert (= (and b!1448701 res!980304) b!1448690))

(assert (= (and b!1448690 res!980303) b!1448699))

(assert (= (and b!1448699 res!980309) b!1448692))

(assert (= (and b!1448692 res!980310) b!1448693))

(assert (= (and b!1448693 res!980306) b!1448696))

(assert (= (and b!1448696 res!980308) b!1448695))

(assert (= (and b!1448695 res!980317) b!1448686))

(assert (= (and b!1448686 res!980319) b!1448688))

(assert (= (and b!1448688 res!980313) b!1448691))

(assert (= (and b!1448691 res!980305) b!1448683))

(assert (= (and b!1448683 c!133703) b!1448689))

(assert (= (and b!1448683 (not c!133703)) b!1448684))

(assert (= (and b!1448683 res!980315) b!1448687))

(assert (= (and b!1448687 res!980307) b!1448698))

(assert (= (and b!1448698 res!980311) b!1448697))

(assert (= (and b!1448697 (not res!980314)) b!1448685))

(assert (= (and b!1448685 res!980312) b!1448694))

(assert (= (and b!1448698 (not res!980318)) b!1448700))

(declare-fun m!1337487 () Bool)

(assert (=> b!1448698 m!1337487))

(declare-fun m!1337489 () Bool)

(assert (=> b!1448698 m!1337489))

(declare-fun m!1337491 () Bool)

(assert (=> b!1448698 m!1337491))

(declare-fun m!1337493 () Bool)

(assert (=> b!1448698 m!1337493))

(declare-fun m!1337495 () Bool)

(assert (=> b!1448698 m!1337495))

(declare-fun m!1337497 () Bool)

(assert (=> b!1448698 m!1337497))

(declare-fun m!1337499 () Bool)

(assert (=> b!1448698 m!1337499))

(declare-fun m!1337501 () Bool)

(assert (=> b!1448698 m!1337501))

(assert (=> b!1448698 m!1337497))

(declare-fun m!1337503 () Bool)

(assert (=> start!124868 m!1337503))

(declare-fun m!1337505 () Bool)

(assert (=> start!124868 m!1337505))

(assert (=> b!1448699 m!1337497))

(assert (=> b!1448699 m!1337497))

(declare-fun m!1337507 () Bool)

(assert (=> b!1448699 m!1337507))

(assert (=> b!1448697 m!1337495))

(assert (=> b!1448697 m!1337489))

(assert (=> b!1448697 m!1337493))

(assert (=> b!1448697 m!1337497))

(assert (=> b!1448688 m!1337497))

(assert (=> b!1448688 m!1337497))

(declare-fun m!1337509 () Bool)

(assert (=> b!1448688 m!1337509))

(assert (=> b!1448700 m!1337497))

(assert (=> b!1448700 m!1337497))

(declare-fun m!1337511 () Bool)

(assert (=> b!1448700 m!1337511))

(declare-fun m!1337513 () Bool)

(assert (=> b!1448693 m!1337513))

(declare-fun m!1337515 () Bool)

(assert (=> b!1448692 m!1337515))

(declare-fun m!1337517 () Bool)

(assert (=> b!1448684 m!1337517))

(declare-fun m!1337519 () Bool)

(assert (=> b!1448684 m!1337519))

(assert (=> b!1448695 m!1337489))

(declare-fun m!1337521 () Bool)

(assert (=> b!1448695 m!1337521))

(declare-fun m!1337523 () Bool)

(assert (=> b!1448690 m!1337523))

(assert (=> b!1448690 m!1337523))

(declare-fun m!1337525 () Bool)

(assert (=> b!1448690 m!1337525))

(assert (=> b!1448685 m!1337497))

(assert (=> b!1448685 m!1337497))

(declare-fun m!1337527 () Bool)

(assert (=> b!1448685 m!1337527))

(declare-fun m!1337529 () Bool)

(assert (=> b!1448691 m!1337529))

(assert (=> b!1448691 m!1337529))

(declare-fun m!1337531 () Bool)

(assert (=> b!1448691 m!1337531))

(assert (=> b!1448691 m!1337489))

(declare-fun m!1337533 () Bool)

(assert (=> b!1448691 m!1337533))

(declare-fun m!1337535 () Bool)

(assert (=> b!1448689 m!1337535))

(assert (=> b!1448686 m!1337497))

(assert (=> b!1448686 m!1337497))

(declare-fun m!1337537 () Bool)

(assert (=> b!1448686 m!1337537))

(assert (=> b!1448686 m!1337537))

(assert (=> b!1448686 m!1337497))

(declare-fun m!1337539 () Bool)

(assert (=> b!1448686 m!1337539))

(push 1)

