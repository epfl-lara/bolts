; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134928 () Bool)

(assert start!134928)

(declare-fun res!1074144 () Bool)

(declare-fun e!876536 () Bool)

(assert (=> start!134928 (=> (not res!1074144) (not e!876536))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134928 (= res!1074144 (validMask!0 mask!889))))

(assert (=> start!134928 e!876536))

(assert (=> start!134928 true))

(declare-datatypes ((array!104941 0))(
  ( (array!104942 (arr!50635 (Array (_ BitVec 32) (_ BitVec 64))) (size!51186 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104941)

(declare-fun array_inv!39280 (array!104941) Bool)

(assert (=> start!134928 (array_inv!39280 _keys!600)))

(declare-fun b!1571940 () Bool)

(declare-fun res!1074145 () Bool)

(assert (=> b!1571940 (=> (not res!1074145) (not e!876536))))

(assert (=> b!1571940 (= res!1074145 (= (size!51186 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571941 () Bool)

(declare-fun res!1074146 () Bool)

(assert (=> b!1571941 (=> (not res!1074146) (not e!876536))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571941 (= res!1074146 (validKeyInArray!0 k!754))))

(declare-fun b!1571942 () Bool)

(assert (=> b!1571942 (= e!876536 false)))

(declare-datatypes ((SeekEntryResult!13564 0))(
  ( (MissingZero!13564 (index!56653 (_ BitVec 32))) (Found!13564 (index!56654 (_ BitVec 32))) (Intermediate!13564 (undefined!14376 Bool) (index!56655 (_ BitVec 32)) (x!141427 (_ BitVec 32))) (Undefined!13564) (MissingVacant!13564 (index!56656 (_ BitVec 32))) )
))
(declare-fun lt!673765 () SeekEntryResult!13564)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104941 (_ BitVec 32)) SeekEntryResult!13564)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571942 (= lt!673765 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134928 res!1074144) b!1571940))

(assert (= (and b!1571940 res!1074145) b!1571941))

(assert (= (and b!1571941 res!1074146) b!1571942))

(declare-fun m!1445839 () Bool)

(assert (=> start!134928 m!1445839))

(declare-fun m!1445841 () Bool)

(assert (=> start!134928 m!1445841))

(declare-fun m!1445843 () Bool)

(assert (=> b!1571941 m!1445843))

(declare-fun m!1445845 () Bool)

(assert (=> b!1571942 m!1445845))

(assert (=> b!1571942 m!1445845))

(declare-fun m!1445847 () Bool)

(assert (=> b!1571942 m!1445847))

(push 1)

(assert (not b!1571942))

(assert (not start!134928))

(assert (not b!1571941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

