; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134868 () Bool)

(assert start!134868)

(declare-fun res!1073979 () Bool)

(declare-fun e!876402 () Bool)

(assert (=> start!134868 (=> (not res!1073979) (not e!876402))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134868 (= res!1073979 (validMask!0 mask!889))))

(assert (=> start!134868 e!876402))

(assert (=> start!134868 true))

(declare-datatypes ((array!104908 0))(
  ( (array!104909 (arr!50620 (Array (_ BitVec 32) (_ BitVec 64))) (size!51171 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104908)

(declare-fun array_inv!39265 (array!104908) Bool)

(assert (=> start!134868 (array_inv!39265 _keys!600)))

(declare-fun b!1571724 () Bool)

(declare-fun res!1073981 () Bool)

(assert (=> b!1571724 (=> (not res!1073981) (not e!876402))))

(assert (=> b!1571724 (= res!1073981 (= (size!51171 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571725 () Bool)

(declare-fun res!1073980 () Bool)

(assert (=> b!1571725 (=> (not res!1073980) (not e!876402))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571725 (= res!1073980 (validKeyInArray!0 k!754))))

(declare-fun b!1571726 () Bool)

(assert (=> b!1571726 (= e!876402 false)))

(declare-datatypes ((SeekEntryResult!13549 0))(
  ( (MissingZero!13549 (index!56593 (_ BitVec 32))) (Found!13549 (index!56594 (_ BitVec 32))) (Intermediate!13549 (undefined!14361 Bool) (index!56595 (_ BitVec 32)) (x!141366 (_ BitVec 32))) (Undefined!13549) (MissingVacant!13549 (index!56596 (_ BitVec 32))) )
))
(declare-fun lt!673684 () SeekEntryResult!13549)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104908 (_ BitVec 32)) SeekEntryResult!13549)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571726 (= lt!673684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134868 res!1073979) b!1571724))

(assert (= (and b!1571724 res!1073981) b!1571725))

(assert (= (and b!1571725 res!1073980) b!1571726))

(declare-fun m!1445659 () Bool)

(assert (=> start!134868 m!1445659))

(declare-fun m!1445661 () Bool)

(assert (=> start!134868 m!1445661))

(declare-fun m!1445663 () Bool)

(assert (=> b!1571725 m!1445663))

(declare-fun m!1445665 () Bool)

(assert (=> b!1571726 m!1445665))

(assert (=> b!1571726 m!1445665))

(declare-fun m!1445667 () Bool)

(assert (=> b!1571726 m!1445667))

(push 1)

(assert (not b!1571725))

(assert (not b!1571726))

(assert (not start!134868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

