; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135648 () Bool)

(assert start!135648)

(declare-fun res!1075796 () Bool)

(declare-fun e!878048 () Bool)

(assert (=> start!135648 (=> (not res!1075796) (not e!878048))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135648 (= res!1075796 (validMask!0 mask!898))))

(assert (=> start!135648 e!878048))

(assert (=> start!135648 true))

(declare-datatypes ((array!105247 0))(
  ( (array!105248 (arr!50764 (Array (_ BitVec 32) (_ BitVec 64))) (size!51315 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105247)

(declare-fun array_inv!39409 (array!105247) Bool)

(assert (=> start!135648 (array_inv!39409 _keys!605)))

(declare-fun b!1574361 () Bool)

(declare-fun res!1075795 () Bool)

(assert (=> b!1574361 (=> (not res!1075795) (not e!878048))))

(assert (=> b!1574361 (= res!1075795 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51315 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574362 () Bool)

(declare-fun res!1075794 () Bool)

(assert (=> b!1574362 (=> (not res!1075794) (not e!878048))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574362 (= res!1075794 (validKeyInArray!0 k!761))))

(declare-fun b!1574363 () Bool)

(assert (=> b!1574363 (= e!878048 false)))

(declare-fun lt!674755 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574363 (= lt!674755 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135648 res!1075796) b!1574361))

(assert (= (and b!1574361 res!1075795) b!1574362))

(assert (= (and b!1574362 res!1075794) b!1574363))

(declare-fun m!1447639 () Bool)

(assert (=> start!135648 m!1447639))

(declare-fun m!1447641 () Bool)

(assert (=> start!135648 m!1447641))

(declare-fun m!1447643 () Bool)

(assert (=> b!1574362 m!1447643))

(declare-fun m!1447645 () Bool)

(assert (=> b!1574363 m!1447645))

(push 1)

(assert (not b!1574363))

(assert (not start!135648))

(assert (not b!1574362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

