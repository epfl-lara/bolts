; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122834 () Bool)

(assert start!122834)

(declare-fun b!1423609 () Bool)

(declare-fun res!959166 () Bool)

(declare-fun e!804671 () Bool)

(assert (=> b!1423609 (=> (not res!959166) (not e!804671))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423609 (= res!959166 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423611 () Bool)

(declare-fun res!959151 () Bool)

(declare-fun e!804675 () Bool)

(assert (=> b!1423611 (=> (not res!959151) (not e!804675))))

(declare-datatypes ((array!97117 0))(
  ( (array!97118 (arr!46872 (Array (_ BitVec 32) (_ BitVec 64))) (size!47423 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97117)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97117 (_ BitVec 32)) Bool)

(assert (=> b!1423611 (= res!959151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423612 () Bool)

(declare-fun e!804677 () Bool)

(assert (=> b!1423612 (= e!804677 true)))

(declare-datatypes ((SeekEntryResult!11179 0))(
  ( (MissingZero!11179 (index!47107 (_ BitVec 32))) (Found!11179 (index!47108 (_ BitVec 32))) (Intermediate!11179 (undefined!11991 Bool) (index!47109 (_ BitVec 32)) (x!128744 (_ BitVec 32))) (Undefined!11179) (MissingVacant!11179 (index!47110 (_ BitVec 32))) )
))
(declare-fun lt!627167 () SeekEntryResult!11179)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!627164 () array!97117)

(declare-fun lt!627166 () (_ BitVec 32))

(declare-fun lt!627168 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97117 (_ BitVec 32)) SeekEntryResult!11179)

(assert (=> b!1423612 (= lt!627167 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627166 lt!627168 lt!627164 mask!2608))))

(declare-fun b!1423613 () Bool)

(declare-fun e!804672 () Bool)

(assert (=> b!1423613 (= e!804675 e!804672)))

(declare-fun res!959165 () Bool)

(assert (=> b!1423613 (=> (not res!959165) (not e!804672))))

(declare-fun lt!627163 () SeekEntryResult!11179)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423613 (= res!959165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46872 a!2831) j!81) mask!2608) (select (arr!46872 a!2831) j!81) a!2831 mask!2608) lt!627163))))

(assert (=> b!1423613 (= lt!627163 (Intermediate!11179 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423614 () Bool)

(declare-fun res!959156 () Bool)

(assert (=> b!1423614 (=> res!959156 e!804677)))

(assert (=> b!1423614 (= res!959156 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627166 (select (arr!46872 a!2831) j!81) a!2831 mask!2608) lt!627163)))))

(declare-fun b!1423615 () Bool)

(declare-fun res!959164 () Bool)

(assert (=> b!1423615 (=> (not res!959164) (not e!804675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423615 (= res!959164 (validKeyInArray!0 (select (arr!46872 a!2831) j!81)))))

(declare-fun b!1423616 () Bool)

(declare-fun res!959154 () Bool)

(assert (=> b!1423616 (=> (not res!959154) (not e!804675))))

(declare-datatypes ((List!33562 0))(
  ( (Nil!33559) (Cons!33558 (h!34860 (_ BitVec 64)) (t!48263 List!33562)) )
))
(declare-fun arrayNoDuplicates!0 (array!97117 (_ BitVec 32) List!33562) Bool)

(assert (=> b!1423616 (= res!959154 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33559))))

(declare-fun b!1423617 () Bool)

(declare-fun res!959153 () Bool)

(assert (=> b!1423617 (=> (not res!959153) (not e!804671))))

(declare-fun lt!627169 () SeekEntryResult!11179)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1423617 (= res!959153 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627168 lt!627164 mask!2608) lt!627169))))

(declare-fun b!1423618 () Bool)

(declare-fun res!959158 () Bool)

(assert (=> b!1423618 (=> (not res!959158) (not e!804671))))

(assert (=> b!1423618 (= res!959158 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46872 a!2831) j!81) a!2831 mask!2608) lt!627163))))

(declare-fun b!1423619 () Bool)

(declare-fun e!804673 () Bool)

(assert (=> b!1423619 (= e!804673 e!804677)))

(declare-fun res!959162 () Bool)

(assert (=> b!1423619 (=> res!959162 e!804677)))

(assert (=> b!1423619 (= res!959162 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627166 #b00000000000000000000000000000000) (bvsge lt!627166 (size!47423 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423619 (= lt!627166 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423620 () Bool)

(declare-fun res!959157 () Bool)

(assert (=> b!1423620 (=> (not res!959157) (not e!804675))))

(assert (=> b!1423620 (= res!959157 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47423 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47423 a!2831))))))

(declare-fun res!959163 () Bool)

