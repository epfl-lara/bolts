; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136426 () Bool)

(assert start!136426)

(declare-fun res!1077526 () Bool)

(declare-fun e!879699 () Bool)

(assert (=> start!136426 (=> (not res!1077526) (not e!879699))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136426 (= res!1077526 (validMask!0 mask!910))))

(assert (=> start!136426 e!879699))

(assert (=> start!136426 true))

(declare-datatypes ((array!105548 0))(
  ( (array!105549 (arr!50889 (Array (_ BitVec 32) (_ BitVec 64))) (size!51440 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105548)

(declare-fun array_inv!39534 (array!105548) Bool)

(assert (=> start!136426 (array_inv!39534 _keys!610)))

(declare-fun b!1577124 () Bool)

(declare-fun res!1077527 () Bool)

(assert (=> b!1577124 (=> (not res!1077527) (not e!879699))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577124 (= res!1077527 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51440 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577125 () Bool)

(declare-fun res!1077525 () Bool)

(assert (=> b!1577125 (=> (not res!1077525) (not e!879699))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577125 (= res!1077525 (validKeyInArray!0 k!768))))

(declare-fun b!1577126 () Bool)

(assert (=> b!1577126 (= e!879699 (bvsge ee!12 (size!51440 _keys!610)))))

(assert (= (and start!136426 res!1077526) b!1577124))

(assert (= (and b!1577124 res!1077527) b!1577125))

(assert (= (and b!1577125 res!1077525) b!1577126))

(declare-fun m!1449467 () Bool)

(assert (=> start!136426 m!1449467))

(declare-fun m!1449469 () Bool)

(assert (=> start!136426 m!1449469))

(declare-fun m!1449471 () Bool)

(assert (=> b!1577125 m!1449471))

(push 1)

(assert (not b!1577125))

(assert (not start!136426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

