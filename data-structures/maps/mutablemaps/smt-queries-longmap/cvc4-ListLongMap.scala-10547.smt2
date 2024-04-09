; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124466 () Bool)

(assert start!124466)

(declare-fun res!971967 () Bool)

(declare-fun e!811880 () Bool)

(assert (=> start!124466 (=> (not res!971967) (not e!811880))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124466 (= res!971967 (validMask!0 mask!2687))))

(assert (=> start!124466 e!811880))

(assert (=> start!124466 true))

(declare-datatypes ((array!97831 0))(
  ( (array!97832 (arr!47199 (Array (_ BitVec 32) (_ BitVec 64))) (size!47750 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97831)

(declare-fun array_inv!36144 (array!97831) Bool)

(assert (=> start!124466 (array_inv!36144 a!2862)))

(declare-fun b!1439431 () Bool)

(declare-fun res!971972 () Bool)

(assert (=> b!1439431 (=> (not res!971972) (not e!811880))))

(declare-datatypes ((List!33880 0))(
  ( (Nil!33877) (Cons!33876 (h!35226 (_ BitVec 64)) (t!48581 List!33880)) )
))
(declare-fun arrayNoDuplicates!0 (array!97831 (_ BitVec 32) List!33880) Bool)

(assert (=> b!1439431 (= res!971972 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33877))))

(declare-fun b!1439432 () Bool)

(declare-fun res!971968 () Bool)

(assert (=> b!1439432 (=> (not res!971968) (not e!811880))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439432 (= res!971968 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47750 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47750 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47750 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47199 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!811878 () Bool)

(declare-fun b!1439433 () Bool)

(assert (=> b!1439433 (= e!811878 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1439434 () Bool)

(declare-fun res!971971 () Bool)

(assert (=> b!1439434 (=> (not res!971971) (not e!811878))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11474 0))(
  ( (MissingZero!11474 (index!48287 (_ BitVec 32))) (Found!11474 (index!48288 (_ BitVec 32))) (Intermediate!11474 (undefined!12286 Bool) (index!48289 (_ BitVec 32)) (x!130022 (_ BitVec 32))) (Undefined!11474) (MissingVacant!11474 (index!48290 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97831 (_ BitVec 32)) SeekEntryResult!11474)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439434 (= res!971971 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47199 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47199 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97832 (store (arr!47199 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47750 a!2862)) mask!2687) (Intermediate!11474 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1439435 () Bool)

(declare-fun res!971976 () Bool)

(assert (=> b!1439435 (=> (not res!971976) (not e!811880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97831 (_ BitVec 32)) Bool)

(assert (=> b!1439435 (= res!971976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439436 () Bool)

(declare-fun res!971970 () Bool)

(assert (=> b!1439436 (=> (not res!971970) (not e!811880))))

(assert (=> b!1439436 (= res!971970 (and (= (size!47750 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47750 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47750 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439437 () Bool)

(assert (=> b!1439437 (= e!811880 e!811878)))

(declare-fun res!971973 () Bool)

(assert (=> b!1439437 (=> (not res!971973) (not e!811878))))

(declare-fun lt!632761 () SeekEntryResult!11474)

(assert (=> b!1439437 (= res!971973 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47199 a!2862) j!93) mask!2687) (select (arr!47199 a!2862) j!93) a!2862 mask!2687) lt!632761))))

(assert (=> b!1439437 (= lt!632761 (Intermediate!11474 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439438 () Bool)

(declare-fun res!971975 () Bool)

(assert (=> b!1439438 (=> (not res!971975) (not e!811880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439438 (= res!971975 (validKeyInArray!0 (select (arr!47199 a!2862) j!93)))))

(declare-fun b!1439439 () Bool)

(declare-fun res!971969 () Bool)

(assert (=> b!1439439 (=> (not res!971969) (not e!811880))))

(assert (=> b!1439439 (= res!971969 (validKeyInArray!0 (select (arr!47199 a!2862) i!1006)))))

(declare-fun b!1439440 () Bool)

(declare-fun res!971974 () Bool)

(assert (=> b!1439440 (=> (not res!971974) (not e!811878))))

(assert (=> b!1439440 (= res!971974 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47199 a!2862) j!93) a!2862 mask!2687) lt!632761))))

(assert (= (and start!124466 res!971967) b!1439436))

(assert (= (and b!1439436 res!971970) b!1439439))

(assert (= (and b!1439439 res!971969) b!1439438))

(assert (= (and b!1439438 res!971975) b!1439435))

(assert (= (and b!1439435 res!971976) b!1439431))

(assert (= (and b!1439431 res!971972) b!1439432))

(assert (= (and b!1439432 res!971968) b!1439437))

(assert (= (and b!1439437 res!971973) b!1439440))

(assert (= (and b!1439440 res!971974) b!1439434))

(assert (= (and b!1439434 res!971971) b!1439433))

(declare-fun m!1328569 () Bool)

(assert (=> start!124466 m!1328569))

(declare-fun m!1328571 () Bool)

(assert (=> start!124466 m!1328571))

(declare-fun m!1328573 () Bool)

(assert (=> b!1439432 m!1328573))

(declare-fun m!1328575 () Bool)

(assert (=> b!1439432 m!1328575))

(declare-fun m!1328577 () Bool)

(assert (=> b!1439431 m!1328577))

(declare-fun m!1328579 () Bool)

(assert (=> b!1439439 m!1328579))

(assert (=> b!1439439 m!1328579))

(declare-fun m!1328581 () Bool)

(assert (=> b!1439439 m!1328581))

(assert (=> b!1439434 m!1328573))

(declare-fun m!1328583 () Bool)

(assert (=> b!1439434 m!1328583))

(assert (=> b!1439434 m!1328583))

(declare-fun m!1328585 () Bool)

(assert (=> b!1439434 m!1328585))

(assert (=> b!1439434 m!1328585))

(assert (=> b!1439434 m!1328583))

(declare-fun m!1328587 () Bool)

(assert (=> b!1439434 m!1328587))

(declare-fun m!1328589 () Bool)

(assert (=> b!1439435 m!1328589))

(declare-fun m!1328591 () Bool)

(assert (=> b!1439437 m!1328591))

(assert (=> b!1439437 m!1328591))

(declare-fun m!1328593 () Bool)

(assert (=> b!1439437 m!1328593))

(assert (=> b!1439437 m!1328593))

(assert (=> b!1439437 m!1328591))

(declare-fun m!1328595 () Bool)

(assert (=> b!1439437 m!1328595))

(assert (=> b!1439438 m!1328591))

(assert (=> b!1439438 m!1328591))

(declare-fun m!1328597 () Bool)

(assert (=> b!1439438 m!1328597))

(assert (=> b!1439440 m!1328591))

(assert (=> b!1439440 m!1328591))

(declare-fun m!1328599 () Bool)

(assert (=> b!1439440 m!1328599))

(push 1)

(assert (not b!1439438))

(assert (not b!1439434))

(assert (not b!1439439))

(assert (not b!1439435))

(assert (not start!124466))

(assert (not b!1439431))

(assert (not b!1439440))

(assert (not b!1439437))

(check-sat)

(pop 1)

(push 1)

(check-sat)

