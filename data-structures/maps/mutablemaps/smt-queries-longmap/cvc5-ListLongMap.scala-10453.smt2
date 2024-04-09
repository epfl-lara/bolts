; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122920 () Bool)

(assert start!122920)

(declare-fun b!1425162 () Bool)

(declare-fun res!960705 () Bool)

(declare-fun e!805295 () Bool)

(assert (=> b!1425162 (=> (not res!960705) (not e!805295))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!97203 0))(
  ( (array!97204 (arr!46915 (Array (_ BitVec 32) (_ BitVec 64))) (size!47466 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97203)

(assert (=> b!1425162 (= res!960705 (and (= (size!47466 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47466 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47466 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425163 () Bool)

(declare-fun res!960706 () Bool)

(assert (=> b!1425163 (=> (not res!960706) (not e!805295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97203 (_ BitVec 32)) Bool)

(assert (=> b!1425163 (= res!960706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425164 () Bool)

(declare-fun res!960711 () Bool)

(assert (=> b!1425164 (=> (not res!960711) (not e!805295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425164 (= res!960711 (validKeyInArray!0 (select (arr!46915 a!2831) i!982)))))

(declare-fun b!1425165 () Bool)

(declare-fun res!960704 () Bool)

(assert (=> b!1425165 (=> (not res!960704) (not e!805295))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11216 0))(
  ( (MissingZero!11216 (index!47255 (_ BitVec 32))) (Found!11216 (index!47256 (_ BitVec 32))) (Intermediate!11216 (undefined!12028 Bool) (index!47257 (_ BitVec 32)) (x!128901 (_ BitVec 32))) (Undefined!11216) (MissingVacant!11216 (index!47258 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97203 (_ BitVec 32)) SeekEntryResult!11216)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425165 (= res!960704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46915 a!2831) j!81) mask!2608) (select (arr!46915 a!2831) j!81) a!2831 mask!2608) (Intermediate!11216 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425166 () Bool)

(assert (=> b!1425166 (= e!805295 false)))

(declare-fun lt!627730 () (_ BitVec 32))

(assert (=> b!1425166 (= lt!627730 (toIndex!0 (select (store (arr!46915 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1425167 () Bool)

(declare-fun res!960709 () Bool)

(assert (=> b!1425167 (=> (not res!960709) (not e!805295))))

(assert (=> b!1425167 (= res!960709 (validKeyInArray!0 (select (arr!46915 a!2831) j!81)))))

(declare-fun b!1425168 () Bool)

(declare-fun res!960708 () Bool)

(assert (=> b!1425168 (=> (not res!960708) (not e!805295))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425168 (= res!960708 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47466 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47466 a!2831))))))

(declare-fun res!960707 () Bool)

(assert (=> start!122920 (=> (not res!960707) (not e!805295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122920 (= res!960707 (validMask!0 mask!2608))))

(assert (=> start!122920 e!805295))

(assert (=> start!122920 true))

(declare-fun array_inv!35860 (array!97203) Bool)

(assert (=> start!122920 (array_inv!35860 a!2831)))

(declare-fun b!1425169 () Bool)

(declare-fun res!960710 () Bool)

(assert (=> b!1425169 (=> (not res!960710) (not e!805295))))

(declare-datatypes ((List!33605 0))(
  ( (Nil!33602) (Cons!33601 (h!34903 (_ BitVec 64)) (t!48306 List!33605)) )
))
(declare-fun arrayNoDuplicates!0 (array!97203 (_ BitVec 32) List!33605) Bool)

(assert (=> b!1425169 (= res!960710 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33602))))

(assert (= (and start!122920 res!960707) b!1425162))

(assert (= (and b!1425162 res!960705) b!1425164))

(assert (= (and b!1425164 res!960711) b!1425167))

(assert (= (and b!1425167 res!960709) b!1425163))

(assert (= (and b!1425163 res!960706) b!1425169))

(assert (= (and b!1425169 res!960710) b!1425168))

(assert (= (and b!1425168 res!960708) b!1425165))

(assert (= (and b!1425165 res!960704) b!1425166))

(declare-fun m!1315775 () Bool)

(assert (=> b!1425165 m!1315775))

(assert (=> b!1425165 m!1315775))

(declare-fun m!1315777 () Bool)

(assert (=> b!1425165 m!1315777))

(assert (=> b!1425165 m!1315777))

(assert (=> b!1425165 m!1315775))

(declare-fun m!1315779 () Bool)

(assert (=> b!1425165 m!1315779))

(declare-fun m!1315781 () Bool)

(assert (=> start!122920 m!1315781))

(declare-fun m!1315783 () Bool)

(assert (=> start!122920 m!1315783))

(declare-fun m!1315785 () Bool)

(assert (=> b!1425164 m!1315785))

(assert (=> b!1425164 m!1315785))

(declare-fun m!1315787 () Bool)

(assert (=> b!1425164 m!1315787))

(declare-fun m!1315789 () Bool)

(assert (=> b!1425166 m!1315789))

(declare-fun m!1315791 () Bool)

(assert (=> b!1425166 m!1315791))

(assert (=> b!1425166 m!1315791))

(declare-fun m!1315793 () Bool)

(assert (=> b!1425166 m!1315793))

(declare-fun m!1315795 () Bool)

(assert (=> b!1425163 m!1315795))

(assert (=> b!1425167 m!1315775))

(assert (=> b!1425167 m!1315775))

(declare-fun m!1315797 () Bool)

(assert (=> b!1425167 m!1315797))

(declare-fun m!1315799 () Bool)

(assert (=> b!1425169 m!1315799))

(push 1)

(assert (not b!1425163))

(assert (not b!1425164))

(assert (not start!122920))

(assert (not b!1425167))

(assert (not b!1425166))

(assert (not b!1425169))

(assert (not b!1425165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

