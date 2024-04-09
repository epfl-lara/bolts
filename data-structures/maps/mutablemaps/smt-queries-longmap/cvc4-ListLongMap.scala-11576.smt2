; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134920 () Bool)

(assert start!134920)

(declare-fun res!1074109 () Bool)

(declare-fun e!876512 () Bool)

(assert (=> start!134920 (=> (not res!1074109) (not e!876512))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134920 (= res!1074109 (validMask!0 mask!889))))

(assert (=> start!134920 e!876512))

(assert (=> start!134920 true))

(declare-datatypes ((array!104933 0))(
  ( (array!104934 (arr!50631 (Array (_ BitVec 32) (_ BitVec 64))) (size!51182 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104933)

(declare-fun array_inv!39276 (array!104933) Bool)

(assert (=> start!134920 (array_inv!39276 _keys!600)))

(declare-fun b!1571904 () Bool)

(declare-fun res!1074108 () Bool)

(assert (=> b!1571904 (=> (not res!1074108) (not e!876512))))

(assert (=> b!1571904 (= res!1074108 (= (size!51182 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571905 () Bool)

(declare-fun res!1074110 () Bool)

(assert (=> b!1571905 (=> (not res!1074110) (not e!876512))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571905 (= res!1074110 (validKeyInArray!0 k!754))))

(declare-fun b!1571906 () Bool)

(assert (=> b!1571906 (= e!876512 false)))

(declare-datatypes ((SeekEntryResult!13560 0))(
  ( (MissingZero!13560 (index!56637 (_ BitVec 32))) (Found!13560 (index!56638 (_ BitVec 32))) (Intermediate!13560 (undefined!14372 Bool) (index!56639 (_ BitVec 32)) (x!141407 (_ BitVec 32))) (Undefined!13560) (MissingVacant!13560 (index!56640 (_ BitVec 32))) )
))
(declare-fun lt!673753 () SeekEntryResult!13560)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104933 (_ BitVec 32)) SeekEntryResult!13560)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571906 (= lt!673753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134920 res!1074109) b!1571904))

(assert (= (and b!1571904 res!1074108) b!1571905))

(assert (= (and b!1571905 res!1074110) b!1571906))

(declare-fun m!1445799 () Bool)

(assert (=> start!134920 m!1445799))

(declare-fun m!1445801 () Bool)

(assert (=> start!134920 m!1445801))

(declare-fun m!1445803 () Bool)

(assert (=> b!1571905 m!1445803))

(declare-fun m!1445805 () Bool)

(assert (=> b!1571906 m!1445805))

(assert (=> b!1571906 m!1445805))

(declare-fun m!1445807 () Bool)

(assert (=> b!1571906 m!1445807))

(push 1)

(assert (not b!1571906))

(assert (not start!134920))

(assert (not b!1571905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

