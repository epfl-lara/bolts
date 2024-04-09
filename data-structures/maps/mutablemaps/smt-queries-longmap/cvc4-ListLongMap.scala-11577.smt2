; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134926 () Bool)

(assert start!134926)

(declare-fun res!1074136 () Bool)

(declare-fun e!876531 () Bool)

(assert (=> start!134926 (=> (not res!1074136) (not e!876531))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134926 (= res!1074136 (validMask!0 mask!889))))

(assert (=> start!134926 e!876531))

(assert (=> start!134926 true))

(declare-datatypes ((array!104939 0))(
  ( (array!104940 (arr!50634 (Array (_ BitVec 32) (_ BitVec 64))) (size!51185 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104939)

(declare-fun array_inv!39279 (array!104939) Bool)

(assert (=> start!134926 (array_inv!39279 _keys!600)))

(declare-fun b!1571931 () Bool)

(declare-fun res!1074137 () Bool)

(assert (=> b!1571931 (=> (not res!1074137) (not e!876531))))

(assert (=> b!1571931 (= res!1074137 (= (size!51185 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571932 () Bool)

(declare-fun res!1074135 () Bool)

(assert (=> b!1571932 (=> (not res!1074135) (not e!876531))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571932 (= res!1074135 (validKeyInArray!0 k!754))))

(declare-fun b!1571933 () Bool)

(assert (=> b!1571933 (= e!876531 false)))

(declare-datatypes ((SeekEntryResult!13563 0))(
  ( (MissingZero!13563 (index!56649 (_ BitVec 32))) (Found!13563 (index!56650 (_ BitVec 32))) (Intermediate!13563 (undefined!14375 Bool) (index!56651 (_ BitVec 32)) (x!141418 (_ BitVec 32))) (Undefined!13563) (MissingVacant!13563 (index!56652 (_ BitVec 32))) )
))
(declare-fun lt!673762 () SeekEntryResult!13563)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104939 (_ BitVec 32)) SeekEntryResult!13563)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571933 (= lt!673762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134926 res!1074136) b!1571931))

(assert (= (and b!1571931 res!1074137) b!1571932))

(assert (= (and b!1571932 res!1074135) b!1571933))

(declare-fun m!1445829 () Bool)

(assert (=> start!134926 m!1445829))

(declare-fun m!1445831 () Bool)

(assert (=> start!134926 m!1445831))

(declare-fun m!1445833 () Bool)

(assert (=> b!1571932 m!1445833))

(declare-fun m!1445835 () Bool)

(assert (=> b!1571933 m!1445835))

(assert (=> b!1571933 m!1445835))

(declare-fun m!1445837 () Bool)

(assert (=> b!1571933 m!1445837))

(push 1)

(assert (not b!1571933))

(assert (not start!134926))

(assert (not b!1571932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

