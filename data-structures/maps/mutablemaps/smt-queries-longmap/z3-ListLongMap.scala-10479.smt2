; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123294 () Bool)

(assert start!123294)

(declare-fun b!1429129 () Bool)

(declare-fun res!963875 () Bool)

(declare-fun e!807036 () Bool)

(assert (=> b!1429129 (=> (not res!963875) (not e!807036))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97373 0))(
  ( (array!97374 (arr!46994 (Array (_ BitVec 32) (_ BitVec 64))) (size!47545 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97373)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429129 (= res!963875 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47545 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47545 a!2831))))))

(declare-fun b!1429130 () Bool)

(declare-fun res!963871 () Bool)

(declare-fun e!807035 () Bool)

(assert (=> b!1429130 (=> (not res!963871) (not e!807035))))

(declare-datatypes ((SeekEntryResult!11295 0))(
  ( (MissingZero!11295 (index!47571 (_ BitVec 32))) (Found!11295 (index!47572 (_ BitVec 32))) (Intermediate!11295 (undefined!12107 Bool) (index!47573 (_ BitVec 32)) (x!129212 (_ BitVec 32))) (Undefined!11295) (MissingVacant!11295 (index!47574 (_ BitVec 32))) )
))
(declare-fun lt!629219 () SeekEntryResult!11295)

(declare-fun lt!629220 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!629218 () array!97373)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97373 (_ BitVec 32)) SeekEntryResult!11295)

(assert (=> b!1429130 (= res!963871 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629220 lt!629218 mask!2608) lt!629219))))

(declare-fun b!1429131 () Bool)

(assert (=> b!1429131 (= e!807035 (not true))))

(declare-fun e!807034 () Bool)

(assert (=> b!1429131 e!807034))

(declare-fun res!963873 () Bool)

(assert (=> b!1429131 (=> (not res!963873) (not e!807034))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97373 (_ BitVec 32)) Bool)

(assert (=> b!1429131 (= res!963873 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48284 0))(
  ( (Unit!48285) )
))
(declare-fun lt!629221 () Unit!48284)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97373 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48284)

(assert (=> b!1429131 (= lt!629221 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429132 () Bool)

(declare-fun res!963867 () Bool)

(assert (=> b!1429132 (=> (not res!963867) (not e!807035))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429132 (= res!963867 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429133 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97373 (_ BitVec 32)) SeekEntryResult!11295)

(assert (=> b!1429133 (= e!807034 (= (seekEntryOrOpen!0 (select (arr!46994 a!2831) j!81) a!2831 mask!2608) (Found!11295 j!81)))))

(declare-fun res!963876 () Bool)

(assert (=> start!123294 (=> (not res!963876) (not e!807036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123294 (= res!963876 (validMask!0 mask!2608))))

(assert (=> start!123294 e!807036))

(assert (=> start!123294 true))

(declare-fun array_inv!35939 (array!97373) Bool)

(assert (=> start!123294 (array_inv!35939 a!2831)))

(declare-fun b!1429134 () Bool)

(declare-fun res!963877 () Bool)

(assert (=> b!1429134 (=> (not res!963877) (not e!807036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429134 (= res!963877 (validKeyInArray!0 (select (arr!46994 a!2831) j!81)))))

(declare-fun b!1429135 () Bool)

(declare-fun res!963872 () Bool)

(assert (=> b!1429135 (=> (not res!963872) (not e!807035))))

(declare-fun lt!629217 () SeekEntryResult!11295)

(assert (=> b!1429135 (= res!963872 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46994 a!2831) j!81) a!2831 mask!2608) lt!629217))))

(declare-fun b!1429136 () Bool)

(declare-fun e!807037 () Bool)

(assert (=> b!1429136 (= e!807036 e!807037)))

(declare-fun res!963879 () Bool)

(assert (=> b!1429136 (=> (not res!963879) (not e!807037))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429136 (= res!963879 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46994 a!2831) j!81) mask!2608) (select (arr!46994 a!2831) j!81) a!2831 mask!2608) lt!629217))))

