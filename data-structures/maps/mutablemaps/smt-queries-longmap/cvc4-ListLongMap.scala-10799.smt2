; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126428 () Bool)

(assert start!126428)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1481583 () Bool)

(declare-datatypes ((SeekEntryResult!12218 0))(
  ( (MissingZero!12218 (index!51263 (_ BitVec 32))) (Found!12218 (index!51264 (_ BitVec 32))) (Intermediate!12218 (undefined!13030 Bool) (index!51265 (_ BitVec 32)) (x!132848 (_ BitVec 32))) (Undefined!12218) (MissingVacant!12218 (index!51266 (_ BitVec 32))) )
))
(declare-fun lt!646785 () SeekEntryResult!12218)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!830956 () Bool)

(declare-datatypes ((array!99364 0))(
  ( (array!99365 (arr!47955 (Array (_ BitVec 32) (_ BitVec 64))) (size!48506 (_ BitVec 32))) )
))
(declare-fun lt!646782 () array!99364)

(declare-fun lt!646786 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99364 (_ BitVec 32)) SeekEntryResult!12218)

(assert (=> b!1481583 (= e!830956 (= lt!646785 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646786 lt!646782 mask!2687)))))

(declare-fun b!1481584 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99364 (_ BitVec 32)) SeekEntryResult!12218)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99364 (_ BitVec 32)) SeekEntryResult!12218)

(assert (=> b!1481584 (= e!830956 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646786 lt!646782 mask!2687) (seekEntryOrOpen!0 lt!646786 lt!646782 mask!2687)))))

(declare-fun b!1481585 () Bool)

(declare-fun res!1006997 () Bool)

(declare-fun e!830952 () Bool)

