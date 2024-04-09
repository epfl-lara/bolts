; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135614 () Bool)

(assert start!135614)

(declare-fun res!1075748 () Bool)

(declare-fun e!878019 () Bool)

(assert (=> start!135614 (=> (not res!1075748) (not e!878019))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135614 (= res!1075748 (validMask!0 mask!898))))

(assert (=> start!135614 e!878019))

(assert (=> start!135614 true))

(declare-datatypes ((array!105234 0))(
  ( (array!105235 (arr!50759 (Array (_ BitVec 32) (_ BitVec 64))) (size!51310 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105234)

(declare-fun array_inv!39404 (array!105234) Bool)

(assert (=> start!135614 (array_inv!39404 _keys!605)))

(declare-fun b!1574316 () Bool)

(declare-fun res!1075746 () Bool)

(assert (=> b!1574316 (=> (not res!1075746) (not e!878019))))

(assert (=> b!1574316 (= res!1075746 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51310 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574317 () Bool)

(declare-fun res!1075747 () Bool)

(assert (=> b!1574317 (=> (not res!1075747) (not e!878019))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574317 (= res!1075747 (validKeyInArray!0 k0!761))))

(declare-fun b!1574318 () Bool)

(assert (=> b!1574318 (= e!878019 false)))

(declare-fun lt!674722 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574318 (= lt!674722 (toIndex!0 k0!761 mask!898))))

(assert (= (and start!135614 res!1075748) b!1574316))

(assert (= (and b!1574316 res!1075746) b!1574317))

(assert (= (and b!1574317 res!1075747) b!1574318))

(declare-fun m!1447599 () Bool)

(assert (=> start!135614 m!1447599))

(declare-fun m!1447601 () Bool)

(assert (=> start!135614 m!1447601))

(declare-fun m!1447603 () Bool)

(assert (=> b!1574317 m!1447603))

(declare-fun m!1447605 () Bool)

(assert (=> b!1574318 m!1447605))

(check-sat (not b!1574318) (not start!135614) (not b!1574317))
