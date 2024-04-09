; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135604 () Bool)

(assert start!135604)

(declare-fun res!1075702 () Bool)

(declare-fun e!877988 () Bool)

(assert (=> start!135604 (=> (not res!1075702) (not e!877988))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135604 (= res!1075702 (validMask!0 mask!898))))

(assert (=> start!135604 e!877988))

(assert (=> start!135604 true))

(declare-datatypes ((array!105224 0))(
  ( (array!105225 (arr!50754 (Array (_ BitVec 32) (_ BitVec 64))) (size!51305 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105224)

(declare-fun array_inv!39399 (array!105224) Bool)

(assert (=> start!135604 (array_inv!39399 _keys!605)))

(declare-fun b!1574271 () Bool)

(declare-fun res!1075703 () Bool)

(assert (=> b!1574271 (=> (not res!1075703) (not e!877988))))

(assert (=> b!1574271 (= res!1075703 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51305 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574272 () Bool)

(declare-fun res!1075701 () Bool)

(assert (=> b!1574272 (=> (not res!1075701) (not e!877988))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574272 (= res!1075701 (validKeyInArray!0 k!761))))

(declare-fun b!1574273 () Bool)

(assert (=> b!1574273 (= e!877988 false)))

(declare-fun lt!674707 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574273 (= lt!674707 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135604 res!1075702) b!1574271))

(assert (= (and b!1574271 res!1075703) b!1574272))

(assert (= (and b!1574272 res!1075701) b!1574273))

(declare-fun m!1447559 () Bool)

(assert (=> start!135604 m!1447559))

(declare-fun m!1447561 () Bool)

(assert (=> start!135604 m!1447561))

(declare-fun m!1447563 () Bool)

(assert (=> b!1574272 m!1447563))

(declare-fun m!1447565 () Bool)

(assert (=> b!1574273 m!1447565))

(push 1)

(assert (not b!1574273))

(assert (not start!135604))

(assert (not b!1574272))

(check-sat)