(assert (=> b!1481585 (=> (not res!1006997) (not e!830952))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1481585 (= res!1006997 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1006992 () Bool)

(declare-fun e!830954 () Bool)

(assert (=> start!126428 (=> (not res!1006992) (not e!830954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126428 (= res!1006992 (validMask!0 mask!2687))))

(assert (=> start!126428 e!830954))

(assert (=> start!126428 true))

(declare-fun a!2862 () array!99364)

(declare-fun array_inv!36900 (array!99364) Bool)

(assert (=> start!126428 (array_inv!36900 a!2862)))

(declare-fun b!1481586 () Bool)

(declare-fun res!1007004 () Bool)

(assert (=> b!1481586 (=> (not res!1007004) (not e!830954))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481586 (= res!1007004 (validKeyInArray!0 (select (arr!47955 a!2862) j!93)))))

(declare-fun b!1481587 () Bool)

(declare-fun e!830953 () Bool)

(assert (=> b!1481587 (= e!830953 e!830952)))

(declare-fun res!1007001 () Bool)

(assert (=> b!1481587 (=> (not res!1007001) (not e!830952))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1481587 (= res!1007001 (= lt!646785 (Intermediate!12218 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481587 (= lt!646785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646786 mask!2687) lt!646786 lt!646782 mask!2687))))

(assert (=> b!1481587 (= lt!646786 (select (store (arr!47955 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481588 () Bool)

(declare-fun res!1006991 () Bool)

(assert (=> b!1481588 (=> (not res!1006991) (not e!830954))))

(declare-datatypes ((List!34636 0))(
  ( (Nil!34633) (Cons!34632 (h!36003 (_ BitVec 64)) (t!49337 List!34636)) )
))
(declare-fun arrayNoDuplicates!0 (array!99364 (_ BitVec 32) List!34636) Bool)

(assert (=> b!1481588 (= res!1006991 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34633))))

(declare-fun b!1481589 () Bool)

(declare-fun res!1006993 () Bool)

(assert (=> b!1481589 (=> (not res!1006993) (not e!830954))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1481589 (= res!1006993 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48506 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48506 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48506 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481590 () Bool)

(declare-fun res!1006998 () Bool)

(declare-fun e!830955 () Bool)

(assert (=> b!1481590 (=> (not res!1006998) (not e!830955))))

(assert (=> b!1481590 (= res!1006998 (= (seekEntryOrOpen!0 (select (arr!47955 a!2862) j!93) a!2862 mask!2687) (Found!12218 j!93)))))

(declare-fun b!1481591 () Bool)

(declare-fun res!1006995 () Bool)

(assert (=> b!1481591 (=> (not res!1006995) (not e!830954))))

(assert (=> b!1481591 (= res!1006995 (and (= (size!48506 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48506 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48506 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481592 () Bool)

(declare-fun res!1006990 () Bool)

(assert (=> b!1481592 (=> (not res!1006990) (not e!830952))))

(assert (=> b!1481592 (= res!1006990 e!830956)))

(declare-fun c!136820 () Bool)

(assert (=> b!1481592 (= c!136820 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481593 () Bool)

(declare-fun e!830957 () Bool)

(assert (=> b!1481593 (= e!830954 e!830957)))

(declare-fun res!1007003 () Bool)

(assert (=> b!1481593 (=> (not res!1007003) (not e!830957))))

(assert (=> b!1481593 (= res!1007003 (= (select (store (arr!47955 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481593 (= lt!646782 (array!99365 (store (arr!47955 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48506 a!2862)))))

(declare-fun b!1481594 () Bool)

(declare-fun res!1007000 () Bool)

(assert (=> b!1481594 (=> (not res!1007000) (not e!830954))))

(assert (=> b!1481594 (= res!1007000 (validKeyInArray!0 (select (arr!47955 a!2862) i!1006)))))

(declare-fun b!1481595 () Bool)

(declare-fun res!1006994 () Bool)

(assert (=> b!1481595 (=> (not res!1006994) (not e!830954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99364 (_ BitVec 32)) Bool)

(assert (=> b!1481595 (= res!1006994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481596 () Bool)

(assert (=> b!1481596 (= e!830957 e!830953)))

(declare-fun res!1007002 () Bool)

(assert (=> b!1481596 (=> (not res!1007002) (not e!830953))))

(declare-fun lt!646784 () SeekEntryResult!12218)

(assert (=> b!1481596 (= res!1007002 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47955 a!2862) j!93) mask!2687) (select (arr!47955 a!2862) j!93) a!2862 mask!2687) lt!646784))))

(assert (=> b!1481596 (= lt!646784 (Intermediate!12218 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481597 () Bool)

(assert (=> b!1481597 (= e!830952 (not true))))

(assert (=> b!1481597 e!830955))

(declare-fun res!1006996 () Bool)

(assert (=> b!1481597 (=> (not res!1006996) (not e!830955))))

(assert (=> b!1481597 (= res!1006996 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49724 0))(
  ( (Unit!49725) )
))
(declare-fun lt!646783 () Unit!49724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49724)

(assert (=> b!1481597 (= lt!646783 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481598 () Bool)

(assert (=> b!1481598 (= e!830955 (and (or (= (select (arr!47955 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47955 a!2862) intermediateBeforeIndex!19) (select (arr!47955 a!2862) j!93))) (or (and (= (select (arr!47955 a!2862) index!646) (select (store (arr!47955 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47955 a!2862) index!646) (select (arr!47955 a!2862) j!93))) (= (select (arr!47955 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47955 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481599 () Bool)

(declare-fun res!1006999 () Bool)

(assert (=> b!1481599 (=> (not res!1006999) (not e!830953))))

(assert (=> b!1481599 (= res!1006999 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47955 a!2862) j!93) a!2862 mask!2687) lt!646784))))

(assert (= (and start!126428 res!1006992) b!1481591))

(assert (= (and b!1481591 res!1006995) b!1481594))

(assert (= (and b!1481594 res!1007000) b!1481586))

(assert (= (and b!1481586 res!1007004) b!1481595))

(assert (= (and b!1481595 res!1006994) b!1481588))

(assert (= (and b!1481588 res!1006991) b!1481589))

(assert (= (and b!1481589 res!1006993) b!1481593))

(assert (= (and b!1481593 res!1007003) b!1481596))

(assert (= (and b!1481596 res!1007002) b!1481599))

(assert (= (and b!1481599 res!1006999) b!1481587))

(assert (= (and b!1481587 res!1007001) b!1481592))

(assert (= (and b!1481592 c!136820) b!1481583))

(assert (= (and b!1481592 (not c!136820)) b!1481584))

(assert (= (and b!1481592 res!1006990) b!1481585))

(assert (= (and b!1481585 res!1006997) b!1481597))

(assert (= (and b!1481597 res!1006996) b!1481590))

(assert (= (and b!1481590 res!1006998) b!1481598))

(declare-fun m!1367377 () Bool)

(assert (=> b!1481586 m!1367377))

(assert (=> b!1481586 m!1367377))

(declare-fun m!1367379 () Bool)

(assert (=> b!1481586 m!1367379))

(assert (=> b!1481599 m!1367377))

(assert (=> b!1481599 m!1367377))

(declare-fun m!1367381 () Bool)

(assert (=> b!1481599 m!1367381))

(declare-fun m!1367383 () Bool)

(assert (=> b!1481588 m!1367383))

(declare-fun m!1367385 () Bool)

(assert (=> start!126428 m!1367385))

(declare-fun m!1367387 () Bool)

(assert (=> start!126428 m!1367387))

(declare-fun m!1367389 () Bool)

(assert (=> b!1481584 m!1367389))

(declare-fun m!1367391 () Bool)

(assert (=> b!1481584 m!1367391))

(declare-fun m!1367393 () Bool)

(assert (=> b!1481597 m!1367393))

(declare-fun m!1367395 () Bool)

(assert (=> b!1481597 m!1367395))

(assert (=> b!1481590 m!1367377))

(assert (=> b!1481590 m!1367377))

(declare-fun m!1367397 () Bool)

(assert (=> b!1481590 m!1367397))

(declare-fun m!1367399 () Bool)

(assert (=> b!1481595 m!1367399))

(declare-fun m!1367401 () Bool)

(assert (=> b!1481587 m!1367401))

(assert (=> b!1481587 m!1367401))

(declare-fun m!1367403 () Bool)

(assert (=> b!1481587 m!1367403))

(declare-fun m!1367405 () Bool)

(assert (=> b!1481587 m!1367405))

(declare-fun m!1367407 () Bool)

(assert (=> b!1481587 m!1367407))

(assert (=> b!1481593 m!1367405))

(declare-fun m!1367409 () Bool)

(assert (=> b!1481593 m!1367409))

(assert (=> b!1481596 m!1367377))

(assert (=> b!1481596 m!1367377))

(declare-fun m!1367411 () Bool)

(assert (=> b!1481596 m!1367411))

(assert (=> b!1481596 m!1367411))

(assert (=> b!1481596 m!1367377))

(declare-fun m!1367413 () Bool)

(assert (=> b!1481596 m!1367413))

(declare-fun m!1367415 () Bool)

(assert (=> b!1481583 m!1367415))

(declare-fun m!1367417 () Bool)

(assert (=> b!1481594 m!1367417))

(assert (=> b!1481594 m!1367417))

(declare-fun m!1367419 () Bool)

(assert (=> b!1481594 m!1367419))

(assert (=> b!1481598 m!1367405))

(declare-fun m!1367421 () Bool)

(assert (=> b!1481598 m!1367421))

(declare-fun m!1367423 () Bool)

(assert (=> b!1481598 m!1367423))

(declare-fun m!1367425 () Bool)

(assert (=> b!1481598 m!1367425))

(assert (=> b!1481598 m!1367377))

(push 1)

