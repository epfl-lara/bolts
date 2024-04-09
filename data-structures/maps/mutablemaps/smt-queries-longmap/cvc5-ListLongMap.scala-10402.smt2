; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122614 () Bool)

(assert start!122614)

(declare-fun b!1419591 () Bool)

(declare-fun res!955137 () Bool)

(declare-fun e!803179 () Bool)

(assert (=> b!1419591 (=> (not res!955137) (not e!803179))))

(declare-datatypes ((array!96897 0))(
  ( (array!96898 (arr!46762 (Array (_ BitVec 32) (_ BitVec 64))) (size!47313 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96897)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419591 (= res!955137 (validKeyInArray!0 (select (arr!46762 a!2831) j!81)))))

(declare-fun b!1419592 () Bool)

(declare-fun res!955134 () Bool)

(assert (=> b!1419592 (=> (not res!955134) (not e!803179))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11069 0))(
  ( (MissingZero!11069 (index!46667 (_ BitVec 32))) (Found!11069 (index!46668 (_ BitVec 32))) (Intermediate!11069 (undefined!11881 Bool) (index!46669 (_ BitVec 32)) (x!128346 (_ BitVec 32))) (Undefined!11069) (MissingVacant!11069 (index!46670 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96897 (_ BitVec 32)) SeekEntryResult!11069)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419592 (= res!955134 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46762 a!2831) j!81) mask!2608) (select (arr!46762 a!2831) j!81) a!2831 mask!2608) (Intermediate!11069 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419593 () Bool)

(declare-fun res!955135 () Bool)

(assert (=> b!1419593 (=> (not res!955135) (not e!803179))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419593 (= res!955135 (and (= (size!47313 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47313 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47313 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419594 () Bool)

(assert (=> b!1419594 (= e!803179 false)))

(declare-fun lt!625786 () SeekEntryResult!11069)

(assert (=> b!1419594 (= lt!625786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46762 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46762 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96898 (store (arr!46762 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47313 a!2831)) mask!2608))))

(declare-fun res!955136 () Bool)

(assert (=> start!122614 (=> (not res!955136) (not e!803179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122614 (= res!955136 (validMask!0 mask!2608))))

(assert (=> start!122614 e!803179))

(assert (=> start!122614 true))

(declare-fun array_inv!35707 (array!96897) Bool)

(assert (=> start!122614 (array_inv!35707 a!2831)))

(declare-fun b!1419595 () Bool)

(declare-fun res!955140 () Bool)

(assert (=> b!1419595 (=> (not res!955140) (not e!803179))))

(assert (=> b!1419595 (= res!955140 (validKeyInArray!0 (select (arr!46762 a!2831) i!982)))))

(declare-fun b!1419596 () Bool)

(declare-fun res!955133 () Bool)

(assert (=> b!1419596 (=> (not res!955133) (not e!803179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96897 (_ BitVec 32)) Bool)

(assert (=> b!1419596 (= res!955133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419597 () Bool)

(declare-fun res!955139 () Bool)

(assert (=> b!1419597 (=> (not res!955139) (not e!803179))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419597 (= res!955139 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47313 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47313 a!2831))))))

(declare-fun b!1419598 () Bool)

(declare-fun res!955138 () Bool)

(assert (=> b!1419598 (=> (not res!955138) (not e!803179))))

(declare-datatypes ((List!33452 0))(
  ( (Nil!33449) (Cons!33448 (h!34750 (_ BitVec 64)) (t!48153 List!33452)) )
))
(declare-fun arrayNoDuplicates!0 (array!96897 (_ BitVec 32) List!33452) Bool)

(assert (=> b!1419598 (= res!955138 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33449))))

(assert (= (and start!122614 res!955136) b!1419593))

(assert (= (and b!1419593 res!955135) b!1419595))

(assert (= (and b!1419595 res!955140) b!1419591))

(assert (= (and b!1419591 res!955137) b!1419596))

(assert (= (and b!1419596 res!955133) b!1419598))

(assert (= (and b!1419598 res!955138) b!1419597))

(assert (= (and b!1419597 res!955139) b!1419592))

(assert (= (and b!1419592 res!955134) b!1419594))

(declare-fun m!1310093 () Bool)

(assert (=> start!122614 m!1310093))

(declare-fun m!1310095 () Bool)

(assert (=> start!122614 m!1310095))

(declare-fun m!1310097 () Bool)

(assert (=> b!1419596 m!1310097))

(declare-fun m!1310099 () Bool)

(assert (=> b!1419592 m!1310099))

(assert (=> b!1419592 m!1310099))

(declare-fun m!1310101 () Bool)

(assert (=> b!1419592 m!1310101))

(assert (=> b!1419592 m!1310101))

(assert (=> b!1419592 m!1310099))

(declare-fun m!1310103 () Bool)

(assert (=> b!1419592 m!1310103))

(declare-fun m!1310105 () Bool)

(assert (=> b!1419594 m!1310105))

(declare-fun m!1310107 () Bool)

(assert (=> b!1419594 m!1310107))

(assert (=> b!1419594 m!1310107))

(declare-fun m!1310109 () Bool)

(assert (=> b!1419594 m!1310109))

(assert (=> b!1419594 m!1310109))

(assert (=> b!1419594 m!1310107))

(declare-fun m!1310111 () Bool)

(assert (=> b!1419594 m!1310111))

(declare-fun m!1310113 () Bool)

(assert (=> b!1419598 m!1310113))

(declare-fun m!1310115 () Bool)

(assert (=> b!1419595 m!1310115))

(assert (=> b!1419595 m!1310115))

(declare-fun m!1310117 () Bool)

(assert (=> b!1419595 m!1310117))

(assert (=> b!1419591 m!1310099))

(assert (=> b!1419591 m!1310099))

(declare-fun m!1310119 () Bool)

(assert (=> b!1419591 m!1310119))

(push 1)

(assert (not b!1419591))

(assert (not b!1419594))

(assert (not b!1419596))

(assert (not start!122614))

(assert (not b!1419598))

(assert (not b!1419595))

(assert (not b!1419592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

