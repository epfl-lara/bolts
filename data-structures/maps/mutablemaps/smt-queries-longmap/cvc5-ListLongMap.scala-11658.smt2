; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136374 () Bool)

(assert start!136374)

(declare-fun b!1576966 () Bool)

(declare-fun res!1077366 () Bool)

(declare-fun e!879614 () Bool)

(assert (=> b!1576966 (=> (not res!1077366) (not e!879614))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun k!768 () (_ BitVec 64))

(declare-datatypes ((array!105517 0))(
  ( (array!105518 (arr!50875 (Array (_ BitVec 32) (_ BitVec 64))) (size!51426 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105517)

(assert (=> b!1576966 (= res!1077366 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50875 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50875 _keys!610) ee!12) (select (arr!50875 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077367 () Bool)

(assert (=> start!136374 (=> (not res!1077367) (not e!879614))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136374 (= res!1077367 (validMask!0 mask!910))))

(assert (=> start!136374 e!879614))

(assert (=> start!136374 true))

(declare-fun array_inv!39520 (array!105517) Bool)

(assert (=> start!136374 (array_inv!39520 _keys!610)))

(declare-fun b!1576965 () Bool)

(declare-fun res!1077365 () Bool)

(assert (=> b!1576965 (=> (not res!1077365) (not e!879614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576965 (= res!1077365 (validKeyInArray!0 k!768))))

(declare-fun b!1576964 () Bool)

(declare-fun res!1077368 () Bool)

(assert (=> b!1576964 (=> (not res!1077368) (not e!879614))))

(assert (=> b!1576964 (= res!1077368 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51426 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1576967 () Bool)

(assert (=> b!1576967 (= e!879614 false)))

(declare-fun lt!675853 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576967 (= lt!675853 (nextIndex!0 ee!12 x!458 mask!910))))

(assert (= (and start!136374 res!1077367) b!1576964))

(assert (= (and b!1576964 res!1077368) b!1576965))

(assert (= (and b!1576965 res!1077365) b!1576966))

(assert (= (and b!1576966 res!1077366) b!1576967))

(declare-fun m!1449329 () Bool)

(assert (=> b!1576966 m!1449329))

(declare-fun m!1449331 () Bool)

(assert (=> start!136374 m!1449331))

(declare-fun m!1449333 () Bool)

(assert (=> start!136374 m!1449333))

(declare-fun m!1449335 () Bool)

(assert (=> b!1576965 m!1449335))

(declare-fun m!1449337 () Bool)

(assert (=> b!1576967 m!1449337))

(push 1)

(assert (not b!1576965))

(assert (not b!1576967))

(assert (not start!136374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

