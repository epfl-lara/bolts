; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135562 () Bool)

(assert start!135562)

(declare-fun res!1075584 () Bool)

(declare-fun e!877907 () Bool)

(assert (=> start!135562 (=> (not res!1075584) (not e!877907))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135562 (= res!1075584 (validMask!0 mask!877))))

(assert (=> start!135562 e!877907))

(assert (=> start!135562 true))

(declare-datatypes ((array!105197 0))(
  ( (array!105198 (arr!50742 (Array (_ BitVec 32) (_ BitVec 64))) (size!51293 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105197)

(declare-fun array_inv!39387 (array!105197) Bool)

(assert (=> start!135562 (array_inv!39387 _keys!591)))

(declare-fun b!1574154 () Bool)

(declare-fun res!1075585 () Bool)

(assert (=> b!1574154 (=> (not res!1075585) (not e!877907))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574154 (= res!1075585 (and (= (size!51293 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51293 _keys!591)) (bvslt i!537 (size!51293 _keys!591))))))

(declare-fun b!1574155 () Bool)

(declare-fun res!1075586 () Bool)

(assert (=> b!1574155 (=> (not res!1075586) (not e!877907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574155 (= res!1075586 (validKeyInArray!0 (select (arr!50742 _keys!591) i!537)))))

(declare-fun b!1574156 () Bool)

(assert (=> b!1574156 (= e!877907 (not true))))

(declare-fun arrayContainsKey!0 (array!105197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574156 (arrayContainsKey!0 _keys!591 (select (arr!50742 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52106 0))(
  ( (Unit!52107) )
))
(declare-fun lt!674689 () Unit!52106)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105197 (_ BitVec 64) (_ BitVec 32)) Unit!52106)

(assert (=> b!1574156 (= lt!674689 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50742 _keys!591) i!537) i!537))))

(assert (= (and start!135562 res!1075584) b!1574154))

(assert (= (and b!1574154 res!1075585) b!1574155))

(assert (= (and b!1574155 res!1075586) b!1574156))

(declare-fun m!1447447 () Bool)

(assert (=> start!135562 m!1447447))

(declare-fun m!1447449 () Bool)

(assert (=> start!135562 m!1447449))

(declare-fun m!1447451 () Bool)

(assert (=> b!1574155 m!1447451))

(assert (=> b!1574155 m!1447451))

(declare-fun m!1447453 () Bool)

(assert (=> b!1574155 m!1447453))

(assert (=> b!1574156 m!1447451))

(assert (=> b!1574156 m!1447451))

(declare-fun m!1447455 () Bool)

(assert (=> b!1574156 m!1447455))

(assert (=> b!1574156 m!1447451))

(declare-fun m!1447457 () Bool)

(assert (=> b!1574156 m!1447457))

(push 1)

(assert (not b!1574156))

(assert (not b!1574155))

(assert (not start!135562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

