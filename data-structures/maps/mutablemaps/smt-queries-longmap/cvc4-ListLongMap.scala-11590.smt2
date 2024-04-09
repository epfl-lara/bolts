; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135124 () Bool)

(assert start!135124)

(declare-fun res!1074607 () Bool)

(declare-fun e!876944 () Bool)

(assert (=> start!135124 (=> (not res!1074607) (not e!876944))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135124 (= res!1074607 (validMask!0 mask!889))))

(assert (=> start!135124 e!876944))

(assert (=> start!135124 true))

(declare-datatypes ((array!105029 0))(
  ( (array!105030 (arr!50673 (Array (_ BitVec 32) (_ BitVec 64))) (size!51224 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105029)

(declare-fun array_inv!39318 (array!105029) Bool)

(assert (=> start!135124 (array_inv!39318 _keys!600)))

(declare-fun b!1572606 () Bool)

(declare-fun res!1074608 () Bool)

(assert (=> b!1572606 (=> (not res!1074608) (not e!876944))))

(assert (=> b!1572606 (= res!1074608 (= (size!51224 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572607 () Bool)

(declare-fun res!1074606 () Bool)

(assert (=> b!1572607 (=> (not res!1074606) (not e!876944))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572607 (= res!1074606 (validKeyInArray!0 k!754))))

(declare-fun b!1572608 () Bool)

(assert (=> b!1572608 (= e!876944 false)))

(declare-datatypes ((SeekEntryResult!13602 0))(
  ( (MissingZero!13602 (index!56805 (_ BitVec 32))) (Found!13602 (index!56806 (_ BitVec 32))) (Intermediate!13602 (undefined!14414 Bool) (index!56807 (_ BitVec 32)) (x!141585 (_ BitVec 32))) (Undefined!13602) (MissingVacant!13602 (index!56808 (_ BitVec 32))) )
))
(declare-fun lt!674023 () SeekEntryResult!13602)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105029 (_ BitVec 32)) SeekEntryResult!13602)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572608 (= lt!674023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135124 res!1074607) b!1572606))

(assert (= (and b!1572606 res!1074608) b!1572607))

(assert (= (and b!1572607 res!1074606) b!1572608))

(declare-fun m!1446333 () Bool)

(assert (=> start!135124 m!1446333))

(declare-fun m!1446335 () Bool)

(assert (=> start!135124 m!1446335))

(declare-fun m!1446337 () Bool)

(assert (=> b!1572607 m!1446337))

(declare-fun m!1446339 () Bool)

(assert (=> b!1572608 m!1446339))

(assert (=> b!1572608 m!1446339))

(declare-fun m!1446341 () Bool)

(assert (=> b!1572608 m!1446341))

(push 1)

(assert (not b!1572607))

(assert (not start!135124))

(assert (not b!1572608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

