; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122626 () Bool)

(assert start!122626)

(declare-fun b!1419744 () Bool)

(declare-fun res!955289 () Bool)

(declare-fun e!803215 () Bool)

(assert (=> b!1419744 (=> (not res!955289) (not e!803215))))

(declare-datatypes ((array!96909 0))(
  ( (array!96910 (arr!46768 (Array (_ BitVec 32) (_ BitVec 64))) (size!47319 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96909)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1419744 (= res!955289 (and (= (size!47319 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47319 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47319 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419745 () Bool)

(declare-fun res!955290 () Bool)

(assert (=> b!1419745 (=> (not res!955290) (not e!803215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419745 (= res!955290 (validKeyInArray!0 (select (arr!46768 a!2831) i!982)))))

(declare-fun b!1419746 () Bool)

(declare-fun res!955293 () Bool)

(assert (=> b!1419746 (=> (not res!955293) (not e!803215))))

(assert (=> b!1419746 (= res!955293 (validKeyInArray!0 (select (arr!46768 a!2831) j!81)))))

(declare-fun res!955287 () Bool)

(assert (=> start!122626 (=> (not res!955287) (not e!803215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122626 (= res!955287 (validMask!0 mask!2608))))

(assert (=> start!122626 e!803215))

(assert (=> start!122626 true))

(declare-fun array_inv!35713 (array!96909) Bool)

(assert (=> start!122626 (array_inv!35713 a!2831)))

(declare-fun b!1419747 () Bool)

(declare-fun res!955291 () Bool)

(assert (=> b!1419747 (=> (not res!955291) (not e!803215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96909 (_ BitVec 32)) Bool)

(assert (=> b!1419747 (= res!955291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419748 () Bool)

(assert (=> b!1419748 (= e!803215 false)))

(declare-datatypes ((SeekEntryResult!11075 0))(
  ( (MissingZero!11075 (index!46691 (_ BitVec 32))) (Found!11075 (index!46692 (_ BitVec 32))) (Intermediate!11075 (undefined!11887 Bool) (index!46693 (_ BitVec 32)) (x!128368 (_ BitVec 32))) (Undefined!11075) (MissingVacant!11075 (index!46694 (_ BitVec 32))) )
))
(declare-fun lt!625795 () SeekEntryResult!11075)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96909 (_ BitVec 32)) SeekEntryResult!11075)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419748 (= lt!625795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46768 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46768 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96910 (store (arr!46768 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47319 a!2831)) mask!2608))))

(declare-fun b!1419749 () Bool)

(declare-fun res!955292 () Bool)

(assert (=> b!1419749 (=> (not res!955292) (not e!803215))))

(declare-datatypes ((List!33458 0))(
  ( (Nil!33455) (Cons!33454 (h!34756 (_ BitVec 64)) (t!48159 List!33458)) )
))
(declare-fun arrayNoDuplicates!0 (array!96909 (_ BitVec 32) List!33458) Bool)

(assert (=> b!1419749 (= res!955292 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33455))))

(declare-fun b!1419750 () Bool)

(declare-fun res!955288 () Bool)

(assert (=> b!1419750 (=> (not res!955288) (not e!803215))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1419750 (= res!955288 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46768 a!2831) j!81) mask!2608) (select (arr!46768 a!2831) j!81) a!2831 mask!2608) (Intermediate!11075 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419751 () Bool)

(declare-fun res!955286 () Bool)

(assert (=> b!1419751 (=> (not res!955286) (not e!803215))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419751 (= res!955286 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47319 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47319 a!2831))))))

(assert (= (and start!122626 res!955287) b!1419744))

(assert (= (and b!1419744 res!955289) b!1419745))

(assert (= (and b!1419745 res!955290) b!1419746))

(assert (= (and b!1419746 res!955293) b!1419747))

(assert (= (and b!1419747 res!955291) b!1419749))

(assert (= (and b!1419749 res!955292) b!1419751))

(assert (= (and b!1419751 res!955286) b!1419750))

(assert (= (and b!1419750 res!955288) b!1419748))

(declare-fun m!1310261 () Bool)

(assert (=> b!1419748 m!1310261))

(declare-fun m!1310263 () Bool)

(assert (=> b!1419748 m!1310263))

(assert (=> b!1419748 m!1310263))

(declare-fun m!1310265 () Bool)

(assert (=> b!1419748 m!1310265))

(assert (=> b!1419748 m!1310265))

(assert (=> b!1419748 m!1310263))

(declare-fun m!1310267 () Bool)

(assert (=> b!1419748 m!1310267))

(declare-fun m!1310269 () Bool)

(assert (=> b!1419749 m!1310269))

(declare-fun m!1310271 () Bool)

(assert (=> b!1419750 m!1310271))

(assert (=> b!1419750 m!1310271))

(declare-fun m!1310273 () Bool)

(assert (=> b!1419750 m!1310273))

(assert (=> b!1419750 m!1310273))

(assert (=> b!1419750 m!1310271))

(declare-fun m!1310275 () Bool)

(assert (=> b!1419750 m!1310275))

(declare-fun m!1310277 () Bool)

(assert (=> b!1419747 m!1310277))

(assert (=> b!1419746 m!1310271))

(assert (=> b!1419746 m!1310271))

(declare-fun m!1310279 () Bool)

(assert (=> b!1419746 m!1310279))

(declare-fun m!1310281 () Bool)

(assert (=> b!1419745 m!1310281))

(assert (=> b!1419745 m!1310281))

(declare-fun m!1310283 () Bool)

(assert (=> b!1419745 m!1310283))

(declare-fun m!1310285 () Bool)

(assert (=> start!122626 m!1310285))

(declare-fun m!1310287 () Bool)

(assert (=> start!122626 m!1310287))

(push 1)

(assert (not b!1419746))

(assert (not b!1419745))

(assert (not b!1419747))

(assert (not b!1419748))

(assert (not start!122626))

(assert (not b!1419749))

(assert (not b!1419750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

