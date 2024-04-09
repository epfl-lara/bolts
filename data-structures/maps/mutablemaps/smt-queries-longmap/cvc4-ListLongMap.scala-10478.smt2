; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123290 () Bool)

(assert start!123290)

(declare-fun e!807005 () Bool)

(declare-fun b!1429051 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97369 0))(
  ( (array!97370 (arr!46992 (Array (_ BitVec 32) (_ BitVec 64))) (size!47543 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97369)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11293 0))(
  ( (MissingZero!11293 (index!47563 (_ BitVec 32))) (Found!11293 (index!47564 (_ BitVec 32))) (Intermediate!11293 (undefined!12105 Bool) (index!47565 (_ BitVec 32)) (x!129202 (_ BitVec 32))) (Undefined!11293) (MissingVacant!11293 (index!47566 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97369 (_ BitVec 32)) SeekEntryResult!11293)

(assert (=> b!1429051 (= e!807005 (= (seekEntryOrOpen!0 (select (arr!46992 a!2831) j!81) a!2831 mask!2608) (Found!11293 j!81)))))

(declare-fun b!1429052 () Bool)

(declare-fun res!963794 () Bool)

(declare-fun e!807008 () Bool)

(assert (=> b!1429052 (=> (not res!963794) (not e!807008))))

(declare-fun lt!629190 () array!97369)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!629187 () SeekEntryResult!11293)

(declare-fun lt!629189 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97369 (_ BitVec 32)) SeekEntryResult!11293)

(assert (=> b!1429052 (= res!963794 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629189 lt!629190 mask!2608) lt!629187))))

(declare-fun b!1429053 () Bool)

(declare-fun res!963795 () Bool)

(assert (=> b!1429053 (=> (not res!963795) (not e!807008))))

(declare-fun lt!629188 () SeekEntryResult!11293)

(assert (=> b!1429053 (= res!963795 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46992 a!2831) j!81) a!2831 mask!2608) lt!629188))))

(declare-fun b!1429054 () Bool)

(declare-fun res!963796 () Bool)

(declare-fun e!807006 () Bool)

