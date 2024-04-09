; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122660 () Bool)

(assert start!122660)

(declare-fun b!1420186 () Bool)

(declare-fun res!955735 () Bool)

(declare-fun e!803326 () Bool)

(assert (=> b!1420186 (=> (not res!955735) (not e!803326))))

(declare-datatypes ((array!96943 0))(
  ( (array!96944 (arr!46785 (Array (_ BitVec 32) (_ BitVec 64))) (size!47336 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96943)

(declare-datatypes ((List!33475 0))(
  ( (Nil!33472) (Cons!33471 (h!34773 (_ BitVec 64)) (t!48176 List!33475)) )
))
(declare-fun arrayNoDuplicates!0 (array!96943 (_ BitVec 32) List!33475) Bool)

(assert (=> b!1420186 (= res!955735 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33472))))

(declare-fun b!1420187 () Bool)

(declare-fun res!955730 () Bool)

(assert (=> b!1420187 (=> (not res!955730) (not e!803326))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420187 (= res!955730 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47336 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47336 a!2831))))))

(declare-fun b!1420188 () Bool)

(declare-fun e!803325 () Bool)

(assert (=> b!1420188 (= e!803326 e!803325)))

(declare-fun res!955731 () Bool)

(assert (=> b!1420188 (=> (not res!955731) (not e!803325))))

(declare-datatypes ((SeekEntryResult!11092 0))(
  ( (MissingZero!11092 (index!46759 (_ BitVec 32))) (Found!11092 (index!46760 (_ BitVec 32))) (Intermediate!11092 (undefined!11904 Bool) (index!46761 (_ BitVec 32)) (x!128425 (_ BitVec 32))) (Undefined!11092) (MissingVacant!11092 (index!46762 (_ BitVec 32))) )
))
(declare-fun lt!625837 () SeekEntryResult!11092)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96943 (_ BitVec 32)) SeekEntryResult!11092)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420188 (= res!955731 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46785 a!2831) j!81) mask!2608) (select (arr!46785 a!2831) j!81) a!2831 mask!2608) lt!625837))))

(assert (=> b!1420188 (= lt!625837 (Intermediate!11092 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420189 () Bool)

(declare-fun res!955733 () Bool)

(assert (=> b!1420189 (=> (not res!955733) (not e!803325))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420189 (= res!955733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46785 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46785 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96944 (store (arr!46785 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47336 a!2831)) mask!2608) (Intermediate!11092 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun res!955729 () Bool)

(assert (=> start!122660 (=> (not res!955729) (not e!803326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122660 (= res!955729 (validMask!0 mask!2608))))

(assert (=> start!122660 e!803326))

(assert (=> start!122660 true))

(declare-fun array_inv!35730 (array!96943) Bool)

(assert (=> start!122660 (array_inv!35730 a!2831)))

(declare-fun b!1420190 () Bool)

(declare-fun res!955728 () Bool)

(assert (=> b!1420190 (=> (not res!955728) (not e!803326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96943 (_ BitVec 32)) Bool)

(assert (=> b!1420190 (= res!955728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420191 () Bool)

(declare-fun res!955734 () Bool)

(assert (=> b!1420191 (=> (not res!955734) (not e!803326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420191 (= res!955734 (validKeyInArray!0 (select (arr!46785 a!2831) i!982)))))

(declare-fun b!1420192 () Bool)

(declare-fun res!955736 () Bool)

(assert (=> b!1420192 (=> (not res!955736) (not e!803326))))

(assert (=> b!1420192 (= res!955736 (and (= (size!47336 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47336 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47336 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420193 () Bool)

(declare-fun res!955732 () Bool)

(assert (=> b!1420193 (=> (not res!955732) (not e!803325))))

(assert (=> b!1420193 (= res!955732 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46785 a!2831) j!81) a!2831 mask!2608) lt!625837))))

(declare-fun b!1420194 () Bool)

(assert (=> b!1420194 (= e!803325 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun b!1420195 () Bool)

(declare-fun res!955737 () Bool)

(assert (=> b!1420195 (=> (not res!955737) (not e!803326))))

(assert (=> b!1420195 (= res!955737 (validKeyInArray!0 (select (arr!46785 a!2831) j!81)))))

(assert (= (and start!122660 res!955729) b!1420192))

(assert (= (and b!1420192 res!955736) b!1420191))

(assert (= (and b!1420191 res!955734) b!1420195))

(assert (= (and b!1420195 res!955737) b!1420190))

(assert (= (and b!1420190 res!955728) b!1420186))

(assert (= (and b!1420186 res!955735) b!1420187))

(assert (= (and b!1420187 res!955730) b!1420188))

(assert (= (and b!1420188 res!955731) b!1420189))

(assert (= (and b!1420189 res!955733) b!1420193))

(assert (= (and b!1420193 res!955732) b!1420194))

(declare-fun m!1310747 () Bool)

(assert (=> b!1420191 m!1310747))

(assert (=> b!1420191 m!1310747))

(declare-fun m!1310749 () Bool)

(assert (=> b!1420191 m!1310749))

(declare-fun m!1310751 () Bool)

(assert (=> b!1420193 m!1310751))

(assert (=> b!1420193 m!1310751))

(declare-fun m!1310753 () Bool)

(assert (=> b!1420193 m!1310753))

(declare-fun m!1310755 () Bool)

(assert (=> b!1420190 m!1310755))

(assert (=> b!1420188 m!1310751))

(assert (=> b!1420188 m!1310751))

(declare-fun m!1310757 () Bool)

(assert (=> b!1420188 m!1310757))

(assert (=> b!1420188 m!1310757))

(assert (=> b!1420188 m!1310751))

(declare-fun m!1310759 () Bool)

(assert (=> b!1420188 m!1310759))

(declare-fun m!1310761 () Bool)

(assert (=> b!1420186 m!1310761))

(declare-fun m!1310763 () Bool)

(assert (=> start!122660 m!1310763))

(declare-fun m!1310765 () Bool)

(assert (=> start!122660 m!1310765))

(declare-fun m!1310767 () Bool)

(assert (=> b!1420189 m!1310767))

(declare-fun m!1310769 () Bool)

(assert (=> b!1420189 m!1310769))

(assert (=> b!1420189 m!1310769))

(declare-fun m!1310771 () Bool)

(assert (=> b!1420189 m!1310771))

(assert (=> b!1420189 m!1310771))

(assert (=> b!1420189 m!1310769))

(declare-fun m!1310773 () Bool)

(assert (=> b!1420189 m!1310773))

(assert (=> b!1420195 m!1310751))

(assert (=> b!1420195 m!1310751))

(declare-fun m!1310775 () Bool)

(assert (=> b!1420195 m!1310775))

(push 1)

(assert (not b!1420191))

(assert (not b!1420195))

(assert (not start!122660))

(assert (not b!1420189))

(assert (not b!1420190))

(assert (not b!1420193))

(assert (not b!1420188))

(assert (not b!1420186))

(check-sat)

