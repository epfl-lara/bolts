; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135096 () Bool)

(assert start!135096)

(declare-fun res!1074482 () Bool)

(declare-fun e!876860 () Bool)

(assert (=> start!135096 (=> (not res!1074482) (not e!876860))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135096 (= res!1074482 (validMask!0 mask!889))))

(assert (=> start!135096 e!876860))

(assert (=> start!135096 true))

(declare-datatypes ((array!105001 0))(
  ( (array!105002 (arr!50659 (Array (_ BitVec 32) (_ BitVec 64))) (size!51210 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105001)

(declare-fun array_inv!39304 (array!105001) Bool)

(assert (=> start!135096 (array_inv!39304 _keys!600)))

(declare-fun b!1572480 () Bool)

(declare-fun res!1074480 () Bool)

(assert (=> b!1572480 (=> (not res!1074480) (not e!876860))))

(assert (=> b!1572480 (= res!1074480 (= (size!51210 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572481 () Bool)

(declare-fun res!1074481 () Bool)

(assert (=> b!1572481 (=> (not res!1074481) (not e!876860))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572481 (= res!1074481 (validKeyInArray!0 k!754))))

(declare-fun b!1572482 () Bool)

(assert (=> b!1572482 (= e!876860 false)))

(declare-datatypes ((SeekEntryResult!13588 0))(
  ( (MissingZero!13588 (index!56749 (_ BitVec 32))) (Found!13588 (index!56750 (_ BitVec 32))) (Intermediate!13588 (undefined!14400 Bool) (index!56751 (_ BitVec 32)) (x!141539 (_ BitVec 32))) (Undefined!13588) (MissingVacant!13588 (index!56752 (_ BitVec 32))) )
))
(declare-fun lt!673981 () SeekEntryResult!13588)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105001 (_ BitVec 32)) SeekEntryResult!13588)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572482 (= lt!673981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135096 res!1074482) b!1572480))

(assert (= (and b!1572480 res!1074480) b!1572481))

(assert (= (and b!1572481 res!1074481) b!1572482))

(declare-fun m!1446193 () Bool)

(assert (=> start!135096 m!1446193))

(declare-fun m!1446195 () Bool)

(assert (=> start!135096 m!1446195))

(declare-fun m!1446197 () Bool)

(assert (=> b!1572481 m!1446197))

(declare-fun m!1446199 () Bool)

(assert (=> b!1572482 m!1446199))

(assert (=> b!1572482 m!1446199))

(declare-fun m!1446201 () Bool)

(assert (=> b!1572482 m!1446201))

(push 1)

(assert (not b!1572482))

(assert (not start!135096))

(assert (not b!1572481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

