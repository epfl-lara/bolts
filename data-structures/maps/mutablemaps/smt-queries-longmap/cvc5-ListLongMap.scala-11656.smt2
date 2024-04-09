; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136362 () Bool)

(assert start!136362)

(declare-fun b!1576892 () Bool)

(declare-fun res!1077295 () Bool)

(declare-fun e!879579 () Bool)

(assert (=> b!1576892 (=> (not res!1077295) (not e!879579))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-datatypes ((array!105505 0))(
  ( (array!105506 (arr!50869 (Array (_ BitVec 32) (_ BitVec 64))) (size!51420 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105505)

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1576892 (= res!1077295 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51420 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1576894 () Bool)

(declare-fun res!1077293 () Bool)

(assert (=> b!1576894 (=> (not res!1077293) (not e!879579))))

(declare-fun k!768 () (_ BitVec 64))

(assert (=> b!1576894 (= res!1077293 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50869 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50869 _keys!610) ee!12) (select (arr!50869 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1576895 () Bool)

(assert (=> b!1576895 (= e!879579 false)))

(declare-fun lt!675835 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576895 (= lt!675835 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1576893 () Bool)

(declare-fun res!1077296 () Bool)

(assert (=> b!1576893 (=> (not res!1077296) (not e!879579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576893 (= res!1077296 (validKeyInArray!0 k!768))))

(declare-fun res!1077294 () Bool)

(assert (=> start!136362 (=> (not res!1077294) (not e!879579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136362 (= res!1077294 (validMask!0 mask!910))))

(assert (=> start!136362 e!879579))

(assert (=> start!136362 true))

(declare-fun array_inv!39514 (array!105505) Bool)

(assert (=> start!136362 (array_inv!39514 _keys!610)))

(assert (= (and start!136362 res!1077294) b!1576892))

(assert (= (and b!1576892 res!1077295) b!1576893))

(assert (= (and b!1576893 res!1077296) b!1576894))

(assert (= (and b!1576894 res!1077293) b!1576895))

(declare-fun m!1449269 () Bool)

(assert (=> b!1576894 m!1449269))

(declare-fun m!1449271 () Bool)

(assert (=> b!1576895 m!1449271))

(declare-fun m!1449273 () Bool)

(assert (=> b!1576893 m!1449273))

(declare-fun m!1449275 () Bool)

(assert (=> start!136362 m!1449275))

(declare-fun m!1449277 () Bool)

(assert (=> start!136362 m!1449277))

(push 1)

(assert (not b!1576895))

(assert (not start!136362))

(assert (not b!1576893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

