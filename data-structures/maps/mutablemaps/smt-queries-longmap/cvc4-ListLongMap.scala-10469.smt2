; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123128 () Bool)

(assert start!123128)

(declare-fun b!1427380 () Bool)

(declare-fun e!806224 () Bool)

(declare-fun e!806225 () Bool)

(assert (=> b!1427380 (= e!806224 e!806225)))

(declare-fun res!962529 () Bool)

(assert (=> b!1427380 (=> (not res!962529) (not e!806225))))

(declare-datatypes ((SeekEntryResult!11266 0))(
  ( (MissingZero!11266 (index!47455 (_ BitVec 32))) (Found!11266 (index!47456 (_ BitVec 32))) (Intermediate!11266 (undefined!12078 Bool) (index!47457 (_ BitVec 32)) (x!129091 (_ BitVec 32))) (Undefined!11266) (MissingVacant!11266 (index!47458 (_ BitVec 32))) )
))
(declare-fun lt!628521 () SeekEntryResult!11266)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97309 0))(
  ( (array!97310 (arr!46965 (Array (_ BitVec 32) (_ BitVec 64))) (size!47516 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97309)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97309 (_ BitVec 32)) SeekEntryResult!11266)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427380 (= res!962529 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46965 a!2831) j!81) mask!2608) (select (arr!46965 a!2831) j!81) a!2831 mask!2608) lt!628521))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1427380 (= lt!628521 (Intermediate!11266 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427381 () Bool)

(declare-fun res!962528 () Bool)

(assert (=> b!1427381 (=> (not res!962528) (not e!806224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97309 (_ BitVec 32)) Bool)

(assert (=> b!1427381 (= res!962528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427382 () Bool)

(declare-fun res!962525 () Bool)

(declare-fun e!806221 () Bool)

(assert (=> b!1427382 (=> (not res!962525) (not e!806221))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427382 (= res!962525 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!962520 () Bool)

(assert (=> start!123128 (=> (not res!962520) (not e!806224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123128 (= res!962520 (validMask!0 mask!2608))))

(assert (=> start!123128 e!806224))

(assert (=> start!123128 true))

(declare-fun array_inv!35910 (array!97309) Bool)

(assert (=> start!123128 (array_inv!35910 a!2831)))

(declare-fun b!1427383 () Bool)

(assert (=> b!1427383 (= e!806221 (not true))))

(declare-fun e!806222 () Bool)

(assert (=> b!1427383 e!806222))

(declare-fun res!962532 () Bool)

(assert (=> b!1427383 (=> (not res!962532) (not e!806222))))

(assert (=> b!1427383 (= res!962532 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48226 0))(
  ( (Unit!48227) )
))
(declare-fun lt!628522 () Unit!48226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48226)

(assert (=> b!1427383 (= lt!628522 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427384 () Bool)

(declare-fun res!962522 () Bool)

(assert (=> b!1427384 (=> (not res!962522) (not e!806224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427384 (= res!962522 (validKeyInArray!0 (select (arr!46965 a!2831) j!81)))))

(declare-fun b!1427385 () Bool)

(assert (=> b!1427385 (= e!806225 e!806221)))

(declare-fun res!962523 () Bool)

(assert (=> b!1427385 (=> (not res!962523) (not e!806221))))

(declare-fun lt!628519 () SeekEntryResult!11266)

(declare-fun lt!628518 () (_ BitVec 64))

(declare-fun lt!628520 () array!97309)

(assert (=> b!1427385 (= res!962523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628518 mask!2608) lt!628518 lt!628520 mask!2608) lt!628519))))

(assert (=> b!1427385 (= lt!628519 (Intermediate!11266 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427385 (= lt!628518 (select (store (arr!46965 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427385 (= lt!628520 (array!97310 (store (arr!46965 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47516 a!2831)))))

(declare-fun b!1427386 () Bool)

(declare-fun res!962527 () Bool)

(assert (=> b!1427386 (=> (not res!962527) (not e!806224))))

(assert (=> b!1427386 (= res!962527 (validKeyInArray!0 (select (arr!46965 a!2831) i!982)))))

(declare-fun b!1427387 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97309 (_ BitVec 32)) SeekEntryResult!11266)

(assert (=> b!1427387 (= e!806222 (= (seekEntryOrOpen!0 (select (arr!46965 a!2831) j!81) a!2831 mask!2608) (Found!11266 j!81)))))

(declare-fun b!1427388 () Bool)

(declare-fun res!962526 () Bool)

(assert (=> b!1427388 (=> (not res!962526) (not e!806224))))

(declare-datatypes ((List!33655 0))(
  ( (Nil!33652) (Cons!33651 (h!34959 (_ BitVec 64)) (t!48356 List!33655)) )
))
(declare-fun arrayNoDuplicates!0 (array!97309 (_ BitVec 32) List!33655) Bool)

(assert (=> b!1427388 (= res!962526 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33652))))

(declare-fun b!1427389 () Bool)

(declare-fun res!962531 () Bool)

(assert (=> b!1427389 (=> (not res!962531) (not e!806221))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1427389 (= res!962531 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628518 lt!628520 mask!2608) lt!628519))))

(declare-fun b!1427390 () Bool)

(declare-fun res!962530 () Bool)

(assert (=> b!1427390 (=> (not res!962530) (not e!806224))))

(assert (=> b!1427390 (= res!962530 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47516 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47516 a!2831))))))

(declare-fun b!1427391 () Bool)

(declare-fun res!962521 () Bool)

(assert (=> b!1427391 (=> (not res!962521) (not e!806224))))

(assert (=> b!1427391 (= res!962521 (and (= (size!47516 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47516 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47516 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427392 () Bool)

(declare-fun res!962524 () Bool)

(assert (=> b!1427392 (=> (not res!962524) (not e!806221))))

(assert (=> b!1427392 (= res!962524 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46965 a!2831) j!81) a!2831 mask!2608) lt!628521))))

(assert (= (and start!123128 res!962520) b!1427391))

(assert (= (and b!1427391 res!962521) b!1427386))

(assert (= (and b!1427386 res!962527) b!1427384))

(assert (= (and b!1427384 res!962522) b!1427381))

(assert (= (and b!1427381 res!962528) b!1427388))

(assert (= (and b!1427388 res!962526) b!1427390))

(assert (= (and b!1427390 res!962530) b!1427380))

(assert (= (and b!1427380 res!962529) b!1427385))

(assert (= (and b!1427385 res!962523) b!1427392))

(assert (= (and b!1427392 res!962524) b!1427389))

(assert (= (and b!1427389 res!962531) b!1427382))

(assert (= (and b!1427382 res!962525) b!1427383))

(assert (= (and b!1427383 res!962532) b!1427387))

(declare-fun m!1317807 () Bool)

(assert (=> b!1427387 m!1317807))

(assert (=> b!1427387 m!1317807))

(declare-fun m!1317809 () Bool)

(assert (=> b!1427387 m!1317809))

(assert (=> b!1427380 m!1317807))

(assert (=> b!1427380 m!1317807))

(declare-fun m!1317811 () Bool)

(assert (=> b!1427380 m!1317811))

(assert (=> b!1427380 m!1317811))

(assert (=> b!1427380 m!1317807))

(declare-fun m!1317813 () Bool)

(assert (=> b!1427380 m!1317813))

(assert (=> b!1427392 m!1317807))

(assert (=> b!1427392 m!1317807))

(declare-fun m!1317815 () Bool)

(assert (=> b!1427392 m!1317815))

(declare-fun m!1317817 () Bool)

(assert (=> b!1427389 m!1317817))

(declare-fun m!1317819 () Bool)

(assert (=> b!1427385 m!1317819))

(assert (=> b!1427385 m!1317819))

(declare-fun m!1317821 () Bool)

(assert (=> b!1427385 m!1317821))

(declare-fun m!1317823 () Bool)

(assert (=> b!1427385 m!1317823))

(declare-fun m!1317825 () Bool)

(assert (=> b!1427385 m!1317825))

(declare-fun m!1317827 () Bool)

(assert (=> b!1427381 m!1317827))

(declare-fun m!1317829 () Bool)

(assert (=> b!1427383 m!1317829))

(declare-fun m!1317831 () Bool)

(assert (=> b!1427383 m!1317831))

(assert (=> b!1427384 m!1317807))

(assert (=> b!1427384 m!1317807))

(declare-fun m!1317833 () Bool)

(assert (=> b!1427384 m!1317833))

(declare-fun m!1317835 () Bool)

(assert (=> b!1427386 m!1317835))

(assert (=> b!1427386 m!1317835))

(declare-fun m!1317837 () Bool)

(assert (=> b!1427386 m!1317837))

(declare-fun m!1317839 () Bool)

(assert (=> b!1427388 m!1317839))

(declare-fun m!1317841 () Bool)

(assert (=> start!123128 m!1317841))

(declare-fun m!1317843 () Bool)

(assert (=> start!123128 m!1317843))

(push 1)

