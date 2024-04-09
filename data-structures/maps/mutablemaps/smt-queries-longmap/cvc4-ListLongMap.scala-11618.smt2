; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135610 () Bool)

(assert start!135610)

(declare-fun res!1075729 () Bool)

(declare-fun e!878006 () Bool)

(assert (=> start!135610 (=> (not res!1075729) (not e!878006))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135610 (= res!1075729 (validMask!0 mask!898))))

(assert (=> start!135610 e!878006))

(assert (=> start!135610 true))

(declare-datatypes ((array!105230 0))(
  ( (array!105231 (arr!50757 (Array (_ BitVec 32) (_ BitVec 64))) (size!51308 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105230)

(declare-fun array_inv!39402 (array!105230) Bool)

(assert (=> start!135610 (array_inv!39402 _keys!605)))

(declare-fun b!1574298 () Bool)

(declare-fun res!1075728 () Bool)

(assert (=> b!1574298 (=> (not res!1075728) (not e!878006))))

(assert (=> b!1574298 (= res!1075728 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51308 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574299 () Bool)

(declare-fun res!1075730 () Bool)

(assert (=> b!1574299 (=> (not res!1075730) (not e!878006))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574299 (= res!1075730 (validKeyInArray!0 k!761))))

(declare-fun b!1574300 () Bool)

(assert (=> b!1574300 (= e!878006 false)))

(declare-fun lt!674716 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574300 (= lt!674716 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135610 res!1075729) b!1574298))

(assert (= (and b!1574298 res!1075728) b!1574299))

(assert (= (and b!1574299 res!1075730) b!1574300))

(declare-fun m!1447583 () Bool)

(assert (=> start!135610 m!1447583))

(declare-fun m!1447585 () Bool)

(assert (=> start!135610 m!1447585))

(declare-fun m!1447587 () Bool)

(assert (=> b!1574299 m!1447587))

(declare-fun m!1447589 () Bool)

(assert (=> b!1574300 m!1447589))

(push 1)

(assert (not b!1574300))

(assert (not start!135610))

(assert (not b!1574299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

