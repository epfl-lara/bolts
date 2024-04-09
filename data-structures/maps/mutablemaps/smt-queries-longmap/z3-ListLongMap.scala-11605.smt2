; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135470 () Bool)

(assert start!135470)

(declare-fun res!1075323 () Bool)

(declare-fun e!877730 () Bool)

(assert (=> start!135470 (=> (not res!1075323) (not e!877730))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135470 (= res!1075323 (validMask!0 mask!877))))

(assert (=> start!135470 e!877730))

(assert (=> start!135470 true))

(declare-datatypes ((array!105141 0))(
  ( (array!105142 (arr!50717 (Array (_ BitVec 32) (_ BitVec 64))) (size!51268 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105141)

(declare-fun array_inv!39362 (array!105141) Bool)

(assert (=> start!135470 (array_inv!39362 _keys!591)))

(declare-fun b!1573893 () Bool)

(declare-fun res!1075325 () Bool)

(assert (=> b!1573893 (=> (not res!1075325) (not e!877730))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573893 (= res!1075325 (and (= (size!51268 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51268 _keys!591)) (bvslt i!537 (size!51268 _keys!591))))))

(declare-fun b!1573894 () Bool)

(declare-fun res!1075324 () Bool)

(assert (=> b!1573894 (=> (not res!1075324) (not e!877730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573894 (= res!1075324 (validKeyInArray!0 (select (arr!50717 _keys!591) i!537)))))

(declare-fun b!1573895 () Bool)

(assert (=> b!1573895 (= e!877730 (not true))))

(declare-fun arrayContainsKey!0 (array!105141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573895 (arrayContainsKey!0 _keys!591 (select (arr!50717 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52074 0))(
  ( (Unit!52075) )
))
(declare-fun lt!674614 () Unit!52074)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105141 (_ BitVec 64) (_ BitVec 32)) Unit!52074)

(assert (=> b!1573895 (= lt!674614 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50717 _keys!591) i!537) i!537))))

(assert (= (and start!135470 res!1075323) b!1573893))

(assert (= (and b!1573893 res!1075325) b!1573894))

(assert (= (and b!1573894 res!1075324) b!1573895))

(declare-fun m!1447147 () Bool)

(assert (=> start!135470 m!1447147))

(declare-fun m!1447149 () Bool)

(assert (=> start!135470 m!1447149))

(declare-fun m!1447151 () Bool)

(assert (=> b!1573894 m!1447151))

(assert (=> b!1573894 m!1447151))

(declare-fun m!1447153 () Bool)

(assert (=> b!1573894 m!1447153))

(assert (=> b!1573895 m!1447151))

(assert (=> b!1573895 m!1447151))

(declare-fun m!1447155 () Bool)

(assert (=> b!1573895 m!1447155))

(assert (=> b!1573895 m!1447151))

(declare-fun m!1447157 () Bool)

(assert (=> b!1573895 m!1447157))

(check-sat (not start!135470) (not b!1573894) (not b!1573895))
