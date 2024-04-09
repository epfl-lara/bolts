; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134924 () Bool)

(assert start!134924)

(declare-fun res!1074126 () Bool)

(declare-fun e!876524 () Bool)

(assert (=> start!134924 (=> (not res!1074126) (not e!876524))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134924 (= res!1074126 (validMask!0 mask!889))))

(assert (=> start!134924 e!876524))

(assert (=> start!134924 true))

(declare-datatypes ((array!104937 0))(
  ( (array!104938 (arr!50633 (Array (_ BitVec 32) (_ BitVec 64))) (size!51184 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104937)

(declare-fun array_inv!39278 (array!104937) Bool)

(assert (=> start!134924 (array_inv!39278 _keys!600)))

(declare-fun b!1571922 () Bool)

(declare-fun res!1074127 () Bool)

(assert (=> b!1571922 (=> (not res!1074127) (not e!876524))))

(assert (=> b!1571922 (= res!1074127 (= (size!51184 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571923 () Bool)

(declare-fun res!1074128 () Bool)

(assert (=> b!1571923 (=> (not res!1074128) (not e!876524))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571923 (= res!1074128 (validKeyInArray!0 k0!754))))

(declare-fun b!1571924 () Bool)

(assert (=> b!1571924 (= e!876524 false)))

(declare-datatypes ((SeekEntryResult!13562 0))(
  ( (MissingZero!13562 (index!56645 (_ BitVec 32))) (Found!13562 (index!56646 (_ BitVec 32))) (Intermediate!13562 (undefined!14374 Bool) (index!56647 (_ BitVec 32)) (x!141417 (_ BitVec 32))) (Undefined!13562) (MissingVacant!13562 (index!56648 (_ BitVec 32))) )
))
(declare-fun lt!673759 () SeekEntryResult!13562)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104937 (_ BitVec 32)) SeekEntryResult!13562)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571924 (= lt!673759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134924 res!1074126) b!1571922))

(assert (= (and b!1571922 res!1074127) b!1571923))

(assert (= (and b!1571923 res!1074128) b!1571924))

(declare-fun m!1445819 () Bool)

(assert (=> start!134924 m!1445819))

(declare-fun m!1445821 () Bool)

(assert (=> start!134924 m!1445821))

(declare-fun m!1445823 () Bool)

(assert (=> b!1571923 m!1445823))

(declare-fun m!1445825 () Bool)

(assert (=> b!1571924 m!1445825))

(assert (=> b!1571924 m!1445825))

(declare-fun m!1445827 () Bool)

(assert (=> b!1571924 m!1445827))

(check-sat (not b!1571924) (not start!134924) (not b!1571923))
(check-sat)
