; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135652 () Bool)

(assert start!135652)

(declare-fun res!1075814 () Bool)

(declare-fun e!878061 () Bool)

(assert (=> start!135652 (=> (not res!1075814) (not e!878061))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135652 (= res!1075814 (validMask!0 mask!898))))

(assert (=> start!135652 e!878061))

(assert (=> start!135652 true))

(declare-datatypes ((array!105251 0))(
  ( (array!105252 (arr!50766 (Array (_ BitVec 32) (_ BitVec 64))) (size!51317 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105251)

(declare-fun array_inv!39411 (array!105251) Bool)

(assert (=> start!135652 (array_inv!39411 _keys!605)))

(declare-fun b!1574379 () Bool)

(declare-fun res!1075812 () Bool)

(assert (=> b!1574379 (=> (not res!1075812) (not e!878061))))

(assert (=> b!1574379 (= res!1075812 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51317 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574380 () Bool)

(declare-fun res!1075813 () Bool)

(assert (=> b!1574380 (=> (not res!1075813) (not e!878061))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574380 (= res!1075813 (validKeyInArray!0 k!761))))

(declare-fun b!1574381 () Bool)

(assert (=> b!1574381 (= e!878061 false)))

(declare-fun lt!674761 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574381 (= lt!674761 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135652 res!1075814) b!1574379))

(assert (= (and b!1574379 res!1075812) b!1574380))

(assert (= (and b!1574380 res!1075813) b!1574381))

(declare-fun m!1447655 () Bool)

(assert (=> start!135652 m!1447655))

(declare-fun m!1447657 () Bool)

(assert (=> start!135652 m!1447657))

(declare-fun m!1447659 () Bool)

(assert (=> b!1574380 m!1447659))

(declare-fun m!1447661 () Bool)

(assert (=> b!1574381 m!1447661))

(push 1)

(assert (not b!1574381))

(assert (not start!135652))

(assert (not b!1574380))

(check-sat)

