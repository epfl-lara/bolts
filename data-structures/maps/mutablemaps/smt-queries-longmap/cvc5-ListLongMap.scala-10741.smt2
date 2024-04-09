; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125626 () Bool)

(assert start!125626)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun e!824974 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1469430 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98991 0))(
  ( (array!98992 (arr!47779 (Array (_ BitVec 32) (_ BitVec 64))) (size!48330 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98991)

(assert (=> b!1469430 (= e!824974 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006) (bvsgt #b00000000000000000000000000000000 (size!48330 a!2862))))))

(declare-fun b!1469431 () Bool)

(declare-fun e!824973 () Bool)

(declare-fun e!824975 () Bool)

(assert (=> b!1469431 (= e!824973 e!824975)))

(declare-fun res!998021 () Bool)

(assert (=> b!1469431 (=> (not res!998021) (not e!824975))))

(declare-datatypes ((SeekEntryResult!12042 0))(
  ( (MissingZero!12042 (index!50559 (_ BitVec 32))) (Found!12042 (index!50560 (_ BitVec 32))) (Intermediate!12042 (undefined!12854 Bool) (index!50561 (_ BitVec 32)) (x!132142 (_ BitVec 32))) (Undefined!12042) (MissingVacant!12042 (index!50562 (_ BitVec 32))) )
))
(declare-fun lt!642526 () SeekEntryResult!12042)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98991 (_ BitVec 32)) SeekEntryResult!12042)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469431 (= res!998021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47779 a!2862) j!93) mask!2687) (select (arr!47779 a!2862) j!93) a!2862 mask!2687) lt!642526))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1469431 (= lt!642526 (Intermediate!12042 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469432 () Bool)

(declare-fun res!998024 () Bool)

(declare-fun e!824970 () Bool)

(assert (=> b!1469432 (=> (not res!998024) (not e!824970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98991 (_ BitVec 32)) Bool)

(assert (=> b!1469432 (= res!998024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469433 () Bool)

(declare-fun res!998023 () Bool)

(assert (=> b!1469433 (=> (not res!998023) (not e!824970))))

(assert (=> b!1469433 (= res!998023 (and (= (size!48330 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48330 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48330 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469435 () Bool)

(assert (=> b!1469435 (= e!824975 e!824974)))

(declare-fun res!998025 () Bool)

(assert (=> b!1469435 (=> (not res!998025) (not e!824974))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!642529 () SeekEntryResult!12042)

(assert (=> b!1469435 (= res!998025 (= lt!642529 (Intermediate!12042 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642527 () (_ BitVec 64))

(declare-fun lt!642528 () array!98991)

(assert (=> b!1469435 (= lt!642529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642527 mask!2687) lt!642527 lt!642528 mask!2687))))

(assert (=> b!1469435 (= lt!642527 (select (store (arr!47779 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469436 () Bool)

(declare-fun res!998029 () Bool)

(assert (=> b!1469436 (=> (not res!998029) (not e!824970))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1469436 (= res!998029 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48330 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48330 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48330 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469437 () Bool)

(declare-fun res!998028 () Bool)

(assert (=> b!1469437 (=> (not res!998028) (not e!824974))))

(declare-fun e!824971 () Bool)

(assert (=> b!1469437 (= res!998028 e!824971)))

(declare-fun c!135218 () Bool)

(assert (=> b!1469437 (= c!135218 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469438 () Bool)

(declare-fun res!998027 () Bool)

(assert (=> b!1469438 (=> (not res!998027) (not e!824975))))

(assert (=> b!1469438 (= res!998027 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47779 a!2862) j!93) a!2862 mask!2687) lt!642526))))

(declare-fun b!1469439 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98991 (_ BitVec 32)) SeekEntryResult!12042)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98991 (_ BitVec 32)) SeekEntryResult!12042)

(assert (=> b!1469439 (= e!824971 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642527 lt!642528 mask!2687) (seekEntryOrOpen!0 lt!642527 lt!642528 mask!2687)))))

(declare-fun b!1469440 () Bool)

(declare-fun res!998030 () Bool)

(assert (=> b!1469440 (=> (not res!998030) (not e!824970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469440 (= res!998030 (validKeyInArray!0 (select (arr!47779 a!2862) j!93)))))

(declare-fun b!1469441 () Bool)

(declare-fun res!998026 () Bool)

(assert (=> b!1469441 (=> (not res!998026) (not e!824970))))

(assert (=> b!1469441 (= res!998026 (validKeyInArray!0 (select (arr!47779 a!2862) i!1006)))))

(declare-fun b!1469434 () Bool)

(assert (=> b!1469434 (= e!824971 (= lt!642529 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642527 lt!642528 mask!2687)))))

(declare-fun res!998022 () Bool)

(assert (=> start!125626 (=> (not res!998022) (not e!824970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125626 (= res!998022 (validMask!0 mask!2687))))

(assert (=> start!125626 e!824970))

(assert (=> start!125626 true))

(declare-fun array_inv!36724 (array!98991) Bool)

(assert (=> start!125626 (array_inv!36724 a!2862)))

(declare-fun b!1469442 () Bool)

(assert (=> b!1469442 (= e!824970 e!824973)))

(declare-fun res!998020 () Bool)

(assert (=> b!1469442 (=> (not res!998020) (not e!824973))))

(assert (=> b!1469442 (= res!998020 (= (select (store (arr!47779 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469442 (= lt!642528 (array!98992 (store (arr!47779 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48330 a!2862)))))

(declare-fun b!1469443 () Bool)

(declare-fun res!998031 () Bool)

(assert (=> b!1469443 (=> (not res!998031) (not e!824970))))

(declare-datatypes ((List!34460 0))(
  ( (Nil!34457) (Cons!34456 (h!35806 (_ BitVec 64)) (t!49161 List!34460)) )
))
(declare-fun arrayNoDuplicates!0 (array!98991 (_ BitVec 32) List!34460) Bool)

(assert (=> b!1469443 (= res!998031 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34457))))

(assert (= (and start!125626 res!998022) b!1469433))

(assert (= (and b!1469433 res!998023) b!1469441))

(assert (= (and b!1469441 res!998026) b!1469440))

(assert (= (and b!1469440 res!998030) b!1469432))

(assert (= (and b!1469432 res!998024) b!1469443))

(assert (= (and b!1469443 res!998031) b!1469436))

(assert (= (and b!1469436 res!998029) b!1469442))

(assert (= (and b!1469442 res!998020) b!1469431))

(assert (= (and b!1469431 res!998021) b!1469438))

(assert (= (and b!1469438 res!998027) b!1469435))

(assert (= (and b!1469435 res!998025) b!1469437))

(assert (= (and b!1469437 c!135218) b!1469434))

(assert (= (and b!1469437 (not c!135218)) b!1469439))

(assert (= (and b!1469437 res!998028) b!1469430))

(declare-fun m!1356663 () Bool)

(assert (=> b!1469438 m!1356663))

(assert (=> b!1469438 m!1356663))

(declare-fun m!1356665 () Bool)

(assert (=> b!1469438 m!1356665))

(declare-fun m!1356667 () Bool)

(assert (=> b!1469441 m!1356667))

(assert (=> b!1469441 m!1356667))

(declare-fun m!1356669 () Bool)

(assert (=> b!1469441 m!1356669))

(declare-fun m!1356671 () Bool)

(assert (=> b!1469442 m!1356671))

(declare-fun m!1356673 () Bool)

(assert (=> b!1469442 m!1356673))

(declare-fun m!1356675 () Bool)

(assert (=> b!1469443 m!1356675))

(declare-fun m!1356677 () Bool)

(assert (=> b!1469434 m!1356677))

(declare-fun m!1356679 () Bool)

(assert (=> b!1469432 m!1356679))

(assert (=> b!1469440 m!1356663))

(assert (=> b!1469440 m!1356663))

(declare-fun m!1356681 () Bool)

(assert (=> b!1469440 m!1356681))

(declare-fun m!1356683 () Bool)

(assert (=> b!1469439 m!1356683))

(declare-fun m!1356685 () Bool)

(assert (=> b!1469439 m!1356685))

(declare-fun m!1356687 () Bool)

(assert (=> start!125626 m!1356687))

(declare-fun m!1356689 () Bool)

(assert (=> start!125626 m!1356689))

(assert (=> b!1469431 m!1356663))

(assert (=> b!1469431 m!1356663))

(declare-fun m!1356691 () Bool)

(assert (=> b!1469431 m!1356691))

(assert (=> b!1469431 m!1356691))

(assert (=> b!1469431 m!1356663))

(declare-fun m!1356693 () Bool)

(assert (=> b!1469431 m!1356693))

(declare-fun m!1356695 () Bool)

(assert (=> b!1469435 m!1356695))

(assert (=> b!1469435 m!1356695))

(declare-fun m!1356697 () Bool)

(assert (=> b!1469435 m!1356697))

(assert (=> b!1469435 m!1356671))

(declare-fun m!1356699 () Bool)

(assert (=> b!1469435 m!1356699))

(push 1)

