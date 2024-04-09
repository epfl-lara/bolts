; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135572 () Bool)

(assert start!135572)

(declare-fun res!1075638 () Bool)

(declare-fun e!877947 () Bool)

(assert (=> start!135572 (=> (not res!1075638) (not e!877947))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135572 (= res!1075638 (validMask!0 mask!877))))

(assert (=> start!135572 e!877947))

(assert (=> start!135572 true))

(declare-datatypes ((array!105207 0))(
  ( (array!105208 (arr!50747 (Array (_ BitVec 32) (_ BitVec 64))) (size!51298 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105207)

(declare-fun array_inv!39392 (array!105207) Bool)

(assert (=> start!135572 (array_inv!39392 _keys!591)))

(declare-fun b!1574208 () Bool)

(declare-fun res!1075639 () Bool)

(assert (=> b!1574208 (=> (not res!1075639) (not e!877947))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574208 (= res!1075639 (and (= (size!51298 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51298 _keys!591)) (bvslt i!537 (size!51298 _keys!591))))))

(declare-fun b!1574209 () Bool)

(declare-fun res!1075640 () Bool)

(assert (=> b!1574209 (=> (not res!1075640) (not e!877947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574209 (= res!1075640 (not (validKeyInArray!0 (select (arr!50747 _keys!591) i!537))))))

(declare-fun b!1574210 () Bool)

(assert (=> b!1574210 (= e!877947 (bvsge (bvsub (size!51298 _keys!591) (bvadd #b00000000000000000000000000000001 i!537)) (bvsub (size!51298 _keys!591) i!537)))))

(assert (= (and start!135572 res!1075638) b!1574208))

(assert (= (and b!1574208 res!1075639) b!1574209))

(assert (= (and b!1574209 res!1075640) b!1574210))

(declare-fun m!1447509 () Bool)

(assert (=> start!135572 m!1447509))

(declare-fun m!1447511 () Bool)

(assert (=> start!135572 m!1447511))

(declare-fun m!1447513 () Bool)

(assert (=> b!1574209 m!1447513))

(assert (=> b!1574209 m!1447513))

(declare-fun m!1447515 () Bool)

(assert (=> b!1574209 m!1447515))

(check-sat (not b!1574209) (not start!135572))
(check-sat)
