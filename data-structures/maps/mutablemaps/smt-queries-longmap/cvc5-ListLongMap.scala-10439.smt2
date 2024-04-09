; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122836 () Bool)

(assert start!122836)

(declare-fun b!1423657 () Bool)

(declare-fun res!959199 () Bool)

(declare-fun e!804694 () Bool)

(assert (=> b!1423657 (=> (not res!959199) (not e!804694))))

(declare-datatypes ((array!97119 0))(
  ( (array!97120 (arr!46873 (Array (_ BitVec 32) (_ BitVec 64))) (size!47424 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97119)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423657 (= res!959199 (validKeyInArray!0 (select (arr!46873 a!2831) j!81)))))

(declare-fun b!1423658 () Bool)

(declare-fun res!959202 () Bool)

(declare-fun e!804695 () Bool)

(assert (=> b!1423658 (=> (not res!959202) (not e!804695))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1423658 (= res!959202 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423659 () Bool)

(declare-fun res!959208 () Bool)

(assert (=> b!1423659 (=> (not res!959208) (not e!804694))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423659 (= res!959208 (validKeyInArray!0 (select (arr!46873 a!2831) i!982)))))

(declare-fun b!1423660 () Bool)

(declare-fun e!804697 () Bool)

(assert (=> b!1423660 (= e!804695 (not e!804697))))

(declare-fun res!959204 () Bool)

(assert (=> b!1423660 (=> res!959204 e!804697)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1423660 (= res!959204 (or (= (select (arr!46873 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46873 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46873 a!2831) index!585) (select (arr!46873 a!2831) j!81)) (= (select (store (arr!46873 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804698 () Bool)

(assert (=> b!1423660 e!804698))

(declare-fun res!959201 () Bool)

(assert (=> b!1423660 (=> (not res!959201) (not e!804698))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97119 (_ BitVec 32)) Bool)

(assert (=> b!1423660 (= res!959201 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48144 0))(
  ( (Unit!48145) )
))
(declare-fun lt!627186 () Unit!48144)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48144)

(assert (=> b!1423660 (= lt!627186 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423661 () Bool)

(declare-fun e!804692 () Bool)

(assert (=> b!1423661 (= e!804697 e!804692)))

(declare-fun res!959207 () Bool)

(assert (=> b!1423661 (=> res!959207 e!804692)))

(declare-fun lt!627189 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1423661 (= res!959207 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627189 #b00000000000000000000000000000000) (bvsge lt!627189 (size!47424 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423661 (= lt!627189 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423662 () Bool)

(declare-fun res!959210 () Bool)

(assert (=> b!1423662 (=> (not res!959210) (not e!804695))))

(declare-datatypes ((SeekEntryResult!11180 0))(
  ( (MissingZero!11180 (index!47111 (_ BitVec 32))) (Found!11180 (index!47112 (_ BitVec 32))) (Intermediate!11180 (undefined!11992 Bool) (index!47113 (_ BitVec 32)) (x!128753 (_ BitVec 32))) (Undefined!11180) (MissingVacant!11180 (index!47114 (_ BitVec 32))) )
))
(declare-fun lt!627190 () SeekEntryResult!11180)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97119 (_ BitVec 32)) SeekEntryResult!11180)

(assert (=> b!1423662 (= res!959210 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46873 a!2831) j!81) a!2831 mask!2608) lt!627190))))

(declare-fun b!1423663 () Bool)

(declare-fun res!959209 () Bool)

(assert (=> b!1423663 (=> (not res!959209) (not e!804694))))

(assert (=> b!1423663 (= res!959209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423664 () Bool)

(declare-fun res!959203 () Bool)

(assert (=> b!1423664 (=> (not res!959203) (not e!804694))))

(declare-datatypes ((List!33563 0))(
  ( (Nil!33560) (Cons!33559 (h!34861 (_ BitVec 64)) (t!48264 List!33563)) )
))
(declare-fun arrayNoDuplicates!0 (array!97119 (_ BitVec 32) List!33563) Bool)

(assert (=> b!1423664 (= res!959203 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33560))))

(declare-fun res!959212 () Bool)

(assert (=> start!122836 (=> (not res!959212) (not e!804694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122836 (= res!959212 (validMask!0 mask!2608))))

(assert (=> start!122836 e!804694))

(assert (=> start!122836 true))

(declare-fun array_inv!35818 (array!97119) Bool)

(assert (=> start!122836 (array_inv!35818 a!2831)))

(declare-fun b!1423665 () Bool)

(declare-fun e!804693 () Bool)

(assert (=> b!1423665 (= e!804694 e!804693)))

(declare-fun res!959213 () Bool)

(assert (=> b!1423665 (=> (not res!959213) (not e!804693))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423665 (= res!959213 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46873 a!2831) j!81) mask!2608) (select (arr!46873 a!2831) j!81) a!2831 mask!2608) lt!627190))))

(assert (=> b!1423665 (= lt!627190 (Intermediate!11180 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423666 () Bool)

(declare-fun res!959200 () Bool)

(assert (=> b!1423666 (=> (not res!959200) (not e!804694))))

(assert (=> b!1423666 (= res!959200 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47424 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47424 a!2831))))))

(declare-fun b!1423667 () Bool)

(declare-fun res!959205 () Bool)

(assert (=> b!1423667 (=> (not res!959205) (not e!804694))))

(assert (=> b!1423667 (= res!959205 (and (= (size!47424 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47424 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47424 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423668 () Bool)

(declare-fun res!959211 () Bool)

(assert (=> b!1423668 (=> res!959211 e!804692)))

(assert (=> b!1423668 (= res!959211 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627189 (select (arr!46873 a!2831) j!81) a!2831 mask!2608) lt!627190)))))

(declare-fun b!1423669 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97119 (_ BitVec 32)) SeekEntryResult!11180)

(assert (=> b!1423669 (= e!804698 (= (seekEntryOrOpen!0 (select (arr!46873 a!2831) j!81) a!2831 mask!2608) (Found!11180 j!81)))))

(declare-fun b!1423670 () Bool)

(assert (=> b!1423670 (= e!804693 e!804695)))

(declare-fun res!959214 () Bool)

(assert (=> b!1423670 (=> (not res!959214) (not e!804695))))

(declare-fun lt!627188 () array!97119)

(declare-fun lt!627185 () (_ BitVec 64))

(declare-fun lt!627187 () SeekEntryResult!11180)

(assert (=> b!1423670 (= res!959214 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627185 mask!2608) lt!627185 lt!627188 mask!2608) lt!627187))))

(assert (=> b!1423670 (= lt!627187 (Intermediate!11180 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423670 (= lt!627185 (select (store (arr!46873 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423670 (= lt!627188 (array!97120 (store (arr!46873 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47424 a!2831)))))

(declare-fun b!1423671 () Bool)

(declare-fun res!959206 () Bool)

(assert (=> b!1423671 (=> (not res!959206) (not e!804695))))

(assert (=> b!1423671 (= res!959206 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627185 lt!627188 mask!2608) lt!627187))))

(declare-fun b!1423672 () Bool)

(assert (=> b!1423672 (= e!804692 true)))

(declare-fun lt!627184 () SeekEntryResult!11180)

(assert (=> b!1423672 (= lt!627184 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627189 lt!627185 lt!627188 mask!2608))))

(assert (= (and start!122836 res!959212) b!1423667))

(assert (= (and b!1423667 res!959205) b!1423659))

(assert (= (and b!1423659 res!959208) b!1423657))

(assert (= (and b!1423657 res!959199) b!1423663))

(assert (= (and b!1423663 res!959209) b!1423664))

(assert (= (and b!1423664 res!959203) b!1423666))

(assert (= (and b!1423666 res!959200) b!1423665))

(assert (= (and b!1423665 res!959213) b!1423670))

(assert (= (and b!1423670 res!959214) b!1423662))

(assert (= (and b!1423662 res!959210) b!1423671))

(assert (= (and b!1423671 res!959206) b!1423658))

(assert (= (and b!1423658 res!959202) b!1423660))

(assert (= (and b!1423660 res!959201) b!1423669))

(assert (= (and b!1423660 (not res!959204)) b!1423661))

(assert (= (and b!1423661 (not res!959207)) b!1423668))

(assert (= (and b!1423668 (not res!959211)) b!1423672))

(declare-fun m!1314263 () Bool)

(assert (=> b!1423663 m!1314263))

(declare-fun m!1314265 () Bool)

(assert (=> b!1423662 m!1314265))

(assert (=> b!1423662 m!1314265))

(declare-fun m!1314267 () Bool)

(assert (=> b!1423662 m!1314267))

(declare-fun m!1314269 () Bool)

(assert (=> start!122836 m!1314269))

(declare-fun m!1314271 () Bool)

(assert (=> start!122836 m!1314271))

(declare-fun m!1314273 () Bool)

(assert (=> b!1423672 m!1314273))

(declare-fun m!1314275 () Bool)

(assert (=> b!1423664 m!1314275))

(declare-fun m!1314277 () Bool)

(assert (=> b!1423670 m!1314277))

(assert (=> b!1423670 m!1314277))

(declare-fun m!1314279 () Bool)

(assert (=> b!1423670 m!1314279))

(declare-fun m!1314281 () Bool)

(assert (=> b!1423670 m!1314281))

(declare-fun m!1314283 () Bool)

(assert (=> b!1423670 m!1314283))

(assert (=> b!1423668 m!1314265))

(assert (=> b!1423668 m!1314265))

(declare-fun m!1314285 () Bool)

(assert (=> b!1423668 m!1314285))

(declare-fun m!1314287 () Bool)

(assert (=> b!1423671 m!1314287))

(assert (=> b!1423657 m!1314265))

(assert (=> b!1423657 m!1314265))

(declare-fun m!1314289 () Bool)

(assert (=> b!1423657 m!1314289))

(assert (=> b!1423660 m!1314281))

(declare-fun m!1314291 () Bool)

(assert (=> b!1423660 m!1314291))

(declare-fun m!1314293 () Bool)

(assert (=> b!1423660 m!1314293))

(declare-fun m!1314295 () Bool)

(assert (=> b!1423660 m!1314295))

(assert (=> b!1423660 m!1314265))

(declare-fun m!1314297 () Bool)

(assert (=> b!1423660 m!1314297))

(assert (=> b!1423669 m!1314265))

(assert (=> b!1423669 m!1314265))

(declare-fun m!1314299 () Bool)

(assert (=> b!1423669 m!1314299))

(declare-fun m!1314301 () Bool)

(assert (=> b!1423661 m!1314301))

(declare-fun m!1314303 () Bool)

(assert (=> b!1423659 m!1314303))

(assert (=> b!1423659 m!1314303))

(declare-fun m!1314305 () Bool)

(assert (=> b!1423659 m!1314305))

(assert (=> b!1423665 m!1314265))

(assert (=> b!1423665 m!1314265))

(declare-fun m!1314307 () Bool)

(assert (=> b!1423665 m!1314307))

(assert (=> b!1423665 m!1314307))

(assert (=> b!1423665 m!1314265))

(declare-fun m!1314309 () Bool)

(assert (=> b!1423665 m!1314309))

(push 1)

