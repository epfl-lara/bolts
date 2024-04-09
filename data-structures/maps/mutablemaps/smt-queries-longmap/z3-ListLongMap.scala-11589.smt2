; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135116 () Bool)

(assert start!135116)

(declare-fun res!1074572 () Bool)

(declare-fun e!876921 () Bool)

(assert (=> start!135116 (=> (not res!1074572) (not e!876921))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135116 (= res!1074572 (validMask!0 mask!889))))

(assert (=> start!135116 e!876921))

(assert (=> start!135116 true))

(declare-datatypes ((array!105021 0))(
  ( (array!105022 (arr!50669 (Array (_ BitVec 32) (_ BitVec 64))) (size!51220 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105021)

(declare-fun array_inv!39314 (array!105021) Bool)

(assert (=> start!135116 (array_inv!39314 _keys!600)))

(declare-fun b!1572570 () Bool)

(declare-fun res!1074571 () Bool)

(assert (=> b!1572570 (=> (not res!1074571) (not e!876921))))

(assert (=> b!1572570 (= res!1074571 (= (size!51220 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572571 () Bool)

(declare-fun res!1074570 () Bool)

(assert (=> b!1572571 (=> (not res!1074570) (not e!876921))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572571 (= res!1074570 (validKeyInArray!0 k0!754))))

(declare-fun b!1572572 () Bool)

(assert (=> b!1572572 (= e!876921 false)))

(declare-datatypes ((SeekEntryResult!13598 0))(
  ( (MissingZero!13598 (index!56789 (_ BitVec 32))) (Found!13598 (index!56790 (_ BitVec 32))) (Intermediate!13598 (undefined!14410 Bool) (index!56791 (_ BitVec 32)) (x!141573 (_ BitVec 32))) (Undefined!13598) (MissingVacant!13598 (index!56792 (_ BitVec 32))) )
))
(declare-fun lt!674011 () SeekEntryResult!13598)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105021 (_ BitVec 32)) SeekEntryResult!13598)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572572 (= lt!674011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135116 res!1074572) b!1572570))

(assert (= (and b!1572570 res!1074571) b!1572571))

(assert (= (and b!1572571 res!1074570) b!1572572))

(declare-fun m!1446293 () Bool)

(assert (=> start!135116 m!1446293))

(declare-fun m!1446295 () Bool)

(assert (=> start!135116 m!1446295))

(declare-fun m!1446297 () Bool)

(assert (=> b!1572571 m!1446297))

(declare-fun m!1446299 () Bool)

(assert (=> b!1572572 m!1446299))

(assert (=> b!1572572 m!1446299))

(declare-fun m!1446301 () Bool)

(assert (=> b!1572572 m!1446301))

(check-sat (not start!135116) (not b!1572571) (not b!1572572))
