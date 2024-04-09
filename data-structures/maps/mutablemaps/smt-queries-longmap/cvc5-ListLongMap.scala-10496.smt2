; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123592 () Bool)

(assert start!123592)

(declare-fun b!1432359 () Bool)

(declare-fun res!966341 () Bool)

(declare-fun e!808585 () Bool)

(assert (=> b!1432359 (=> (not res!966341) (not e!808585))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1432359 (= res!966341 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432360 () Bool)

(declare-fun res!966343 () Bool)

(declare-fun e!808586 () Bool)

(assert (=> b!1432360 (=> (not res!966343) (not e!808586))))

(declare-datatypes ((array!97482 0))(
  ( (array!97483 (arr!47044 (Array (_ BitVec 32) (_ BitVec 64))) (size!47595 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97482)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97482 (_ BitVec 32)) Bool)

(assert (=> b!1432360 (= res!966343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432361 () Bool)

(declare-fun res!966339 () Bool)

(assert (=> b!1432361 (=> (not res!966339) (not e!808586))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432361 (= res!966339 (validKeyInArray!0 (select (arr!47044 a!2831) j!81)))))

(declare-fun b!1432362 () Bool)

(declare-fun res!966333 () Bool)

(assert (=> b!1432362 (=> (not res!966333) (not e!808586))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432362 (= res!966333 (and (= (size!47595 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47595 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47595 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!966337 () Bool)

(assert (=> start!123592 (=> (not res!966337) (not e!808586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123592 (= res!966337 (validMask!0 mask!2608))))

(assert (=> start!123592 e!808586))

(assert (=> start!123592 true))

(declare-fun array_inv!35989 (array!97482) Bool)

(assert (=> start!123592 (array_inv!35989 a!2831)))

(declare-fun b!1432363 () Bool)

(declare-fun e!808584 () Bool)

(assert (=> b!1432363 (= e!808585 (not e!808584))))

(declare-fun res!966332 () Bool)

(assert (=> b!1432363 (=> res!966332 e!808584)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432363 (= res!966332 (or (= (select (arr!47044 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47044 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47044 a!2831) index!585) (select (arr!47044 a!2831) j!81)) (= (select (store (arr!47044 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808589 () Bool)

(assert (=> b!1432363 e!808589))

(declare-fun res!966338 () Bool)

(assert (=> b!1432363 (=> (not res!966338) (not e!808589))))

(assert (=> b!1432363 (= res!966338 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48384 0))(
  ( (Unit!48385) )
))
(declare-fun lt!630535 () Unit!48384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48384)

(assert (=> b!1432363 (= lt!630535 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432364 () Bool)

(assert (=> b!1432364 (= e!808584 true)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!630537 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432364 (= lt!630537 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432365 () Bool)

(declare-datatypes ((SeekEntryResult!11345 0))(
  ( (MissingZero!11345 (index!47771 (_ BitVec 32))) (Found!11345 (index!47772 (_ BitVec 32))) (Intermediate!11345 (undefined!12157 Bool) (index!47773 (_ BitVec 32)) (x!129422 (_ BitVec 32))) (Undefined!11345) (MissingVacant!11345 (index!47774 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97482 (_ BitVec 32)) SeekEntryResult!11345)

(assert (=> b!1432365 (= e!808589 (= (seekEntryOrOpen!0 (select (arr!47044 a!2831) j!81) a!2831 mask!2608) (Found!11345 j!81)))))

(declare-fun b!1432366 () Bool)

(declare-fun res!966342 () Bool)

(assert (=> b!1432366 (=> (not res!966342) (not e!808586))))

(assert (=> b!1432366 (= res!966342 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47595 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47595 a!2831))))))

(declare-fun b!1432367 () Bool)

(declare-fun e!808588 () Bool)

(assert (=> b!1432367 (= e!808586 e!808588)))

(declare-fun res!966336 () Bool)

(assert (=> b!1432367 (=> (not res!966336) (not e!808588))))

(declare-fun lt!630538 () SeekEntryResult!11345)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97482 (_ BitVec 32)) SeekEntryResult!11345)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432367 (= res!966336 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47044 a!2831) j!81) mask!2608) (select (arr!47044 a!2831) j!81) a!2831 mask!2608) lt!630538))))

(assert (=> b!1432367 (= lt!630538 (Intermediate!11345 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432368 () Bool)

(assert (=> b!1432368 (= e!808588 e!808585)))

(declare-fun res!966344 () Bool)

(assert (=> b!1432368 (=> (not res!966344) (not e!808585))))

(declare-fun lt!630534 () SeekEntryResult!11345)

(declare-fun lt!630536 () array!97482)

(declare-fun lt!630533 () (_ BitVec 64))

(assert (=> b!1432368 (= res!966344 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630533 mask!2608) lt!630533 lt!630536 mask!2608) lt!630534))))

(assert (=> b!1432368 (= lt!630534 (Intermediate!11345 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432368 (= lt!630533 (select (store (arr!47044 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432368 (= lt!630536 (array!97483 (store (arr!47044 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47595 a!2831)))))

(declare-fun b!1432369 () Bool)

(declare-fun res!966334 () Bool)

(assert (=> b!1432369 (=> (not res!966334) (not e!808586))))

(declare-datatypes ((List!33734 0))(
  ( (Nil!33731) (Cons!33730 (h!35053 (_ BitVec 64)) (t!48435 List!33734)) )
))
(declare-fun arrayNoDuplicates!0 (array!97482 (_ BitVec 32) List!33734) Bool)

(assert (=> b!1432369 (= res!966334 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33731))))

(declare-fun b!1432370 () Bool)

(declare-fun res!966335 () Bool)

(assert (=> b!1432370 (=> (not res!966335) (not e!808586))))

(assert (=> b!1432370 (= res!966335 (validKeyInArray!0 (select (arr!47044 a!2831) i!982)))))

(declare-fun b!1432371 () Bool)

(declare-fun res!966345 () Bool)

(assert (=> b!1432371 (=> (not res!966345) (not e!808585))))

(assert (=> b!1432371 (= res!966345 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630533 lt!630536 mask!2608) lt!630534))))

(declare-fun b!1432372 () Bool)

(declare-fun res!966340 () Bool)

(assert (=> b!1432372 (=> (not res!966340) (not e!808585))))

(assert (=> b!1432372 (= res!966340 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47044 a!2831) j!81) a!2831 mask!2608) lt!630538))))

(assert (= (and start!123592 res!966337) b!1432362))

(assert (= (and b!1432362 res!966333) b!1432370))

(assert (= (and b!1432370 res!966335) b!1432361))

(assert (= (and b!1432361 res!966339) b!1432360))

(assert (= (and b!1432360 res!966343) b!1432369))

(assert (= (and b!1432369 res!966334) b!1432366))

(assert (= (and b!1432366 res!966342) b!1432367))

(assert (= (and b!1432367 res!966336) b!1432368))

(assert (= (and b!1432368 res!966344) b!1432372))

(assert (= (and b!1432372 res!966340) b!1432371))

(assert (= (and b!1432371 res!966345) b!1432359))

(assert (= (and b!1432359 res!966341) b!1432363))

(assert (= (and b!1432363 res!966338) b!1432365))

(assert (= (and b!1432363 (not res!966332)) b!1432364))

(declare-fun m!1322225 () Bool)

(assert (=> b!1432372 m!1322225))

(assert (=> b!1432372 m!1322225))

(declare-fun m!1322227 () Bool)

(assert (=> b!1432372 m!1322227))

(declare-fun m!1322229 () Bool)

(assert (=> b!1432368 m!1322229))

(assert (=> b!1432368 m!1322229))

(declare-fun m!1322231 () Bool)

(assert (=> b!1432368 m!1322231))

(declare-fun m!1322233 () Bool)

(assert (=> b!1432368 m!1322233))

(declare-fun m!1322235 () Bool)

(assert (=> b!1432368 m!1322235))

(declare-fun m!1322237 () Bool)

(assert (=> b!1432364 m!1322237))

(declare-fun m!1322239 () Bool)

(assert (=> start!123592 m!1322239))

(declare-fun m!1322241 () Bool)

(assert (=> start!123592 m!1322241))

(assert (=> b!1432363 m!1322233))

(declare-fun m!1322243 () Bool)

(assert (=> b!1432363 m!1322243))

(declare-fun m!1322245 () Bool)

(assert (=> b!1432363 m!1322245))

(declare-fun m!1322247 () Bool)

(assert (=> b!1432363 m!1322247))

(assert (=> b!1432363 m!1322225))

(declare-fun m!1322249 () Bool)

(assert (=> b!1432363 m!1322249))

(assert (=> b!1432365 m!1322225))

(assert (=> b!1432365 m!1322225))

(declare-fun m!1322251 () Bool)

(assert (=> b!1432365 m!1322251))

(declare-fun m!1322253 () Bool)

(assert (=> b!1432360 m!1322253))

(assert (=> b!1432361 m!1322225))

(assert (=> b!1432361 m!1322225))

(declare-fun m!1322255 () Bool)

(assert (=> b!1432361 m!1322255))

(declare-fun m!1322257 () Bool)

(assert (=> b!1432370 m!1322257))

(assert (=> b!1432370 m!1322257))

(declare-fun m!1322259 () Bool)

(assert (=> b!1432370 m!1322259))

(declare-fun m!1322261 () Bool)

(assert (=> b!1432371 m!1322261))

(declare-fun m!1322263 () Bool)

(assert (=> b!1432369 m!1322263))

(assert (=> b!1432367 m!1322225))

(assert (=> b!1432367 m!1322225))

(declare-fun m!1322265 () Bool)

(assert (=> b!1432367 m!1322265))

(assert (=> b!1432367 m!1322265))

(assert (=> b!1432367 m!1322225))

(declare-fun m!1322267 () Bool)

(assert (=> b!1432367 m!1322267))

(push 1)

