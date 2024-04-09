; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122666 () Bool)

(assert start!122666)

(declare-fun b!1420268 () Bool)

(declare-fun res!955812 () Bool)

(declare-fun e!803345 () Bool)

(assert (=> b!1420268 (=> (not res!955812) (not e!803345))))

(declare-datatypes ((array!96949 0))(
  ( (array!96950 (arr!46788 (Array (_ BitVec 32) (_ BitVec 64))) (size!47339 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96949)

(declare-datatypes ((List!33478 0))(
  ( (Nil!33475) (Cons!33474 (h!34776 (_ BitVec 64)) (t!48179 List!33478)) )
))
(declare-fun arrayNoDuplicates!0 (array!96949 (_ BitVec 32) List!33478) Bool)

(assert (=> b!1420268 (= res!955812 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33475))))

(declare-fun b!1420269 () Bool)

(declare-fun res!955813 () Bool)

(assert (=> b!1420269 (=> (not res!955813) (not e!803345))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11095 0))(
  ( (MissingZero!11095 (index!46771 (_ BitVec 32))) (Found!11095 (index!46772 (_ BitVec 32))) (Intermediate!11095 (undefined!11907 Bool) (index!46773 (_ BitVec 32)) (x!128436 (_ BitVec 32))) (Undefined!11095) (MissingVacant!11095 (index!46774 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96949 (_ BitVec 32)) SeekEntryResult!11095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420269 (= res!955813 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46788 a!2831) j!81) mask!2608) (select (arr!46788 a!2831) j!81) a!2831 mask!2608) (Intermediate!11095 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420270 () Bool)

(declare-fun res!955811 () Bool)

(assert (=> b!1420270 (=> (not res!955811) (not e!803345))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420270 (= res!955811 (and (= (size!47339 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47339 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47339 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420271 () Bool)

(declare-fun res!955818 () Bool)

(assert (=> b!1420271 (=> (not res!955818) (not e!803345))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420271 (= res!955818 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47339 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47339 a!2831))))))

(declare-fun b!1420272 () Bool)

(declare-fun res!955815 () Bool)

(assert (=> b!1420272 (=> (not res!955815) (not e!803345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420272 (= res!955815 (validKeyInArray!0 (select (arr!46788 a!2831) i!982)))))

(declare-fun b!1420273 () Bool)

(declare-fun res!955810 () Bool)

(assert (=> b!1420273 (=> (not res!955810) (not e!803345))))

(assert (=> b!1420273 (= res!955810 (validKeyInArray!0 (select (arr!46788 a!2831) j!81)))))

(declare-fun b!1420274 () Bool)

(declare-fun res!955816 () Bool)

(assert (=> b!1420274 (=> (not res!955816) (not e!803345))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96949 (_ BitVec 32)) Bool)

(assert (=> b!1420274 (= res!955816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!955814 () Bool)

(assert (=> start!122666 (=> (not res!955814) (not e!803345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122666 (= res!955814 (validMask!0 mask!2608))))

(assert (=> start!122666 e!803345))

(assert (=> start!122666 true))

(declare-fun array_inv!35733 (array!96949) Bool)

(assert (=> start!122666 (array_inv!35733 a!2831)))

(declare-fun b!1420275 () Bool)

(assert (=> b!1420275 (= e!803345 false)))

(declare-fun lt!625846 () SeekEntryResult!11095)

(assert (=> b!1420275 (= lt!625846 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46788 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1420276 () Bool)

(declare-fun res!955817 () Bool)

(assert (=> b!1420276 (=> (not res!955817) (not e!803345))))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420276 (= res!955817 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46788 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46788 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96950 (store (arr!46788 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47339 a!2831)) mask!2608) (Intermediate!11095 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (= (and start!122666 res!955814) b!1420270))

(assert (= (and b!1420270 res!955811) b!1420272))

(assert (= (and b!1420272 res!955815) b!1420273))

(assert (= (and b!1420273 res!955810) b!1420274))

(assert (= (and b!1420274 res!955816) b!1420268))

(assert (= (and b!1420268 res!955812) b!1420271))

(assert (= (and b!1420271 res!955818) b!1420269))

(assert (= (and b!1420269 res!955813) b!1420276))

(assert (= (and b!1420276 res!955817) b!1420275))

(declare-fun m!1310837 () Bool)

(assert (=> b!1420274 m!1310837))

(declare-fun m!1310839 () Bool)

(assert (=> b!1420272 m!1310839))

(assert (=> b!1420272 m!1310839))

(declare-fun m!1310841 () Bool)

(assert (=> b!1420272 m!1310841))

(declare-fun m!1310843 () Bool)

(assert (=> b!1420273 m!1310843))

(assert (=> b!1420273 m!1310843))

(declare-fun m!1310845 () Bool)

(assert (=> b!1420273 m!1310845))

(declare-fun m!1310847 () Bool)

(assert (=> start!122666 m!1310847))

(declare-fun m!1310849 () Bool)

(assert (=> start!122666 m!1310849))

(assert (=> b!1420275 m!1310843))

(assert (=> b!1420275 m!1310843))

(declare-fun m!1310851 () Bool)

(assert (=> b!1420275 m!1310851))

(declare-fun m!1310853 () Bool)

(assert (=> b!1420276 m!1310853))

(declare-fun m!1310855 () Bool)

(assert (=> b!1420276 m!1310855))

(assert (=> b!1420276 m!1310855))

(declare-fun m!1310857 () Bool)

(assert (=> b!1420276 m!1310857))

(assert (=> b!1420276 m!1310857))

(assert (=> b!1420276 m!1310855))

(declare-fun m!1310859 () Bool)

(assert (=> b!1420276 m!1310859))

(declare-fun m!1310861 () Bool)

(assert (=> b!1420268 m!1310861))

(assert (=> b!1420269 m!1310843))

(assert (=> b!1420269 m!1310843))

(declare-fun m!1310863 () Bool)

(assert (=> b!1420269 m!1310863))

(assert (=> b!1420269 m!1310863))

(assert (=> b!1420269 m!1310843))

(declare-fun m!1310865 () Bool)

(assert (=> b!1420269 m!1310865))

(push 1)

(assert (not b!1420269))

(assert (not b!1420276))

(assert (not b!1420272))

(assert (not start!122666))

(assert (not b!1420274))

(assert (not b!1420275))

(assert (not b!1420268))

(assert (not b!1420273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

