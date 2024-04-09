; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125608 () Bool)

(assert start!125608)

(declare-fun e!824813 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12033 0))(
  ( (MissingZero!12033 (index!50523 (_ BitVec 32))) (Found!12033 (index!50524 (_ BitVec 32))) (Intermediate!12033 (undefined!12845 Bool) (index!50525 (_ BitVec 32)) (x!132109 (_ BitVec 32))) (Undefined!12033) (MissingVacant!12033 (index!50526 (_ BitVec 32))) )
))
(declare-fun lt!642393 () SeekEntryResult!12033)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!642395 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1469077 () Bool)

(declare-datatypes ((array!98973 0))(
  ( (array!98974 (arr!47770 (Array (_ BitVec 32) (_ BitVec 64))) (size!48321 (_ BitVec 32))) )
))
(declare-fun lt!642397 () array!98973)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98973 (_ BitVec 32)) SeekEntryResult!12033)

(assert (=> b!1469077 (= e!824813 (not (= lt!642393 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642395 lt!642397 mask!2687))))))

(declare-fun b!1469078 () Bool)

(declare-fun e!824811 () Bool)

(declare-fun e!824808 () Bool)

(assert (=> b!1469078 (= e!824811 e!824808)))

(declare-fun res!997724 () Bool)

(assert (=> b!1469078 (=> (not res!997724) (not e!824808))))

(declare-fun a!2862 () array!98973)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!642394 () SeekEntryResult!12033)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469078 (= res!997724 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47770 a!2862) j!93) mask!2687) (select (arr!47770 a!2862) j!93) a!2862 mask!2687) lt!642394))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469078 (= lt!642394 (Intermediate!12033 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469079 () Bool)

(declare-fun res!997728 () Bool)

(declare-fun e!824812 () Bool)

(assert (=> b!1469079 (=> (not res!997728) (not e!824812))))

(declare-datatypes ((List!34451 0))(
  ( (Nil!34448) (Cons!34447 (h!35797 (_ BitVec 64)) (t!49152 List!34451)) )
))
(declare-fun arrayNoDuplicates!0 (array!98973 (_ BitVec 32) List!34451) Bool)

(assert (=> b!1469079 (= res!997728 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34448))))

(declare-fun res!997730 () Bool)

