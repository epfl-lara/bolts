; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134854 () Bool)

(assert start!134854)

(declare-fun res!1073918 () Bool)

(declare-fun e!876360 () Bool)

(assert (=> start!134854 (=> (not res!1073918) (not e!876360))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134854 (= res!1073918 (validMask!0 mask!889))))

(assert (=> start!134854 e!876360))

(assert (=> start!134854 true))

(declare-datatypes ((array!104894 0))(
  ( (array!104895 (arr!50613 (Array (_ BitVec 32) (_ BitVec 64))) (size!51164 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104894)

(declare-fun array_inv!39258 (array!104894) Bool)

(assert (=> start!134854 (array_inv!39258 _keys!600)))

(declare-fun b!1571661 () Bool)

(declare-fun res!1073917 () Bool)

(assert (=> b!1571661 (=> (not res!1073917) (not e!876360))))

(assert (=> b!1571661 (= res!1073917 (= (size!51164 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571662 () Bool)

(declare-fun res!1073916 () Bool)

(assert (=> b!1571662 (=> (not res!1073916) (not e!876360))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571662 (= res!1073916 (validKeyInArray!0 k!754))))

(declare-fun b!1571663 () Bool)

(assert (=> b!1571663 (= e!876360 false)))

(declare-fun lt!673663 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571663 (= lt!673663 (toIndex!0 k!754 mask!889))))

(assert (= (and start!134854 res!1073918) b!1571661))

(assert (= (and b!1571661 res!1073917) b!1571662))

(assert (= (and b!1571662 res!1073916) b!1571663))

(declare-fun m!1445585 () Bool)

(assert (=> start!134854 m!1445585))

(declare-fun m!1445587 () Bool)

(assert (=> start!134854 m!1445587))

(declare-fun m!1445589 () Bool)

(assert (=> b!1571662 m!1445589))

(declare-fun m!1445591 () Bool)

(assert (=> b!1571663 m!1445591))

(push 1)

(assert (not b!1571662))

(assert (not start!134854))

(assert (not b!1571663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

