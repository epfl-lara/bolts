; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123196 () Bool)

(assert start!123196)

(declare-fun b!1427962 () Bool)

(declare-fun res!962907 () Bool)

(declare-fun e!806519 () Bool)

(assert (=> b!1427962 (=> (not res!962907) (not e!806519))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97326 0))(
  ( (array!97327 (arr!46972 (Array (_ BitVec 32) (_ BitVec 64))) (size!47523 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97326)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427962 (= res!962907 (and (= (size!47523 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47523 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47523 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427963 () Bool)

(declare-fun e!806518 () Bool)

(assert (=> b!1427963 (= e!806519 e!806518)))

(declare-fun res!962906 () Bool)

(assert (=> b!1427963 (=> (not res!962906) (not e!806518))))

(declare-datatypes ((SeekEntryResult!11273 0))(
  ( (MissingZero!11273 (index!47483 (_ BitVec 32))) (Found!11273 (index!47484 (_ BitVec 32))) (Intermediate!11273 (undefined!12085 Bool) (index!47485 (_ BitVec 32)) (x!129128 (_ BitVec 32))) (Undefined!11273) (MissingVacant!11273 (index!47486 (_ BitVec 32))) )
))
(declare-fun lt!628758 () SeekEntryResult!11273)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97326 (_ BitVec 32)) SeekEntryResult!11273)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427963 (= res!962906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46972 a!2831) j!81) mask!2608) (select (arr!46972 a!2831) j!81) a!2831 mask!2608) lt!628758))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1427963 (= lt!628758 (Intermediate!11273 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427964 () Bool)

(declare-fun res!962908 () Bool)

(declare-fun e!806515 () Bool)

(assert (=> b!1427964 (=> (not res!962908) (not e!806515))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!628756 () SeekEntryResult!11273)

(declare-fun lt!628757 () (_ BitVec 64))

(declare-fun lt!628759 () array!97326)

(assert (=> b!1427964 (= res!962908 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628757 lt!628759 mask!2608) lt!628756))))

(declare-fun b!1427965 () Bool)

(declare-fun res!962903 () Bool)

