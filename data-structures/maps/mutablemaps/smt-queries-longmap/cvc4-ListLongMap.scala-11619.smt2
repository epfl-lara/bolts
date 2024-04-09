; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135616 () Bool)

(assert start!135616)

(declare-fun res!1075756 () Bool)

(declare-fun e!878025 () Bool)

(assert (=> start!135616 (=> (not res!1075756) (not e!878025))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135616 (= res!1075756 (validMask!0 mask!898))))

(assert (=> start!135616 e!878025))

(assert (=> start!135616 true))

(declare-datatypes ((array!105236 0))(
  ( (array!105237 (arr!50760 (Array (_ BitVec 32) (_ BitVec 64))) (size!51311 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105236)

(declare-fun array_inv!39405 (array!105236) Bool)

(assert (=> start!135616 (array_inv!39405 _keys!605)))

(declare-fun b!1574325 () Bool)

(declare-fun res!1075757 () Bool)

(assert (=> b!1574325 (=> (not res!1075757) (not e!878025))))

(assert (=> b!1574325 (= res!1075757 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51311 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574326 () Bool)

(declare-fun res!1075755 () Bool)

(assert (=> b!1574326 (=> (not res!1075755) (not e!878025))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574326 (= res!1075755 (validKeyInArray!0 k!761))))

(declare-fun b!1574327 () Bool)

(assert (=> b!1574327 (= e!878025 false)))

(declare-fun lt!674725 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574327 (= lt!674725 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135616 res!1075756) b!1574325))

(assert (= (and b!1574325 res!1075757) b!1574326))

(assert (= (and b!1574326 res!1075755) b!1574327))

(declare-fun m!1447607 () Bool)

(assert (=> start!135616 m!1447607))

(declare-fun m!1447609 () Bool)

(assert (=> start!135616 m!1447609))

(declare-fun m!1447611 () Bool)

(assert (=> b!1574326 m!1447611))

(declare-fun m!1447613 () Bool)

(assert (=> b!1574327 m!1447613))

(push 1)

(assert (not b!1574326))

(assert (not b!1574327))

(assert (not start!135616))

(check-sat)

