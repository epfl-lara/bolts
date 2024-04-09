; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134872 () Bool)

(assert start!134872)

(declare-fun res!1073997 () Bool)

(declare-fun e!876413 () Bool)

(assert (=> start!134872 (=> (not res!1073997) (not e!876413))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134872 (= res!1073997 (validMask!0 mask!889))))

(assert (=> start!134872 e!876413))

(assert (=> start!134872 true))

(declare-datatypes ((array!104912 0))(
  ( (array!104913 (arr!50622 (Array (_ BitVec 32) (_ BitVec 64))) (size!51173 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104912)

(declare-fun array_inv!39267 (array!104912) Bool)

(assert (=> start!134872 (array_inv!39267 _keys!600)))

(declare-fun b!1571742 () Bool)

(declare-fun res!1073998 () Bool)

(assert (=> b!1571742 (=> (not res!1073998) (not e!876413))))

(assert (=> b!1571742 (= res!1073998 (= (size!51173 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571743 () Bool)

(declare-fun res!1073999 () Bool)

(assert (=> b!1571743 (=> (not res!1073999) (not e!876413))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571743 (= res!1073999 (validKeyInArray!0 k!754))))

(declare-fun b!1571744 () Bool)

(assert (=> b!1571744 (= e!876413 false)))

(declare-datatypes ((SeekEntryResult!13551 0))(
  ( (MissingZero!13551 (index!56601 (_ BitVec 32))) (Found!13551 (index!56602 (_ BitVec 32))) (Intermediate!13551 (undefined!14363 Bool) (index!56603 (_ BitVec 32)) (x!141368 (_ BitVec 32))) (Undefined!13551) (MissingVacant!13551 (index!56604 (_ BitVec 32))) )
))
(declare-fun lt!673690 () SeekEntryResult!13551)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104912 (_ BitVec 32)) SeekEntryResult!13551)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571744 (= lt!673690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134872 res!1073997) b!1571742))

(assert (= (and b!1571742 res!1073998) b!1571743))

(assert (= (and b!1571743 res!1073999) b!1571744))

(declare-fun m!1445679 () Bool)

(assert (=> start!134872 m!1445679))

(declare-fun m!1445681 () Bool)

(assert (=> start!134872 m!1445681))

(declare-fun m!1445683 () Bool)

(assert (=> b!1571743 m!1445683))

(declare-fun m!1445685 () Bool)

(assert (=> b!1571744 m!1445685))

(assert (=> b!1571744 m!1445685))

(declare-fun m!1445687 () Bool)

(assert (=> b!1571744 m!1445687))

(push 1)

(assert (not b!1571743))

(assert (not b!1571744))

(assert (not start!134872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

