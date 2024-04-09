; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136422 () Bool)

(assert start!136422)

(declare-fun res!1077507 () Bool)

(declare-fun e!879687 () Bool)

(assert (=> start!136422 (=> (not res!1077507) (not e!879687))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136422 (= res!1077507 (validMask!0 mask!910))))

(assert (=> start!136422 e!879687))

(assert (=> start!136422 true))

(declare-datatypes ((array!105544 0))(
  ( (array!105545 (arr!50887 (Array (_ BitVec 32) (_ BitVec 64))) (size!51438 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105544)

(declare-fun array_inv!39532 (array!105544) Bool)

(assert (=> start!136422 (array_inv!39532 _keys!610)))

(declare-fun b!1577106 () Bool)

(declare-fun res!1077509 () Bool)

(assert (=> b!1577106 (=> (not res!1077509) (not e!879687))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577106 (= res!1077509 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51438 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577107 () Bool)

(declare-fun res!1077508 () Bool)

(assert (=> b!1577107 (=> (not res!1077508) (not e!879687))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577107 (= res!1077508 (validKeyInArray!0 k!768))))

(declare-fun b!1577108 () Bool)

(assert (=> b!1577108 (= e!879687 (bvsge ee!12 (size!51438 _keys!610)))))

(assert (= (and start!136422 res!1077507) b!1577106))

(assert (= (and b!1577106 res!1077509) b!1577107))

(assert (= (and b!1577107 res!1077508) b!1577108))

(declare-fun m!1449455 () Bool)

(assert (=> start!136422 m!1449455))

(declare-fun m!1449457 () Bool)

(assert (=> start!136422 m!1449457))

(declare-fun m!1449459 () Bool)

(assert (=> b!1577107 m!1449459))

(push 1)

(assert (not b!1577107))

(assert (not start!136422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

