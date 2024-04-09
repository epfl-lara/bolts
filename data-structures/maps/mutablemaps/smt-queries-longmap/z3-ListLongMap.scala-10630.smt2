; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124962 () Bool)

(assert start!124962)

(declare-fun b!1451397 () Bool)

(declare-fun res!982745 () Bool)

(declare-fun e!817219 () Bool)

(assert (=> b!1451397 (=> (not res!982745) (not e!817219))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98327 0))(
  ( (array!98328 (arr!47447 (Array (_ BitVec 32) (_ BitVec 64))) (size!47998 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98327)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1451397 (= res!982745 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47998 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47998 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47998 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451398 () Bool)

(declare-fun res!982740 () Bool)

(declare-fun e!817222 () Bool)

(assert (=> b!1451398 (=> (not res!982740) (not e!817222))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11722 0))(
  ( (MissingZero!11722 (index!49279 (_ BitVec 32))) (Found!11722 (index!49280 (_ BitVec 32))) (Intermediate!11722 (undefined!12534 Bool) (index!49281 (_ BitVec 32)) (x!130934 (_ BitVec 32))) (Undefined!11722) (MissingVacant!11722 (index!49282 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98327 (_ BitVec 32)) SeekEntryResult!11722)

(assert (=> b!1451398 (= res!982740 (= (seekEntryOrOpen!0 (select (arr!47447 a!2862) j!93) a!2862 mask!2687) (Found!11722 j!93)))))

(declare-fun b!1451399 () Bool)

(declare-fun res!982743 () Bool)

(assert (=> b!1451399 (=> (not res!982743) (not e!817219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98327 (_ BitVec 32)) Bool)

(assert (=> b!1451399 (= res!982743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!982741 () Bool)

(assert (=> start!124962 (=> (not res!982741) (not e!817219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124962 (= res!982741 (validMask!0 mask!2687))))

(assert (=> start!124962 e!817219))

(assert (=> start!124962 true))

(declare-fun array_inv!36392 (array!98327) Bool)

(assert (=> start!124962 (array_inv!36392 a!2862)))

(declare-fun b!1451400 () Bool)

(declare-fun res!982748 () Bool)

(declare-fun e!817223 () Bool)

(assert (=> b!1451400 (=> (not res!982748) (not e!817223))))

(declare-fun e!817220 () Bool)

(assert (=> b!1451400 (= res!982748 e!817220)))

(declare-fun c!133844 () Bool)

(assert (=> b!1451400 (= c!133844 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451401 () Bool)

(declare-fun res!982735 () Bool)

(assert (=> b!1451401 (=> (not res!982735) (not e!817223))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1451401 (= res!982735 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451402 () Bool)

(declare-fun lt!636605 () (_ BitVec 64))

(declare-fun lt!636606 () array!98327)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98327 (_ BitVec 32)) SeekEntryResult!11722)

(assert (=> b!1451402 (= e!817220 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636605 lt!636606 mask!2687) (seekEntryOrOpen!0 lt!636605 lt!636606 mask!2687)))))

(declare-fun b!1451403 () Bool)

(declare-fun e!817221 () Bool)

(assert (=> b!1451403 (= e!817219 e!817221)))

(declare-fun res!982739 () Bool)

(assert (=> b!1451403 (=> (not res!982739) (not e!817221))))

(assert (=> b!1451403 (= res!982739 (= (select (store (arr!47447 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451403 (= lt!636606 (array!98328 (store (arr!47447 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47998 a!2862)))))

(declare-fun b!1451404 () Bool)

(declare-fun res!982736 () Bool)

(declare-fun e!817217 () Bool)

(assert (=> b!1451404 (=> (not res!982736) (not e!817217))))

(declare-fun lt!636603 () SeekEntryResult!11722)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98327 (_ BitVec 32)) SeekEntryResult!11722)

(assert (=> b!1451404 (= res!982736 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47447 a!2862) j!93) a!2862 mask!2687) lt!636603))))

(declare-fun b!1451405 () Bool)

(assert (=> b!1451405 (= e!817222 (and (or (= (select (arr!47447 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47447 a!2862) intermediateBeforeIndex!19) (select (arr!47447 a!2862) j!93))) (or (and (= (select (arr!47447 a!2862) index!646) (select (store (arr!47447 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47447 a!2862) index!646) (select (arr!47447 a!2862) j!93))) (= (select (arr!47447 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47447 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451406 () Bool)

(assert (=> b!1451406 (= e!817223 (not true))))

(assert (=> b!1451406 e!817222))

(declare-fun res!982746 () Bool)

(assert (=> b!1451406 (=> (not res!982746) (not e!817222))))

(assert (=> b!1451406 (= res!982746 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48888 0))(
  ( (Unit!48889) )
))
(declare-fun lt!636607 () Unit!48888)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98327 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48888)

(assert (=> b!1451406 (= lt!636607 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451407 () Bool)

(declare-fun lt!636604 () SeekEntryResult!11722)

(assert (=> b!1451407 (= e!817220 (= lt!636604 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636605 lt!636606 mask!2687)))))

(declare-fun b!1451408 () Bool)

(assert (=> b!1451408 (= e!817217 e!817223)))

(declare-fun res!982744 () Bool)

(assert (=> b!1451408 (=> (not res!982744) (not e!817223))))

(assert (=> b!1451408 (= res!982744 (= lt!636604 (Intermediate!11722 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451408 (= lt!636604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636605 mask!2687) lt!636605 lt!636606 mask!2687))))

(assert (=> b!1451408 (= lt!636605 (select (store (arr!47447 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451409 () Bool)

(declare-fun res!982737 () Bool)

(assert (=> b!1451409 (=> (not res!982737) (not e!817219))))

(declare-datatypes ((List!34128 0))(
  ( (Nil!34125) (Cons!34124 (h!35474 (_ BitVec 64)) (t!48829 List!34128)) )
))
(declare-fun arrayNoDuplicates!0 (array!98327 (_ BitVec 32) List!34128) Bool)

(assert (=> b!1451409 (= res!982737 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34125))))

(declare-fun b!1451410 () Bool)

(declare-fun res!982742 () Bool)

(assert (=> b!1451410 (=> (not res!982742) (not e!817219))))

(assert (=> b!1451410 (= res!982742 (and (= (size!47998 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47998 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47998 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451411 () Bool)

(declare-fun res!982749 () Bool)

(assert (=> b!1451411 (=> (not res!982749) (not e!817219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451411 (= res!982749 (validKeyInArray!0 (select (arr!47447 a!2862) j!93)))))

(declare-fun b!1451412 () Bool)

(assert (=> b!1451412 (= e!817221 e!817217)))

(declare-fun res!982738 () Bool)

(assert (=> b!1451412 (=> (not res!982738) (not e!817217))))

(assert (=> b!1451412 (= res!982738 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47447 a!2862) j!93) mask!2687) (select (arr!47447 a!2862) j!93) a!2862 mask!2687) lt!636603))))

(assert (=> b!1451412 (= lt!636603 (Intermediate!11722 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451413 () Bool)

(declare-fun res!982747 () Bool)

(assert (=> b!1451413 (=> (not res!982747) (not e!817219))))

(assert (=> b!1451413 (= res!982747 (validKeyInArray!0 (select (arr!47447 a!2862) i!1006)))))

(assert (= (and start!124962 res!982741) b!1451410))

(assert (= (and b!1451410 res!982742) b!1451413))

(assert (= (and b!1451413 res!982747) b!1451411))

(assert (= (and b!1451411 res!982749) b!1451399))

(assert (= (and b!1451399 res!982743) b!1451409))

(assert (= (and b!1451409 res!982737) b!1451397))

(assert (= (and b!1451397 res!982745) b!1451403))

(assert (= (and b!1451403 res!982739) b!1451412))

(assert (= (and b!1451412 res!982738) b!1451404))

(assert (= (and b!1451404 res!982736) b!1451408))

(assert (= (and b!1451408 res!982744) b!1451400))

(assert (= (and b!1451400 c!133844) b!1451407))

(assert (= (and b!1451400 (not c!133844)) b!1451402))

(assert (= (and b!1451400 res!982748) b!1451401))

(assert (= (and b!1451401 res!982735) b!1451406))

(assert (= (and b!1451406 res!982746) b!1451398))

(assert (= (and b!1451398 res!982740) b!1451405))

(declare-fun m!1340051 () Bool)

(assert (=> b!1451409 m!1340051))

(declare-fun m!1340053 () Bool)

(assert (=> b!1451398 m!1340053))

(assert (=> b!1451398 m!1340053))

(declare-fun m!1340055 () Bool)

(assert (=> b!1451398 m!1340055))

(declare-fun m!1340057 () Bool)

(assert (=> b!1451407 m!1340057))

(assert (=> b!1451404 m!1340053))

(assert (=> b!1451404 m!1340053))

(declare-fun m!1340059 () Bool)

(assert (=> b!1451404 m!1340059))

(declare-fun m!1340061 () Bool)

(assert (=> start!124962 m!1340061))

(declare-fun m!1340063 () Bool)

(assert (=> start!124962 m!1340063))

(assert (=> b!1451411 m!1340053))

(assert (=> b!1451411 m!1340053))

(declare-fun m!1340065 () Bool)

(assert (=> b!1451411 m!1340065))

(declare-fun m!1340067 () Bool)

(assert (=> b!1451413 m!1340067))

(assert (=> b!1451413 m!1340067))

(declare-fun m!1340069 () Bool)

(assert (=> b!1451413 m!1340069))

(declare-fun m!1340071 () Bool)

(assert (=> b!1451402 m!1340071))

(declare-fun m!1340073 () Bool)

(assert (=> b!1451402 m!1340073))

(assert (=> b!1451412 m!1340053))

(assert (=> b!1451412 m!1340053))

(declare-fun m!1340075 () Bool)

(assert (=> b!1451412 m!1340075))

(assert (=> b!1451412 m!1340075))

(assert (=> b!1451412 m!1340053))

(declare-fun m!1340077 () Bool)

(assert (=> b!1451412 m!1340077))

(declare-fun m!1340079 () Bool)

(assert (=> b!1451408 m!1340079))

(assert (=> b!1451408 m!1340079))

(declare-fun m!1340081 () Bool)

(assert (=> b!1451408 m!1340081))

(declare-fun m!1340083 () Bool)

(assert (=> b!1451408 m!1340083))

(declare-fun m!1340085 () Bool)

(assert (=> b!1451408 m!1340085))

(assert (=> b!1451405 m!1340083))

(declare-fun m!1340087 () Bool)

(assert (=> b!1451405 m!1340087))

(declare-fun m!1340089 () Bool)

(assert (=> b!1451405 m!1340089))

(declare-fun m!1340091 () Bool)

(assert (=> b!1451405 m!1340091))

(assert (=> b!1451405 m!1340053))

(assert (=> b!1451403 m!1340083))

(declare-fun m!1340093 () Bool)

(assert (=> b!1451403 m!1340093))

(declare-fun m!1340095 () Bool)

(assert (=> b!1451399 m!1340095))

(declare-fun m!1340097 () Bool)

(assert (=> b!1451406 m!1340097))

(declare-fun m!1340099 () Bool)

(assert (=> b!1451406 m!1340099))

(check-sat (not b!1451399) (not b!1451402) (not b!1451404) (not b!1451412) (not b!1451411) (not b!1451409) (not start!124962) (not b!1451398) (not b!1451413) (not b!1451406) (not b!1451408) (not b!1451407))
(check-sat)
