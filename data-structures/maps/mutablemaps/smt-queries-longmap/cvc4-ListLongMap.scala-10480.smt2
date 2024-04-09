; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123302 () Bool)

(assert start!123302)

(declare-fun b!1429285 () Bool)

(declare-fun e!807097 () Bool)

(declare-fun e!807098 () Bool)

(assert (=> b!1429285 (= e!807097 e!807098)))

(declare-fun res!964034 () Bool)

(assert (=> b!1429285 (=> (not res!964034) (not e!807098))))

(declare-datatypes ((SeekEntryResult!11299 0))(
  ( (MissingZero!11299 (index!47587 (_ BitVec 32))) (Found!11299 (index!47588 (_ BitVec 32))) (Intermediate!11299 (undefined!12111 Bool) (index!47589 (_ BitVec 32)) (x!129224 (_ BitVec 32))) (Undefined!11299) (MissingVacant!11299 (index!47590 (_ BitVec 32))) )
))
(declare-fun lt!629278 () SeekEntryResult!11299)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97381 0))(
  ( (array!97382 (arr!46998 (Array (_ BitVec 32) (_ BitVec 64))) (size!47549 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97381)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97381 (_ BitVec 32)) SeekEntryResult!11299)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429285 (= res!964034 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46998 a!2831) j!81) mask!2608) (select (arr!46998 a!2831) j!81) a!2831 mask!2608) lt!629278))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1429285 (= lt!629278 (Intermediate!11299 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429286 () Bool)

(declare-fun res!964023 () Bool)

(assert (=> b!1429286 (=> (not res!964023) (not e!807097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97381 (_ BitVec 32)) Bool)

(assert (=> b!1429286 (= res!964023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429287 () Bool)

(declare-fun res!964032 () Bool)

(declare-fun e!807095 () Bool)

(assert (=> b!1429287 (=> (not res!964032) (not e!807095))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1429287 (= res!964032 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46998 a!2831) j!81) a!2831 mask!2608) lt!629278))))

(declare-fun b!1429288 () Bool)

(declare-fun res!964035 () Bool)

(assert (=> b!1429288 (=> (not res!964035) (not e!807095))))

(declare-fun lt!629279 () SeekEntryResult!11299)

(declare-fun lt!629277 () array!97381)

(declare-fun lt!629281 () (_ BitVec 64))

(assert (=> b!1429288 (= res!964035 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629281 lt!629277 mask!2608) lt!629279))))

(declare-fun e!807094 () Bool)

(declare-fun b!1429289 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97381 (_ BitVec 32)) SeekEntryResult!11299)

(assert (=> b!1429289 (= e!807094 (= (seekEntryOrOpen!0 (select (arr!46998 a!2831) j!81) a!2831 mask!2608) (Found!11299 j!81)))))

(declare-fun res!964029 () Bool)

