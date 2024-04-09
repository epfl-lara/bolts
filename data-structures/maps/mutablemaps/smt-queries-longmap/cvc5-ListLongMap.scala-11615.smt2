; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135570 () Bool)

(assert start!135570)

(declare-fun res!1075631 () Bool)

(declare-fun e!877941 () Bool)

(assert (=> start!135570 (=> (not res!1075631) (not e!877941))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135570 (= res!1075631 (validMask!0 mask!877))))

(assert (=> start!135570 e!877941))

(assert (=> start!135570 true))

(declare-datatypes ((array!105205 0))(
  ( (array!105206 (arr!50746 (Array (_ BitVec 32) (_ BitVec 64))) (size!51297 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105205)

(declare-fun array_inv!39391 (array!105205) Bool)

(assert (=> start!135570 (array_inv!39391 _keys!591)))

(declare-fun b!1574199 () Bool)

(declare-fun res!1075630 () Bool)

(assert (=> b!1574199 (=> (not res!1075630) (not e!877941))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574199 (= res!1075630 (and (= (size!51297 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51297 _keys!591)) (bvslt i!537 (size!51297 _keys!591))))))

(declare-fun b!1574200 () Bool)

(declare-fun res!1075629 () Bool)

(assert (=> b!1574200 (=> (not res!1075629) (not e!877941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574200 (= res!1075629 (not (validKeyInArray!0 (select (arr!50746 _keys!591) i!537))))))

(declare-fun b!1574201 () Bool)

(assert (=> b!1574201 (= e!877941 (bvsge (bvsub (size!51297 _keys!591) (bvadd #b00000000000000000000000000000001 i!537)) (bvsub (size!51297 _keys!591) i!537)))))

(assert (= (and start!135570 res!1075631) b!1574199))

(assert (= (and b!1574199 res!1075630) b!1574200))

(assert (= (and b!1574200 res!1075629) b!1574201))

(declare-fun m!1447501 () Bool)

(assert (=> start!135570 m!1447501))

(declare-fun m!1447503 () Bool)

(assert (=> start!135570 m!1447503))

(declare-fun m!1447505 () Bool)

(assert (=> b!1574200 m!1447505))

(assert (=> b!1574200 m!1447505))

(declare-fun m!1447507 () Bool)

(assert (=> b!1574200 m!1447507))

(push 1)

(assert (not start!135570))

(assert (not b!1574200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