(assert (=> b!1429136 (= lt!629217 (Intermediate!11295 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429137 () Bool)

(declare-fun res!963874 () Bool)

(assert (=> b!1429137 (=> (not res!963874) (not e!807036))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1429137 (= res!963874 (and (= (size!47545 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47545 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47545 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429138 () Bool)

(assert (=> b!1429138 (= e!807037 e!807035)))

(declare-fun res!963868 () Bool)

(assert (=> b!1429138 (=> (not res!963868) (not e!807035))))

(assert (=> b!1429138 (= res!963868 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629220 mask!2608) lt!629220 lt!629218 mask!2608) lt!629219))))

(assert (=> b!1429138 (= lt!629219 (Intermediate!11295 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429138 (= lt!629220 (select (store (arr!46994 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429138 (= lt!629218 (array!97374 (store (arr!46994 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47545 a!2831)))))

(declare-fun b!1429139 () Bool)

(declare-fun res!963869 () Bool)

(assert (=> b!1429139 (=> (not res!963869) (not e!807036))))

(assert (=> b!1429139 (= res!963869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429140 () Bool)

(declare-fun res!963878 () Bool)

(assert (=> b!1429140 (=> (not res!963878) (not e!807036))))

(assert (=> b!1429140 (= res!963878 (validKeyInArray!0 (select (arr!46994 a!2831) i!982)))))

(declare-fun b!1429141 () Bool)

(declare-fun res!963870 () Bool)

(assert (=> b!1429141 (=> (not res!963870) (not e!807036))))

(declare-datatypes ((List!33684 0))(
  ( (Nil!33681) (Cons!33680 (h!34994 (_ BitVec 64)) (t!48385 List!33684)) )
))
(declare-fun arrayNoDuplicates!0 (array!97373 (_ BitVec 32) List!33684) Bool)

(assert (=> b!1429141 (= res!963870 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33681))))

(assert (= (and start!123294 res!963876) b!1429137))

(assert (= (and b!1429137 res!963874) b!1429140))

(assert (= (and b!1429140 res!963878) b!1429134))

(assert (= (and b!1429134 res!963877) b!1429139))

(assert (= (and b!1429139 res!963869) b!1429141))

(assert (= (and b!1429141 res!963870) b!1429129))

(assert (= (and b!1429129 res!963875) b!1429136))

(assert (= (and b!1429136 res!963879) b!1429138))

(assert (= (and b!1429138 res!963868) b!1429135))

(assert (= (and b!1429135 res!963872) b!1429130))

(assert (= (and b!1429130 res!963871) b!1429132))

(assert (= (and b!1429132 res!963867) b!1429131))

(assert (= (and b!1429131 res!963873) b!1429133))

(declare-fun m!1319293 () Bool)

(assert (=> b!1429136 m!1319293))

(assert (=> b!1429136 m!1319293))

(declare-fun m!1319295 () Bool)

(assert (=> b!1429136 m!1319295))

(assert (=> b!1429136 m!1319295))

(assert (=> b!1429136 m!1319293))

(declare-fun m!1319297 () Bool)

(assert (=> b!1429136 m!1319297))

(declare-fun m!1319299 () Bool)

(assert (=> b!1429139 m!1319299))

(declare-fun m!1319301 () Bool)

(assert (=> b!1429131 m!1319301))

(declare-fun m!1319303 () Bool)

(assert (=> b!1429131 m!1319303))

(assert (=> b!1429133 m!1319293))

(assert (=> b!1429133 m!1319293))

(declare-fun m!1319305 () Bool)

(assert (=> b!1429133 m!1319305))

(declare-fun m!1319307 () Bool)

(assert (=> b!1429130 m!1319307))

(declare-fun m!1319309 () Bool)

(assert (=> b!1429140 m!1319309))

(assert (=> b!1429140 m!1319309))

(declare-fun m!1319311 () Bool)

(assert (=> b!1429140 m!1319311))

(declare-fun m!1319313 () Bool)

(assert (=> b!1429141 m!1319313))

(assert (=> b!1429135 m!1319293))

(assert (=> b!1429135 m!1319293))

(declare-fun m!1319315 () Bool)

(assert (=> b!1429135 m!1319315))

(declare-fun m!1319317 () Bool)

(assert (=> b!1429138 m!1319317))

(assert (=> b!1429138 m!1319317))

(declare-fun m!1319319 () Bool)

(assert (=> b!1429138 m!1319319))

(declare-fun m!1319321 () Bool)

(assert (=> b!1429138 m!1319321))

(declare-fun m!1319323 () Bool)

(assert (=> b!1429138 m!1319323))

(assert (=> b!1429134 m!1319293))

(assert (=> b!1429134 m!1319293))

(declare-fun m!1319325 () Bool)

(assert (=> b!1429134 m!1319325))

(declare-fun m!1319327 () Bool)

(assert (=> start!123294 m!1319327))

(declare-fun m!1319329 () Bool)

(assert (=> start!123294 m!1319329))

(check-sat (not b!1429130) (not b!1429135) (not b!1429138) (not b!1429139) (not start!123294) (not b!1429136) (not b!1429133) (not b!1429140) (not b!1429134) (not b!1429141) (not b!1429131))
(check-sat)
