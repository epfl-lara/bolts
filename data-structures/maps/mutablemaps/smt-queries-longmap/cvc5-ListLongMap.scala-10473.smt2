; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123202 () Bool)

(assert start!123202)

(declare-fun b!1428079 () Bool)

(declare-fun res!963018 () Bool)

(declare-fun e!806561 () Bool)

(assert (=> b!1428079 (=> (not res!963018) (not e!806561))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428079 (= res!963018 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428080 () Bool)

(declare-fun res!963030 () Bool)

(declare-fun e!806563 () Bool)

(assert (=> b!1428080 (=> (not res!963030) (not e!806563))))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97332 0))(
  ( (array!97333 (arr!46975 (Array (_ BitVec 32) (_ BitVec 64))) (size!47526 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97332)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428080 (= res!963030 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47526 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47526 a!2831))))))

(declare-fun e!806562 () Bool)

(declare-fun b!1428081 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11276 0))(
  ( (MissingZero!11276 (index!47495 (_ BitVec 32))) (Found!11276 (index!47496 (_ BitVec 32))) (Intermediate!11276 (undefined!12088 Bool) (index!47497 (_ BitVec 32)) (x!129139 (_ BitVec 32))) (Undefined!11276) (MissingVacant!11276 (index!47498 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97332 (_ BitVec 32)) SeekEntryResult!11276)

(assert (=> b!1428081 (= e!806562 (= (seekEntryOrOpen!0 (select (arr!46975 a!2831) j!81) a!2831 mask!2608) (Found!11276 j!81)))))

(declare-fun res!963022 () Bool)

(assert (=> start!123202 (=> (not res!963022) (not e!806563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123202 (= res!963022 (validMask!0 mask!2608))))

(assert (=> start!123202 e!806563))

(assert (=> start!123202 true))

(declare-fun array_inv!35920 (array!97332) Bool)

(assert (=> start!123202 (array_inv!35920 a!2831)))

(declare-fun b!1428082 () Bool)

(assert (=> b!1428082 (= e!806561 (not true))))

(assert (=> b!1428082 e!806562))

(declare-fun res!963020 () Bool)

(assert (=> b!1428082 (=> (not res!963020) (not e!806562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97332 (_ BitVec 32)) Bool)

(assert (=> b!1428082 (= res!963020 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48246 0))(
  ( (Unit!48247) )
))
(declare-fun lt!628803 () Unit!48246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48246)

(assert (=> b!1428082 (= lt!628803 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428083 () Bool)

(declare-fun e!806560 () Bool)

(assert (=> b!1428083 (= e!806563 e!806560)))

(declare-fun res!963029 () Bool)

(assert (=> b!1428083 (=> (not res!963029) (not e!806560))))

(declare-fun lt!628802 () SeekEntryResult!11276)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97332 (_ BitVec 32)) SeekEntryResult!11276)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428083 (= res!963029 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46975 a!2831) j!81) mask!2608) (select (arr!46975 a!2831) j!81) a!2831 mask!2608) lt!628802))))

(assert (=> b!1428083 (= lt!628802 (Intermediate!11276 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428084 () Bool)

(declare-fun res!963027 () Bool)

(assert (=> b!1428084 (=> (not res!963027) (not e!806563))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428084 (= res!963027 (validKeyInArray!0 (select (arr!46975 a!2831) i!982)))))

(declare-fun b!1428085 () Bool)

(assert (=> b!1428085 (= e!806560 e!806561)))

(declare-fun res!963021 () Bool)

(assert (=> b!1428085 (=> (not res!963021) (not e!806561))))

(declare-fun lt!628801 () array!97332)

(declare-fun lt!628804 () SeekEntryResult!11276)

(declare-fun lt!628800 () (_ BitVec 64))

(assert (=> b!1428085 (= res!963021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628800 mask!2608) lt!628800 lt!628801 mask!2608) lt!628804))))

