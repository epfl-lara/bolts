; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135972 () Bool)

(assert start!135972)

(declare-fun res!1076622 () Bool)

(declare-fun e!878751 () Bool)

(assert (=> start!135972 (=> (not res!1076622) (not e!878751))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135972 (= res!1076622 (validMask!0 mask!898))))

(assert (=> start!135972 e!878751))

(assert (=> start!135972 true))

(declare-datatypes ((array!105409 0))(
  ( (array!105410 (arr!50836 (Array (_ BitVec 32) (_ BitVec 64))) (size!51387 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105409)

(declare-fun array_inv!39481 (array!105409) Bool)

(assert (=> start!135972 (array_inv!39481 _keys!605)))

(declare-fun b!1575495 () Bool)

(declare-fun res!1076624 () Bool)

(assert (=> b!1575495 (=> (not res!1076624) (not e!878751))))

(assert (=> b!1575495 (= res!1076624 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51387 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575496 () Bool)

(declare-fun res!1076623 () Bool)

(assert (=> b!1575496 (=> (not res!1076623) (not e!878751))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575496 (= res!1076623 (validKeyInArray!0 k!761))))

(declare-fun b!1575497 () Bool)

(assert (=> b!1575497 (= e!878751 false)))

(declare-datatypes ((SeekEntryResult!13717 0))(
  ( (MissingZero!13717 (index!57265 (_ BitVec 32))) (Found!13717 (index!57266 (_ BitVec 32))) (Intermediate!13717 (undefined!14529 Bool) (index!57267 (_ BitVec 32)) (x!142236 (_ BitVec 32))) (Undefined!13717) (MissingVacant!13717 (index!57268 (_ BitVec 32))) )
))
(declare-fun lt!675187 () SeekEntryResult!13717)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105409 (_ BitVec 32)) SeekEntryResult!13717)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575497 (= lt!675187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135972 res!1076622) b!1575495))

(assert (= (and b!1575495 res!1076624) b!1575496))

(assert (= (and b!1575496 res!1076623) b!1575497))

(declare-fun m!1448521 () Bool)

(assert (=> start!135972 m!1448521))

(declare-fun m!1448523 () Bool)

(assert (=> start!135972 m!1448523))

(declare-fun m!1448525 () Bool)

(assert (=> b!1575496 m!1448525))

(declare-fun m!1448527 () Bool)

(assert (=> b!1575497 m!1448527))

(assert (=> b!1575497 m!1448527))

(declare-fun m!1448529 () Bool)

(assert (=> b!1575497 m!1448529))

(push 1)

(assert (not start!135972))

(assert (not b!1575497))

(assert (not b!1575496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

