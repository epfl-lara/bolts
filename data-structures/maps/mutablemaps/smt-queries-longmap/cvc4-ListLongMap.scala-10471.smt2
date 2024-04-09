; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123194 () Bool)

(assert start!123194)

(declare-fun b!1427923 () Bool)

(declare-fun res!962871 () Bool)

(declare-fun e!806501 () Bool)

(assert (=> b!1427923 (=> (not res!962871) (not e!806501))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97324 0))(
  ( (array!97325 (arr!46971 (Array (_ BitVec 32) (_ BitVec 64))) (size!47522 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97324)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427923 (= res!962871 (and (= (size!47522 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47522 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47522 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427924 () Bool)

(declare-fun res!962869 () Bool)

(assert (=> b!1427924 (=> (not res!962869) (not e!806501))))

(declare-datatypes ((List!33661 0))(
  ( (Nil!33658) (Cons!33657 (h!34968 (_ BitVec 64)) (t!48362 List!33661)) )
))
(declare-fun arrayNoDuplicates!0 (array!97324 (_ BitVec 32) List!33661) Bool)

(assert (=> b!1427924 (= res!962869 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33658))))

(declare-fun b!1427925 () Bool)

(declare-fun e!806502 () Bool)

(assert (=> b!1427925 (= e!806501 e!806502)))

(declare-fun res!962867 () Bool)

(assert (=> b!1427925 (=> (not res!962867) (not e!806502))))

(declare-datatypes ((SeekEntryResult!11272 0))(
  ( (MissingZero!11272 (index!47479 (_ BitVec 32))) (Found!11272 (index!47480 (_ BitVec 32))) (Intermediate!11272 (undefined!12084 Bool) (index!47481 (_ BitVec 32)) (x!129119 (_ BitVec 32))) (Undefined!11272) (MissingVacant!11272 (index!47482 (_ BitVec 32))) )
))
(declare-fun lt!628744 () SeekEntryResult!11272)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97324 (_ BitVec 32)) SeekEntryResult!11272)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427925 (= res!962867 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46971 a!2831) j!81) mask!2608) (select (arr!46971 a!2831) j!81) a!2831 mask!2608) lt!628744))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1427925 (= lt!628744 (Intermediate!11272 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427926 () Bool)

(declare-fun e!806500 () Bool)

(assert (=> b!1427926 (= e!806500 (not true))))

(declare-fun e!806503 () Bool)

(assert (=> b!1427926 e!806503))

(declare-fun res!962862 () Bool)

(assert (=> b!1427926 (=> (not res!962862) (not e!806503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97324 (_ BitVec 32)) Bool)

(assert (=> b!1427926 (= res!962862 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48238 0))(
  ( (Unit!48239) )
))
(declare-fun lt!628740 () Unit!48238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97324 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48238)

(assert (=> b!1427926 (= lt!628740 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427927 () Bool)

(assert (=> b!1427927 (= e!806502 e!806500)))

(declare-fun res!962870 () Bool)

(assert (=> b!1427927 (=> (not res!962870) (not e!806500))))

(declare-fun lt!628742 () array!97324)

(declare-fun lt!628743 () (_ BitVec 64))

(declare-fun lt!628741 () SeekEntryResult!11272)

(assert (=> b!1427927 (= res!962870 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628743 mask!2608) lt!628743 lt!628742 mask!2608) lt!628741))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427927 (= lt!628741 (Intermediate!11272 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427927 (= lt!628743 (select (store (arr!46971 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427927 (= lt!628742 (array!97325 (store (arr!46971 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47522 a!2831)))))

(declare-fun b!1427928 () Bool)

(declare-fun res!962873 () Bool)

(assert (=> b!1427928 (=> (not res!962873) (not e!806500))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1427928 (= res!962873 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628743 lt!628742 mask!2608) lt!628741))))

(declare-fun b!1427929 () Bool)

(declare-fun res!962865 () Bool)

(assert (=> b!1427929 (=> (not res!962865) (not e!806501))))

(assert (=> b!1427929 (= res!962865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427930 () Bool)

(declare-fun res!962874 () Bool)

(assert (=> b!1427930 (=> (not res!962874) (not e!806501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427930 (= res!962874 (validKeyInArray!0 (select (arr!46971 a!2831) i!982)))))

(declare-fun b!1427931 () Bool)

(declare-fun res!962866 () Bool)

(assert (=> b!1427931 (=> (not res!962866) (not e!806500))))

(assert (=> b!1427931 (= res!962866 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427932 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97324 (_ BitVec 32)) SeekEntryResult!11272)

(assert (=> b!1427932 (= e!806503 (= (seekEntryOrOpen!0 (select (arr!46971 a!2831) j!81) a!2831 mask!2608) (Found!11272 j!81)))))

(declare-fun b!1427933 () Bool)

(declare-fun res!962863 () Bool)

(assert (=> b!1427933 (=> (not res!962863) (not e!806501))))

(assert (=> b!1427933 (= res!962863 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47522 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47522 a!2831))))))

(declare-fun res!962868 () Bool)

(assert (=> start!123194 (=> (not res!962868) (not e!806501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123194 (= res!962868 (validMask!0 mask!2608))))

(assert (=> start!123194 e!806501))

(assert (=> start!123194 true))

(declare-fun array_inv!35916 (array!97324) Bool)

(assert (=> start!123194 (array_inv!35916 a!2831)))

(declare-fun b!1427934 () Bool)

(declare-fun res!962872 () Bool)

(assert (=> b!1427934 (=> (not res!962872) (not e!806500))))

(assert (=> b!1427934 (= res!962872 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46971 a!2831) j!81) a!2831 mask!2608) lt!628744))))

(declare-fun b!1427935 () Bool)

(declare-fun res!962864 () Bool)

(assert (=> b!1427935 (=> (not res!962864) (not e!806501))))

(assert (=> b!1427935 (= res!962864 (validKeyInArray!0 (select (arr!46971 a!2831) j!81)))))

(assert (= (and start!123194 res!962868) b!1427923))

(assert (= (and b!1427923 res!962871) b!1427930))

(assert (= (and b!1427930 res!962874) b!1427935))

(assert (= (and b!1427935 res!962864) b!1427929))

(assert (= (and b!1427929 res!962865) b!1427924))

(assert (= (and b!1427924 res!962869) b!1427933))

(assert (= (and b!1427933 res!962863) b!1427925))

(assert (= (and b!1427925 res!962867) b!1427927))

(assert (= (and b!1427927 res!962870) b!1427934))

(assert (= (and b!1427934 res!962872) b!1427928))

(assert (= (and b!1427928 res!962873) b!1427931))

(assert (= (and b!1427931 res!962866) b!1427926))

(assert (= (and b!1427926 res!962862) b!1427932))

(declare-fun m!1318227 () Bool)

(assert (=> b!1427929 m!1318227))

(declare-fun m!1318229 () Bool)

(assert (=> b!1427927 m!1318229))

(assert (=> b!1427927 m!1318229))

(declare-fun m!1318231 () Bool)

(assert (=> b!1427927 m!1318231))

(declare-fun m!1318233 () Bool)

(assert (=> b!1427927 m!1318233))

(declare-fun m!1318235 () Bool)

(assert (=> b!1427927 m!1318235))

(declare-fun m!1318237 () Bool)

(assert (=> b!1427932 m!1318237))

(assert (=> b!1427932 m!1318237))

(declare-fun m!1318239 () Bool)

(assert (=> b!1427932 m!1318239))

(assert (=> b!1427934 m!1318237))

(assert (=> b!1427934 m!1318237))

(declare-fun m!1318241 () Bool)

(assert (=> b!1427934 m!1318241))

(declare-fun m!1318243 () Bool)

(assert (=> b!1427926 m!1318243))

(declare-fun m!1318245 () Bool)

(assert (=> b!1427926 m!1318245))

(assert (=> b!1427935 m!1318237))

(assert (=> b!1427935 m!1318237))

(declare-fun m!1318247 () Bool)

(assert (=> b!1427935 m!1318247))

(assert (=> b!1427925 m!1318237))

(assert (=> b!1427925 m!1318237))

(declare-fun m!1318249 () Bool)

(assert (=> b!1427925 m!1318249))

(assert (=> b!1427925 m!1318249))

(assert (=> b!1427925 m!1318237))

(declare-fun m!1318251 () Bool)

(assert (=> b!1427925 m!1318251))

(declare-fun m!1318253 () Bool)

(assert (=> b!1427924 m!1318253))

(declare-fun m!1318255 () Bool)

(assert (=> b!1427928 m!1318255))

(declare-fun m!1318257 () Bool)

(assert (=> b!1427930 m!1318257))

(assert (=> b!1427930 m!1318257))

(declare-fun m!1318259 () Bool)

(assert (=> b!1427930 m!1318259))

(declare-fun m!1318261 () Bool)

(assert (=> start!123194 m!1318261))

(declare-fun m!1318263 () Bool)

(assert (=> start!123194 m!1318263))

(push 1)

