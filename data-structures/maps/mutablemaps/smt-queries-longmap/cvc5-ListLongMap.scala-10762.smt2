; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125932 () Bool)

(assert start!125932)

(declare-fun b!1473641 () Bool)

(declare-fun res!1001048 () Bool)

(declare-fun e!826952 () Bool)

(assert (=> b!1473641 (=> (not res!1001048) (not e!826952))))

(declare-datatypes ((array!99126 0))(
  ( (array!99127 (arr!47842 (Array (_ BitVec 32) (_ BitVec 64))) (size!48393 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99126)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99126 (_ BitVec 32)) Bool)

(assert (=> b!1473641 (= res!1001048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!643966 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12105 0))(
  ( (MissingZero!12105 (index!50811 (_ BitVec 32))) (Found!12105 (index!50812 (_ BitVec 32))) (Intermediate!12105 (undefined!12917 Bool) (index!50813 (_ BitVec 32)) (x!132400 (_ BitVec 32))) (Undefined!12105) (MissingVacant!12105 (index!50814 (_ BitVec 32))) )
))
(declare-fun lt!643962 () SeekEntryResult!12105)

(declare-fun e!826945 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1473643 () Bool)

(declare-fun lt!643964 () array!99126)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99126 (_ BitVec 32)) SeekEntryResult!12105)

(assert (=> b!1473643 (= e!826945 (= lt!643962 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643966 lt!643964 mask!2687)))))

(declare-fun b!1473644 () Bool)

(declare-fun e!826948 () Bool)

(assert (=> b!1473644 (= e!826952 e!826948)))

(declare-fun res!1001046 () Bool)

