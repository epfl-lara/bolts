; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123906 () Bool)

(assert start!123906)

(declare-fun b!1435267 () Bool)

(declare-fun res!968394 () Bool)

(declare-fun e!810074 () Bool)

(assert (=> b!1435267 (=> (not res!968394) (not e!810074))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((array!97568 0))(
  ( (array!97569 (arr!47081 (Array (_ BitVec 32) (_ BitVec 64))) (size!47632 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97568)

(assert (=> b!1435267 (= res!968394 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47632 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47632 a!2831))))))

(declare-fun b!1435268 () Bool)

(declare-fun res!968395 () Bool)

(declare-fun e!810077 () Bool)

(assert (=> b!1435268 (=> (not res!968395) (not e!810077))))

(declare-datatypes ((SeekEntryResult!11382 0))(
  ( (MissingZero!11382 (index!47919 (_ BitVec 32))) (Found!11382 (index!47920 (_ BitVec 32))) (Intermediate!11382 (undefined!12194 Bool) (index!47921 (_ BitVec 32)) (x!129591 (_ BitVec 32))) (Undefined!11382) (MissingVacant!11382 (index!47922 (_ BitVec 32))) )
))
(declare-fun lt!631792 () SeekEntryResult!11382)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97568 (_ BitVec 32)) SeekEntryResult!11382)

(assert (=> b!1435268 (= res!968395 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47081 a!2831) j!81) a!2831 mask!2608) lt!631792))))

(declare-fun b!1435269 () Bool)

(declare-fun e!810078 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97568 (_ BitVec 32)) SeekEntryResult!11382)

(assert (=> b!1435269 (= e!810078 (= (seekEntryOrOpen!0 (select (arr!47081 a!2831) j!81) a!2831 mask!2608) (Found!11382 j!81)))))

(declare-fun b!1435270 () Bool)

(declare-fun res!968396 () Bool)

(assert (=> b!1435270 (=> (not res!968396) (not e!810074))))

(declare-datatypes ((List!33771 0))(
  ( (Nil!33768) (Cons!33767 (h!35102 (_ BitVec 64)) (t!48472 List!33771)) )
))
(declare-fun arrayNoDuplicates!0 (array!97568 (_ BitVec 32) List!33771) Bool)

(assert (=> b!1435270 (= res!968396 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33768))))

(declare-fun b!1435271 () Bool)

(declare-fun res!968390 () Bool)

