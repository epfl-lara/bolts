; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125624 () Bool)

(assert start!125624)

(declare-fun b!1469389 () Bool)

(declare-fun e!824956 () Bool)

(assert (=> b!1469389 (= e!824956 false)))

(declare-fun lt!642513 () Bool)

(declare-fun e!824955 () Bool)

(assert (=> b!1469389 (= lt!642513 e!824955)))

(declare-fun c!135215 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469389 (= c!135215 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469390 () Bool)

(declare-fun res!997985 () Bool)

(declare-fun e!824952 () Bool)

(assert (=> b!1469390 (=> (not res!997985) (not e!824952))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98989 0))(
  ( (array!98990 (arr!47778 (Array (_ BitVec 32) (_ BitVec 64))) (size!48329 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98989)

(assert (=> b!1469390 (= res!997985 (and (= (size!48329 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48329 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48329 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469391 () Bool)

(declare-fun res!997994 () Bool)

(assert (=> b!1469391 (=> (not res!997994) (not e!824952))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469391 (= res!997994 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48329 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48329 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48329 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!997991 () Bool)

(assert (=> start!125624 (=> (not res!997991) (not e!824952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125624 (= res!997991 (validMask!0 mask!2687))))

(assert (=> start!125624 e!824952))

(assert (=> start!125624 true))

(declare-fun array_inv!36723 (array!98989) Bool)

(assert (=> start!125624 (array_inv!36723 a!2862)))

(declare-fun b!1469392 () Bool)

(declare-fun res!997992 () Bool)

(assert (=> b!1469392 (=> (not res!997992) (not e!824952))))

(declare-datatypes ((List!34459 0))(
  ( (Nil!34456) (Cons!34455 (h!35805 (_ BitVec 64)) (t!49160 List!34459)) )
))
(declare-fun arrayNoDuplicates!0 (array!98989 (_ BitVec 32) List!34459) Bool)

(assert (=> b!1469392 (= res!997992 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34456))))

(declare-fun b!1469393 () Bool)

(declare-fun res!997990 () Bool)

(assert (=> b!1469393 (=> (not res!997990) (not e!824952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469393 (= res!997990 (validKeyInArray!0 (select (arr!47778 a!2862) i!1006)))))

(declare-fun b!1469394 () Bool)

(declare-fun res!997988 () Bool)

(declare-fun e!824954 () Bool)

(assert (=> b!1469394 (=> (not res!997988) (not e!824954))))

(declare-datatypes ((SeekEntryResult!12041 0))(
  ( (MissingZero!12041 (index!50555 (_ BitVec 32))) (Found!12041 (index!50556 (_ BitVec 32))) (Intermediate!12041 (undefined!12853 Bool) (index!50557 (_ BitVec 32)) (x!132133 (_ BitVec 32))) (Undefined!12041) (MissingVacant!12041 (index!50558 (_ BitVec 32))) )
))
(declare-fun lt!642514 () SeekEntryResult!12041)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98989 (_ BitVec 32)) SeekEntryResult!12041)

(assert (=> b!1469394 (= res!997988 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47778 a!2862) j!93) a!2862 mask!2687) lt!642514))))

(declare-fun b!1469395 () Bool)

(declare-fun res!997995 () Bool)

(assert (=> b!1469395 (=> (not res!997995) (not e!824952))))

(assert (=> b!1469395 (= res!997995 (validKeyInArray!0 (select (arr!47778 a!2862) j!93)))))

(declare-fun b!1469396 () Bool)

(declare-fun res!997987 () Bool)

(assert (=> b!1469396 (=> (not res!997987) (not e!824952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98989 (_ BitVec 32)) Bool)

(assert (=> b!1469396 (= res!997987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469397 () Bool)

(declare-fun e!824957 () Bool)

(assert (=> b!1469397 (= e!824957 e!824954)))

(declare-fun res!997986 () Bool)

(assert (=> b!1469397 (=> (not res!997986) (not e!824954))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469397 (= res!997986 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47778 a!2862) j!93) mask!2687) (select (arr!47778 a!2862) j!93) a!2862 mask!2687) lt!642514))))

(assert (=> b!1469397 (= lt!642514 (Intermediate!12041 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469398 () Bool)

(assert (=> b!1469398 (= e!824952 e!824957)))

(declare-fun res!997989 () Bool)

(assert (=> b!1469398 (=> (not res!997989) (not e!824957))))

(assert (=> b!1469398 (= res!997989 (= (select (store (arr!47778 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!642516 () array!98989)

(assert (=> b!1469398 (= lt!642516 (array!98990 (store (arr!47778 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48329 a!2862)))))

(declare-fun b!1469399 () Bool)

(assert (=> b!1469399 (= e!824954 e!824956)))

(declare-fun res!997993 () Bool)

(assert (=> b!1469399 (=> (not res!997993) (not e!824956))))

(declare-fun lt!642515 () SeekEntryResult!12041)

(assert (=> b!1469399 (= res!997993 (= lt!642515 (Intermediate!12041 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642517 () (_ BitVec 64))

(assert (=> b!1469399 (= lt!642515 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642517 mask!2687) lt!642517 lt!642516 mask!2687))))

(assert (=> b!1469399 (= lt!642517 (select (store (arr!47778 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469400 () Bool)

(assert (=> b!1469400 (= e!824955 (not (= lt!642515 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642517 lt!642516 mask!2687))))))

(declare-fun b!1469401 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98989 (_ BitVec 32)) SeekEntryResult!12041)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98989 (_ BitVec 32)) SeekEntryResult!12041)

(assert (=> b!1469401 (= e!824955 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642517 lt!642516 mask!2687) (seekEntryOrOpen!0 lt!642517 lt!642516 mask!2687))))))

(assert (= (and start!125624 res!997991) b!1469390))

(assert (= (and b!1469390 res!997985) b!1469393))

(assert (= (and b!1469393 res!997990) b!1469395))

(assert (= (and b!1469395 res!997995) b!1469396))

(assert (= (and b!1469396 res!997987) b!1469392))

(assert (= (and b!1469392 res!997992) b!1469391))

(assert (= (and b!1469391 res!997994) b!1469398))

(assert (= (and b!1469398 res!997989) b!1469397))

(assert (= (and b!1469397 res!997986) b!1469394))

(assert (= (and b!1469394 res!997988) b!1469399))

(assert (= (and b!1469399 res!997993) b!1469389))

(assert (= (and b!1469389 c!135215) b!1469400))

(assert (= (and b!1469389 (not c!135215)) b!1469401))

(declare-fun m!1356625 () Bool)

(assert (=> b!1469393 m!1356625))

(assert (=> b!1469393 m!1356625))

(declare-fun m!1356627 () Bool)

(assert (=> b!1469393 m!1356627))

(declare-fun m!1356629 () Bool)

(assert (=> b!1469400 m!1356629))

(declare-fun m!1356631 () Bool)

(assert (=> b!1469399 m!1356631))

(assert (=> b!1469399 m!1356631))

(declare-fun m!1356633 () Bool)

(assert (=> b!1469399 m!1356633))

(declare-fun m!1356635 () Bool)

(assert (=> b!1469399 m!1356635))

(declare-fun m!1356637 () Bool)

(assert (=> b!1469399 m!1356637))

(declare-fun m!1356639 () Bool)

(assert (=> start!125624 m!1356639))

(declare-fun m!1356641 () Bool)

(assert (=> start!125624 m!1356641))

(declare-fun m!1356643 () Bool)

(assert (=> b!1469397 m!1356643))

(assert (=> b!1469397 m!1356643))

(declare-fun m!1356645 () Bool)

(assert (=> b!1469397 m!1356645))

(assert (=> b!1469397 m!1356645))

(assert (=> b!1469397 m!1356643))

(declare-fun m!1356647 () Bool)

(assert (=> b!1469397 m!1356647))

(assert (=> b!1469394 m!1356643))

(assert (=> b!1469394 m!1356643))

(declare-fun m!1356649 () Bool)

(assert (=> b!1469394 m!1356649))

(declare-fun m!1356651 () Bool)

(assert (=> b!1469392 m!1356651))

(declare-fun m!1356653 () Bool)

(assert (=> b!1469401 m!1356653))

(declare-fun m!1356655 () Bool)

(assert (=> b!1469401 m!1356655))

(assert (=> b!1469395 m!1356643))

(assert (=> b!1469395 m!1356643))

(declare-fun m!1356657 () Bool)

(assert (=> b!1469395 m!1356657))

(assert (=> b!1469398 m!1356635))

(declare-fun m!1356659 () Bool)

(assert (=> b!1469398 m!1356659))

(declare-fun m!1356661 () Bool)

(assert (=> b!1469396 m!1356661))

(push 1)

(assert (not b!1469394))

(assert (not b!1469392))

(assert (not b!1469399))

(assert (not b!1469395))

(assert (not b!1469397))

(assert (not b!1469396))

(assert (not b!1469393))

(assert (not b!1469400))

(assert (not b!1469401))

(assert (not start!125624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