(assert (=> b!1473644 (=> (not res!1001046) (not e!826948))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1473644 (= res!1001046 (= (select (store (arr!47842 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473644 (= lt!643964 (array!99127 (store (arr!47842 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48393 a!2862)))))

(declare-fun b!1473645 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!826947 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1473645 (= e!826947 (or (= (select (arr!47842 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47842 a!2862) intermediateBeforeIndex!19) (select (arr!47842 a!2862) j!93))))))

(declare-fun b!1473646 () Bool)

(declare-fun res!1001034 () Bool)

(assert (=> b!1473646 (=> (not res!1001034) (not e!826952))))

(assert (=> b!1473646 (= res!1001034 (and (= (size!48393 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48393 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48393 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473647 () Bool)

(declare-fun res!1001043 () Bool)

(assert (=> b!1473647 (=> (not res!1001043) (not e!826952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473647 (= res!1001043 (validKeyInArray!0 (select (arr!47842 a!2862) j!93)))))

(declare-fun b!1473648 () Bool)

(declare-fun res!1001036 () Bool)

(assert (=> b!1473648 (=> (not res!1001036) (not e!826952))))

(declare-datatypes ((List!34523 0))(
  ( (Nil!34520) (Cons!34519 (h!35878 (_ BitVec 64)) (t!49224 List!34523)) )
))
(declare-fun arrayNoDuplicates!0 (array!99126 (_ BitVec 32) List!34523) Bool)

(assert (=> b!1473648 (= res!1001036 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34520))))

(declare-fun b!1473649 () Bool)

(declare-fun res!1001042 () Bool)

(declare-fun e!826949 () Bool)

(assert (=> b!1473649 (=> (not res!1001042) (not e!826949))))

(declare-fun lt!643961 () SeekEntryResult!12105)

(assert (=> b!1473649 (= res!1001042 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47842 a!2862) j!93) a!2862 mask!2687) lt!643961))))

(declare-fun b!1473650 () Bool)

(declare-fun res!1001045 () Bool)

(declare-fun e!826946 () Bool)

(assert (=> b!1473650 (=> (not res!1001045) (not e!826946))))

(assert (=> b!1473650 (= res!1001045 e!826945)))

(declare-fun c!135821 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1473650 (= c!135821 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473651 () Bool)

(declare-fun res!1001037 () Bool)

(assert (=> b!1473651 (=> (not res!1001037) (not e!826946))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1473651 (= res!1001037 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473652 () Bool)

(declare-fun res!1001049 () Bool)

(assert (=> b!1473652 (=> (not res!1001049) (not e!826952))))

(assert (=> b!1473652 (= res!1001049 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48393 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48393 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48393 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1001038 () Bool)

(assert (=> start!125932 (=> (not res!1001038) (not e!826952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125932 (= res!1001038 (validMask!0 mask!2687))))

(assert (=> start!125932 e!826952))

(assert (=> start!125932 true))

(declare-fun array_inv!36787 (array!99126) Bool)

(assert (=> start!125932 (array_inv!36787 a!2862)))

(declare-fun b!1473642 () Bool)

(assert (=> b!1473642 (= e!826948 e!826949)))

(declare-fun res!1001040 () Bool)

(assert (=> b!1473642 (=> (not res!1001040) (not e!826949))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473642 (= res!1001040 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47842 a!2862) j!93) mask!2687) (select (arr!47842 a!2862) j!93) a!2862 mask!2687) lt!643961))))

(assert (=> b!1473642 (= lt!643961 (Intermediate!12105 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1473653 () Bool)

(declare-fun res!1001035 () Bool)

(assert (=> b!1473653 (=> (not res!1001035) (not e!826947))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99126 (_ BitVec 32)) SeekEntryResult!12105)

(assert (=> b!1473653 (= res!1001035 (= (seekEntryOrOpen!0 (select (arr!47842 a!2862) j!93) a!2862 mask!2687) (Found!12105 j!93)))))

(declare-fun b!1473654 () Bool)

(assert (=> b!1473654 (= e!826949 e!826946)))

(declare-fun res!1001039 () Bool)

(assert (=> b!1473654 (=> (not res!1001039) (not e!826946))))

(assert (=> b!1473654 (= res!1001039 (= lt!643962 (Intermediate!12105 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1473654 (= lt!643962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643966 mask!2687) lt!643966 lt!643964 mask!2687))))

(assert (=> b!1473654 (= lt!643966 (select (store (arr!47842 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473655 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99126 (_ BitVec 32)) SeekEntryResult!12105)

(assert (=> b!1473655 (= e!826945 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643966 lt!643964 mask!2687) (seekEntryOrOpen!0 lt!643966 lt!643964 mask!2687)))))

(declare-fun b!1473656 () Bool)

(declare-fun e!826950 () Bool)

(assert (=> b!1473656 (= e!826950 true)))

(declare-fun lt!643965 () SeekEntryResult!12105)

(assert (=> b!1473656 (= lt!643965 (seekEntryOrOpen!0 lt!643966 lt!643964 mask!2687))))

(declare-fun b!1473657 () Bool)

(declare-fun res!1001047 () Bool)

(assert (=> b!1473657 (=> (not res!1001047) (not e!826952))))

(assert (=> b!1473657 (= res!1001047 (validKeyInArray!0 (select (arr!47842 a!2862) i!1006)))))

(declare-fun b!1473658 () Bool)

(assert (=> b!1473658 (= e!826946 (not e!826950))))

(declare-fun res!1001041 () Bool)

(assert (=> b!1473658 (=> res!1001041 e!826950)))

(assert (=> b!1473658 (= res!1001041 (or (not (= (select (arr!47842 a!2862) index!646) (select (store (arr!47842 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47842 a!2862) index!646) (select (arr!47842 a!2862) j!93)))))))

(assert (=> b!1473658 e!826947))

(declare-fun res!1001044 () Bool)

(assert (=> b!1473658 (=> (not res!1001044) (not e!826947))))

(assert (=> b!1473658 (= res!1001044 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49498 0))(
  ( (Unit!49499) )
))
(declare-fun lt!643963 () Unit!49498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49498)

(assert (=> b!1473658 (= lt!643963 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125932 res!1001038) b!1473646))

(assert (= (and b!1473646 res!1001034) b!1473657))

(assert (= (and b!1473657 res!1001047) b!1473647))

(assert (= (and b!1473647 res!1001043) b!1473641))

(assert (= (and b!1473641 res!1001048) b!1473648))

(assert (= (and b!1473648 res!1001036) b!1473652))

(assert (= (and b!1473652 res!1001049) b!1473644))

(assert (= (and b!1473644 res!1001046) b!1473642))

(assert (= (and b!1473642 res!1001040) b!1473649))

(assert (= (and b!1473649 res!1001042) b!1473654))

(assert (= (and b!1473654 res!1001039) b!1473650))

(assert (= (and b!1473650 c!135821) b!1473643))

(assert (= (and b!1473650 (not c!135821)) b!1473655))

(assert (= (and b!1473650 res!1001045) b!1473651))

(assert (= (and b!1473651 res!1001037) b!1473658))

(assert (= (and b!1473658 res!1001044) b!1473653))

(assert (= (and b!1473653 res!1001035) b!1473645))

(assert (= (and b!1473658 (not res!1001041)) b!1473656))

(declare-fun m!1360203 () Bool)

(assert (=> b!1473647 m!1360203))

(assert (=> b!1473647 m!1360203))

(declare-fun m!1360205 () Bool)

(assert (=> b!1473647 m!1360205))

(declare-fun m!1360207 () Bool)

(assert (=> b!1473658 m!1360207))

(declare-fun m!1360209 () Bool)

(assert (=> b!1473658 m!1360209))

(declare-fun m!1360211 () Bool)

(assert (=> b!1473658 m!1360211))

(declare-fun m!1360213 () Bool)

(assert (=> b!1473658 m!1360213))

(declare-fun m!1360215 () Bool)

(assert (=> b!1473658 m!1360215))

(assert (=> b!1473658 m!1360203))

(declare-fun m!1360217 () Bool)

(assert (=> b!1473645 m!1360217))

(assert (=> b!1473645 m!1360203))

(assert (=> b!1473644 m!1360209))

(declare-fun m!1360219 () Bool)

(assert (=> b!1473644 m!1360219))

(assert (=> b!1473642 m!1360203))

(assert (=> b!1473642 m!1360203))

(declare-fun m!1360221 () Bool)

(assert (=> b!1473642 m!1360221))

(assert (=> b!1473642 m!1360221))

(assert (=> b!1473642 m!1360203))

(declare-fun m!1360223 () Bool)

(assert (=> b!1473642 m!1360223))

(declare-fun m!1360225 () Bool)

(assert (=> b!1473648 m!1360225))

(assert (=> b!1473653 m!1360203))

(assert (=> b!1473653 m!1360203))

(declare-fun m!1360227 () Bool)

(assert (=> b!1473653 m!1360227))

(declare-fun m!1360229 () Bool)

(assert (=> b!1473655 m!1360229))

(declare-fun m!1360231 () Bool)

(assert (=> b!1473655 m!1360231))

(declare-fun m!1360233 () Bool)

(assert (=> b!1473641 m!1360233))

(declare-fun m!1360235 () Bool)

(assert (=> b!1473643 m!1360235))

(declare-fun m!1360237 () Bool)

(assert (=> b!1473657 m!1360237))

(assert (=> b!1473657 m!1360237))

(declare-fun m!1360239 () Bool)

(assert (=> b!1473657 m!1360239))

(assert (=> b!1473656 m!1360231))

(declare-fun m!1360241 () Bool)

(assert (=> start!125932 m!1360241))

(declare-fun m!1360243 () Bool)

(assert (=> start!125932 m!1360243))

(assert (=> b!1473649 m!1360203))

(assert (=> b!1473649 m!1360203))

(declare-fun m!1360245 () Bool)

(assert (=> b!1473649 m!1360245))

(declare-fun m!1360247 () Bool)

(assert (=> b!1473654 m!1360247))

(assert (=> b!1473654 m!1360247))

(declare-fun m!1360249 () Bool)

(assert (=> b!1473654 m!1360249))

(assert (=> b!1473654 m!1360209))

(declare-fun m!1360251 () Bool)

(assert (=> b!1473654 m!1360251))

(push 1)

