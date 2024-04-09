; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123322 () Bool)

(assert start!123322)

(declare-fun b!1429675 () Bool)

(declare-fun res!964420 () Bool)

(declare-fun e!807244 () Bool)

(assert (=> b!1429675 (=> (not res!964420) (not e!807244))))

(declare-datatypes ((array!97401 0))(
  ( (array!97402 (arr!47008 (Array (_ BitVec 32) (_ BitVec 64))) (size!47559 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97401)

(declare-datatypes ((List!33698 0))(
  ( (Nil!33695) (Cons!33694 (h!35008 (_ BitVec 64)) (t!48399 List!33698)) )
))
(declare-fun arrayNoDuplicates!0 (array!97401 (_ BitVec 32) List!33698) Bool)

(assert (=> b!1429675 (= res!964420 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33695))))

(declare-fun b!1429676 () Bool)

(declare-fun e!807246 () Bool)

(assert (=> b!1429676 (= e!807246 (not true))))

(declare-fun e!807247 () Bool)

(assert (=> b!1429676 e!807247))

(declare-fun res!964413 () Bool)

(assert (=> b!1429676 (=> (not res!964413) (not e!807247))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97401 (_ BitVec 32)) Bool)

(assert (=> b!1429676 (= res!964413 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48312 0))(
  ( (Unit!48313) )
))
(declare-fun lt!629428 () Unit!48312)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48312)

(assert (=> b!1429676 (= lt!629428 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429677 () Bool)

(declare-fun res!964416 () Bool)

(assert (=> b!1429677 (=> (not res!964416) (not e!807244))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1429677 (= res!964416 (and (= (size!47559 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47559 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47559 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429678 () Bool)

(declare-fun res!964419 () Bool)

(assert (=> b!1429678 (=> (not res!964419) (not e!807244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429678 (= res!964419 (validKeyInArray!0 (select (arr!47008 a!2831) j!81)))))

(declare-fun b!1429679 () Bool)

(declare-fun e!807248 () Bool)

(assert (=> b!1429679 (= e!807248 e!807246)))

(declare-fun res!964418 () Bool)

(assert (=> b!1429679 (=> (not res!964418) (not e!807246))))

(declare-datatypes ((SeekEntryResult!11309 0))(
  ( (MissingZero!11309 (index!47627 (_ BitVec 32))) (Found!11309 (index!47628 (_ BitVec 32))) (Intermediate!11309 (undefined!12121 Bool) (index!47629 (_ BitVec 32)) (x!129266 (_ BitVec 32))) (Undefined!11309) (MissingVacant!11309 (index!47630 (_ BitVec 32))) )
))
(declare-fun lt!629431 () SeekEntryResult!11309)

(declare-fun lt!629430 () array!97401)

(declare-fun lt!629427 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97401 (_ BitVec 32)) SeekEntryResult!11309)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429679 (= res!964418 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629427 mask!2608) lt!629427 lt!629430 mask!2608) lt!629431))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429679 (= lt!629431 (Intermediate!11309 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429679 (= lt!629427 (select (store (arr!47008 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429679 (= lt!629430 (array!97402 (store (arr!47008 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47559 a!2831)))))

(declare-fun b!1429680 () Bool)

(declare-fun res!964414 () Bool)

(assert (=> b!1429680 (=> (not res!964414) (not e!807244))))

(assert (=> b!1429680 (= res!964414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429681 () Bool)

(declare-fun res!964415 () Bool)

(assert (=> b!1429681 (=> (not res!964415) (not e!807246))))

(declare-fun lt!629429 () SeekEntryResult!11309)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429681 (= res!964415 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47008 a!2831) j!81) a!2831 mask!2608) lt!629429))))

(declare-fun b!1429682 () Bool)

(declare-fun res!964425 () Bool)

(assert (=> b!1429682 (=> (not res!964425) (not e!807244))))

(assert (=> b!1429682 (= res!964425 (validKeyInArray!0 (select (arr!47008 a!2831) i!982)))))

(declare-fun b!1429683 () Bool)

(declare-fun res!964422 () Bool)

(assert (=> b!1429683 (=> (not res!964422) (not e!807246))))

(assert (=> b!1429683 (= res!964422 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629427 lt!629430 mask!2608) lt!629431))))

(declare-fun b!1429684 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97401 (_ BitVec 32)) SeekEntryResult!11309)

(assert (=> b!1429684 (= e!807247 (= (seekEntryOrOpen!0 (select (arr!47008 a!2831) j!81) a!2831 mask!2608) (Found!11309 j!81)))))

(declare-fun b!1429685 () Bool)

(assert (=> b!1429685 (= e!807244 e!807248)))

(declare-fun res!964424 () Bool)

(assert (=> b!1429685 (=> (not res!964424) (not e!807248))))

(assert (=> b!1429685 (= res!964424 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47008 a!2831) j!81) mask!2608) (select (arr!47008 a!2831) j!81) a!2831 mask!2608) lt!629429))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1429685 (= lt!629429 (Intermediate!11309 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429686 () Bool)

(declare-fun res!964421 () Bool)

(assert (=> b!1429686 (=> (not res!964421) (not e!807244))))

(assert (=> b!1429686 (= res!964421 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47559 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47559 a!2831))))))

