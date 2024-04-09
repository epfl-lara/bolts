; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134856 () Bool)

(assert start!134856)

(declare-fun res!1073926 () Bool)

(declare-fun e!876365 () Bool)

(assert (=> start!134856 (=> (not res!1073926) (not e!876365))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134856 (= res!1073926 (validMask!0 mask!889))))

(assert (=> start!134856 e!876365))

(assert (=> start!134856 true))

(declare-datatypes ((array!104896 0))(
  ( (array!104897 (arr!50614 (Array (_ BitVec 32) (_ BitVec 64))) (size!51165 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104896)

(declare-fun array_inv!39259 (array!104896) Bool)

(assert (=> start!134856 (array_inv!39259 _keys!600)))

(declare-fun b!1571670 () Bool)

(declare-fun res!1073925 () Bool)

(assert (=> b!1571670 (=> (not res!1073925) (not e!876365))))

(assert (=> b!1571670 (= res!1073925 (= (size!51165 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571671 () Bool)

(declare-fun res!1073927 () Bool)

(assert (=> b!1571671 (=> (not res!1073927) (not e!876365))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571671 (= res!1073927 (validKeyInArray!0 k!754))))

(declare-fun b!1571672 () Bool)

(assert (=> b!1571672 (= e!876365 false)))

(declare-datatypes ((SeekEntryResult!13543 0))(
  ( (MissingZero!13543 (index!56569 (_ BitVec 32))) (Found!13543 (index!56570 (_ BitVec 32))) (Intermediate!13543 (undefined!14355 Bool) (index!56571 (_ BitVec 32)) (x!141344 (_ BitVec 32))) (Undefined!13543) (MissingVacant!13543 (index!56572 (_ BitVec 32))) )
))
(declare-fun lt!673666 () SeekEntryResult!13543)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104896 (_ BitVec 32)) SeekEntryResult!13543)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571672 (= lt!673666 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134856 res!1073926) b!1571670))

(assert (= (and b!1571670 res!1073925) b!1571671))

(assert (= (and b!1571671 res!1073927) b!1571672))

(declare-fun m!1445593 () Bool)

(assert (=> start!134856 m!1445593))

(declare-fun m!1445595 () Bool)

(assert (=> start!134856 m!1445595))

(declare-fun m!1445597 () Bool)

(assert (=> b!1571671 m!1445597))

(declare-fun m!1445599 () Bool)

(assert (=> b!1571672 m!1445599))

(assert (=> b!1571672 m!1445599))

(declare-fun m!1445601 () Bool)

(assert (=> b!1571672 m!1445601))

(push 1)

(assert (not b!1571671))

(assert (not b!1571672))

(assert (not start!134856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

