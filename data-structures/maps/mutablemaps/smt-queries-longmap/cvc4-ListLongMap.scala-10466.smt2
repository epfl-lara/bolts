; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123056 () Bool)

(assert start!123056)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97288 0))(
  ( (array!97289 (arr!46956 (Array (_ BitVec 32) (_ BitVec 64))) (size!47507 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97288)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun b!1426720 () Bool)

(declare-fun e!805897 () Bool)

(declare-datatypes ((SeekEntryResult!11257 0))(
  ( (MissingZero!11257 (index!47419 (_ BitVec 32))) (Found!11257 (index!47420 (_ BitVec 32))) (Intermediate!11257 (undefined!12069 Bool) (index!47421 (_ BitVec 32)) (x!129052 (_ BitVec 32))) (Undefined!11257) (MissingVacant!11257 (index!47422 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97288 (_ BitVec 32)) SeekEntryResult!11257)

(assert (=> b!1426720 (= e!805897 (= (seekEntryOrOpen!0 (select (arr!46956 a!2831) j!81) a!2831 mask!2608) (Found!11257 j!81)))))

(declare-fun b!1426721 () Bool)

(declare-fun res!962068 () Bool)

(declare-fun e!805898 () Bool)

(assert (=> b!1426721 (=> (not res!962068) (not e!805898))))

(declare-datatypes ((List!33646 0))(
  ( (Nil!33643) (Cons!33642 (h!34947 (_ BitVec 64)) (t!48347 List!33646)) )
))
(declare-fun arrayNoDuplicates!0 (array!97288 (_ BitVec 32) List!33646) Bool)

(assert (=> b!1426721 (= res!962068 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33643))))

(declare-fun b!1426722 () Bool)

(declare-fun res!962062 () Bool)

(declare-fun e!805899 () Bool)

(assert (=> b!1426722 (=> (not res!962062) (not e!805899))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1426722 (= res!962062 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1426723 () Bool)

(declare-fun e!805901 () Bool)

(assert (=> b!1426723 (= e!805898 e!805901)))

(declare-fun res!962072 () Bool)

(assert (=> b!1426723 (=> (not res!962072) (not e!805901))))

(declare-fun lt!628253 () SeekEntryResult!11257)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97288 (_ BitVec 32)) SeekEntryResult!11257)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426723 (= res!962072 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46956 a!2831) j!81) mask!2608) (select (arr!46956 a!2831) j!81) a!2831 mask!2608) lt!628253))))