(assert (=> b!1428085 (= lt!628804 (Intermediate!11276 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1428085 (= lt!628800 (select (store (arr!46975 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428085 (= lt!628801 (array!97333 (store (arr!46975 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47526 a!2831)))))

(declare-fun b!1428086 () Bool)

(declare-fun res!963028 () Bool)

(assert (=> b!1428086 (=> (not res!963028) (not e!806563))))

(declare-datatypes ((List!33665 0))(
  ( (Nil!33662) (Cons!33661 (h!34972 (_ BitVec 64)) (t!48366 List!33665)) )
))
(declare-fun arrayNoDuplicates!0 (array!97332 (_ BitVec 32) List!33665) Bool)

(assert (=> b!1428086 (= res!963028 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33662))))

(declare-fun b!1428087 () Bool)

(declare-fun res!963025 () Bool)

(assert (=> b!1428087 (=> (not res!963025) (not e!806563))))

(assert (=> b!1428087 (= res!963025 (and (= (size!47526 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47526 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47526 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428088 () Bool)

(declare-fun res!963026 () Bool)

(assert (=> b!1428088 (=> (not res!963026) (not e!806563))))

(assert (=> b!1428088 (= res!963026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428089 () Bool)

(declare-fun res!963023 () Bool)

(assert (=> b!1428089 (=> (not res!963023) (not e!806561))))

(assert (=> b!1428089 (= res!963023 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628800 lt!628801 mask!2608) lt!628804))))

(declare-fun b!1428090 () Bool)

(declare-fun res!963019 () Bool)

(assert (=> b!1428090 (=> (not res!963019) (not e!806563))))

(assert (=> b!1428090 (= res!963019 (validKeyInArray!0 (select (arr!46975 a!2831) j!81)))))

(declare-fun b!1428091 () Bool)

(declare-fun res!963024 () Bool)

(assert (=> b!1428091 (=> (not res!963024) (not e!806561))))

(assert (=> b!1428091 (= res!963024 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46975 a!2831) j!81) a!2831 mask!2608) lt!628802))))

(assert (= (and start!123202 res!963022) b!1428087))

(assert (= (and b!1428087 res!963025) b!1428084))

(assert (= (and b!1428084 res!963027) b!1428090))

(assert (= (and b!1428090 res!963019) b!1428088))

(assert (= (and b!1428088 res!963026) b!1428086))

(assert (= (and b!1428086 res!963028) b!1428080))

(assert (= (and b!1428080 res!963030) b!1428083))

(assert (= (and b!1428083 res!963029) b!1428085))

(assert (= (and b!1428085 res!963021) b!1428091))

(assert (= (and b!1428091 res!963024) b!1428089))

(assert (= (and b!1428089 res!963023) b!1428079))

(assert (= (and b!1428079 res!963018) b!1428082))

(assert (= (and b!1428082 res!963020) b!1428081))

(declare-fun m!1318379 () Bool)

(assert (=> start!123202 m!1318379))

(declare-fun m!1318381 () Bool)

(assert (=> start!123202 m!1318381))

(declare-fun m!1318383 () Bool)

(assert (=> b!1428085 m!1318383))

(assert (=> b!1428085 m!1318383))

(declare-fun m!1318385 () Bool)

(assert (=> b!1428085 m!1318385))

(declare-fun m!1318387 () Bool)

(assert (=> b!1428085 m!1318387))

(declare-fun m!1318389 () Bool)

(assert (=> b!1428085 m!1318389))

(declare-fun m!1318391 () Bool)

(assert (=> b!1428090 m!1318391))

(assert (=> b!1428090 m!1318391))

(declare-fun m!1318393 () Bool)

(assert (=> b!1428090 m!1318393))

(assert (=> b!1428081 m!1318391))

(assert (=> b!1428081 m!1318391))

(declare-fun m!1318395 () Bool)

(assert (=> b!1428081 m!1318395))

(declare-fun m!1318397 () Bool)

(assert (=> b!1428086 m!1318397))

(assert (=> b!1428091 m!1318391))

(assert (=> b!1428091 m!1318391))

(declare-fun m!1318399 () Bool)

(assert (=> b!1428091 m!1318399))

(declare-fun m!1318401 () Bool)

(assert (=> b!1428088 m!1318401))

(declare-fun m!1318403 () Bool)

(assert (=> b!1428082 m!1318403))

(declare-fun m!1318405 () Bool)

(assert (=> b!1428082 m!1318405))

(assert (=> b!1428083 m!1318391))

(assert (=> b!1428083 m!1318391))

(declare-fun m!1318407 () Bool)

(assert (=> b!1428083 m!1318407))

(assert (=> b!1428083 m!1318407))

(assert (=> b!1428083 m!1318391))

(declare-fun m!1318409 () Bool)

(assert (=> b!1428083 m!1318409))

(declare-fun m!1318411 () Bool)

(assert (=> b!1428089 m!1318411))

(declare-fun m!1318413 () Bool)

(assert (=> b!1428084 m!1318413))

(assert (=> b!1428084 m!1318413))

(declare-fun m!1318415 () Bool)

(assert (=> b!1428084 m!1318415))

(push 1)

