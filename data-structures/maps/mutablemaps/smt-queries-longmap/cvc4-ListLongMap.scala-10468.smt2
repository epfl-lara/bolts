; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123122 () Bool)

(assert start!123122)

(declare-fun res!962413 () Bool)

(declare-fun e!806176 () Bool)

(assert (=> start!123122 (=> (not res!962413) (not e!806176))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123122 (= res!962413 (validMask!0 mask!2608))))

(assert (=> start!123122 e!806176))

(assert (=> start!123122 true))

(declare-datatypes ((array!97303 0))(
  ( (array!97304 (arr!46962 (Array (_ BitVec 32) (_ BitVec 64))) (size!47513 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97303)

(declare-fun array_inv!35907 (array!97303) Bool)

(assert (=> start!123122 (array_inv!35907 a!2831)))

(declare-fun b!1427263 () Bool)

(declare-fun res!962403 () Bool)

(declare-fun e!806178 () Bool)

(assert (=> b!1427263 (=> (not res!962403) (not e!806178))))

(declare-datatypes ((SeekEntryResult!11263 0))(
  ( (MissingZero!11263 (index!47443 (_ BitVec 32))) (Found!11263 (index!47444 (_ BitVec 32))) (Intermediate!11263 (undefined!12075 Bool) (index!47445 (_ BitVec 32)) (x!129080 (_ BitVec 32))) (Undefined!11263) (MissingVacant!11263 (index!47446 (_ BitVec 32))) )
))
(declare-fun lt!628474 () SeekEntryResult!11263)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!628476 () (_ BitVec 64))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!628475 () array!97303)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97303 (_ BitVec 32)) SeekEntryResult!11263)

(assert (=> b!1427263 (= res!962403 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628476 lt!628475 mask!2608) lt!628474))))

(declare-fun b!1427264 () Bool)

(declare-fun res!962412 () Bool)

(assert (=> b!1427264 (=> (not res!962412) (not e!806178))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427264 (= res!962412 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun e!806179 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1427265 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97303 (_ BitVec 32)) SeekEntryResult!11263)

(assert (=> b!1427265 (= e!806179 (= (seekEntryOrOpen!0 (select (arr!46962 a!2831) j!81) a!2831 mask!2608) (Found!11263 j!81)))))

(declare-fun b!1427266 () Bool)

(declare-fun res!962415 () Bool)

(assert (=> b!1427266 (=> (not res!962415) (not e!806178))))

(declare-fun lt!628477 () SeekEntryResult!11263)

(assert (=> b!1427266 (= res!962415 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46962 a!2831) j!81) a!2831 mask!2608) lt!628477))))

(declare-fun b!1427267 () Bool)

(declare-fun res!962405 () Bool)