(assert (=> b!1427965 (=> (not res!962903) (not e!806515))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427965 (= res!962903 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427966 () Bool)

(declare-fun res!962911 () Bool)

(assert (=> b!1427966 (=> (not res!962911) (not e!806519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97326 (_ BitVec 32)) Bool)

(assert (=> b!1427966 (= res!962911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427967 () Bool)

(declare-fun res!962913 () Bool)

(assert (=> b!1427967 (=> (not res!962913) (not e!806519))))

(assert (=> b!1427967 (= res!962913 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47523 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47523 a!2831))))))

(declare-fun b!1427968 () Bool)

(declare-fun res!962904 () Bool)

(assert (=> b!1427968 (=> (not res!962904) (not e!806519))))

(declare-datatypes ((List!33662 0))(
  ( (Nil!33659) (Cons!33658 (h!34969 (_ BitVec 64)) (t!48363 List!33662)) )
))
(declare-fun arrayNoDuplicates!0 (array!97326 (_ BitVec 32) List!33662) Bool)

(assert (=> b!1427968 (= res!962904 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33659))))

(declare-fun b!1427969 () Bool)

(declare-fun e!806517 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97326 (_ BitVec 32)) SeekEntryResult!11273)

(assert (=> b!1427969 (= e!806517 (= (seekEntryOrOpen!0 (select (arr!46972 a!2831) j!81) a!2831 mask!2608) (Found!11273 j!81)))))

(declare-fun b!1427970 () Bool)

(declare-fun res!962910 () Bool)

(assert (=> b!1427970 (=> (not res!962910) (not e!806519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427970 (= res!962910 (validKeyInArray!0 (select (arr!46972 a!2831) i!982)))))

(declare-fun b!1427971 () Bool)

(assert (=> b!1427971 (= e!806515 (not true))))

(assert (=> b!1427971 e!806517))

(declare-fun res!962912 () Bool)

(assert (=> b!1427971 (=> (not res!962912) (not e!806517))))

(assert (=> b!1427971 (= res!962912 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48240 0))(
  ( (Unit!48241) )
))
(declare-fun lt!628755 () Unit!48240)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97326 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48240)

(assert (=> b!1427971 (= lt!628755 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427972 () Bool)

(declare-fun res!962909 () Bool)

(assert (=> b!1427972 (=> (not res!962909) (not e!806519))))

(assert (=> b!1427972 (= res!962909 (validKeyInArray!0 (select (arr!46972 a!2831) j!81)))))

(declare-fun b!1427973 () Bool)

(assert (=> b!1427973 (= e!806518 e!806515)))

(declare-fun res!962905 () Bool)

(assert (=> b!1427973 (=> (not res!962905) (not e!806515))))

(assert (=> b!1427973 (= res!962905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628757 mask!2608) lt!628757 lt!628759 mask!2608) lt!628756))))

(assert (=> b!1427973 (= lt!628756 (Intermediate!11273 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427973 (= lt!628757 (select (store (arr!46972 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427973 (= lt!628759 (array!97327 (store (arr!46972 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47523 a!2831)))))

(declare-fun res!962901 () Bool)

(assert (=> start!123196 (=> (not res!962901) (not e!806519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123196 (= res!962901 (validMask!0 mask!2608))))

(assert (=> start!123196 e!806519))

(assert (=> start!123196 true))

(declare-fun array_inv!35917 (array!97326) Bool)

(assert (=> start!123196 (array_inv!35917 a!2831)))

(declare-fun b!1427974 () Bool)

(declare-fun res!962902 () Bool)

(assert (=> b!1427974 (=> (not res!962902) (not e!806515))))

(assert (=> b!1427974 (= res!962902 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46972 a!2831) j!81) a!2831 mask!2608) lt!628758))))

(assert (= (and start!123196 res!962901) b!1427962))

(assert (= (and b!1427962 res!962907) b!1427970))

(assert (= (and b!1427970 res!962910) b!1427972))

(assert (= (and b!1427972 res!962909) b!1427966))

(assert (= (and b!1427966 res!962911) b!1427968))

(assert (= (and b!1427968 res!962904) b!1427967))

(assert (= (and b!1427967 res!962913) b!1427963))

(assert (= (and b!1427963 res!962906) b!1427973))

(assert (= (and b!1427973 res!962905) b!1427974))

(assert (= (and b!1427974 res!962902) b!1427964))

(assert (= (and b!1427964 res!962908) b!1427965))

(assert (= (and b!1427965 res!962903) b!1427971))

(assert (= (and b!1427971 res!962912) b!1427969))

(declare-fun m!1318265 () Bool)

(assert (=> b!1427974 m!1318265))

(assert (=> b!1427974 m!1318265))

(declare-fun m!1318267 () Bool)

(assert (=> b!1427974 m!1318267))

(declare-fun m!1318269 () Bool)

(assert (=> start!123196 m!1318269))

(declare-fun m!1318271 () Bool)

(assert (=> start!123196 m!1318271))

(declare-fun m!1318273 () Bool)

(assert (=> b!1427968 m!1318273))

(declare-fun m!1318275 () Bool)

(assert (=> b!1427970 m!1318275))

(assert (=> b!1427970 m!1318275))

(declare-fun m!1318277 () Bool)

(assert (=> b!1427970 m!1318277))

(assert (=> b!1427969 m!1318265))

(assert (=> b!1427969 m!1318265))

(declare-fun m!1318279 () Bool)

(assert (=> b!1427969 m!1318279))

(declare-fun m!1318281 () Bool)

(assert (=> b!1427964 m!1318281))

(declare-fun m!1318283 () Bool)

(assert (=> b!1427966 m!1318283))

(assert (=> b!1427972 m!1318265))

(assert (=> b!1427972 m!1318265))

(declare-fun m!1318285 () Bool)

(assert (=> b!1427972 m!1318285))

(declare-fun m!1318287 () Bool)

(assert (=> b!1427971 m!1318287))

(declare-fun m!1318289 () Bool)

(assert (=> b!1427971 m!1318289))

(declare-fun m!1318291 () Bool)

(assert (=> b!1427973 m!1318291))

(assert (=> b!1427973 m!1318291))

(declare-fun m!1318293 () Bool)

(assert (=> b!1427973 m!1318293))

(declare-fun m!1318295 () Bool)

(assert (=> b!1427973 m!1318295))

(declare-fun m!1318297 () Bool)

(assert (=> b!1427973 m!1318297))

(assert (=> b!1427963 m!1318265))

(assert (=> b!1427963 m!1318265))

(declare-fun m!1318299 () Bool)

(assert (=> b!1427963 m!1318299))

(assert (=> b!1427963 m!1318299))

(assert (=> b!1427963 m!1318265))

(declare-fun m!1318301 () Bool)

(assert (=> b!1427963 m!1318301))

(push 1)