(assert (=> start!125608 (=> (not res!997730) (not e!824812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125608 (= res!997730 (validMask!0 mask!2687))))

(assert (=> start!125608 e!824812))

(assert (=> start!125608 true))

(declare-fun array_inv!36715 (array!98973) Bool)

(assert (=> start!125608 (array_inv!36715 a!2862)))

(declare-fun b!1469080 () Bool)

(assert (=> b!1469080 (= e!824812 e!824811)))

(declare-fun res!997721 () Bool)

(assert (=> b!1469080 (=> (not res!997721) (not e!824811))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469080 (= res!997721 (= (select (store (arr!47770 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469080 (= lt!642397 (array!98974 (store (arr!47770 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48321 a!2862)))))

(declare-fun b!1469081 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98973 (_ BitVec 32)) SeekEntryResult!12033)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98973 (_ BitVec 32)) SeekEntryResult!12033)

(assert (=> b!1469081 (= e!824813 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642395 lt!642397 mask!2687) (seekEntryOrOpen!0 lt!642395 lt!642397 mask!2687))))))

(declare-fun b!1469082 () Bool)

(declare-fun res!997726 () Bool)

(assert (=> b!1469082 (=> (not res!997726) (not e!824812))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469082 (= res!997726 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48321 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48321 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48321 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469083 () Bool)

(declare-fun e!824809 () Bool)

(assert (=> b!1469083 (= e!824809 false)))

(declare-fun lt!642396 () Bool)

(assert (=> b!1469083 (= lt!642396 e!824813)))

(declare-fun c!135191 () Bool)

(assert (=> b!1469083 (= c!135191 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469084 () Bool)

(declare-fun res!997729 () Bool)

(assert (=> b!1469084 (=> (not res!997729) (not e!824812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98973 (_ BitVec 32)) Bool)

(assert (=> b!1469084 (= res!997729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469085 () Bool)

(declare-fun res!997725 () Bool)

(assert (=> b!1469085 (=> (not res!997725) (not e!824812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469085 (= res!997725 (validKeyInArray!0 (select (arr!47770 a!2862) i!1006)))))

(declare-fun b!1469086 () Bool)

(assert (=> b!1469086 (= e!824808 e!824809)))

(declare-fun res!997731 () Bool)

(assert (=> b!1469086 (=> (not res!997731) (not e!824809))))

(assert (=> b!1469086 (= res!997731 (= lt!642393 (Intermediate!12033 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469086 (= lt!642393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642395 mask!2687) lt!642395 lt!642397 mask!2687))))

(assert (=> b!1469086 (= lt!642395 (select (store (arr!47770 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469087 () Bool)

(declare-fun res!997722 () Bool)

(assert (=> b!1469087 (=> (not res!997722) (not e!824812))))

(assert (=> b!1469087 (= res!997722 (and (= (size!48321 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48321 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48321 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469088 () Bool)

(declare-fun res!997727 () Bool)

(assert (=> b!1469088 (=> (not res!997727) (not e!824812))))

(assert (=> b!1469088 (= res!997727 (validKeyInArray!0 (select (arr!47770 a!2862) j!93)))))

(declare-fun b!1469089 () Bool)

(declare-fun res!997723 () Bool)

(assert (=> b!1469089 (=> (not res!997723) (not e!824808))))

(assert (=> b!1469089 (= res!997723 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47770 a!2862) j!93) a!2862 mask!2687) lt!642394))))

(assert (= (and start!125608 res!997730) b!1469087))

(assert (= (and b!1469087 res!997722) b!1469085))

(assert (= (and b!1469085 res!997725) b!1469088))

(assert (= (and b!1469088 res!997727) b!1469084))

(assert (= (and b!1469084 res!997729) b!1469079))

(assert (= (and b!1469079 res!997728) b!1469082))

(assert (= (and b!1469082 res!997726) b!1469080))

(assert (= (and b!1469080 res!997721) b!1469078))

(assert (= (and b!1469078 res!997724) b!1469089))

(assert (= (and b!1469089 res!997723) b!1469086))

(assert (= (and b!1469086 res!997731) b!1469083))

(assert (= (and b!1469083 c!135191) b!1469077))

(assert (= (and b!1469083 (not c!135191)) b!1469081))

(declare-fun m!1356321 () Bool)

(assert (=> start!125608 m!1356321))

(declare-fun m!1356323 () Bool)

(assert (=> start!125608 m!1356323))

(declare-fun m!1356325 () Bool)

(assert (=> b!1469077 m!1356325))

(declare-fun m!1356327 () Bool)

(assert (=> b!1469086 m!1356327))

(assert (=> b!1469086 m!1356327))

(declare-fun m!1356329 () Bool)

(assert (=> b!1469086 m!1356329))

(declare-fun m!1356331 () Bool)

(assert (=> b!1469086 m!1356331))

(declare-fun m!1356333 () Bool)

(assert (=> b!1469086 m!1356333))

(declare-fun m!1356335 () Bool)

(assert (=> b!1469078 m!1356335))

(assert (=> b!1469078 m!1356335))

(declare-fun m!1356337 () Bool)

(assert (=> b!1469078 m!1356337))

(assert (=> b!1469078 m!1356337))

(assert (=> b!1469078 m!1356335))

(declare-fun m!1356339 () Bool)

(assert (=> b!1469078 m!1356339))

(declare-fun m!1356341 () Bool)

(assert (=> b!1469081 m!1356341))

(declare-fun m!1356343 () Bool)

(assert (=> b!1469081 m!1356343))

(assert (=> b!1469080 m!1356331))

(declare-fun m!1356345 () Bool)

(assert (=> b!1469080 m!1356345))

(declare-fun m!1356347 () Bool)

(assert (=> b!1469079 m!1356347))

(assert (=> b!1469089 m!1356335))

(assert (=> b!1469089 m!1356335))

(declare-fun m!1356349 () Bool)

(assert (=> b!1469089 m!1356349))

(declare-fun m!1356351 () Bool)

(assert (=> b!1469085 m!1356351))

(assert (=> b!1469085 m!1356351))

(declare-fun m!1356353 () Bool)

(assert (=> b!1469085 m!1356353))

(assert (=> b!1469088 m!1356335))

(assert (=> b!1469088 m!1356335))

(declare-fun m!1356355 () Bool)

(assert (=> b!1469088 m!1356355))

(declare-fun m!1356357 () Bool)

(assert (=> b!1469084 m!1356357))

(push 1)

