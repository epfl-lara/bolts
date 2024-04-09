; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135464 () Bool)

(assert start!135464)

(declare-fun res!1075298 () Bool)

(declare-fun e!877712 () Bool)

(assert (=> start!135464 (=> (not res!1075298) (not e!877712))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135464 (= res!1075298 (validMask!0 mask!877))))

(assert (=> start!135464 e!877712))

(assert (=> start!135464 true))

(declare-datatypes ((array!105135 0))(
  ( (array!105136 (arr!50714 (Array (_ BitVec 32) (_ BitVec 64))) (size!51265 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105135)

(declare-fun array_inv!39359 (array!105135) Bool)

(assert (=> start!135464 (array_inv!39359 _keys!591)))

(declare-fun b!1573866 () Bool)

(declare-fun res!1075297 () Bool)

(assert (=> b!1573866 (=> (not res!1075297) (not e!877712))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573866 (= res!1075297 (and (= (size!51265 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51265 _keys!591)) (bvslt i!537 (size!51265 _keys!591))))))

(declare-fun b!1573867 () Bool)

(declare-fun res!1075296 () Bool)

(assert (=> b!1573867 (=> (not res!1075296) (not e!877712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573867 (= res!1075296 (validKeyInArray!0 (select (arr!50714 _keys!591) i!537)))))

(declare-fun b!1573868 () Bool)

(assert (=> b!1573868 (= e!877712 (not true))))

(declare-fun arrayContainsKey!0 (array!105135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573868 (arrayContainsKey!0 _keys!591 (select (arr!50714 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52068 0))(
  ( (Unit!52069) )
))
(declare-fun lt!674605 () Unit!52068)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105135 (_ BitVec 64) (_ BitVec 32)) Unit!52068)

(assert (=> b!1573868 (= lt!674605 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50714 _keys!591) i!537) i!537))))

(assert (= (and start!135464 res!1075298) b!1573866))

(assert (= (and b!1573866 res!1075297) b!1573867))

(assert (= (and b!1573867 res!1075296) b!1573868))

(declare-fun m!1447111 () Bool)

(assert (=> start!135464 m!1447111))

(declare-fun m!1447113 () Bool)

(assert (=> start!135464 m!1447113))

(declare-fun m!1447115 () Bool)

(assert (=> b!1573867 m!1447115))

(assert (=> b!1573867 m!1447115))

(declare-fun m!1447117 () Bool)

(assert (=> b!1573867 m!1447117))

(assert (=> b!1573868 m!1447115))

(assert (=> b!1573868 m!1447115))

(declare-fun m!1447119 () Bool)

(assert (=> b!1573868 m!1447119))

(assert (=> b!1573868 m!1447115))

(declare-fun m!1447121 () Bool)

(assert (=> b!1573868 m!1447121))

(check-sat (not b!1573868) (not start!135464) (not b!1573867))
