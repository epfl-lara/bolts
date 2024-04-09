; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123274 () Bool)

(assert start!123274)

(declare-fun b!1428739 () Bool)

(declare-fun e!806884 () Bool)

(declare-fun e!806887 () Bool)

(assert (=> b!1428739 (= e!806884 e!806887)))

(declare-fun res!963479 () Bool)

(assert (=> b!1428739 (=> (not res!963479) (not e!806887))))

(declare-fun lt!629067 () (_ BitVec 64))

(declare-datatypes ((array!97353 0))(
  ( (array!97354 (arr!46984 (Array (_ BitVec 32) (_ BitVec 64))) (size!47535 (_ BitVec 32))) )
))
(declare-fun lt!629070 () array!97353)

(declare-datatypes ((SeekEntryResult!11285 0))(
  ( (MissingZero!11285 (index!47531 (_ BitVec 32))) (Found!11285 (index!47532 (_ BitVec 32))) (Intermediate!11285 (undefined!12097 Bool) (index!47533 (_ BitVec 32)) (x!129178 (_ BitVec 32))) (Undefined!11285) (MissingVacant!11285 (index!47534 (_ BitVec 32))) )
))
(declare-fun lt!629071 () SeekEntryResult!11285)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97353 (_ BitVec 32)) SeekEntryResult!11285)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428739 (= res!963479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629067 mask!2608) lt!629067 lt!629070 mask!2608) lt!629071))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428739 (= lt!629071 (Intermediate!11285 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97353)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428739 (= lt!629067 (select (store (arr!46984 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428739 (= lt!629070 (array!97354 (store (arr!46984 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47535 a!2831)))))

(declare-fun b!1428740 () Bool)

(declare-fun res!963488 () Bool)

(declare-fun e!806885 () Bool)

(assert (=> b!1428740 (=> (not res!963488) (not e!806885))))

(declare-datatypes ((List!33674 0))(
  ( (Nil!33671) (Cons!33670 (h!34984 (_ BitVec 64)) (t!48375 List!33674)) )
))
(declare-fun arrayNoDuplicates!0 (array!97353 (_ BitVec 32) List!33674) Bool)

(assert (=> b!1428740 (= res!963488 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33671))))

(declare-fun b!1428741 () Bool)

(declare-fun res!963478 () Bool)

(assert (=> b!1428741 (=> (not res!963478) (not e!806887))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1428741 (= res!963478 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428742 () Bool)

(declare-fun res!963483 () Bool)

(assert (=> b!1428742 (=> (not res!963483) (not e!806885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428742 (= res!963483 (validKeyInArray!0 (select (arr!46984 a!2831) i!982)))))

(declare-fun b!1428743 () Bool)

(declare-fun res!963480 () Bool)

(assert (=> b!1428743 (=> (not res!963480) (not e!806887))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1428743 (= res!963480 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629067 lt!629070 mask!2608) lt!629071))))

(declare-fun b!1428744 () Bool)

(declare-fun res!963485 () Bool)

(assert (=> b!1428744 (=> (not res!963485) (not e!806885))))

(assert (=> b!1428744 (= res!963485 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47535 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47535 a!2831))))))

(declare-fun b!1428745 () Bool)

(assert (=> b!1428745 (= e!806887 (not true))))

(declare-fun e!806888 () Bool)

(assert (=> b!1428745 e!806888))

(declare-fun res!963481 () Bool)

(assert (=> b!1428745 (=> (not res!963481) (not e!806888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97353 (_ BitVec 32)) Bool)

(assert (=> b!1428745 (= res!963481 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48264 0))(
  ( (Unit!48265) )
))
(declare-fun lt!629069 () Unit!48264)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48264)

(assert (=> b!1428745 (= lt!629069 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428746 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97353 (_ BitVec 32)) SeekEntryResult!11285)

(assert (=> b!1428746 (= e!806888 (= (seekEntryOrOpen!0 (select (arr!46984 a!2831) j!81) a!2831 mask!2608) (Found!11285 j!81)))))

(declare-fun res!963482 () Bool)

(assert (=> start!123274 (=> (not res!963482) (not e!806885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123274 (= res!963482 (validMask!0 mask!2608))))

(assert (=> start!123274 e!806885))

(assert (=> start!123274 true))

(declare-fun array_inv!35929 (array!97353) Bool)

(assert (=> start!123274 (array_inv!35929 a!2831)))

(declare-fun b!1428747 () Bool)

(assert (=> b!1428747 (= e!806885 e!806884)))

(declare-fun res!963489 () Bool)

(assert (=> b!1428747 (=> (not res!963489) (not e!806884))))

(declare-fun lt!629068 () SeekEntryResult!11285)

(assert (=> b!1428747 (= res!963489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46984 a!2831) j!81) mask!2608) (select (arr!46984 a!2831) j!81) a!2831 mask!2608) lt!629068))))

(assert (=> b!1428747 (= lt!629068 (Intermediate!11285 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428748 () Bool)

(declare-fun res!963486 () Bool)

(assert (=> b!1428748 (=> (not res!963486) (not e!806885))))

(assert (=> b!1428748 (= res!963486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428749 () Bool)

(declare-fun res!963487 () Bool)

(assert (=> b!1428749 (=> (not res!963487) (not e!806885))))

(assert (=> b!1428749 (= res!963487 (and (= (size!47535 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47535 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47535 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428750 () Bool)

(declare-fun res!963484 () Bool)

(assert (=> b!1428750 (=> (not res!963484) (not e!806887))))

(assert (=> b!1428750 (= res!963484 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46984 a!2831) j!81) a!2831 mask!2608) lt!629068))))

(declare-fun b!1428751 () Bool)

(declare-fun res!963477 () Bool)

(assert (=> b!1428751 (=> (not res!963477) (not e!806885))))

(assert (=> b!1428751 (= res!963477 (validKeyInArray!0 (select (arr!46984 a!2831) j!81)))))

(assert (= (and start!123274 res!963482) b!1428749))

(assert (= (and b!1428749 res!963487) b!1428742))

(assert (= (and b!1428742 res!963483) b!1428751))

(assert (= (and b!1428751 res!963477) b!1428748))

(assert (= (and b!1428748 res!963486) b!1428740))

(assert (= (and b!1428740 res!963488) b!1428744))

(assert (= (and b!1428744 res!963485) b!1428747))

(assert (= (and b!1428747 res!963489) b!1428739))

(assert (= (and b!1428739 res!963479) b!1428750))

(assert (= (and b!1428750 res!963484) b!1428743))

(assert (= (and b!1428743 res!963480) b!1428741))

(assert (= (and b!1428741 res!963478) b!1428745))

(assert (= (and b!1428745 res!963481) b!1428746))

(declare-fun m!1318913 () Bool)

(assert (=> b!1428743 m!1318913))

(declare-fun m!1318915 () Bool)

(assert (=> b!1428740 m!1318915))

(declare-fun m!1318917 () Bool)

(assert (=> start!123274 m!1318917))

(declare-fun m!1318919 () Bool)

(assert (=> start!123274 m!1318919))

(declare-fun m!1318921 () Bool)

(assert (=> b!1428745 m!1318921))

(declare-fun m!1318923 () Bool)

(assert (=> b!1428745 m!1318923))

(declare-fun m!1318925 () Bool)

(assert (=> b!1428747 m!1318925))

(assert (=> b!1428747 m!1318925))

(declare-fun m!1318927 () Bool)

(assert (=> b!1428747 m!1318927))

(assert (=> b!1428747 m!1318927))

(assert (=> b!1428747 m!1318925))

(declare-fun m!1318929 () Bool)

(assert (=> b!1428747 m!1318929))

(declare-fun m!1318931 () Bool)

(assert (=> b!1428739 m!1318931))

(assert (=> b!1428739 m!1318931))

(declare-fun m!1318933 () Bool)

(assert (=> b!1428739 m!1318933))

(declare-fun m!1318935 () Bool)

(assert (=> b!1428739 m!1318935))

(declare-fun m!1318937 () Bool)

(assert (=> b!1428739 m!1318937))

(assert (=> b!1428746 m!1318925))

(assert (=> b!1428746 m!1318925))

(declare-fun m!1318939 () Bool)

(assert (=> b!1428746 m!1318939))

(assert (=> b!1428751 m!1318925))

(assert (=> b!1428751 m!1318925))

(declare-fun m!1318941 () Bool)

(assert (=> b!1428751 m!1318941))

(assert (=> b!1428750 m!1318925))

(assert (=> b!1428750 m!1318925))

(declare-fun m!1318943 () Bool)

(assert (=> b!1428750 m!1318943))

(declare-fun m!1318945 () Bool)

(assert (=> b!1428742 m!1318945))

(assert (=> b!1428742 m!1318945))

(declare-fun m!1318947 () Bool)

(assert (=> b!1428742 m!1318947))

(declare-fun m!1318949 () Bool)

(assert (=> b!1428748 m!1318949))

(push 1)

