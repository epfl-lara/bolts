; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135112 () Bool)

(assert start!135112)

(declare-fun res!1074552 () Bool)

(declare-fun e!876908 () Bool)

(assert (=> start!135112 (=> (not res!1074552) (not e!876908))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135112 (= res!1074552 (validMask!0 mask!889))))

(assert (=> start!135112 e!876908))

(assert (=> start!135112 true))

(declare-datatypes ((array!105017 0))(
  ( (array!105018 (arr!50667 (Array (_ BitVec 32) (_ BitVec 64))) (size!51218 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105017)

(declare-fun array_inv!39312 (array!105017) Bool)

(assert (=> start!135112 (array_inv!39312 _keys!600)))

(declare-fun b!1572552 () Bool)

(declare-fun res!1074554 () Bool)

(assert (=> b!1572552 (=> (not res!1074554) (not e!876908))))

(assert (=> b!1572552 (= res!1074554 (= (size!51218 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572553 () Bool)

(declare-fun res!1074553 () Bool)

(assert (=> b!1572553 (=> (not res!1074553) (not e!876908))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572553 (= res!1074553 (validKeyInArray!0 k!754))))

(declare-fun b!1572554 () Bool)

(assert (=> b!1572554 (= e!876908 false)))

(declare-datatypes ((SeekEntryResult!13596 0))(
  ( (MissingZero!13596 (index!56781 (_ BitVec 32))) (Found!13596 (index!56782 (_ BitVec 32))) (Intermediate!13596 (undefined!14408 Bool) (index!56783 (_ BitVec 32)) (x!141563 (_ BitVec 32))) (Undefined!13596) (MissingVacant!13596 (index!56784 (_ BitVec 32))) )
))
(declare-fun lt!674005 () SeekEntryResult!13596)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105017 (_ BitVec 32)) SeekEntryResult!13596)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572554 (= lt!674005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135112 res!1074552) b!1572552))

(assert (= (and b!1572552 res!1074554) b!1572553))

(assert (= (and b!1572553 res!1074553) b!1572554))

(declare-fun m!1446273 () Bool)

(assert (=> start!135112 m!1446273))

(declare-fun m!1446275 () Bool)

(assert (=> start!135112 m!1446275))

(declare-fun m!1446277 () Bool)

(assert (=> b!1572553 m!1446277))

(declare-fun m!1446279 () Bool)

(assert (=> b!1572554 m!1446279))

(assert (=> b!1572554 m!1446279))

(declare-fun m!1446281 () Bool)

(assert (=> b!1572554 m!1446281))

(push 1)

(assert (not b!1572554))

(assert (not start!135112))

(assert (not b!1572553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

