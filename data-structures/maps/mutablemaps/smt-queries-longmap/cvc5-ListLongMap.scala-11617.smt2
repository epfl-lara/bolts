; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135600 () Bool)

(assert start!135600)

(declare-fun res!1075684 () Bool)

(declare-fun e!877976 () Bool)

(assert (=> start!135600 (=> (not res!1075684) (not e!877976))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135600 (= res!1075684 (validMask!0 mask!898))))

(assert (=> start!135600 e!877976))

(assert (=> start!135600 true))

(declare-datatypes ((array!105220 0))(
  ( (array!105221 (arr!50752 (Array (_ BitVec 32) (_ BitVec 64))) (size!51303 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105220)

(declare-fun array_inv!39397 (array!105220) Bool)

(assert (=> start!135600 (array_inv!39397 _keys!605)))

(declare-fun b!1574253 () Bool)

(declare-fun res!1075683 () Bool)

(assert (=> b!1574253 (=> (not res!1075683) (not e!877976))))

(assert (=> b!1574253 (= res!1075683 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51303 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574254 () Bool)

(declare-fun res!1075685 () Bool)

(assert (=> b!1574254 (=> (not res!1075685) (not e!877976))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574254 (= res!1075685 (validKeyInArray!0 k!761))))

(declare-fun b!1574255 () Bool)

(assert (=> b!1574255 (= e!877976 false)))

(declare-fun lt!674701 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574255 (= lt!674701 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135600 res!1075684) b!1574253))

(assert (= (and b!1574253 res!1075683) b!1574254))

(assert (= (and b!1574254 res!1075685) b!1574255))

(declare-fun m!1447543 () Bool)

(assert (=> start!135600 m!1447543))

(declare-fun m!1447545 () Bool)

(assert (=> start!135600 m!1447545))

(declare-fun m!1447547 () Bool)

(assert (=> b!1574254 m!1447547))

(declare-fun m!1447549 () Bool)

(assert (=> b!1574255 m!1447549))

(push 1)

(assert (not start!135600))

(assert (not b!1574254))

(assert (not b!1574255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

