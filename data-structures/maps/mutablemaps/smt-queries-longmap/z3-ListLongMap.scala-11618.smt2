; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135608 () Bool)

(assert start!135608)

(declare-fun res!1075720 () Bool)

(declare-fun e!878001 () Bool)

(assert (=> start!135608 (=> (not res!1075720) (not e!878001))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135608 (= res!1075720 (validMask!0 mask!898))))

(assert (=> start!135608 e!878001))

(assert (=> start!135608 true))

(declare-datatypes ((array!105228 0))(
  ( (array!105229 (arr!50756 (Array (_ BitVec 32) (_ BitVec 64))) (size!51307 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105228)

(declare-fun array_inv!39401 (array!105228) Bool)

(assert (=> start!135608 (array_inv!39401 _keys!605)))

(declare-fun b!1574289 () Bool)

(declare-fun res!1075721 () Bool)

(assert (=> b!1574289 (=> (not res!1075721) (not e!878001))))

(assert (=> b!1574289 (= res!1075721 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51307 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574290 () Bool)

(declare-fun res!1075719 () Bool)

(assert (=> b!1574290 (=> (not res!1075719) (not e!878001))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574290 (= res!1075719 (validKeyInArray!0 k0!761))))

(declare-fun b!1574291 () Bool)

(assert (=> b!1574291 (= e!878001 false)))

(declare-fun lt!674713 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574291 (= lt!674713 (toIndex!0 k0!761 mask!898))))

(assert (= (and start!135608 res!1075720) b!1574289))

(assert (= (and b!1574289 res!1075721) b!1574290))

(assert (= (and b!1574290 res!1075719) b!1574291))

(declare-fun m!1447575 () Bool)

(assert (=> start!135608 m!1447575))

(declare-fun m!1447577 () Bool)

(assert (=> start!135608 m!1447577))

(declare-fun m!1447579 () Bool)

(assert (=> b!1574290 m!1447579))

(declare-fun m!1447581 () Bool)

(assert (=> b!1574291 m!1447581))

(check-sat (not b!1574291) (not start!135608) (not b!1574290))
(check-sat)
