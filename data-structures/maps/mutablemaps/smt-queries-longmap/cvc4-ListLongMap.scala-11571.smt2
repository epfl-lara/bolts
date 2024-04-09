; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134860 () Bool)

(assert start!134860)

(declare-fun res!1073943 () Bool)

(declare-fun e!876377 () Bool)

(assert (=> start!134860 (=> (not res!1073943) (not e!876377))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134860 (= res!1073943 (validMask!0 mask!889))))

(assert (=> start!134860 e!876377))

(assert (=> start!134860 true))

(declare-datatypes ((array!104900 0))(
  ( (array!104901 (arr!50616 (Array (_ BitVec 32) (_ BitVec 64))) (size!51167 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104900)

(declare-fun array_inv!39261 (array!104900) Bool)

(assert (=> start!134860 (array_inv!39261 _keys!600)))

(declare-fun b!1571688 () Bool)

(declare-fun res!1073944 () Bool)

(assert (=> b!1571688 (=> (not res!1073944) (not e!876377))))

(assert (=> b!1571688 (= res!1073944 (= (size!51167 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571689 () Bool)

(declare-fun res!1073945 () Bool)

(assert (=> b!1571689 (=> (not res!1073945) (not e!876377))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571689 (= res!1073945 (validKeyInArray!0 k!754))))

(declare-fun b!1571690 () Bool)

(assert (=> b!1571690 (= e!876377 false)))

(declare-datatypes ((SeekEntryResult!13545 0))(
  ( (MissingZero!13545 (index!56577 (_ BitVec 32))) (Found!13545 (index!56578 (_ BitVec 32))) (Intermediate!13545 (undefined!14357 Bool) (index!56579 (_ BitVec 32)) (x!141346 (_ BitVec 32))) (Undefined!13545) (MissingVacant!13545 (index!56580 (_ BitVec 32))) )
))
(declare-fun lt!673672 () SeekEntryResult!13545)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104900 (_ BitVec 32)) SeekEntryResult!13545)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571690 (= lt!673672 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134860 res!1073943) b!1571688))

(assert (= (and b!1571688 res!1073944) b!1571689))

(assert (= (and b!1571689 res!1073945) b!1571690))

(declare-fun m!1445613 () Bool)

(assert (=> start!134860 m!1445613))

(declare-fun m!1445615 () Bool)

(assert (=> start!134860 m!1445615))

(declare-fun m!1445617 () Bool)

(assert (=> b!1571689 m!1445617))

(declare-fun m!1445619 () Bool)

(assert (=> b!1571690 m!1445619))

(assert (=> b!1571690 m!1445619))

(declare-fun m!1445621 () Bool)

(assert (=> b!1571690 m!1445621))

(push 1)

(assert (not b!1571689))

(assert (not b!1571690))

(assert (not start!134860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

