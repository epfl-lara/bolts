; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122962 () Bool)

(assert start!122962)

(declare-fun b!1425733 () Bool)

(declare-fun res!961275 () Bool)

(declare-fun e!805461 () Bool)

(assert (=> b!1425733 (=> (not res!961275) (not e!805461))))

(declare-datatypes ((array!97245 0))(
  ( (array!97246 (arr!46936 (Array (_ BitVec 32) (_ BitVec 64))) (size!47487 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97245)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425733 (= res!961275 (validKeyInArray!0 (select (arr!46936 a!2831) i!982)))))

(declare-fun b!1425734 () Bool)

(declare-fun res!961283 () Bool)

(assert (=> b!1425734 (=> (not res!961283) (not e!805461))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425734 (= res!961283 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47487 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47487 a!2831))))))

(declare-fun b!1425735 () Bool)

(declare-fun e!805460 () Bool)

(assert (=> b!1425735 (= e!805460 false)))

(declare-fun lt!627854 () array!97245)

(declare-fun lt!627856 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11237 0))(
  ( (MissingZero!11237 (index!47339 (_ BitVec 32))) (Found!11237 (index!47340 (_ BitVec 32))) (Intermediate!11237 (undefined!12049 Bool) (index!47341 (_ BitVec 32)) (x!128978 (_ BitVec 32))) (Undefined!11237) (MissingVacant!11237 (index!47342 (_ BitVec 32))) )
))
(declare-fun lt!627855 () SeekEntryResult!11237)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97245 (_ BitVec 32)) SeekEntryResult!11237)

(assert (=> b!1425735 (= lt!627855 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627856 lt!627854 mask!2608))))

(declare-fun b!1425736 () Bool)

(declare-fun res!961279 () Bool)

(assert (=> b!1425736 (=> (not res!961279) (not e!805461))))

(declare-datatypes ((List!33626 0))(
  ( (Nil!33623) (Cons!33622 (h!34924 (_ BitVec 64)) (t!48327 List!33626)) )
))
(declare-fun arrayNoDuplicates!0 (array!97245 (_ BitVec 32) List!33626) Bool)

(assert (=> b!1425736 (= res!961279 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33623))))

(declare-fun b!1425737 () Bool)

(declare-fun e!805462 () Bool)

(assert (=> b!1425737 (= e!805461 e!805462)))

(declare-fun res!961282 () Bool)

(assert (=> b!1425737 (=> (not res!961282) (not e!805462))))

(declare-fun lt!627853 () SeekEntryResult!11237)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425737 (= res!961282 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46936 a!2831) j!81) mask!2608) (select (arr!46936 a!2831) j!81) a!2831 mask!2608) lt!627853))))

(assert (=> b!1425737 (= lt!627853 (Intermediate!11237 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425738 () Bool)

(declare-fun res!961278 () Bool)

(assert (=> b!1425738 (=> (not res!961278) (not e!805461))))

(assert (=> b!1425738 (= res!961278 (validKeyInArray!0 (select (arr!46936 a!2831) j!81)))))

(declare-fun b!1425739 () Bool)

(declare-fun res!961276 () Bool)

(assert (=> b!1425739 (=> (not res!961276) (not e!805461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97245 (_ BitVec 32)) Bool)

(assert (=> b!1425739 (= res!961276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425741 () Bool)

(declare-fun res!961281 () Bool)

(assert (=> b!1425741 (=> (not res!961281) (not e!805460))))

(assert (=> b!1425741 (= res!961281 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46936 a!2831) j!81) a!2831 mask!2608) lt!627853))))

(declare-fun b!1425742 () Bool)

(assert (=> b!1425742 (= e!805462 e!805460)))

(declare-fun res!961280 () Bool)

(assert (=> b!1425742 (=> (not res!961280) (not e!805460))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1425742 (= res!961280 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627856 mask!2608) lt!627856 lt!627854 mask!2608) (Intermediate!11237 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1425742 (= lt!627856 (select (store (arr!46936 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425742 (= lt!627854 (array!97246 (store (arr!46936 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47487 a!2831)))))

(declare-fun b!1425740 () Bool)

(declare-fun res!961277 () Bool)

(assert (=> b!1425740 (=> (not res!961277) (not e!805461))))

(assert (=> b!1425740 (= res!961277 (and (= (size!47487 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47487 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47487 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!961284 () Bool)

(assert (=> start!122962 (=> (not res!961284) (not e!805461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122962 (= res!961284 (validMask!0 mask!2608))))

(assert (=> start!122962 e!805461))

(assert (=> start!122962 true))

(declare-fun array_inv!35881 (array!97245) Bool)

(assert (=> start!122962 (array_inv!35881 a!2831)))

(assert (= (and start!122962 res!961284) b!1425740))

(assert (= (and b!1425740 res!961277) b!1425733))

(assert (= (and b!1425733 res!961275) b!1425738))

(assert (= (and b!1425738 res!961278) b!1425739))

(assert (= (and b!1425739 res!961276) b!1425736))

(assert (= (and b!1425736 res!961279) b!1425734))

(assert (= (and b!1425734 res!961283) b!1425737))

(assert (= (and b!1425737 res!961282) b!1425742))

(assert (= (and b!1425742 res!961280) b!1425741))

(assert (= (and b!1425741 res!961281) b!1425735))

(declare-fun m!1316399 () Bool)

(assert (=> b!1425739 m!1316399))

(declare-fun m!1316401 () Bool)

(assert (=> b!1425736 m!1316401))

(declare-fun m!1316403 () Bool)

(assert (=> b!1425741 m!1316403))

(assert (=> b!1425741 m!1316403))

(declare-fun m!1316405 () Bool)

(assert (=> b!1425741 m!1316405))

(assert (=> b!1425738 m!1316403))

(assert (=> b!1425738 m!1316403))

(declare-fun m!1316407 () Bool)

(assert (=> b!1425738 m!1316407))

(declare-fun m!1316409 () Bool)

(assert (=> start!122962 m!1316409))

(declare-fun m!1316411 () Bool)

(assert (=> start!122962 m!1316411))

(declare-fun m!1316413 () Bool)

(assert (=> b!1425735 m!1316413))

(declare-fun m!1316415 () Bool)

(assert (=> b!1425733 m!1316415))

(assert (=> b!1425733 m!1316415))

(declare-fun m!1316417 () Bool)

(assert (=> b!1425733 m!1316417))

(declare-fun m!1316419 () Bool)

(assert (=> b!1425742 m!1316419))

(assert (=> b!1425742 m!1316419))

(declare-fun m!1316421 () Bool)

(assert (=> b!1425742 m!1316421))

(declare-fun m!1316423 () Bool)

(assert (=> b!1425742 m!1316423))

(declare-fun m!1316425 () Bool)

(assert (=> b!1425742 m!1316425))

(assert (=> b!1425737 m!1316403))

(assert (=> b!1425737 m!1316403))

(declare-fun m!1316427 () Bool)

(assert (=> b!1425737 m!1316427))

(assert (=> b!1425737 m!1316427))

(assert (=> b!1425737 m!1316403))

(declare-fun m!1316429 () Bool)

(assert (=> b!1425737 m!1316429))

(push 1)

