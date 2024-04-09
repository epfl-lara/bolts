; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135458 () Bool)

(assert start!135458)

(declare-fun res!1075269 () Bool)

(declare-fun e!877695 () Bool)

(assert (=> start!135458 (=> (not res!1075269) (not e!877695))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135458 (= res!1075269 (validMask!0 mask!877))))

(assert (=> start!135458 e!877695))

(assert (=> start!135458 true))

(declare-datatypes ((array!105129 0))(
  ( (array!105130 (arr!50711 (Array (_ BitVec 32) (_ BitVec 64))) (size!51262 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105129)

(declare-fun array_inv!39356 (array!105129) Bool)

(assert (=> start!135458 (array_inv!39356 _keys!591)))

(declare-fun b!1573839 () Bool)

(declare-fun res!1075270 () Bool)

(assert (=> b!1573839 (=> (not res!1075270) (not e!877695))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573839 (= res!1075270 (and (= (size!51262 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51262 _keys!591)) (bvslt i!537 (size!51262 _keys!591))))))

(declare-fun b!1573840 () Bool)

(declare-fun res!1075271 () Bool)

(assert (=> b!1573840 (=> (not res!1075271) (not e!877695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573840 (= res!1075271 (validKeyInArray!0 (select (arr!50711 _keys!591) i!537)))))

(declare-fun b!1573841 () Bool)

(assert (=> b!1573841 (= e!877695 (not (bvsge mask!877 #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!105129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573841 (arrayContainsKey!0 _keys!591 (select (arr!50711 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52062 0))(
  ( (Unit!52063) )
))
(declare-fun lt!674596 () Unit!52062)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105129 (_ BitVec 64) (_ BitVec 32)) Unit!52062)

(assert (=> b!1573841 (= lt!674596 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50711 _keys!591) i!537) i!537))))

(assert (= (and start!135458 res!1075269) b!1573839))

(assert (= (and b!1573839 res!1075270) b!1573840))

(assert (= (and b!1573840 res!1075271) b!1573841))

(declare-fun m!1447075 () Bool)

(assert (=> start!135458 m!1447075))

(declare-fun m!1447077 () Bool)

(assert (=> start!135458 m!1447077))

(declare-fun m!1447079 () Bool)

(assert (=> b!1573840 m!1447079))

(assert (=> b!1573840 m!1447079))

(declare-fun m!1447081 () Bool)

(assert (=> b!1573840 m!1447081))

(assert (=> b!1573841 m!1447079))

(assert (=> b!1573841 m!1447079))

(declare-fun m!1447083 () Bool)

(assert (=> b!1573841 m!1447083))

(assert (=> b!1573841 m!1447079))

(declare-fun m!1447085 () Bool)

(assert (=> b!1573841 m!1447085))

(check-sat (not b!1573840) (not b!1573841) (not start!135458))
(check-sat)