(declare-fun res!964423 () Bool)

(assert (=> start!123322 (=> (not res!964423) (not e!807244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123322 (= res!964423 (validMask!0 mask!2608))))

(assert (=> start!123322 e!807244))

(assert (=> start!123322 true))

(declare-fun array_inv!35953 (array!97401) Bool)

(assert (=> start!123322 (array_inv!35953 a!2831)))

(declare-fun b!1429687 () Bool)

(declare-fun res!964417 () Bool)

(assert (=> b!1429687 (=> (not res!964417) (not e!807246))))

(assert (=> b!1429687 (= res!964417 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123322 res!964423) b!1429677))

(assert (= (and b!1429677 res!964416) b!1429682))

(assert (= (and b!1429682 res!964425) b!1429678))

(assert (= (and b!1429678 res!964419) b!1429680))

(assert (= (and b!1429680 res!964414) b!1429675))

(assert (= (and b!1429675 res!964420) b!1429686))

(assert (= (and b!1429686 res!964421) b!1429685))

(assert (= (and b!1429685 res!964424) b!1429679))

(assert (= (and b!1429679 res!964418) b!1429681))

(assert (= (and b!1429681 res!964415) b!1429683))

(assert (= (and b!1429683 res!964422) b!1429687))

(assert (= (and b!1429687 res!964417) b!1429676))

(assert (= (and b!1429676 res!964413) b!1429684))

(declare-fun m!1319825 () Bool)

(assert (=> b!1429678 m!1319825))

(assert (=> b!1429678 m!1319825))

(declare-fun m!1319827 () Bool)

(assert (=> b!1429678 m!1319827))

(declare-fun m!1319829 () Bool)

(assert (=> b!1429675 m!1319829))

(assert (=> b!1429685 m!1319825))

(assert (=> b!1429685 m!1319825))

(declare-fun m!1319831 () Bool)

(assert (=> b!1429685 m!1319831))

(assert (=> b!1429685 m!1319831))

(assert (=> b!1429685 m!1319825))

(declare-fun m!1319833 () Bool)

(assert (=> b!1429685 m!1319833))

(declare-fun m!1319835 () Bool)

(assert (=> start!123322 m!1319835))

(declare-fun m!1319837 () Bool)

(assert (=> start!123322 m!1319837))

(assert (=> b!1429681 m!1319825))

(assert (=> b!1429681 m!1319825))

(declare-fun m!1319839 () Bool)

(assert (=> b!1429681 m!1319839))

(assert (=> b!1429684 m!1319825))

(assert (=> b!1429684 m!1319825))

(declare-fun m!1319841 () Bool)

(assert (=> b!1429684 m!1319841))

(declare-fun m!1319843 () Bool)

(assert (=> b!1429680 m!1319843))

(declare-fun m!1319845 () Bool)

(assert (=> b!1429683 m!1319845))

(declare-fun m!1319847 () Bool)

(assert (=> b!1429682 m!1319847))

(assert (=> b!1429682 m!1319847))

(declare-fun m!1319849 () Bool)

(assert (=> b!1429682 m!1319849))

(declare-fun m!1319851 () Bool)

(assert (=> b!1429679 m!1319851))

(assert (=> b!1429679 m!1319851))

(declare-fun m!1319853 () Bool)

(assert (=> b!1429679 m!1319853))

(declare-fun m!1319855 () Bool)

(assert (=> b!1429679 m!1319855))

(declare-fun m!1319857 () Bool)

(assert (=> b!1429679 m!1319857))

(declare-fun m!1319859 () Bool)

(assert (=> b!1429676 m!1319859))

(declare-fun m!1319861 () Bool)

(assert (=> b!1429676 m!1319861))

(push 1)

