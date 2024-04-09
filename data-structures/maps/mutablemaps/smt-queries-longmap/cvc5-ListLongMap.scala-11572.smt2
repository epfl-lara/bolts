; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134862 () Bool)

(assert start!134862)

(declare-fun res!1073953 () Bool)

(declare-fun e!876383 () Bool)

(assert (=> start!134862 (=> (not res!1073953) (not e!876383))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134862 (= res!1073953 (validMask!0 mask!889))))

(assert (=> start!134862 e!876383))

(assert (=> start!134862 true))

(declare-datatypes ((array!104902 0))(
  ( (array!104903 (arr!50617 (Array (_ BitVec 32) (_ BitVec 64))) (size!51168 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104902)

(declare-fun array_inv!39262 (array!104902) Bool)

(assert (=> start!134862 (array_inv!39262 _keys!600)))

(declare-fun b!1571697 () Bool)

(declare-fun res!1073954 () Bool)

(assert (=> b!1571697 (=> (not res!1073954) (not e!876383))))

(assert (=> b!1571697 (= res!1073954 (= (size!51168 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571698 () Bool)

(declare-fun res!1073952 () Bool)

(assert (=> b!1571698 (=> (not res!1073952) (not e!876383))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571698 (= res!1073952 (validKeyInArray!0 k!754))))

(declare-fun b!1571699 () Bool)

(declare-datatypes ((SeekEntryResult!13546 0))(
  ( (MissingZero!13546 (index!56581 (_ BitVec 32))) (Found!13546 (index!56582 (_ BitVec 32))) (Intermediate!13546 (undefined!14358 Bool) (index!56583 (_ BitVec 32)) (x!141355 (_ BitVec 32))) (Undefined!13546) (MissingVacant!13546 (index!56584 (_ BitVec 32))) )
))
(declare-fun lt!673675 () SeekEntryResult!13546)

(assert (=> b!1571699 (= e!876383 (and (is-Intermediate!13546 lt!673675) (not (undefined!14358 lt!673675)) (not (= (select (arr!50617 _keys!600) (index!56583 lt!673675)) k!754)) (not (= (select (arr!50617 _keys!600) (index!56583 lt!673675)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50617 _keys!600) (index!56583 lt!673675)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56583 lt!673675) #b00000000000000000000000000000000) (bvslt (index!56583 lt!673675) (bvadd #b00000000000000000000000000000001 mask!889)) (bvslt mask!889 #b00000000000000000000000000000000)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104902 (_ BitVec 32)) SeekEntryResult!13546)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571699 (= lt!673675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134862 res!1073953) b!1571697))

(assert (= (and b!1571697 res!1073954) b!1571698))

(assert (= (and b!1571698 res!1073952) b!1571699))

(declare-fun m!1445623 () Bool)

(assert (=> start!134862 m!1445623))

(declare-fun m!1445625 () Bool)

(assert (=> start!134862 m!1445625))

(declare-fun m!1445627 () Bool)

(assert (=> b!1571698 m!1445627))

(declare-fun m!1445629 () Bool)

(assert (=> b!1571699 m!1445629))

(declare-fun m!1445631 () Bool)

(assert (=> b!1571699 m!1445631))

(assert (=> b!1571699 m!1445631))

(declare-fun m!1445633 () Bool)

(assert (=> b!1571699 m!1445633))

(push 1)

(assert (not b!1571698))

(assert (not start!134862))

(assert (not b!1571699))

