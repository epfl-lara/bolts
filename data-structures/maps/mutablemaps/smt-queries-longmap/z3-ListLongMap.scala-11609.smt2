; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135494 () Bool)

(assert start!135494)

(declare-fun res!1075442 () Bool)

(declare-fun e!877812 () Bool)

(assert (=> start!135494 (=> (not res!1075442) (not e!877812))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135494 (= res!1075442 (validMask!0 mask!877))))

(assert (=> start!135494 e!877812))

(assert (=> start!135494 true))

(declare-datatypes ((array!105165 0))(
  ( (array!105166 (arr!50729 (Array (_ BitVec 32) (_ BitVec 64))) (size!51280 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105165)

(declare-fun array_inv!39374 (array!105165) Bool)

(assert (=> start!135494 (array_inv!39374 _keys!591)))

(declare-fun b!1574010 () Bool)

(declare-fun res!1075441 () Bool)

(assert (=> b!1574010 (=> (not res!1075441) (not e!877812))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574010 (= res!1075441 (and (= (size!51280 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51280 _keys!591)) (bvslt i!537 (size!51280 _keys!591))))))

(declare-fun b!1574011 () Bool)

(declare-fun res!1075440 () Bool)

(assert (=> b!1574011 (=> (not res!1075440) (not e!877812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574011 (= res!1075440 (validKeyInArray!0 (select (arr!50729 _keys!591) i!537)))))

(declare-fun b!1574012 () Bool)

(assert (=> b!1574012 (= e!877812 (not true))))

(declare-datatypes ((SeekEntryResult!13646 0))(
  ( (MissingZero!13646 (index!56981 (_ BitVec 32))) (Found!13646 (index!56982 (_ BitVec 32))) (Intermediate!13646 (undefined!14458 Bool) (index!56983 (_ BitVec 32)) (x!141838 (_ BitVec 32))) (Undefined!13646) (MissingVacant!13646 (index!56984 (_ BitVec 32))) )
))
(declare-fun lt!674673 () SeekEntryResult!13646)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105165 (_ BitVec 32)) SeekEntryResult!13646)

(assert (=> b!1574012 (= lt!674673 (seekEntryOrOpen!0 (select (arr!50729 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574012 (arrayContainsKey!0 _keys!591 (select (arr!50729 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52098 0))(
  ( (Unit!52099) )
))
(declare-fun lt!674674 () Unit!52098)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105165 (_ BitVec 64) (_ BitVec 32)) Unit!52098)

(assert (=> b!1574012 (= lt!674674 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50729 _keys!591) i!537) i!537))))

(assert (= (and start!135494 res!1075442) b!1574010))

(assert (= (and b!1574010 res!1075441) b!1574011))

(assert (= (and b!1574011 res!1075440) b!1574012))

(declare-fun m!1447311 () Bool)

(assert (=> start!135494 m!1447311))

(declare-fun m!1447313 () Bool)

(assert (=> start!135494 m!1447313))

(declare-fun m!1447315 () Bool)

(assert (=> b!1574011 m!1447315))

(assert (=> b!1574011 m!1447315))

(declare-fun m!1447317 () Bool)

(assert (=> b!1574011 m!1447317))

(assert (=> b!1574012 m!1447315))

(assert (=> b!1574012 m!1447315))

(declare-fun m!1447319 () Bool)

(assert (=> b!1574012 m!1447319))

(assert (=> b!1574012 m!1447315))

(declare-fun m!1447321 () Bool)

(assert (=> b!1574012 m!1447321))

(assert (=> b!1574012 m!1447315))

(declare-fun m!1447323 () Bool)

(assert (=> b!1574012 m!1447323))

(check-sat (not b!1574012) (not start!135494) (not b!1574011))
