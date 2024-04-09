; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135108 () Bool)

(assert start!135108)

(declare-fun res!1074534 () Bool)

(declare-fun e!876896 () Bool)

(assert (=> start!135108 (=> (not res!1074534) (not e!876896))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135108 (= res!1074534 (validMask!0 mask!889))))

(assert (=> start!135108 e!876896))

(assert (=> start!135108 true))

(declare-datatypes ((array!105013 0))(
  ( (array!105014 (arr!50665 (Array (_ BitVec 32) (_ BitVec 64))) (size!51216 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105013)

(declare-fun array_inv!39310 (array!105013) Bool)

(assert (=> start!135108 (array_inv!39310 _keys!600)))

(declare-fun b!1572534 () Bool)

(declare-fun res!1074536 () Bool)

(assert (=> b!1572534 (=> (not res!1074536) (not e!876896))))

(assert (=> b!1572534 (= res!1074536 (= (size!51216 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572535 () Bool)

(declare-fun res!1074535 () Bool)

(assert (=> b!1572535 (=> (not res!1074535) (not e!876896))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572535 (= res!1074535 (validKeyInArray!0 k!754))))

(declare-fun b!1572536 () Bool)

(assert (=> b!1572536 (= e!876896 false)))

(declare-datatypes ((SeekEntryResult!13594 0))(
  ( (MissingZero!13594 (index!56773 (_ BitVec 32))) (Found!13594 (index!56774 (_ BitVec 32))) (Intermediate!13594 (undefined!14406 Bool) (index!56775 (_ BitVec 32)) (x!141561 (_ BitVec 32))) (Undefined!13594) (MissingVacant!13594 (index!56776 (_ BitVec 32))) )
))
(declare-fun lt!673999 () SeekEntryResult!13594)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105013 (_ BitVec 32)) SeekEntryResult!13594)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572536 (= lt!673999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135108 res!1074534) b!1572534))

(assert (= (and b!1572534 res!1074536) b!1572535))

(assert (= (and b!1572535 res!1074535) b!1572536))

(declare-fun m!1446253 () Bool)

(assert (=> start!135108 m!1446253))

(declare-fun m!1446255 () Bool)

(assert (=> start!135108 m!1446255))

(declare-fun m!1446257 () Bool)

(assert (=> b!1572535 m!1446257))

(declare-fun m!1446259 () Bool)

(assert (=> b!1572536 m!1446259))

(assert (=> b!1572536 m!1446259))

(declare-fun m!1446261 () Bool)

(assert (=> b!1572536 m!1446261))

(push 1)

(assert (not b!1572536))

(assert (not start!135108))

(assert (not b!1572535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

