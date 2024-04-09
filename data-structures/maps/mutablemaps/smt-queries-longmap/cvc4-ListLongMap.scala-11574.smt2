; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134878 () Bool)

(assert start!134878)

(declare-fun res!1074025 () Bool)

(declare-fun e!876431 () Bool)

(assert (=> start!134878 (=> (not res!1074025) (not e!876431))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134878 (= res!1074025 (validMask!0 mask!889))))

(assert (=> start!134878 e!876431))

(assert (=> start!134878 true))

(declare-datatypes ((array!104918 0))(
  ( (array!104919 (arr!50625 (Array (_ BitVec 32) (_ BitVec 64))) (size!51176 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104918)

(declare-fun array_inv!39270 (array!104918) Bool)

(assert (=> start!134878 (array_inv!39270 _keys!600)))

(declare-fun b!1571769 () Bool)

(declare-fun res!1074026 () Bool)

(assert (=> b!1571769 (=> (not res!1074026) (not e!876431))))

(assert (=> b!1571769 (= res!1074026 (= (size!51176 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571770 () Bool)

(declare-fun res!1074024 () Bool)

(assert (=> b!1571770 (=> (not res!1074024) (not e!876431))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571770 (= res!1074024 (validKeyInArray!0 k!754))))

(declare-fun b!1571771 () Bool)

(assert (=> b!1571771 (= e!876431 false)))

(declare-datatypes ((SeekEntryResult!13554 0))(
  ( (MissingZero!13554 (index!56613 (_ BitVec 32))) (Found!13554 (index!56614 (_ BitVec 32))) (Intermediate!13554 (undefined!14366 Bool) (index!56615 (_ BitVec 32)) (x!141379 (_ BitVec 32))) (Undefined!13554) (MissingVacant!13554 (index!56616 (_ BitVec 32))) )
))
(declare-fun lt!673699 () SeekEntryResult!13554)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104918 (_ BitVec 32)) SeekEntryResult!13554)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571771 (= lt!673699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134878 res!1074025) b!1571769))

(assert (= (and b!1571769 res!1074026) b!1571770))

(assert (= (and b!1571770 res!1074024) b!1571771))

(declare-fun m!1445709 () Bool)

(assert (=> start!134878 m!1445709))

(declare-fun m!1445711 () Bool)

(assert (=> start!134878 m!1445711))

(declare-fun m!1445713 () Bool)

(assert (=> b!1571770 m!1445713))

(declare-fun m!1445715 () Bool)

(assert (=> b!1571771 m!1445715))

(assert (=> b!1571771 m!1445715))

(declare-fun m!1445717 () Bool)

(assert (=> b!1571771 m!1445717))

(push 1)

(assert (not b!1571770))

(assert (not start!134878))

(assert (not b!1571771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

