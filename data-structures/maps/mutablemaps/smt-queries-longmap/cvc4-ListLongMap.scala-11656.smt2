; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136366 () Bool)

(assert start!136366)

(declare-fun res!1077317 () Bool)

(declare-fun e!879590 () Bool)

(assert (=> start!136366 (=> (not res!1077317) (not e!879590))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136366 (= res!1077317 (validMask!0 mask!910))))

(assert (=> start!136366 e!879590))

(assert (=> start!136366 true))

(declare-datatypes ((array!105509 0))(
  ( (array!105510 (arr!50871 (Array (_ BitVec 32) (_ BitVec 64))) (size!51422 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105509)

(declare-fun array_inv!39516 (array!105509) Bool)

(assert (=> start!136366 (array_inv!39516 _keys!610)))

(declare-fun b!1576919 () Bool)

(assert (=> b!1576919 (= e!879590 false)))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun lt!675841 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576919 (= lt!675841 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1576917 () Bool)

(declare-fun res!1077318 () Bool)

(assert (=> b!1576917 (=> (not res!1077318) (not e!879590))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576917 (= res!1077318 (validKeyInArray!0 k!768))))

(declare-fun b!1576918 () Bool)

(declare-fun res!1077319 () Bool)

(assert (=> b!1576918 (=> (not res!1077319) (not e!879590))))

(assert (=> b!1576918 (= res!1077319 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50871 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50871 _keys!610) ee!12) (select (arr!50871 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1576916 () Bool)

(declare-fun res!1077320 () Bool)

(assert (=> b!1576916 (=> (not res!1077320) (not e!879590))))

(assert (=> b!1576916 (= res!1077320 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51422 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(assert (= (and start!136366 res!1077317) b!1576916))

(assert (= (and b!1576916 res!1077320) b!1576917))

(assert (= (and b!1576917 res!1077318) b!1576918))

(assert (= (and b!1576918 res!1077319) b!1576919))

(declare-fun m!1449289 () Bool)

(assert (=> start!136366 m!1449289))

(declare-fun m!1449291 () Bool)

(assert (=> start!136366 m!1449291))

(declare-fun m!1449293 () Bool)

(assert (=> b!1576919 m!1449293))

(declare-fun m!1449295 () Bool)

(assert (=> b!1576917 m!1449295))

(declare-fun m!1449297 () Bool)

(assert (=> b!1576918 m!1449297))

(push 1)

(assert (not b!1576919))

(assert (not start!136366))

(assert (not b!1576917))

(check-sat)

