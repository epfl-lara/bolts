; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135120 () Bool)

(assert start!135120)

(declare-fun res!1074589 () Bool)

(declare-fun e!876933 () Bool)

(assert (=> start!135120 (=> (not res!1074589) (not e!876933))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135120 (= res!1074589 (validMask!0 mask!889))))

(assert (=> start!135120 e!876933))

(assert (=> start!135120 true))

(declare-datatypes ((array!105025 0))(
  ( (array!105026 (arr!50671 (Array (_ BitVec 32) (_ BitVec 64))) (size!51222 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105025)

(declare-fun array_inv!39316 (array!105025) Bool)

(assert (=> start!135120 (array_inv!39316 _keys!600)))

(declare-fun b!1572588 () Bool)

(declare-fun res!1074588 () Bool)

(assert (=> b!1572588 (=> (not res!1074588) (not e!876933))))

(assert (=> b!1572588 (= res!1074588 (= (size!51222 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572589 () Bool)

(declare-fun res!1074590 () Bool)

(assert (=> b!1572589 (=> (not res!1074590) (not e!876933))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572589 (= res!1074590 (validKeyInArray!0 k!754))))

(declare-fun b!1572590 () Bool)

(assert (=> b!1572590 (= e!876933 false)))

(declare-datatypes ((SeekEntryResult!13600 0))(
  ( (MissingZero!13600 (index!56797 (_ BitVec 32))) (Found!13600 (index!56798 (_ BitVec 32))) (Intermediate!13600 (undefined!14412 Bool) (index!56799 (_ BitVec 32)) (x!141583 (_ BitVec 32))) (Undefined!13600) (MissingVacant!13600 (index!56800 (_ BitVec 32))) )
))
(declare-fun lt!674017 () SeekEntryResult!13600)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105025 (_ BitVec 32)) SeekEntryResult!13600)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572590 (= lt!674017 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135120 res!1074589) b!1572588))

(assert (= (and b!1572588 res!1074588) b!1572589))

(assert (= (and b!1572589 res!1074590) b!1572590))

(declare-fun m!1446313 () Bool)

(assert (=> start!135120 m!1446313))

(declare-fun m!1446315 () Bool)

(assert (=> start!135120 m!1446315))

(declare-fun m!1446317 () Bool)

(assert (=> b!1572589 m!1446317))

(declare-fun m!1446319 () Bool)

(assert (=> b!1572590 m!1446319))

(assert (=> b!1572590 m!1446319))

(declare-fun m!1446321 () Bool)

(assert (=> b!1572590 m!1446321))

(push 1)

(assert (not b!1572589))

(assert (not start!135120))

(assert (not b!1572590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

