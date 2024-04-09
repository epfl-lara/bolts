; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135462 () Bool)

(assert start!135462)

(declare-fun res!1075287 () Bool)

(declare-fun e!877706 () Bool)

(assert (=> start!135462 (=> (not res!1075287) (not e!877706))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135462 (= res!1075287 (validMask!0 mask!877))))

(assert (=> start!135462 e!877706))

(assert (=> start!135462 true))

(declare-datatypes ((array!105133 0))(
  ( (array!105134 (arr!50713 (Array (_ BitVec 32) (_ BitVec 64))) (size!51264 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105133)

(declare-fun array_inv!39358 (array!105133) Bool)

(assert (=> start!135462 (array_inv!39358 _keys!591)))

(declare-fun b!1573857 () Bool)

(declare-fun res!1075289 () Bool)

(assert (=> b!1573857 (=> (not res!1075289) (not e!877706))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573857 (= res!1075289 (and (= (size!51264 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51264 _keys!591)) (bvslt i!537 (size!51264 _keys!591))))))

(declare-fun b!1573858 () Bool)

(declare-fun res!1075288 () Bool)

(assert (=> b!1573858 (=> (not res!1075288) (not e!877706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573858 (= res!1075288 (validKeyInArray!0 (select (arr!50713 _keys!591) i!537)))))

(declare-fun b!1573859 () Bool)

(assert (=> b!1573859 (= e!877706 (not true))))

(declare-fun arrayContainsKey!0 (array!105133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573859 (arrayContainsKey!0 _keys!591 (select (arr!50713 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52066 0))(
  ( (Unit!52067) )
))
(declare-fun lt!674602 () Unit!52066)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105133 (_ BitVec 64) (_ BitVec 32)) Unit!52066)

(assert (=> b!1573859 (= lt!674602 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50713 _keys!591) i!537) i!537))))

(assert (= (and start!135462 res!1075287) b!1573857))

(assert (= (and b!1573857 res!1075289) b!1573858))

(assert (= (and b!1573858 res!1075288) b!1573859))

(declare-fun m!1447099 () Bool)

(assert (=> start!135462 m!1447099))

(declare-fun m!1447101 () Bool)

(assert (=> start!135462 m!1447101))

(declare-fun m!1447103 () Bool)

(assert (=> b!1573858 m!1447103))

(assert (=> b!1573858 m!1447103))

(declare-fun m!1447105 () Bool)

(assert (=> b!1573858 m!1447105))

(assert (=> b!1573859 m!1447103))

(assert (=> b!1573859 m!1447103))

(declare-fun m!1447107 () Bool)

(assert (=> b!1573859 m!1447107))

(assert (=> b!1573859 m!1447103))

(declare-fun m!1447109 () Bool)

(assert (=> b!1573859 m!1447109))

(push 1)

(assert (not b!1573859))

(assert (not start!135462))

(assert (not b!1573858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

