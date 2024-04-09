; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136446 () Bool)

(assert start!136446)

(declare-fun res!1077615 () Bool)

(declare-fun e!879759 () Bool)

(assert (=> start!136446 (=> (not res!1077615) (not e!879759))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136446 (= res!1077615 (validMask!0 mask!910))))

(assert (=> start!136446 e!879759))

(assert (=> start!136446 true))

(declare-datatypes ((array!105568 0))(
  ( (array!105569 (arr!50899 (Array (_ BitVec 32) (_ BitVec 64))) (size!51450 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105568)

(declare-fun array_inv!39544 (array!105568) Bool)

(assert (=> start!136446 (array_inv!39544 _keys!610)))

(declare-fun b!1577214 () Bool)

(declare-fun res!1077617 () Bool)

(assert (=> b!1577214 (=> (not res!1077617) (not e!879759))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577214 (= res!1077617 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51450 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577215 () Bool)

(declare-fun res!1077616 () Bool)

(assert (=> b!1577215 (=> (not res!1077616) (not e!879759))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577215 (= res!1077616 (validKeyInArray!0 k!768))))

(declare-fun b!1577216 () Bool)

(assert (=> b!1577216 (= e!879759 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50899 _keys!610) ee!12) k!768) (= (bvadd (select (arr!50899 _keys!610) ee!12) (select (arr!50899 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50899 _keys!610) ee!12) k!768)) (not (= (select (arr!50899 _keys!610) ee!12) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50899 _keys!610) ee!12) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136446 res!1077615) b!1577214))

(assert (= (and b!1577214 res!1077617) b!1577215))

(assert (= (and b!1577215 res!1077616) b!1577216))

(declare-fun m!1449545 () Bool)

(assert (=> start!136446 m!1449545))

(declare-fun m!1449547 () Bool)

(assert (=> start!136446 m!1449547))

(declare-fun m!1449549 () Bool)

(assert (=> b!1577215 m!1449549))

(declare-fun m!1449551 () Bool)

(assert (=> b!1577216 m!1449551))

(push 1)

(assert (not start!136446))

(assert (not b!1577215))

(check-sat)

(pop 1)

(push 1)

(check-sat)

