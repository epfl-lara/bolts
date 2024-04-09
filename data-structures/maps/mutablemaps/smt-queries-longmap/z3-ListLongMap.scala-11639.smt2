; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135908 () Bool)

(assert start!135908)

(declare-fun res!1076439 () Bool)

(declare-fun e!878603 () Bool)

(assert (=> start!135908 (=> (not res!1076439) (not e!878603))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135908 (= res!1076439 (validMask!0 mask!898))))

(assert (=> start!135908 e!878603))

(assert (=> start!135908 true))

(declare-datatypes ((array!105372 0))(
  ( (array!105373 (arr!50819 (Array (_ BitVec 32) (_ BitVec 64))) (size!51370 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105372)

(declare-fun array_inv!39464 (array!105372) Bool)

(assert (=> start!135908 (array_inv!39464 _keys!605)))

(declare-fun b!1575261 () Bool)

(declare-fun res!1076441 () Bool)

(assert (=> b!1575261 (=> (not res!1076441) (not e!878603))))

(assert (=> b!1575261 (= res!1076441 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51370 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575262 () Bool)

(declare-fun res!1076440 () Bool)

(assert (=> b!1575262 (=> (not res!1076440) (not e!878603))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575262 (= res!1076440 (validKeyInArray!0 k0!761))))

(declare-fun b!1575263 () Bool)

(assert (=> b!1575263 (= e!878603 false)))

(declare-datatypes ((SeekEntryResult!13700 0))(
  ( (MissingZero!13700 (index!57197 (_ BitVec 32))) (Found!13700 (index!57198 (_ BitVec 32))) (Intermediate!13700 (undefined!14512 Bool) (index!57199 (_ BitVec 32)) (x!142165 (_ BitVec 32))) (Undefined!13700) (MissingVacant!13700 (index!57200 (_ BitVec 32))) )
))
(declare-fun lt!675100 () SeekEntryResult!13700)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105372 (_ BitVec 32)) SeekEntryResult!13700)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575263 (= lt!675100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135908 res!1076439) b!1575261))

(assert (= (and b!1575261 res!1076441) b!1575262))

(assert (= (and b!1575262 res!1076440) b!1575263))

(declare-fun m!1448321 () Bool)

(assert (=> start!135908 m!1448321))

(declare-fun m!1448323 () Bool)

(assert (=> start!135908 m!1448323))

(declare-fun m!1448325 () Bool)

(assert (=> b!1575262 m!1448325))

(declare-fun m!1448327 () Bool)

(assert (=> b!1575263 m!1448327))

(assert (=> b!1575263 m!1448327))

(declare-fun m!1448329 () Bool)

(assert (=> b!1575263 m!1448329))

(check-sat (not b!1575263) (not start!135908) (not b!1575262))
(check-sat)
