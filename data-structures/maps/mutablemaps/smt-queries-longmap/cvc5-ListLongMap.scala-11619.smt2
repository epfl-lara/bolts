; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135612 () Bool)

(assert start!135612)

(declare-fun res!1075737 () Bool)

(declare-fun e!878013 () Bool)

(assert (=> start!135612 (=> (not res!1075737) (not e!878013))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135612 (= res!1075737 (validMask!0 mask!898))))

(assert (=> start!135612 e!878013))

(assert (=> start!135612 true))

(declare-datatypes ((array!105232 0))(
  ( (array!105233 (arr!50758 (Array (_ BitVec 32) (_ BitVec 64))) (size!51309 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105232)

(declare-fun array_inv!39403 (array!105232) Bool)

(assert (=> start!135612 (array_inv!39403 _keys!605)))

(declare-fun b!1574307 () Bool)

(declare-fun res!1075738 () Bool)

(assert (=> b!1574307 (=> (not res!1075738) (not e!878013))))

(assert (=> b!1574307 (= res!1075738 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51309 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574308 () Bool)

(declare-fun res!1075739 () Bool)

(assert (=> b!1574308 (=> (not res!1075739) (not e!878013))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574308 (= res!1075739 (validKeyInArray!0 k!761))))

(declare-fun b!1574309 () Bool)

(assert (=> b!1574309 (= e!878013 false)))

(declare-fun lt!674719 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574309 (= lt!674719 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135612 res!1075737) b!1574307))

(assert (= (and b!1574307 res!1075738) b!1574308))

(assert (= (and b!1574308 res!1075739) b!1574309))

(declare-fun m!1447591 () Bool)

(assert (=> start!135612 m!1447591))

(declare-fun m!1447593 () Bool)

(assert (=> start!135612 m!1447593))

(declare-fun m!1447595 () Bool)

(assert (=> b!1574308 m!1447595))

(declare-fun m!1447597 () Bool)

(assert (=> b!1574309 m!1447597))

(push 1)

(assert (not b!1574309))

(assert (not start!135612))

(assert (not b!1574308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

