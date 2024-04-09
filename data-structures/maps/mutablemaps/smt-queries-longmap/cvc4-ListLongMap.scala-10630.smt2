; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124964 () Bool)

(assert start!124964)

(declare-fun b!1451448 () Bool)

(declare-fun e!817243 () Bool)

(declare-fun e!817240 () Bool)

(assert (=> b!1451448 (= e!817243 e!817240)))

(declare-fun res!982787 () Bool)

(assert (=> b!1451448 (=> (not res!982787) (not e!817240))))

(declare-datatypes ((SeekEntryResult!11723 0))(
  ( (MissingZero!11723 (index!49283 (_ BitVec 32))) (Found!11723 (index!49284 (_ BitVec 32))) (Intermediate!11723 (undefined!12535 Bool) (index!49285 (_ BitVec 32)) (x!130935 (_ BitVec 32))) (Undefined!11723) (MissingVacant!11723 (index!49286 (_ BitVec 32))) )
))
(declare-fun lt!636621 () SeekEntryResult!11723)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451448 (= res!982787 (= lt!636621 (Intermediate!11723 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636622 () (_ BitVec 64))

(declare-datatypes ((array!98329 0))(
  ( (array!98330 (arr!47448 (Array (_ BitVec 32) (_ BitVec 64))) (size!47999 (_ BitVec 32))) )
))
(declare-fun lt!636618 () array!98329)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98329 (_ BitVec 32)) SeekEntryResult!11723)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451448 (= lt!636621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636622 mask!2687) lt!636622 lt!636618 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98329)

