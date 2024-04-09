; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136456 () Bool)

(assert start!136456)

(declare-fun b!1577268 () Bool)

(declare-fun res!1077671 () Bool)

(declare-fun e!879789 () Bool)

(assert (=> b!1577268 (=> (not res!1077671) (not e!879789))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577268 (= res!1077671 (validKeyInArray!0 k!768))))

(declare-fun b!1577267 () Bool)

(declare-fun res!1077668 () Bool)

(assert (=> b!1577267 (=> (not res!1077668) (not e!879789))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-datatypes ((array!105578 0))(
  ( (array!105579 (arr!50904 (Array (_ BitVec 32) (_ BitVec 64))) (size!51455 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105578)

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1577267 (= res!1077668 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51455 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577270 () Bool)

(assert (=> b!1577270 (= e!879789 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!458)) (bvsub #b01111111111111111111111111111110 x!458)))))

(declare-fun lt!675904 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577270 (= lt!675904 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577269 () Bool)

(declare-fun res!1077670 () Bool)

(assert (=> b!1577269 (=> (not res!1077670) (not e!879789))))

(assert (=> b!1577269 (= res!1077670 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50904 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50904 _keys!610) ee!12) (select (arr!50904 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077669 () Bool)

(assert (=> start!136456 (=> (not res!1077669) (not e!879789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136456 (= res!1077669 (validMask!0 mask!910))))

(assert (=> start!136456 e!879789))

(assert (=> start!136456 true))

(declare-fun array_inv!39549 (array!105578) Bool)

(assert (=> start!136456 (array_inv!39549 _keys!610)))

(assert (= (and start!136456 res!1077669) b!1577267))

(assert (= (and b!1577267 res!1077668) b!1577268))

(assert (= (and b!1577268 res!1077671) b!1577269))

(assert (= (and b!1577269 res!1077670) b!1577270))

(declare-fun m!1449589 () Bool)

(assert (=> b!1577268 m!1449589))

(declare-fun m!1449591 () Bool)

(assert (=> b!1577270 m!1449591))

(declare-fun m!1449593 () Bool)

(assert (=> b!1577269 m!1449593))

(declare-fun m!1449595 () Bool)

(assert (=> start!136456 m!1449595))

(declare-fun m!1449597 () Bool)

(assert (=> start!136456 m!1449597))

(push 1)

(assert (not b!1577270))

(assert (not b!1577268))

(assert (not start!136456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