(assert (=> b!1427267 (=> (not res!962405) (not e!806176))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427267 (= res!962405 (and (= (size!47513 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47513 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47513 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427268 () Bool)

(declare-fun e!806180 () Bool)

(assert (=> b!1427268 (= e!806180 e!806178)))

(declare-fun res!962414 () Bool)

(assert (=> b!1427268 (=> (not res!962414) (not e!806178))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427268 (= res!962414 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628476 mask!2608) lt!628476 lt!628475 mask!2608) lt!628474))))

(assert (=> b!1427268 (= lt!628474 (Intermediate!11263 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427268 (= lt!628476 (select (store (arr!46962 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427268 (= lt!628475 (array!97304 (store (arr!46962 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47513 a!2831)))))

(declare-fun b!1427269 () Bool)

(declare-fun res!962411 () Bool)

(assert (=> b!1427269 (=> (not res!962411) (not e!806176))))

(declare-datatypes ((List!33652 0))(
  ( (Nil!33649) (Cons!33648 (h!34956 (_ BitVec 64)) (t!48353 List!33652)) )
))
(declare-fun arrayNoDuplicates!0 (array!97303 (_ BitVec 32) List!33652) Bool)

(assert (=> b!1427269 (= res!962411 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33649))))

(declare-fun b!1427270 () Bool)

(declare-fun res!962410 () Bool)

(assert (=> b!1427270 (=> (not res!962410) (not e!806176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427270 (= res!962410 (validKeyInArray!0 (select (arr!46962 a!2831) i!982)))))

(declare-fun b!1427271 () Bool)

(declare-fun res!962406 () Bool)

(assert (=> b!1427271 (=> (not res!962406) (not e!806176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97303 (_ BitVec 32)) Bool)

(assert (=> b!1427271 (= res!962406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427272 () Bool)

(declare-fun res!962407 () Bool)

(assert (=> b!1427272 (=> (not res!962407) (not e!806176))))

(assert (=> b!1427272 (= res!962407 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47513 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47513 a!2831))))))

(declare-fun b!1427273 () Bool)

(assert (=> b!1427273 (= e!806176 e!806180)))

(declare-fun res!962409 () Bool)

(assert (=> b!1427273 (=> (not res!962409) (not e!806180))))

(assert (=> b!1427273 (= res!962409 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46962 a!2831) j!81) mask!2608) (select (arr!46962 a!2831) j!81) a!2831 mask!2608) lt!628477))))

(assert (=> b!1427273 (= lt!628477 (Intermediate!11263 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427274 () Bool)

(assert (=> b!1427274 (= e!806178 (not true))))

(assert (=> b!1427274 e!806179))

(declare-fun res!962408 () Bool)

(assert (=> b!1427274 (=> (not res!962408) (not e!806179))))

(assert (=> b!1427274 (= res!962408 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48220 0))(
  ( (Unit!48221) )
))
(declare-fun lt!628473 () Unit!48220)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48220)

(assert (=> b!1427274 (= lt!628473 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427275 () Bool)

(declare-fun res!962404 () Bool)

(assert (=> b!1427275 (=> (not res!962404) (not e!806176))))

(assert (=> b!1427275 (= res!962404 (validKeyInArray!0 (select (arr!46962 a!2831) j!81)))))

(assert (= (and start!123122 res!962413) b!1427267))

(assert (= (and b!1427267 res!962405) b!1427270))

(assert (= (and b!1427270 res!962410) b!1427275))

(assert (= (and b!1427275 res!962404) b!1427271))

(assert (= (and b!1427271 res!962406) b!1427269))

(assert (= (and b!1427269 res!962411) b!1427272))

(assert (= (and b!1427272 res!962407) b!1427273))

(assert (= (and b!1427273 res!962409) b!1427268))

(assert (= (and b!1427268 res!962414) b!1427266))

(assert (= (and b!1427266 res!962415) b!1427263))

(assert (= (and b!1427263 res!962403) b!1427264))

(assert (= (and b!1427264 res!962412) b!1427274))

(assert (= (and b!1427274 res!962408) b!1427265))

(declare-fun m!1317693 () Bool)

(assert (=> b!1427265 m!1317693))

(assert (=> b!1427265 m!1317693))

(declare-fun m!1317695 () Bool)

(assert (=> b!1427265 m!1317695))

(declare-fun m!1317697 () Bool)

(assert (=> b!1427263 m!1317697))

(declare-fun m!1317699 () Bool)

(assert (=> start!123122 m!1317699))

(declare-fun m!1317701 () Bool)

(assert (=> start!123122 m!1317701))

(declare-fun m!1317703 () Bool)

(assert (=> b!1427271 m!1317703))

(assert (=> b!1427266 m!1317693))

(assert (=> b!1427266 m!1317693))

(declare-fun m!1317705 () Bool)

(assert (=> b!1427266 m!1317705))

(assert (=> b!1427273 m!1317693))

(assert (=> b!1427273 m!1317693))

(declare-fun m!1317707 () Bool)

(assert (=> b!1427273 m!1317707))

(assert (=> b!1427273 m!1317707))

(assert (=> b!1427273 m!1317693))

(declare-fun m!1317709 () Bool)

(assert (=> b!1427273 m!1317709))

(assert (=> b!1427275 m!1317693))

(assert (=> b!1427275 m!1317693))

(declare-fun m!1317711 () Bool)

(assert (=> b!1427275 m!1317711))

(declare-fun m!1317713 () Bool)

(assert (=> b!1427269 m!1317713))

(declare-fun m!1317715 () Bool)

(assert (=> b!1427274 m!1317715))

(declare-fun m!1317717 () Bool)

(assert (=> b!1427274 m!1317717))

(declare-fun m!1317719 () Bool)

(assert (=> b!1427268 m!1317719))

(assert (=> b!1427268 m!1317719))

(declare-fun m!1317721 () Bool)

(assert (=> b!1427268 m!1317721))

(declare-fun m!1317723 () Bool)

(assert (=> b!1427268 m!1317723))

(declare-fun m!1317725 () Bool)

(assert (=> b!1427268 m!1317725))

(declare-fun m!1317727 () Bool)

(assert (=> b!1427270 m!1317727))

(assert (=> b!1427270 m!1317727))

(declare-fun m!1317729 () Bool)

(assert (=> b!1427270 m!1317729))

(push 1)

