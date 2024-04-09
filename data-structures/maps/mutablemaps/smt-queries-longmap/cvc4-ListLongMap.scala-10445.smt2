; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122876 () Bool)

(assert start!122876)

(declare-fun b!1424617 () Bool)

(declare-fun e!805114 () Bool)

(declare-fun e!805116 () Bool)

(assert (=> b!1424617 (= e!805114 e!805116)))

(declare-fun res!960163 () Bool)

(assert (=> b!1424617 (=> (not res!960163) (not e!805116))))

(declare-datatypes ((SeekEntryResult!11200 0))(
  ( (MissingZero!11200 (index!47191 (_ BitVec 32))) (Found!11200 (index!47192 (_ BitVec 32))) (Intermediate!11200 (undefined!12012 Bool) (index!47193 (_ BitVec 32)) (x!128821 (_ BitVec 32))) (Undefined!11200) (MissingVacant!11200 (index!47194 (_ BitVec 32))) )
))
(declare-fun lt!627606 () SeekEntryResult!11200)

(declare-datatypes ((array!97159 0))(
  ( (array!97160 (arr!46893 (Array (_ BitVec 32) (_ BitVec 64))) (size!47444 (_ BitVec 32))) )
))
(declare-fun lt!627608 () array!97159)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627610 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97159 (_ BitVec 32)) SeekEntryResult!11200)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424617 (= res!960163 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627610 mask!2608) lt!627610 lt!627608 mask!2608) lt!627606))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1424617 (= lt!627606 (Intermediate!11200 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97159)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424617 (= lt!627610 (select (store (arr!46893 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424617 (= lt!627608 (array!97160 (store (arr!46893 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47444 a!2831)))))

(declare-fun b!1424618 () Bool)

(declare-fun e!805113 () Bool)

(assert (=> b!1424618 (= e!805113 e!805114)))

(declare-fun res!960162 () Bool)

(assert (=> b!1424618 (=> (not res!960162) (not e!805114))))

(declare-fun lt!627604 () SeekEntryResult!11200)

(assert (=> b!1424618 (= res!960162 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46893 a!2831) j!81) mask!2608) (select (arr!46893 a!2831) j!81) a!2831 mask!2608) lt!627604))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424618 (= lt!627604 (Intermediate!11200 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun e!805115 () Bool)

(declare-fun b!1424619 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97159 (_ BitVec 32)) SeekEntryResult!11200)

(assert (=> b!1424619 (= e!805115 (= (seekEntryOrOpen!0 (select (arr!46893 a!2831) j!81) a!2831 mask!2608) (Found!11200 j!81)))))

(declare-fun b!1424620 () Bool)

(declare-fun e!805118 () Bool)

(assert (=> b!1424620 (= e!805116 (not e!805118))))

(declare-fun res!960159 () Bool)

(assert (=> b!1424620 (=> res!960159 e!805118)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424620 (= res!960159 (or (= (select (arr!46893 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46893 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46893 a!2831) index!585) (select (arr!46893 a!2831) j!81)) (= (select (store (arr!46893 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424620 e!805115))

(declare-fun res!960160 () Bool)

(assert (=> b!1424620 (=> (not res!960160) (not e!805115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97159 (_ BitVec 32)) Bool)

(assert (=> b!1424620 (= res!960160 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48184 0))(
  ( (Unit!48185) )
))
(declare-fun lt!627605 () Unit!48184)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48184)

(assert (=> b!1424620 (= lt!627605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424621 () Bool)

(declare-fun res!960167 () Bool)

(assert (=> b!1424621 (=> (not res!960167) (not e!805113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424621 (= res!960167 (validKeyInArray!0 (select (arr!46893 a!2831) i!982)))))

(declare-fun b!1424622 () Bool)

(declare-fun e!805117 () Bool)

(assert (=> b!1424622 (= e!805118 e!805117)))

(declare-fun res!960172 () Bool)

(assert (=> b!1424622 (=> res!960172 e!805117)))

(declare-fun lt!627609 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1424622 (= res!960172 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627609 #b00000000000000000000000000000000) (bvsge lt!627609 (size!47444 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424622 (= lt!627609 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424623 () Bool)

(declare-fun res!960165 () Bool)

(assert (=> b!1424623 (=> (not res!960165) (not e!805116))))

(assert (=> b!1424623 (= res!960165 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627610 lt!627608 mask!2608) lt!627606))))

(declare-fun b!1424624 () Bool)

(declare-fun res!960164 () Bool)

(assert (=> b!1424624 (=> (not res!960164) (not e!805113))))

(assert (=> b!1424624 (= res!960164 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47444 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47444 a!2831))))))

(declare-fun b!1424625 () Bool)

(declare-fun res!960169 () Bool)

(assert (=> b!1424625 (=> (not res!960169) (not e!805113))))

(assert (=> b!1424625 (= res!960169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424626 () Bool)

(declare-fun res!960173 () Bool)

(assert (=> b!1424626 (=> (not res!960173) (not e!805113))))

(assert (=> b!1424626 (= res!960173 (validKeyInArray!0 (select (arr!46893 a!2831) j!81)))))

(declare-fun b!1424627 () Bool)

(declare-fun res!960168 () Bool)

(assert (=> b!1424627 (=> (not res!960168) (not e!805116))))

(assert (=> b!1424627 (= res!960168 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46893 a!2831) j!81) a!2831 mask!2608) lt!627604))))

(declare-fun b!1424628 () Bool)

(declare-fun res!960161 () Bool)

(assert (=> b!1424628 (=> (not res!960161) (not e!805113))))

(assert (=> b!1424628 (= res!960161 (and (= (size!47444 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47444 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47444 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424629 () Bool)

(assert (=> b!1424629 (= e!805117 true)))

(declare-fun lt!627607 () SeekEntryResult!11200)

(assert (=> b!1424629 (= lt!627607 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627609 lt!627610 lt!627608 mask!2608))))

(declare-fun b!1424630 () Bool)

(declare-fun res!960174 () Bool)

(assert (=> b!1424630 (=> (not res!960174) (not e!805113))))

(declare-datatypes ((List!33583 0))(
  ( (Nil!33580) (Cons!33579 (h!34881 (_ BitVec 64)) (t!48284 List!33583)) )
))
(declare-fun arrayNoDuplicates!0 (array!97159 (_ BitVec 32) List!33583) Bool)

(assert (=> b!1424630 (= res!960174 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33580))))

(declare-fun b!1424631 () Bool)

(declare-fun res!960171 () Bool)

(assert (=> b!1424631 (=> (not res!960171) (not e!805116))))

(assert (=> b!1424631 (= res!960171 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424632 () Bool)

(declare-fun res!960170 () Bool)

(assert (=> b!1424632 (=> res!960170 e!805117)))

(assert (=> b!1424632 (= res!960170 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627609 (select (arr!46893 a!2831) j!81) a!2831 mask!2608) lt!627604)))))

(declare-fun res!960166 () Bool)

(assert (=> start!122876 (=> (not res!960166) (not e!805113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122876 (= res!960166 (validMask!0 mask!2608))))

(assert (=> start!122876 e!805113))

(assert (=> start!122876 true))

(declare-fun array_inv!35838 (array!97159) Bool)

(assert (=> start!122876 (array_inv!35838 a!2831)))

(assert (= (and start!122876 res!960166) b!1424628))

(assert (= (and b!1424628 res!960161) b!1424621))

(assert (= (and b!1424621 res!960167) b!1424626))

(assert (= (and b!1424626 res!960173) b!1424625))

(assert (= (and b!1424625 res!960169) b!1424630))

(assert (= (and b!1424630 res!960174) b!1424624))

(assert (= (and b!1424624 res!960164) b!1424618))

(assert (= (and b!1424618 res!960162) b!1424617))

(assert (= (and b!1424617 res!960163) b!1424627))

(assert (= (and b!1424627 res!960168) b!1424623))

(assert (= (and b!1424623 res!960165) b!1424631))

(assert (= (and b!1424631 res!960171) b!1424620))

(assert (= (and b!1424620 res!960160) b!1424619))

(assert (= (and b!1424620 (not res!960159)) b!1424622))

(assert (= (and b!1424622 (not res!960172)) b!1424632))

(assert (= (and b!1424632 (not res!960170)) b!1424629))

(declare-fun m!1315223 () Bool)

(assert (=> b!1424618 m!1315223))

(assert (=> b!1424618 m!1315223))

(declare-fun m!1315225 () Bool)

(assert (=> b!1424618 m!1315225))

(assert (=> b!1424618 m!1315225))

(assert (=> b!1424618 m!1315223))

(declare-fun m!1315227 () Bool)

(assert (=> b!1424618 m!1315227))

(declare-fun m!1315229 () Bool)

(assert (=> b!1424621 m!1315229))

(assert (=> b!1424621 m!1315229))

(declare-fun m!1315231 () Bool)

(assert (=> b!1424621 m!1315231))

(declare-fun m!1315233 () Bool)

(assert (=> b!1424630 m!1315233))

(declare-fun m!1315235 () Bool)

(assert (=> b!1424623 m!1315235))

(declare-fun m!1315237 () Bool)

(assert (=> b!1424617 m!1315237))

(assert (=> b!1424617 m!1315237))

(declare-fun m!1315239 () Bool)

(assert (=> b!1424617 m!1315239))

(declare-fun m!1315241 () Bool)

(assert (=> b!1424617 m!1315241))

(declare-fun m!1315243 () Bool)

(assert (=> b!1424617 m!1315243))

(assert (=> b!1424620 m!1315241))

(declare-fun m!1315245 () Bool)

(assert (=> b!1424620 m!1315245))

(declare-fun m!1315247 () Bool)

(assert (=> b!1424620 m!1315247))

(declare-fun m!1315249 () Bool)

(assert (=> b!1424620 m!1315249))

(assert (=> b!1424620 m!1315223))

(declare-fun m!1315251 () Bool)

(assert (=> b!1424620 m!1315251))

(assert (=> b!1424627 m!1315223))

(assert (=> b!1424627 m!1315223))

(declare-fun m!1315253 () Bool)

(assert (=> b!1424627 m!1315253))

(assert (=> b!1424626 m!1315223))

(assert (=> b!1424626 m!1315223))

(declare-fun m!1315255 () Bool)

(assert (=> b!1424626 m!1315255))

(declare-fun m!1315257 () Bool)

(assert (=> b!1424622 m!1315257))

(declare-fun m!1315259 () Bool)

(assert (=> b!1424629 m!1315259))

(declare-fun m!1315261 () Bool)

(assert (=> b!1424625 m!1315261))

(assert (=> b!1424632 m!1315223))

(assert (=> b!1424632 m!1315223))

(declare-fun m!1315263 () Bool)

(assert (=> b!1424632 m!1315263))

(declare-fun m!1315265 () Bool)

(assert (=> start!122876 m!1315265))

(declare-fun m!1315267 () Bool)

(assert (=> start!122876 m!1315267))

(assert (=> b!1424619 m!1315223))

(assert (=> b!1424619 m!1315223))

(declare-fun m!1315269 () Bool)

(assert (=> b!1424619 m!1315269))

(push 1)

