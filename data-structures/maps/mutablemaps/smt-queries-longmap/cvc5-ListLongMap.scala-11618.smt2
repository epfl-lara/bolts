; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135606 () Bool)

(assert start!135606)

(declare-fun res!1075710 () Bool)

(declare-fun e!877994 () Bool)

(assert (=> start!135606 (=> (not res!1075710) (not e!877994))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135606 (= res!1075710 (validMask!0 mask!898))))

(assert (=> start!135606 e!877994))

(assert (=> start!135606 true))

(declare-datatypes ((array!105226 0))(
  ( (array!105227 (arr!50755 (Array (_ BitVec 32) (_ BitVec 64))) (size!51306 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105226)

(declare-fun array_inv!39400 (array!105226) Bool)

(assert (=> start!135606 (array_inv!39400 _keys!605)))

(declare-fun b!1574280 () Bool)

(declare-fun res!1075711 () Bool)

(assert (=> b!1574280 (=> (not res!1075711) (not e!877994))))

(assert (=> b!1574280 (= res!1075711 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51306 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574281 () Bool)

(declare-fun res!1075712 () Bool)

(assert (=> b!1574281 (=> (not res!1075712) (not e!877994))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574281 (= res!1075712 (validKeyInArray!0 k!761))))

(declare-fun b!1574282 () Bool)

(assert (=> b!1574282 (= e!877994 false)))

(declare-fun lt!674710 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574282 (= lt!674710 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135606 res!1075710) b!1574280))

(assert (= (and b!1574280 res!1075711) b!1574281))

(assert (= (and b!1574281 res!1075712) b!1574282))

(declare-fun m!1447567 () Bool)

(assert (=> start!135606 m!1447567))

(declare-fun m!1447569 () Bool)

(assert (=> start!135606 m!1447569))

(declare-fun m!1447571 () Bool)

(assert (=> b!1574281 m!1447571))

(declare-fun m!1447573 () Bool)

(assert (=> b!1574282 m!1447573))

(push 1)

(assert (not b!1574282))

(assert (not start!135606))

(assert (not b!1574281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

