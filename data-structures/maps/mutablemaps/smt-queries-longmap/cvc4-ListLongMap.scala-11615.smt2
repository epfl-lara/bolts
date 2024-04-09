; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135574 () Bool)

(assert start!135574)

(declare-fun res!1075647 () Bool)

(declare-fun e!877953 () Bool)

(assert (=> start!135574 (=> (not res!1075647) (not e!877953))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135574 (= res!1075647 (validMask!0 mask!877))))

(assert (=> start!135574 e!877953))

(assert (=> start!135574 true))

(declare-datatypes ((array!105209 0))(
  ( (array!105210 (arr!50748 (Array (_ BitVec 32) (_ BitVec 64))) (size!51299 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105209)

(declare-fun array_inv!39393 (array!105209) Bool)

(assert (=> start!135574 (array_inv!39393 _keys!591)))

(declare-fun b!1574217 () Bool)

(declare-fun res!1075648 () Bool)

(assert (=> b!1574217 (=> (not res!1075648) (not e!877953))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574217 (= res!1075648 (and (= (size!51299 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51299 _keys!591)) (bvslt i!537 (size!51299 _keys!591))))))

(declare-fun b!1574218 () Bool)

(declare-fun res!1075649 () Bool)

(assert (=> b!1574218 (=> (not res!1075649) (not e!877953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574218 (= res!1075649 (not (validKeyInArray!0 (select (arr!50748 _keys!591) i!537))))))

(declare-fun b!1574219 () Bool)

(assert (=> b!1574219 (= e!877953 (bvsge (bvsub (size!51299 _keys!591) (bvadd #b00000000000000000000000000000001 i!537)) (bvsub (size!51299 _keys!591) i!537)))))

(assert (= (and start!135574 res!1075647) b!1574217))

(assert (= (and b!1574217 res!1075648) b!1574218))

(assert (= (and b!1574218 res!1075649) b!1574219))

(declare-fun m!1447517 () Bool)

(assert (=> start!135574 m!1447517))

(declare-fun m!1447519 () Bool)

(assert (=> start!135574 m!1447519))

(declare-fun m!1447521 () Bool)

(assert (=> b!1574218 m!1447521))

(assert (=> b!1574218 m!1447521))

(declare-fun m!1447523 () Bool)

(assert (=> b!1574218 m!1447523))

(push 1)

(assert (not b!1574218))

(assert (not start!135574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

