; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122604 () Bool)

(assert start!122604)

(declare-fun b!1419462 () Bool)

(declare-fun res!955004 () Bool)

(declare-fun e!803141 () Bool)

(assert (=> b!1419462 (=> (not res!955004) (not e!803141))))

(declare-datatypes ((array!96887 0))(
  ( (array!96888 (arr!46757 (Array (_ BitVec 32) (_ BitVec 64))) (size!47308 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96887)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419462 (= res!955004 (validKeyInArray!0 (select (arr!46757 a!2831) i!982)))))

(declare-fun b!1419464 () Bool)

(assert (=> b!1419464 (= e!803141 false)))

(declare-fun lt!625771 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419464 (= lt!625771 (toIndex!0 (select (store (arr!46757 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419465 () Bool)

(declare-fun res!955011 () Bool)

(assert (=> b!1419465 (=> (not res!955011) (not e!803141))))

(assert (=> b!1419465 (= res!955011 (validKeyInArray!0 (select (arr!46757 a!2831) j!81)))))

(declare-fun b!1419466 () Bool)

(declare-fun res!955010 () Bool)

(assert (=> b!1419466 (=> (not res!955010) (not e!803141))))

(declare-datatypes ((List!33447 0))(
  ( (Nil!33444) (Cons!33443 (h!34745 (_ BitVec 64)) (t!48148 List!33447)) )
))
(declare-fun arrayNoDuplicates!0 (array!96887 (_ BitVec 32) List!33447) Bool)

(assert (=> b!1419466 (= res!955010 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33444))))

(declare-fun b!1419467 () Bool)

(declare-fun res!955009 () Bool)

(assert (=> b!1419467 (=> (not res!955009) (not e!803141))))

(assert (=> b!1419467 (= res!955009 (and (= (size!47308 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47308 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47308 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419468 () Bool)

(declare-fun res!955005 () Bool)

(assert (=> b!1419468 (=> (not res!955005) (not e!803141))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419468 (= res!955005 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47308 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47308 a!2831))))))

(declare-fun b!1419469 () Bool)

(declare-fun res!955006 () Bool)

(assert (=> b!1419469 (=> (not res!955006) (not e!803141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96887 (_ BitVec 32)) Bool)

(assert (=> b!1419469 (= res!955006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!955008 () Bool)

(assert (=> start!122604 (=> (not res!955008) (not e!803141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122604 (= res!955008 (validMask!0 mask!2608))))

(assert (=> start!122604 e!803141))

(assert (=> start!122604 true))

(declare-fun array_inv!35702 (array!96887) Bool)

(assert (=> start!122604 (array_inv!35702 a!2831)))

(declare-fun b!1419463 () Bool)

(declare-fun res!955007 () Bool)

(assert (=> b!1419463 (=> (not res!955007) (not e!803141))))

(declare-datatypes ((SeekEntryResult!11064 0))(
  ( (MissingZero!11064 (index!46647 (_ BitVec 32))) (Found!11064 (index!46648 (_ BitVec 32))) (Intermediate!11064 (undefined!11876 Bool) (index!46649 (_ BitVec 32)) (x!128325 (_ BitVec 32))) (Undefined!11064) (MissingVacant!11064 (index!46650 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96887 (_ BitVec 32)) SeekEntryResult!11064)

(assert (=> b!1419463 (= res!955007 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46757 a!2831) j!81) mask!2608) (select (arr!46757 a!2831) j!81) a!2831 mask!2608) (Intermediate!11064 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(assert (= (and start!122604 res!955008) b!1419467))

(assert (= (and b!1419467 res!955009) b!1419462))

(assert (= (and b!1419462 res!955004) b!1419465))

(assert (= (and b!1419465 res!955011) b!1419469))

(assert (= (and b!1419469 res!955006) b!1419466))

(assert (= (and b!1419466 res!955010) b!1419468))

(assert (= (and b!1419468 res!955005) b!1419463))

(assert (= (and b!1419463 res!955007) b!1419464))

(declare-fun m!1309957 () Bool)

(assert (=> b!1419463 m!1309957))

(assert (=> b!1419463 m!1309957))

(declare-fun m!1309959 () Bool)

(assert (=> b!1419463 m!1309959))

(assert (=> b!1419463 m!1309959))

(assert (=> b!1419463 m!1309957))

(declare-fun m!1309961 () Bool)

(assert (=> b!1419463 m!1309961))

(declare-fun m!1309963 () Bool)

(assert (=> b!1419464 m!1309963))

(declare-fun m!1309965 () Bool)

(assert (=> b!1419464 m!1309965))

(assert (=> b!1419464 m!1309965))

(declare-fun m!1309967 () Bool)

(assert (=> b!1419464 m!1309967))

(declare-fun m!1309969 () Bool)

(assert (=> b!1419466 m!1309969))

(assert (=> b!1419465 m!1309957))

(assert (=> b!1419465 m!1309957))

(declare-fun m!1309971 () Bool)

(assert (=> b!1419465 m!1309971))

(declare-fun m!1309973 () Bool)

(assert (=> b!1419462 m!1309973))

(assert (=> b!1419462 m!1309973))

(declare-fun m!1309975 () Bool)

(assert (=> b!1419462 m!1309975))

(declare-fun m!1309977 () Bool)

(assert (=> b!1419469 m!1309977))

(declare-fun m!1309979 () Bool)

(assert (=> start!122604 m!1309979))

(declare-fun m!1309981 () Bool)

(assert (=> start!122604 m!1309981))

(check-sat (not start!122604) (not b!1419466) (not b!1419462) (not b!1419464) (not b!1419465) (not b!1419463) (not b!1419469))