(assert (=> start!122834 (=> (not res!959163) (not e!804675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122834 (= res!959163 (validMask!0 mask!2608))))

(assert (=> start!122834 e!804675))

(assert (=> start!122834 true))

(declare-fun array_inv!35817 (array!97117) Bool)

(assert (=> start!122834 (array_inv!35817 a!2831)))

(declare-fun b!1423610 () Bool)

(declare-fun e!804674 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97117 (_ BitVec 32)) SeekEntryResult!11179)

(assert (=> b!1423610 (= e!804674 (= (seekEntryOrOpen!0 (select (arr!46872 a!2831) j!81) a!2831 mask!2608) (Found!11179 j!81)))))

(declare-fun b!1423621 () Bool)

(assert (=> b!1423621 (= e!804671 (not e!804673))))

(declare-fun res!959161 () Bool)

(assert (=> b!1423621 (=> res!959161 e!804673)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423621 (= res!959161 (or (= (select (arr!46872 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46872 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46872 a!2831) index!585) (select (arr!46872 a!2831) j!81)) (= (select (store (arr!46872 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423621 e!804674))

(declare-fun res!959160 () Bool)

(assert (=> b!1423621 (=> (not res!959160) (not e!804674))))

(assert (=> b!1423621 (= res!959160 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48142 0))(
  ( (Unit!48143) )
))
(declare-fun lt!627165 () Unit!48142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48142)

(assert (=> b!1423621 (= lt!627165 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423622 () Bool)

(declare-fun res!959159 () Bool)

(assert (=> b!1423622 (=> (not res!959159) (not e!804675))))

(assert (=> b!1423622 (= res!959159 (validKeyInArray!0 (select (arr!46872 a!2831) i!982)))))

(declare-fun b!1423623 () Bool)

(declare-fun res!959155 () Bool)

(assert (=> b!1423623 (=> (not res!959155) (not e!804675))))

(assert (=> b!1423623 (= res!959155 (and (= (size!47423 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47423 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47423 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423624 () Bool)

(assert (=> b!1423624 (= e!804672 e!804671)))

(declare-fun res!959152 () Bool)

(assert (=> b!1423624 (=> (not res!959152) (not e!804671))))

(assert (=> b!1423624 (= res!959152 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627168 mask!2608) lt!627168 lt!627164 mask!2608) lt!627169))))

(assert (=> b!1423624 (= lt!627169 (Intermediate!11179 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423624 (= lt!627168 (select (store (arr!46872 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423624 (= lt!627164 (array!97118 (store (arr!46872 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47423 a!2831)))))

(assert (= (and start!122834 res!959163) b!1423623))

(assert (= (and b!1423623 res!959155) b!1423622))

(assert (= (and b!1423622 res!959159) b!1423615))

(assert (= (and b!1423615 res!959164) b!1423611))

(assert (= (and b!1423611 res!959151) b!1423616))

(assert (= (and b!1423616 res!959154) b!1423620))

(assert (= (and b!1423620 res!959157) b!1423613))

(assert (= (and b!1423613 res!959165) b!1423624))

(assert (= (and b!1423624 res!959152) b!1423618))

(assert (= (and b!1423618 res!959158) b!1423617))

(assert (= (and b!1423617 res!959153) b!1423609))

(assert (= (and b!1423609 res!959166) b!1423621))

(assert (= (and b!1423621 res!959160) b!1423610))

(assert (= (and b!1423621 (not res!959161)) b!1423619))

(assert (= (and b!1423619 (not res!959162)) b!1423614))

(assert (= (and b!1423614 (not res!959156)) b!1423612))

(declare-fun m!1314215 () Bool)

(assert (=> b!1423619 m!1314215))

(declare-fun m!1314217 () Bool)

(assert (=> b!1423621 m!1314217))

(declare-fun m!1314219 () Bool)

(assert (=> b!1423621 m!1314219))

(declare-fun m!1314221 () Bool)

(assert (=> b!1423621 m!1314221))

(declare-fun m!1314223 () Bool)

(assert (=> b!1423621 m!1314223))

(declare-fun m!1314225 () Bool)

(assert (=> b!1423621 m!1314225))

(declare-fun m!1314227 () Bool)

(assert (=> b!1423621 m!1314227))

(declare-fun m!1314229 () Bool)

(assert (=> b!1423612 m!1314229))

(assert (=> b!1423610 m!1314225))

(assert (=> b!1423610 m!1314225))

(declare-fun m!1314231 () Bool)

(assert (=> b!1423610 m!1314231))

(declare-fun m!1314233 () Bool)

(assert (=> b!1423616 m!1314233))

(assert (=> b!1423618 m!1314225))

(assert (=> b!1423618 m!1314225))

(declare-fun m!1314235 () Bool)

(assert (=> b!1423618 m!1314235))

(declare-fun m!1314237 () Bool)

(assert (=> b!1423622 m!1314237))

(assert (=> b!1423622 m!1314237))

(declare-fun m!1314239 () Bool)

(assert (=> b!1423622 m!1314239))

(declare-fun m!1314241 () Bool)

(assert (=> start!122834 m!1314241))

(declare-fun m!1314243 () Bool)

(assert (=> start!122834 m!1314243))

(declare-fun m!1314245 () Bool)

(assert (=> b!1423624 m!1314245))

(assert (=> b!1423624 m!1314245))

(declare-fun m!1314247 () Bool)

(assert (=> b!1423624 m!1314247))

(assert (=> b!1423624 m!1314217))

(declare-fun m!1314249 () Bool)

(assert (=> b!1423624 m!1314249))

(assert (=> b!1423615 m!1314225))

(assert (=> b!1423615 m!1314225))

(declare-fun m!1314251 () Bool)

(assert (=> b!1423615 m!1314251))

(declare-fun m!1314253 () Bool)

(assert (=> b!1423617 m!1314253))

(declare-fun m!1314255 () Bool)

(assert (=> b!1423611 m!1314255))

(assert (=> b!1423613 m!1314225))

(assert (=> b!1423613 m!1314225))

(declare-fun m!1314257 () Bool)

(assert (=> b!1423613 m!1314257))

(assert (=> b!1423613 m!1314257))

(assert (=> b!1423613 m!1314225))

(declare-fun m!1314259 () Bool)

(assert (=> b!1423613 m!1314259))

(assert (=> b!1423614 m!1314225))

(assert (=> b!1423614 m!1314225))

(declare-fun m!1314261 () Bool)

(assert (=> b!1423614 m!1314261))

(push 1)