(assert (=> b!1435271 (=> (not res!968390) (not e!810077))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1435271 (= res!968390 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1435272 () Bool)

(declare-fun res!968389 () Bool)

(assert (=> b!1435272 (=> (not res!968389) (not e!810074))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435272 (= res!968389 (validKeyInArray!0 (select (arr!47081 a!2831) i!982)))))

(declare-fun b!1435273 () Bool)

(declare-fun res!968384 () Bool)

(assert (=> b!1435273 (=> (not res!968384) (not e!810074))))

(assert (=> b!1435273 (= res!968384 (and (= (size!47632 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47632 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47632 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1435274 () Bool)

(declare-fun e!810080 () Bool)

(declare-fun e!810075 () Bool)

(assert (=> b!1435274 (= e!810080 e!810075)))

(declare-fun res!968391 () Bool)

(assert (=> b!1435274 (=> res!968391 e!810075)))

(declare-fun lt!631786 () (_ BitVec 32))

(assert (=> b!1435274 (= res!968391 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631786 #b00000000000000000000000000000000) (bvsge lt!631786 (size!47632 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435274 (= lt!631786 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435276 () Bool)

(assert (=> b!1435276 (= e!810075 true)))

(declare-fun lt!631789 () SeekEntryResult!11382)

(declare-fun lt!631788 () array!97568)

(declare-fun lt!631791 () (_ BitVec 64))

(assert (=> b!1435276 (= lt!631789 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631786 lt!631791 lt!631788 mask!2608))))

(declare-fun b!1435277 () Bool)

(declare-fun res!968386 () Bool)

(assert (=> b!1435277 (=> (not res!968386) (not e!810074))))

(assert (=> b!1435277 (= res!968386 (validKeyInArray!0 (select (arr!47081 a!2831) j!81)))))

(declare-fun b!1435278 () Bool)

(assert (=> b!1435278 (= e!810077 (not e!810080))))

(declare-fun res!968382 () Bool)

(assert (=> b!1435278 (=> res!968382 e!810080)))

(assert (=> b!1435278 (= res!968382 (or (= (select (arr!47081 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47081 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47081 a!2831) index!585) (select (arr!47081 a!2831) j!81)) (= (select (store (arr!47081 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1435278 e!810078))

(declare-fun res!968385 () Bool)

(assert (=> b!1435278 (=> (not res!968385) (not e!810078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97568 (_ BitVec 32)) Bool)

(assert (=> b!1435278 (= res!968385 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48458 0))(
  ( (Unit!48459) )
))
(declare-fun lt!631787 () Unit!48458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48458)

(assert (=> b!1435278 (= lt!631787 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435279 () Bool)

(declare-fun e!810076 () Bool)

(assert (=> b!1435279 (= e!810076 e!810077)))

(declare-fun res!968397 () Bool)

(assert (=> b!1435279 (=> (not res!968397) (not e!810077))))

(declare-fun lt!631790 () SeekEntryResult!11382)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435279 (= res!968397 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631791 mask!2608) lt!631791 lt!631788 mask!2608) lt!631790))))

(assert (=> b!1435279 (= lt!631790 (Intermediate!11382 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1435279 (= lt!631791 (select (store (arr!47081 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435279 (= lt!631788 (array!97569 (store (arr!47081 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47632 a!2831)))))

(declare-fun b!1435280 () Bool)

(assert (=> b!1435280 (= e!810074 e!810076)))

(declare-fun res!968387 () Bool)

(assert (=> b!1435280 (=> (not res!968387) (not e!810076))))

(assert (=> b!1435280 (= res!968387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47081 a!2831) j!81) mask!2608) (select (arr!47081 a!2831) j!81) a!2831 mask!2608) lt!631792))))

(assert (=> b!1435280 (= lt!631792 (Intermediate!11382 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1435281 () Bool)

(declare-fun res!968383 () Bool)

(assert (=> b!1435281 (=> (not res!968383) (not e!810077))))

(assert (=> b!1435281 (= res!968383 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631791 lt!631788 mask!2608) lt!631790))))

(declare-fun b!1435282 () Bool)

(declare-fun res!968388 () Bool)

(assert (=> b!1435282 (=> res!968388 e!810075)))

(assert (=> b!1435282 (= res!968388 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631786 (select (arr!47081 a!2831) j!81) a!2831 mask!2608) lt!631792)))))

(declare-fun b!1435275 () Bool)

(declare-fun res!968392 () Bool)

(assert (=> b!1435275 (=> (not res!968392) (not e!810074))))

(assert (=> b!1435275 (= res!968392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!968393 () Bool)

(assert (=> start!123906 (=> (not res!968393) (not e!810074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123906 (= res!968393 (validMask!0 mask!2608))))

(assert (=> start!123906 e!810074))

(assert (=> start!123906 true))

(declare-fun array_inv!36026 (array!97568) Bool)

(assert (=> start!123906 (array_inv!36026 a!2831)))

(assert (= (and start!123906 res!968393) b!1435273))

(assert (= (and b!1435273 res!968384) b!1435272))

(assert (= (and b!1435272 res!968389) b!1435277))

(assert (= (and b!1435277 res!968386) b!1435275))

(assert (= (and b!1435275 res!968392) b!1435270))

(assert (= (and b!1435270 res!968396) b!1435267))

(assert (= (and b!1435267 res!968394) b!1435280))

(assert (= (and b!1435280 res!968387) b!1435279))

(assert (= (and b!1435279 res!968397) b!1435268))

(assert (= (and b!1435268 res!968395) b!1435281))

(assert (= (and b!1435281 res!968383) b!1435271))

(assert (= (and b!1435271 res!968390) b!1435278))

(assert (= (and b!1435278 res!968385) b!1435269))

(assert (= (and b!1435278 (not res!968382)) b!1435274))

(assert (= (and b!1435274 (not res!968391)) b!1435282))

(assert (= (and b!1435282 (not res!968388)) b!1435276))

(declare-fun m!1324685 () Bool)

(assert (=> b!1435275 m!1324685))

(declare-fun m!1324687 () Bool)

(assert (=> b!1435269 m!1324687))

(assert (=> b!1435269 m!1324687))

(declare-fun m!1324689 () Bool)

(assert (=> b!1435269 m!1324689))

(declare-fun m!1324691 () Bool)

(assert (=> start!123906 m!1324691))

(declare-fun m!1324693 () Bool)

(assert (=> start!123906 m!1324693))

(assert (=> b!1435280 m!1324687))

(assert (=> b!1435280 m!1324687))

(declare-fun m!1324695 () Bool)

(assert (=> b!1435280 m!1324695))

(assert (=> b!1435280 m!1324695))

(assert (=> b!1435280 m!1324687))

(declare-fun m!1324697 () Bool)

(assert (=> b!1435280 m!1324697))

(declare-fun m!1324699 () Bool)

(assert (=> b!1435278 m!1324699))

(declare-fun m!1324701 () Bool)

(assert (=> b!1435278 m!1324701))

(declare-fun m!1324703 () Bool)

(assert (=> b!1435278 m!1324703))

(declare-fun m!1324705 () Bool)

(assert (=> b!1435278 m!1324705))

(assert (=> b!1435278 m!1324687))

(declare-fun m!1324707 () Bool)

(assert (=> b!1435278 m!1324707))

(assert (=> b!1435277 m!1324687))

(assert (=> b!1435277 m!1324687))

(declare-fun m!1324709 () Bool)

(assert (=> b!1435277 m!1324709))

(declare-fun m!1324711 () Bool)

(assert (=> b!1435276 m!1324711))

(assert (=> b!1435282 m!1324687))

(assert (=> b!1435282 m!1324687))

(declare-fun m!1324713 () Bool)

(assert (=> b!1435282 m!1324713))

(assert (=> b!1435268 m!1324687))

(assert (=> b!1435268 m!1324687))

(declare-fun m!1324715 () Bool)

(assert (=> b!1435268 m!1324715))

(declare-fun m!1324717 () Bool)

(assert (=> b!1435281 m!1324717))

(declare-fun m!1324719 () Bool)

(assert (=> b!1435279 m!1324719))

(assert (=> b!1435279 m!1324719))

(declare-fun m!1324721 () Bool)

(assert (=> b!1435279 m!1324721))

(assert (=> b!1435279 m!1324699))

(declare-fun m!1324723 () Bool)

(assert (=> b!1435279 m!1324723))

(declare-fun m!1324725 () Bool)

(assert (=> b!1435272 m!1324725))

(assert (=> b!1435272 m!1324725))

(declare-fun m!1324727 () Bool)

(assert (=> b!1435272 m!1324727))

(declare-fun m!1324729 () Bool)

(assert (=> b!1435274 m!1324729))

(declare-fun m!1324731 () Bool)

(assert (=> b!1435270 m!1324731))

(check-sat (not start!123906) (not b!1435269) (not b!1435281) (not b!1435277) (not b!1435282) (not b!1435272) (not b!1435274) (not b!1435268) (not b!1435270) (not b!1435280) (not b!1435278) (not b!1435279) (not b!1435276) (not b!1435275))
(check-sat)
