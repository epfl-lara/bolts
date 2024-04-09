; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136368 () Bool)

(assert start!136368)

(declare-fun res!1077329 () Bool)

(declare-fun e!879596 () Bool)

(assert (=> start!136368 (=> (not res!1077329) (not e!879596))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136368 (= res!1077329 (validMask!0 mask!910))))

(assert (=> start!136368 e!879596))

(assert (=> start!136368 true))

(declare-datatypes ((array!105511 0))(
  ( (array!105512 (arr!50872 (Array (_ BitVec 32) (_ BitVec 64))) (size!51423 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105511)

(declare-fun array_inv!39517 (array!105511) Bool)

(assert (=> start!136368 (array_inv!39517 _keys!610)))

(declare-fun b!1576929 () Bool)

(declare-fun res!1077332 () Bool)

(assert (=> b!1576929 (=> (not res!1077332) (not e!879596))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576929 (= res!1077332 (validKeyInArray!0 k!768))))

(declare-fun b!1576931 () Bool)

(assert (=> b!1576931 (= e!879596 false)))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun lt!675844 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576931 (= lt!675844 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1576930 () Bool)

(declare-fun res!1077331 () Bool)

(assert (=> b!1576930 (=> (not res!1077331) (not e!879596))))

(assert (=> b!1576930 (= res!1077331 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50872 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50872 _keys!610) ee!12) (select (arr!50872 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1576928 () Bool)

(declare-fun res!1077330 () Bool)

(assert (=> b!1576928 (=> (not res!1077330) (not e!879596))))

(assert (=> b!1576928 (= res!1077330 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51423 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(assert (= (and start!136368 res!1077329) b!1576928))

(assert (= (and b!1576928 res!1077330) b!1576929))

(assert (= (and b!1576929 res!1077332) b!1576930))

(assert (= (and b!1576930 res!1077331) b!1576931))

(declare-fun m!1449299 () Bool)

(assert (=> start!136368 m!1449299))

(declare-fun m!1449301 () Bool)

(assert (=> start!136368 m!1449301))

(declare-fun m!1449303 () Bool)

(assert (=> b!1576929 m!1449303))

(declare-fun m!1449305 () Bool)

(assert (=> b!1576931 m!1449305))

(declare-fun m!1449307 () Bool)

(assert (=> b!1576930 m!1449307))

(push 1)

(assert (not b!1576929))

(assert (not start!136368))

(assert (not b!1576931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

