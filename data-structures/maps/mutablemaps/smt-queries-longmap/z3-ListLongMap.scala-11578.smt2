; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134930 () Bool)

(assert start!134930)

(declare-fun res!1074154 () Bool)

(declare-fun e!876542 () Bool)

(assert (=> start!134930 (=> (not res!1074154) (not e!876542))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134930 (= res!1074154 (validMask!0 mask!889))))

(assert (=> start!134930 e!876542))

(assert (=> start!134930 true))

(declare-datatypes ((array!104943 0))(
  ( (array!104944 (arr!50636 (Array (_ BitVec 32) (_ BitVec 64))) (size!51187 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104943)

(declare-fun array_inv!39281 (array!104943) Bool)

(assert (=> start!134930 (array_inv!39281 _keys!600)))

(declare-fun b!1571949 () Bool)

(declare-fun res!1074153 () Bool)

(assert (=> b!1571949 (=> (not res!1074153) (not e!876542))))

(assert (=> b!1571949 (= res!1074153 (= (size!51187 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571950 () Bool)

(declare-fun res!1074155 () Bool)

(assert (=> b!1571950 (=> (not res!1074155) (not e!876542))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571950 (= res!1074155 (validKeyInArray!0 k0!754))))

(declare-fun b!1571951 () Bool)

(assert (=> b!1571951 (= e!876542 false)))

(declare-datatypes ((SeekEntryResult!13565 0))(
  ( (MissingZero!13565 (index!56657 (_ BitVec 32))) (Found!13565 (index!56658 (_ BitVec 32))) (Intermediate!13565 (undefined!14377 Bool) (index!56659 (_ BitVec 32)) (x!141428 (_ BitVec 32))) (Undefined!13565) (MissingVacant!13565 (index!56660 (_ BitVec 32))) )
))
(declare-fun lt!673768 () SeekEntryResult!13565)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104943 (_ BitVec 32)) SeekEntryResult!13565)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571951 (= lt!673768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134930 res!1074154) b!1571949))

(assert (= (and b!1571949 res!1074153) b!1571950))

(assert (= (and b!1571950 res!1074155) b!1571951))

(declare-fun m!1445849 () Bool)

(assert (=> start!134930 m!1445849))

(declare-fun m!1445851 () Bool)

(assert (=> start!134930 m!1445851))

(declare-fun m!1445853 () Bool)

(assert (=> b!1571950 m!1445853))

(declare-fun m!1445855 () Bool)

(assert (=> b!1571951 m!1445855))

(assert (=> b!1571951 m!1445855))

(declare-fun m!1445857 () Bool)

(assert (=> b!1571951 m!1445857))

(check-sat (not b!1571951) (not start!134930) (not b!1571950))
(check-sat)