(assert (=> b!1426723 (= lt!628253 (Intermediate!11257 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426724 () Bool)

(declare-fun res!962067 () Bool)

(assert (=> b!1426724 (=> (not res!962067) (not e!805898))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426724 (= res!962067 (and (= (size!47507 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47507 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47507 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426725 () Bool)

(declare-fun res!962070 () Bool)

(assert (=> b!1426725 (=> (not res!962070) (not e!805898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97288 (_ BitVec 32)) Bool)

(assert (=> b!1426725 (= res!962070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426727 () Bool)

(declare-fun res!962061 () Bool)

(assert (=> b!1426727 (=> (not res!962061) (not e!805899))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1426727 (= res!962061 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46956 a!2831) j!81) a!2831 mask!2608) lt!628253))))

(declare-fun b!1426728 () Bool)

(declare-fun res!962071 () Bool)

(assert (=> b!1426728 (=> (not res!962071) (not e!805899))))

(declare-fun lt!628255 () (_ BitVec 64))

(declare-fun lt!628252 () array!97288)

(declare-fun lt!628251 () SeekEntryResult!11257)

(assert (=> b!1426728 (= res!962071 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628255 lt!628252 mask!2608) lt!628251))))

(declare-fun b!1426729 () Bool)

(assert (=> b!1426729 (= e!805899 (not true))))

(assert (=> b!1426729 e!805897))

(declare-fun res!962073 () Bool)

(assert (=> b!1426729 (=> (not res!962073) (not e!805897))))

(assert (=> b!1426729 (= res!962073 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48208 0))(
  ( (Unit!48209) )
))
(declare-fun lt!628254 () Unit!48208)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97288 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48208)

(assert (=> b!1426729 (= lt!628254 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426730 () Bool)

(declare-fun res!962064 () Bool)

(assert (=> b!1426730 (=> (not res!962064) (not e!805898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426730 (= res!962064 (validKeyInArray!0 (select (arr!46956 a!2831) j!81)))))

(declare-fun b!1426726 () Bool)

(declare-fun res!962066 () Bool)

(assert (=> b!1426726 (=> (not res!962066) (not e!805898))))

(assert (=> b!1426726 (= res!962066 (validKeyInArray!0 (select (arr!46956 a!2831) i!982)))))

(declare-fun res!962065 () Bool)

(assert (=> start!123056 (=> (not res!962065) (not e!805898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123056 (= res!962065 (validMask!0 mask!2608))))

(assert (=> start!123056 e!805898))

(assert (=> start!123056 true))

(declare-fun array_inv!35901 (array!97288) Bool)

(assert (=> start!123056 (array_inv!35901 a!2831)))

(declare-fun b!1426731 () Bool)

(declare-fun res!962063 () Bool)

(assert (=> b!1426731 (=> (not res!962063) (not e!805898))))

(assert (=> b!1426731 (= res!962063 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47507 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47507 a!2831))))))

(declare-fun b!1426732 () Bool)

(assert (=> b!1426732 (= e!805901 e!805899)))

(declare-fun res!962069 () Bool)

(assert (=> b!1426732 (=> (not res!962069) (not e!805899))))

(assert (=> b!1426732 (= res!962069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628255 mask!2608) lt!628255 lt!628252 mask!2608) lt!628251))))

(assert (=> b!1426732 (= lt!628251 (Intermediate!11257 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426732 (= lt!628255 (select (store (arr!46956 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426732 (= lt!628252 (array!97289 (store (arr!46956 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47507 a!2831)))))

(assert (= (and start!123056 res!962065) b!1426724))

(assert (= (and b!1426724 res!962067) b!1426726))

(assert (= (and b!1426726 res!962066) b!1426730))

(assert (= (and b!1426730 res!962064) b!1426725))

(assert (= (and b!1426725 res!962070) b!1426721))

(assert (= (and b!1426721 res!962068) b!1426731))

(assert (= (and b!1426731 res!962063) b!1426723))

(assert (= (and b!1426723 res!962072) b!1426732))

(assert (= (and b!1426732 res!962069) b!1426727))

(assert (= (and b!1426727 res!962061) b!1426728))

(assert (= (and b!1426728 res!962071) b!1426722))

(assert (= (and b!1426722 res!962062) b!1426729))

(assert (= (and b!1426729 res!962073) b!1426720))

(declare-fun m!1317273 () Bool)

(assert (=> b!1426732 m!1317273))

(assert (=> b!1426732 m!1317273))

(declare-fun m!1317275 () Bool)

(assert (=> b!1426732 m!1317275))

(declare-fun m!1317277 () Bool)

(assert (=> b!1426732 m!1317277))

(declare-fun m!1317279 () Bool)

(assert (=> b!1426732 m!1317279))

(declare-fun m!1317281 () Bool)

(assert (=> b!1426728 m!1317281))

(declare-fun m!1317283 () Bool)

(assert (=> b!1426723 m!1317283))

(assert (=> b!1426723 m!1317283))

(declare-fun m!1317285 () Bool)

(assert (=> b!1426723 m!1317285))

(assert (=> b!1426723 m!1317285))

(assert (=> b!1426723 m!1317283))

(declare-fun m!1317287 () Bool)

(assert (=> b!1426723 m!1317287))

(declare-fun m!1317289 () Bool)

(assert (=> b!1426725 m!1317289))

(declare-fun m!1317291 () Bool)

(assert (=> start!123056 m!1317291))

(declare-fun m!1317293 () Bool)

(assert (=> start!123056 m!1317293))

(declare-fun m!1317295 () Bool)

(assert (=> b!1426721 m!1317295))

(declare-fun m!1317297 () Bool)

(assert (=> b!1426726 m!1317297))

(assert (=> b!1426726 m!1317297))

(declare-fun m!1317299 () Bool)

(assert (=> b!1426726 m!1317299))

(declare-fun m!1317301 () Bool)

(assert (=> b!1426729 m!1317301))

(declare-fun m!1317303 () Bool)

(assert (=> b!1426729 m!1317303))

(assert (=> b!1426730 m!1317283))

(assert (=> b!1426730 m!1317283))

(declare-fun m!1317305 () Bool)

(assert (=> b!1426730 m!1317305))

(assert (=> b!1426727 m!1317283))

(assert (=> b!1426727 m!1317283))

(declare-fun m!1317307 () Bool)

(assert (=> b!1426727 m!1317307))

(assert (=> b!1426720 m!1317283))

(assert (=> b!1426720 m!1317283))

(declare-fun m!1317309 () Bool)

(assert (=> b!1426720 m!1317309))

(push 1)

