; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134922 () Bool)

(assert start!134922)

(declare-fun res!1074119 () Bool)

(declare-fun e!876519 () Bool)

(assert (=> start!134922 (=> (not res!1074119) (not e!876519))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134922 (= res!1074119 (validMask!0 mask!889))))

(assert (=> start!134922 e!876519))

(assert (=> start!134922 true))

(declare-datatypes ((array!104935 0))(
  ( (array!104936 (arr!50632 (Array (_ BitVec 32) (_ BitVec 64))) (size!51183 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104935)

(declare-fun array_inv!39277 (array!104935) Bool)

(assert (=> start!134922 (array_inv!39277 _keys!600)))

(declare-fun b!1571913 () Bool)

(declare-fun res!1074118 () Bool)

(assert (=> b!1571913 (=> (not res!1074118) (not e!876519))))

(assert (=> b!1571913 (= res!1074118 (= (size!51183 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571914 () Bool)

(declare-fun res!1074117 () Bool)

(assert (=> b!1571914 (=> (not res!1074117) (not e!876519))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571914 (= res!1074117 (validKeyInArray!0 k!754))))

(declare-fun b!1571915 () Bool)

(assert (=> b!1571915 (= e!876519 false)))

(declare-datatypes ((SeekEntryResult!13561 0))(
  ( (MissingZero!13561 (index!56641 (_ BitVec 32))) (Found!13561 (index!56642 (_ BitVec 32))) (Intermediate!13561 (undefined!14373 Bool) (index!56643 (_ BitVec 32)) (x!141416 (_ BitVec 32))) (Undefined!13561) (MissingVacant!13561 (index!56644 (_ BitVec 32))) )
))
(declare-fun lt!673756 () SeekEntryResult!13561)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104935 (_ BitVec 32)) SeekEntryResult!13561)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571915 (= lt!673756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134922 res!1074119) b!1571913))

(assert (= (and b!1571913 res!1074118) b!1571914))

(assert (= (and b!1571914 res!1074117) b!1571915))

(declare-fun m!1445809 () Bool)

(assert (=> start!134922 m!1445809))

(declare-fun m!1445811 () Bool)

(assert (=> start!134922 m!1445811))

(declare-fun m!1445813 () Bool)

(assert (=> b!1571914 m!1445813))

(declare-fun m!1445815 () Bool)

(assert (=> b!1571915 m!1445815))

(assert (=> b!1571915 m!1445815))

(declare-fun m!1445817 () Bool)

(assert (=> b!1571915 m!1445817))

(push 1)

(assert (not b!1571915))

(assert (not start!134922))

(assert (not b!1571914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