(assert (=> b!1451448 (= lt!636622 (select (store (arr!47448 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451449 () Bool)

(declare-fun res!982785 () Bool)

(declare-fun e!817241 () Bool)

(assert (=> b!1451449 (=> (not res!982785) (not e!817241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451449 (= res!982785 (validKeyInArray!0 (select (arr!47448 a!2862) j!93)))))

(declare-fun b!1451450 () Bool)

(declare-fun res!982789 () Bool)

(assert (=> b!1451450 (=> (not res!982789) (not e!817243))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!636619 () SeekEntryResult!11723)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1451450 (= res!982789 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47448 a!2862) j!93) a!2862 mask!2687) lt!636619))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!817244 () Bool)

(declare-fun b!1451451 () Bool)

(assert (=> b!1451451 (= e!817244 (and (or (= (select (arr!47448 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47448 a!2862) intermediateBeforeIndex!19) (select (arr!47448 a!2862) j!93))) (or (and (= (select (arr!47448 a!2862) index!646) (select (store (arr!47448 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47448 a!2862) index!646) (select (arr!47448 a!2862) j!93))) (= (select (arr!47448 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47448 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451452 () Bool)

(declare-fun res!982794 () Bool)

(assert (=> b!1451452 (=> (not res!982794) (not e!817241))))

(assert (=> b!1451452 (= res!982794 (validKeyInArray!0 (select (arr!47448 a!2862) i!1006)))))

(declare-fun b!1451453 () Bool)

(declare-fun res!982790 () Bool)

(assert (=> b!1451453 (=> (not res!982790) (not e!817241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98329 (_ BitVec 32)) Bool)

(assert (=> b!1451453 (= res!982790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451454 () Bool)

(declare-fun e!817242 () Bool)

(assert (=> b!1451454 (= e!817242 e!817243)))

(declare-fun res!982793 () Bool)

(assert (=> b!1451454 (=> (not res!982793) (not e!817243))))

(assert (=> b!1451454 (= res!982793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47448 a!2862) j!93) mask!2687) (select (arr!47448 a!2862) j!93) a!2862 mask!2687) lt!636619))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451454 (= lt!636619 (Intermediate!11723 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451456 () Bool)

(declare-fun res!982782 () Bool)

(assert (=> b!1451456 (=> (not res!982782) (not e!817241))))

(assert (=> b!1451456 (= res!982782 (and (= (size!47999 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47999 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47999 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451457 () Bool)

(declare-fun res!982784 () Bool)

(assert (=> b!1451457 (=> (not res!982784) (not e!817241))))

(assert (=> b!1451457 (= res!982784 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47999 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47999 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47999 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!817239 () Bool)

(declare-fun b!1451458 () Bool)

(assert (=> b!1451458 (= e!817239 (= lt!636621 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636622 lt!636618 mask!2687)))))

(declare-fun b!1451459 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98329 (_ BitVec 32)) SeekEntryResult!11723)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98329 (_ BitVec 32)) SeekEntryResult!11723)

(assert (=> b!1451459 (= e!817239 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636622 lt!636618 mask!2687) (seekEntryOrOpen!0 lt!636622 lt!636618 mask!2687)))))

(declare-fun b!1451460 () Bool)

(declare-fun res!982780 () Bool)

(assert (=> b!1451460 (=> (not res!982780) (not e!817240))))

(assert (=> b!1451460 (= res!982780 e!817239)))

(declare-fun c!133847 () Bool)

(assert (=> b!1451460 (= c!133847 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451461 () Bool)

(declare-fun res!982786 () Bool)

(assert (=> b!1451461 (=> (not res!982786) (not e!817240))))

(assert (=> b!1451461 (= res!982786 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451462 () Bool)

(assert (=> b!1451462 (= e!817240 (not true))))

(assert (=> b!1451462 e!817244))

(declare-fun res!982792 () Bool)

(assert (=> b!1451462 (=> (not res!982792) (not e!817244))))

(assert (=> b!1451462 (= res!982792 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48890 0))(
  ( (Unit!48891) )
))
(declare-fun lt!636620 () Unit!48890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48890)

(assert (=> b!1451462 (= lt!636620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451463 () Bool)

(declare-fun res!982791 () Bool)

(assert (=> b!1451463 (=> (not res!982791) (not e!817244))))

(assert (=> b!1451463 (= res!982791 (= (seekEntryOrOpen!0 (select (arr!47448 a!2862) j!93) a!2862 mask!2687) (Found!11723 j!93)))))

(declare-fun b!1451464 () Bool)

(assert (=> b!1451464 (= e!817241 e!817242)))

(declare-fun res!982788 () Bool)

(assert (=> b!1451464 (=> (not res!982788) (not e!817242))))

(assert (=> b!1451464 (= res!982788 (= (select (store (arr!47448 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451464 (= lt!636618 (array!98330 (store (arr!47448 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47999 a!2862)))))

(declare-fun b!1451455 () Bool)

(declare-fun res!982783 () Bool)

(assert (=> b!1451455 (=> (not res!982783) (not e!817241))))

(declare-datatypes ((List!34129 0))(
  ( (Nil!34126) (Cons!34125 (h!35475 (_ BitVec 64)) (t!48830 List!34129)) )
))
(declare-fun arrayNoDuplicates!0 (array!98329 (_ BitVec 32) List!34129) Bool)

(assert (=> b!1451455 (= res!982783 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34126))))

(declare-fun res!982781 () Bool)

(assert (=> start!124964 (=> (not res!982781) (not e!817241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124964 (= res!982781 (validMask!0 mask!2687))))

(assert (=> start!124964 e!817241))

(assert (=> start!124964 true))

(declare-fun array_inv!36393 (array!98329) Bool)

(assert (=> start!124964 (array_inv!36393 a!2862)))

(assert (= (and start!124964 res!982781) b!1451456))

(assert (= (and b!1451456 res!982782) b!1451452))

(assert (= (and b!1451452 res!982794) b!1451449))

(assert (= (and b!1451449 res!982785) b!1451453))

(assert (= (and b!1451453 res!982790) b!1451455))

(assert (= (and b!1451455 res!982783) b!1451457))

(assert (= (and b!1451457 res!982784) b!1451464))

(assert (= (and b!1451464 res!982788) b!1451454))

(assert (= (and b!1451454 res!982793) b!1451450))

(assert (= (and b!1451450 res!982789) b!1451448))

(assert (= (and b!1451448 res!982787) b!1451460))

(assert (= (and b!1451460 c!133847) b!1451458))

(assert (= (and b!1451460 (not c!133847)) b!1451459))

(assert (= (and b!1451460 res!982780) b!1451461))

(assert (= (and b!1451461 res!982786) b!1451462))

(assert (= (and b!1451462 res!982792) b!1451463))

(assert (= (and b!1451463 res!982791) b!1451451))

(declare-fun m!1340101 () Bool)

(assert (=> b!1451455 m!1340101))

(declare-fun m!1340103 () Bool)

(assert (=> b!1451463 m!1340103))

(assert (=> b!1451463 m!1340103))

(declare-fun m!1340105 () Bool)

(assert (=> b!1451463 m!1340105))

(declare-fun m!1340107 () Bool)

(assert (=> b!1451448 m!1340107))

(assert (=> b!1451448 m!1340107))

(declare-fun m!1340109 () Bool)

(assert (=> b!1451448 m!1340109))

(declare-fun m!1340111 () Bool)

(assert (=> b!1451448 m!1340111))

(declare-fun m!1340113 () Bool)

(assert (=> b!1451448 m!1340113))

(assert (=> b!1451450 m!1340103))

(assert (=> b!1451450 m!1340103))

(declare-fun m!1340115 () Bool)

(assert (=> b!1451450 m!1340115))

(assert (=> b!1451464 m!1340111))

(declare-fun m!1340117 () Bool)

(assert (=> b!1451464 m!1340117))

(declare-fun m!1340119 () Bool)

(assert (=> b!1451458 m!1340119))

(declare-fun m!1340121 () Bool)

(assert (=> b!1451459 m!1340121))

(declare-fun m!1340123 () Bool)

(assert (=> b!1451459 m!1340123))

(declare-fun m!1340125 () Bool)

(assert (=> b!1451453 m!1340125))

(assert (=> b!1451449 m!1340103))

(assert (=> b!1451449 m!1340103))

(declare-fun m!1340127 () Bool)

(assert (=> b!1451449 m!1340127))

(assert (=> b!1451454 m!1340103))

(assert (=> b!1451454 m!1340103))

(declare-fun m!1340129 () Bool)

(assert (=> b!1451454 m!1340129))

(assert (=> b!1451454 m!1340129))

(assert (=> b!1451454 m!1340103))

(declare-fun m!1340131 () Bool)

(assert (=> b!1451454 m!1340131))

(declare-fun m!1340133 () Bool)

(assert (=> start!124964 m!1340133))

(declare-fun m!1340135 () Bool)

(assert (=> start!124964 m!1340135))

(declare-fun m!1340137 () Bool)

(assert (=> b!1451462 m!1340137))

(declare-fun m!1340139 () Bool)

(assert (=> b!1451462 m!1340139))

(assert (=> b!1451451 m!1340111))

(declare-fun m!1340141 () Bool)

(assert (=> b!1451451 m!1340141))

(declare-fun m!1340143 () Bool)

(assert (=> b!1451451 m!1340143))

(declare-fun m!1340145 () Bool)

(assert (=> b!1451451 m!1340145))

(assert (=> b!1451451 m!1340103))

(declare-fun m!1340147 () Bool)

(assert (=> b!1451452 m!1340147))

(assert (=> b!1451452 m!1340147))

(declare-fun m!1340149 () Bool)

(assert (=> b!1451452 m!1340149))

(push 1)