(assert (=> start!123302 (=> (not res!964029) (not e!807097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123302 (= res!964029 (validMask!0 mask!2608))))

(assert (=> start!123302 e!807097))

(assert (=> start!123302 true))

(declare-fun array_inv!35943 (array!97381) Bool)

(assert (=> start!123302 (array_inv!35943 a!2831)))

(declare-fun b!1429290 () Bool)

(declare-fun res!964025 () Bool)

(assert (=> b!1429290 (=> (not res!964025) (not e!807097))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429290 (= res!964025 (validKeyInArray!0 (select (arr!46998 a!2831) i!982)))))

(declare-fun b!1429291 () Bool)

(declare-fun res!964028 () Bool)

(assert (=> b!1429291 (=> (not res!964028) (not e!807097))))

(declare-datatypes ((List!33688 0))(
  ( (Nil!33685) (Cons!33684 (h!34998 (_ BitVec 64)) (t!48389 List!33688)) )
))
(declare-fun arrayNoDuplicates!0 (array!97381 (_ BitVec 32) List!33688) Bool)

(assert (=> b!1429291 (= res!964028 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33685))))

(declare-fun b!1429292 () Bool)

(assert (=> b!1429292 (= e!807098 e!807095)))

(declare-fun res!964027 () Bool)

(assert (=> b!1429292 (=> (not res!964027) (not e!807095))))

(assert (=> b!1429292 (= res!964027 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629281 mask!2608) lt!629281 lt!629277 mask!2608) lt!629279))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429292 (= lt!629279 (Intermediate!11299 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429292 (= lt!629281 (select (store (arr!46998 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429292 (= lt!629277 (array!97382 (store (arr!46998 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47549 a!2831)))))

(declare-fun b!1429293 () Bool)

(declare-fun res!964024 () Bool)

(assert (=> b!1429293 (=> (not res!964024) (not e!807097))))

(assert (=> b!1429293 (= res!964024 (and (= (size!47549 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47549 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47549 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429294 () Bool)

(declare-fun res!964026 () Bool)

(assert (=> b!1429294 (=> (not res!964026) (not e!807095))))

(assert (=> b!1429294 (= res!964026 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429295 () Bool)

(declare-fun res!964030 () Bool)

(assert (=> b!1429295 (=> (not res!964030) (not e!807097))))

(assert (=> b!1429295 (= res!964030 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47549 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47549 a!2831))))))

(declare-fun b!1429296 () Bool)

(declare-fun res!964033 () Bool)

(assert (=> b!1429296 (=> (not res!964033) (not e!807097))))

(assert (=> b!1429296 (= res!964033 (validKeyInArray!0 (select (arr!46998 a!2831) j!81)))))

(declare-fun b!1429297 () Bool)

(assert (=> b!1429297 (= e!807095 (not true))))

(assert (=> b!1429297 e!807094))

(declare-fun res!964031 () Bool)

(assert (=> b!1429297 (=> (not res!964031) (not e!807094))))

(assert (=> b!1429297 (= res!964031 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48292 0))(
  ( (Unit!48293) )
))
(declare-fun lt!629280 () Unit!48292)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97381 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48292)

(assert (=> b!1429297 (= lt!629280 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!123302 res!964029) b!1429293))

(assert (= (and b!1429293 res!964024) b!1429290))

(assert (= (and b!1429290 res!964025) b!1429296))

(assert (= (and b!1429296 res!964033) b!1429286))

(assert (= (and b!1429286 res!964023) b!1429291))

(assert (= (and b!1429291 res!964028) b!1429295))

(assert (= (and b!1429295 res!964030) b!1429285))

(assert (= (and b!1429285 res!964034) b!1429292))

(assert (= (and b!1429292 res!964027) b!1429287))

(assert (= (and b!1429287 res!964032) b!1429288))

(assert (= (and b!1429288 res!964035) b!1429294))

(assert (= (and b!1429294 res!964026) b!1429297))

(assert (= (and b!1429297 res!964031) b!1429289))

(declare-fun m!1319445 () Bool)

(assert (=> b!1429291 m!1319445))

(declare-fun m!1319447 () Bool)

(assert (=> b!1429288 m!1319447))

(declare-fun m!1319449 () Bool)

(assert (=> b!1429287 m!1319449))

(assert (=> b!1429287 m!1319449))

(declare-fun m!1319451 () Bool)

(assert (=> b!1429287 m!1319451))

(assert (=> b!1429285 m!1319449))

(assert (=> b!1429285 m!1319449))

(declare-fun m!1319453 () Bool)

(assert (=> b!1429285 m!1319453))

(assert (=> b!1429285 m!1319453))

(assert (=> b!1429285 m!1319449))

(declare-fun m!1319455 () Bool)

(assert (=> b!1429285 m!1319455))

(declare-fun m!1319457 () Bool)

(assert (=> start!123302 m!1319457))

(declare-fun m!1319459 () Bool)

(assert (=> start!123302 m!1319459))

(declare-fun m!1319461 () Bool)

(assert (=> b!1429290 m!1319461))

(assert (=> b!1429290 m!1319461))

(declare-fun m!1319463 () Bool)

(assert (=> b!1429290 m!1319463))

(declare-fun m!1319465 () Bool)

(assert (=> b!1429292 m!1319465))

(assert (=> b!1429292 m!1319465))

(declare-fun m!1319467 () Bool)

(assert (=> b!1429292 m!1319467))

(declare-fun m!1319469 () Bool)

(assert (=> b!1429292 m!1319469))

(declare-fun m!1319471 () Bool)

(assert (=> b!1429292 m!1319471))

(declare-fun m!1319473 () Bool)

(assert (=> b!1429297 m!1319473))

(declare-fun m!1319475 () Bool)

(assert (=> b!1429297 m!1319475))

(assert (=> b!1429289 m!1319449))

(assert (=> b!1429289 m!1319449))

(declare-fun m!1319477 () Bool)

(assert (=> b!1429289 m!1319477))

(assert (=> b!1429296 m!1319449))

(assert (=> b!1429296 m!1319449))

(declare-fun m!1319479 () Bool)

(assert (=> b!1429296 m!1319479))

(declare-fun m!1319481 () Bool)

(assert (=> b!1429286 m!1319481))

(push 1)

