; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134916 () Bool)

(assert start!134916)

(declare-fun res!1074090 () Bool)

(declare-fun e!876500 () Bool)

(assert (=> start!134916 (=> (not res!1074090) (not e!876500))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134916 (= res!1074090 (validMask!0 mask!889))))

(assert (=> start!134916 e!876500))

(assert (=> start!134916 true))

(declare-datatypes ((array!104929 0))(
  ( (array!104930 (arr!50629 (Array (_ BitVec 32) (_ BitVec 64))) (size!51180 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104929)

(declare-fun array_inv!39274 (array!104929) Bool)

(assert (=> start!134916 (array_inv!39274 _keys!600)))

(declare-fun b!1571886 () Bool)

(declare-fun res!1074092 () Bool)

(assert (=> b!1571886 (=> (not res!1074092) (not e!876500))))

(assert (=> b!1571886 (= res!1074092 (= (size!51180 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571887 () Bool)

(declare-fun res!1074091 () Bool)

(assert (=> b!1571887 (=> (not res!1074091) (not e!876500))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571887 (= res!1074091 (validKeyInArray!0 k!754))))

(declare-fun b!1571888 () Bool)

(assert (=> b!1571888 (= e!876500 false)))

(declare-datatypes ((SeekEntryResult!13558 0))(
  ( (MissingZero!13558 (index!56629 (_ BitVec 32))) (Found!13558 (index!56630 (_ BitVec 32))) (Intermediate!13558 (undefined!14370 Bool) (index!56631 (_ BitVec 32)) (x!141405 (_ BitVec 32))) (Undefined!13558) (MissingVacant!13558 (index!56632 (_ BitVec 32))) )
))
(declare-fun lt!673747 () SeekEntryResult!13558)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104929 (_ BitVec 32)) SeekEntryResult!13558)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571888 (= lt!673747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134916 res!1074090) b!1571886))

(assert (= (and b!1571886 res!1074092) b!1571887))

(assert (= (and b!1571887 res!1074091) b!1571888))

(declare-fun m!1445779 () Bool)

(assert (=> start!134916 m!1445779))

(declare-fun m!1445781 () Bool)

(assert (=> start!134916 m!1445781))

(declare-fun m!1445783 () Bool)

(assert (=> b!1571887 m!1445783))

(declare-fun m!1445785 () Bool)

(assert (=> b!1571888 m!1445785))

(assert (=> b!1571888 m!1445785))

(declare-fun m!1445787 () Bool)

(assert (=> b!1571888 m!1445787))

(push 1)

(assert (not start!134916))

(assert (not b!1571888))

(assert (not b!1571887))

(check-sat)

(pop 1)