(assert (=> b!1429054 (=> (not res!963796) (not e!807006))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1429054 (= res!963796 (and (= (size!47543 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47543 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47543 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429055 () Bool)

(declare-fun e!807007 () Bool)

(assert (=> b!1429055 (= e!807007 e!807008)))

(declare-fun res!963801 () Bool)

(assert (=> b!1429055 (=> (not res!963801) (not e!807008))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429055 (= res!963801 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629189 mask!2608) lt!629189 lt!629190 mask!2608) lt!629187))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429055 (= lt!629187 (Intermediate!11293 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429055 (= lt!629189 (select (store (arr!46992 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429055 (= lt!629190 (array!97370 (store (arr!46992 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47543 a!2831)))))

(declare-fun b!1429056 () Bool)

(declare-fun res!963789 () Bool)

(assert (=> b!1429056 (=> (not res!963789) (not e!807006))))

(declare-datatypes ((List!33682 0))(
  ( (Nil!33679) (Cons!33678 (h!34992 (_ BitVec 64)) (t!48383 List!33682)) )
))
(declare-fun arrayNoDuplicates!0 (array!97369 (_ BitVec 32) List!33682) Bool)

(assert (=> b!1429056 (= res!963789 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33679))))

(declare-fun b!1429057 () Bool)

(declare-fun res!963797 () Bool)

(assert (=> b!1429057 (=> (not res!963797) (not e!807006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429057 (= res!963797 (validKeyInArray!0 (select (arr!46992 a!2831) j!81)))))

(declare-fun b!1429058 () Bool)

(assert (=> b!1429058 (= e!807006 e!807007)))

(declare-fun res!963790 () Bool)

(assert (=> b!1429058 (=> (not res!963790) (not e!807007))))

(assert (=> b!1429058 (= res!963790 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46992 a!2831) j!81) mask!2608) (select (arr!46992 a!2831) j!81) a!2831 mask!2608) lt!629188))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1429058 (= lt!629188 (Intermediate!11293 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429059 () Bool)

(assert (=> b!1429059 (= e!807008 (not true))))

(assert (=> b!1429059 e!807005))

(declare-fun res!963800 () Bool)

(assert (=> b!1429059 (=> (not res!963800) (not e!807005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97369 (_ BitVec 32)) Bool)

(assert (=> b!1429059 (= res!963800 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48280 0))(
  ( (Unit!48281) )
))
(declare-fun lt!629191 () Unit!48280)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97369 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48280)

(assert (=> b!1429059 (= lt!629191 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!963793 () Bool)

(assert (=> start!123290 (=> (not res!963793) (not e!807006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123290 (= res!963793 (validMask!0 mask!2608))))

(assert (=> start!123290 e!807006))

(assert (=> start!123290 true))

(declare-fun array_inv!35937 (array!97369) Bool)

(assert (=> start!123290 (array_inv!35937 a!2831)))

(declare-fun b!1429060 () Bool)

(declare-fun res!963798 () Bool)

(assert (=> b!1429060 (=> (not res!963798) (not e!807006))))

(assert (=> b!1429060 (= res!963798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429061 () Bool)

(declare-fun res!963799 () Bool)

(assert (=> b!1429061 (=> (not res!963799) (not e!807006))))

(assert (=> b!1429061 (= res!963799 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47543 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47543 a!2831))))))

(declare-fun b!1429062 () Bool)

(declare-fun res!963791 () Bool)

(assert (=> b!1429062 (=> (not res!963791) (not e!807006))))

(assert (=> b!1429062 (= res!963791 (validKeyInArray!0 (select (arr!46992 a!2831) i!982)))))

(declare-fun b!1429063 () Bool)

(declare-fun res!963792 () Bool)

(assert (=> b!1429063 (=> (not res!963792) (not e!807008))))

(assert (=> b!1429063 (= res!963792 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123290 res!963793) b!1429054))

(assert (= (and b!1429054 res!963796) b!1429062))

(assert (= (and b!1429062 res!963791) b!1429057))

(assert (= (and b!1429057 res!963797) b!1429060))

(assert (= (and b!1429060 res!963798) b!1429056))

(assert (= (and b!1429056 res!963789) b!1429061))

(assert (= (and b!1429061 res!963799) b!1429058))

(assert (= (and b!1429058 res!963790) b!1429055))

(assert (= (and b!1429055 res!963801) b!1429053))

(assert (= (and b!1429053 res!963795) b!1429052))

(assert (= (and b!1429052 res!963794) b!1429063))

(assert (= (and b!1429063 res!963792) b!1429059))

(assert (= (and b!1429059 res!963800) b!1429051))

(declare-fun m!1319217 () Bool)

(assert (=> b!1429052 m!1319217))

(declare-fun m!1319219 () Bool)

(assert (=> b!1429056 m!1319219))

(declare-fun m!1319221 () Bool)

(assert (=> b!1429060 m!1319221))

(declare-fun m!1319223 () Bool)

(assert (=> b!1429053 m!1319223))

(assert (=> b!1429053 m!1319223))

(declare-fun m!1319225 () Bool)

(assert (=> b!1429053 m!1319225))

(assert (=> b!1429051 m!1319223))

(assert (=> b!1429051 m!1319223))

(declare-fun m!1319227 () Bool)

(assert (=> b!1429051 m!1319227))

(declare-fun m!1319229 () Bool)

(assert (=> b!1429059 m!1319229))

(declare-fun m!1319231 () Bool)

(assert (=> b!1429059 m!1319231))

(assert (=> b!1429058 m!1319223))

(assert (=> b!1429058 m!1319223))

(declare-fun m!1319233 () Bool)

(assert (=> b!1429058 m!1319233))

(assert (=> b!1429058 m!1319233))

(assert (=> b!1429058 m!1319223))

(declare-fun m!1319235 () Bool)

(assert (=> b!1429058 m!1319235))

(declare-fun m!1319237 () Bool)

(assert (=> b!1429055 m!1319237))

(assert (=> b!1429055 m!1319237))

(declare-fun m!1319239 () Bool)

(assert (=> b!1429055 m!1319239))

(declare-fun m!1319241 () Bool)

(assert (=> b!1429055 m!1319241))

(declare-fun m!1319243 () Bool)

(assert (=> b!1429055 m!1319243))

(declare-fun m!1319245 () Bool)

(assert (=> start!123290 m!1319245))

(declare-fun m!1319247 () Bool)

(assert (=> start!123290 m!1319247))

(declare-fun m!1319249 () Bool)

(assert (=> b!1429062 m!1319249))

(assert (=> b!1429062 m!1319249))

(declare-fun m!1319251 () Bool)

(assert (=> b!1429062 m!1319251))

(assert (=> b!1429057 m!1319223))

(assert (=> b!1429057 m!1319223))

(declare-fun m!1319253 () Bool)

(assert (=> b!1429057 m!1319253))

(push 1)

